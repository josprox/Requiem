import 'dart:async';
import 'dart:io';
import 'package:path/path.dart' as p;
import '../deployment_service.dart';
import '../process_service.dart';
import 'deployment_provider.dart';

class LinuxDeploymentProvider implements DeploymentProvider {
  final ProcessService _processService;
  LinuxDeploymentProvider(this._processService);

  @override
  Stream<DeploymentProgress> applyImage({
    required String imagePath,
    required String applyDir,
    String? targetDevice,
    int index = 1,
    String? swmPattern,
  }) async* {
    if (!File(imagePath).existsSync()) {
      yield DeploymentProgress(
        -1,
        'ERROR: Image file not found: $imagePath',
        isError: true,
      );
      return;
    }

    final destination = targetDevice ?? applyDir;
    if (targetDevice != null) {
      yield DeploymentProgress(
        -1,
        'Applying WIM directly to NTFS volume $targetDevice (metadata-preserving mode).',
      );
    }
    final List<String> args = [
      'apply',
      imagePath,
      index.toString(),
      destination,
    ];

    if (swmPattern != null) {
      args.add('--ref=$swmPattern');
    }

    final progressRegex = RegExp(r'(\d+)%');
    double lastPercent = 0;

    final stream = _processService.runStreaming('wimlib-imagex', args);

    await for (final line in stream) {
      final trimmed = line.trim();
      if (trimmed.isEmpty) continue;

      final match = progressRegex.firstMatch(trimmed);
      if (match != null) {
        final pct = double.tryParse(match.group(1) ?? '0') ?? 0.0;
        if (pct > lastPercent) {
          lastPercent = pct;
          yield DeploymentProgress(
            pct / 100.0,
            'Applying WIM image: ${pct.toStringAsFixed(0)}%',
          );
        }
      } else {
        final isWarning =
            trimmed.contains('[WARNING]') || trimmed.contains('[WARN]');
        final isOnlyErrPrefix = trimmed == '[ERR]';
        final isErr =
            !isWarning &&
            !isOnlyErrPrefix &&
            (trimmed.contains('ERROR') ||
                trimmed.contains('error') ||
                trimmed.contains('[ERR]'));
        yield DeploymentProgress(-1, trimmed, isError: isErr);
      }
    }
  }

  @override
  Future<BootloaderResult> configureBootloader(
    String windowsDir,
    String efiDir, {
    required bool uefi,
    required bool bios,
    String? espDevice,
    String? windowsDevice,
  }) async {
    final logs = <String>[];

    Future<BootloaderResult> fail(
      String message, [
      ProcessResult? result,
    ]) async {
      logs.add('ERROR: $message');
      if (result != null) {
        if (result.stdout.trim().isNotEmpty) {
          logs.add('stdout: ${result.stdout.trim()}');
        }
        if (result.stderr.trim().isNotEmpty) {
          logs.add('stderr: ${result.stderr.trim()}');
        }
      }
      return BootloaderResult(false, logs);
    }

    // Determine UEFI mode
    final isUefi = _uuefi(uefi, bios);

    if (isUefi) {
      if (espDevice == null || windowsDevice == null) {
        return fail('Missing devices for UEFI boot configuration.');
      }

      logs.add('UEFI boot mode selected.');
      logs.add('Windows directory: $windowsDir');
      logs.add('EFI mount: $efiDir');
      logs.add('ESP device: $espDevice');
      logs.add('Windows device: $windowsDevice');

      if (!Directory('/sys/firmware/efi').existsSync()) {
        return fail(
          'The live installer was not booted in UEFI mode. A GPT/UEFI target cannot be finalized from a legacy BIOS session.',
        );
      }
      if (!Directory('/sys/firmware/efi/efivars').existsSync()) {
        return fail(
          'UEFI runtime variables are unavailable. Reboot the standard UEFI installer entry without efi=noruntime.',
        );
      }

      final espFsType = await _getFilesystemType(espDevice);
      if (espFsType != 'vfat' && espFsType != 'fat32') {
        return fail('ESP filesystem is "$espFsType" instead of FAT32/vfat.');
      }
      logs.add('Validated ESP filesystem: $espFsType.');

      // ── Verificar que el WIM contiene archivos de arranque EFI ────────────
      final bootEfiDir = await _findBootEfiDir(windowsDir);
      if (bootEfiDir == null) {
        return fail(
          'Windows/Boot/EFI is missing from the applied image. The selected WIM does not contain UEFI boot files.',
        );
      }
      logs.add('Windows EFI boot source: $bootEfiDir');

      // ── Intentar BCD-SYS primero (solución completa y robusta) ────────────
      final bcdSysRes = await _runBcdSys(
        windowsDir: windowsDir,
        systemDir: efiDir,
        firmware: 'uefi',
        logs: logs,
      );
      if (bcdSysRes?.exitCode == 0) {
        logs.add('BCD-SYS generated a clean UEFI BCD store and boot files.');
        // Asegurar fallback BOOTX64.EFI incluso con BCD-SYS
        await _ensureFallbackBootx64(efiDir, logs);
        return _finalizeUefiBoot(
          efiDir: efiDir,
          espDevice: espDevice,
          windowsDevice: windowsDevice,
          logs: logs,
        );
      }
      logs.add(
        'WARNING: BCD-SYS UEFI setup failed; using internal EFI/BCD installer.',
      );

      // ── Crear estructura de directorios EFI ───────────────────────────────
      // NOTA: Usar mayúsculas exactas para máxima compatibilidad con firmware.
      var res = await _processService.run('mkdir', [
        '-p',
        '$efiDir/EFI/Microsoft/Boot',
      ]);
      if (res.exitCode != 0) {
        return fail('Could not create EFI/Microsoft/Boot directory.', res);
      }
      // EFI/BOOT (mayúsculas) es el directorio de fallback estándar UEFI Spec
      res = await _processService.run('mkdir', ['-p', '$efiDir/EFI/BOOT']);
      if (res.exitCode != 0) {
        return fail('Could not create EFI/BOOT fallback directory.', res);
      }

      // ── Copiar archivos EFI completos desde el WIM ────────────────────────
      // cp -a preserva atributos y es recursivo. El '.' al final copia el
      // contenido del directorio, no el directorio en sí.
      res = await _processService.run('cp', [
        '-a',
        '$bootEfiDir/.',
        '$efiDir/EFI/Microsoft/Boot/',
      ]);
      if (res.exitCode != 0) {
        return fail(
          'Could not copy Windows EFI boot files from $bootEfiDir.',
          res,
        );
      }
      logs.add('Copied Windows EFI boot files from $bootEfiDir.');

      // ── Localizar bootmgfw.efi (Windows Boot Manager principal) ──────────
      final efiBootManager = await _findFirstExistingCaseInsensitive([
        '$efiDir/EFI/Microsoft/Boot/bootmgfw.efi',
        '$bootEfiDir/bootmgfw.efi',
      ]);
      if (efiBootManager == null) {
        return fail(
          'Could not find bootmgfw.efi after copy. The WIM does not contain a valid Windows UEFI boot manager.',
        );
      }
      logs.add('Located bootmgfw.efi: $efiBootManager');

      // Garantizar que el archivo está en la ubicación canónica
      if (!File('$efiDir/EFI/Microsoft/Boot/bootmgfw.efi').existsSync() ||
          File('$efiDir/EFI/Microsoft/Boot/bootmgfw.efi').lengthSync() == 0) {
        res = await _processService.run('cp', [
          efiBootManager,
          '$efiDir/EFI/Microsoft/Boot/bootmgfw.efi',
        ]);
        if (res.exitCode != 0) {
          return fail('Could not place bootmgfw.efi in EFI/Microsoft/Boot.', res);
        }
      }

      // ── Fallback BOOTX64.EFI (estándar UEFI §3.4.1) ──────────────────────
      // La spec UEFI requiere que el firmware busque /EFI/BOOT/BOOTX64.EFI
      // cuando no hay entradas NVRAM. Esto garantiza el arranque incluso
      // si efibootmgr falla por NVRAM bloqueada por OEM.
      res = await _processService.run('cp', [
        '$efiDir/EFI/Microsoft/Boot/bootmgfw.efi',
        '$efiDir/EFI/BOOT/BOOTX64.EFI',
      ]);
      if (res.exitCode != 0) {
        // No fatal — NVRAM entry puede ser suficiente
        logs.add('WARNING: Could not create EFI/BOOT/BOOTX64.EFI fallback: ${res.stderr.trim()}');
      } else {
        logs.add('Created UEFI fallback: EFI/BOOT/BOOTX64.EFI.');
      }

      // ── Seleccionar fuente BCD ────────────────────────────────────────────
      // ORDEN CRÍTICO (error 0xc000000e si se usa BCD-Template vacío primero):
      //   1. Boot/DVD/EFI/BCD  → BCD con OS Loader entries funcionales
      //   2. Boot/BCD          → BCD preexistente del WIM
      //   3. BCD-Template      → Plantilla VACÍA sin OS Loader (último recurso)
      //
      // Si se usa BCD-Template, patch_bcd.py debe inyectar entries completos.
      final bcdSourceCandidates = [
        '$windowsDir/Boot/DVD/EFI/BCD',
        '$windowsDir/Boot/BCD',
        '$windowsDir/System32/Config/BCD-Template',
      ];
      final String bcdDestination = '$efiDir/EFI/Microsoft/Boot/BCD';

      // Determinar cuál fuente BCD está disponible
      String? bcdSourceUsed;
      bool bcdIsTemplate = false;
      for (final candidate in bcdSourceCandidates) {
        if (File(candidate).existsSync() && File(candidate).lengthSync() > 0) {
          bcdSourceUsed = candidate;
          bcdIsTemplate = candidate.endsWith('BCD-Template');
          break;
        }
      }

      if (bcdSourceUsed == null) {
        return fail(
          'No BCD source found in the WIM image. Checked: $bcdSourceCandidates',
        );
      }
      logs.add('BCD source: $bcdSourceUsed (isTemplate=$bcdIsTemplate)');

      final bcdCopied = await _copyFirstExisting(
        [bcdSourceUsed],
        bcdDestination,
        logs,
      );
      if (!bcdCopied) {
        return fail('Could not copy BCD from $bcdSourceUsed to $bcdDestination.');
      }

      // ── Parchear BCD con UUIDs de partición correctos ─────────────────────
      final patchScript = _findPatchBcdScript();
      if (patchScript == null) {
        logs.add(
          'WARNING: patch_bcd.py not found. BCD may be unconfigured. Trying locate=custom fallback.',
        );
        // Fallback: inyectar locate=custom vía script Python inline
        final locateRes = await _injectLocateCustomBcd(bcdDestination, logs);
        if (!locateRes) {
          return fail(
            'BCD patching unavailable and locate=custom injection failed. '
            'Windows cannot boot without a valid BCD.',
          );
        }
      } else {
        // Modo principal: parchear BCD con UUIDs reales
        // Si es BCD-Template, necesitamos --create-minimal-bcd
        List<String> patchArgs;
        if (bcdIsTemplate) {
          patchArgs = [
            patchScript,
            '--create-minimal-bcd',
            bcdDestination,
            espDevice,
            windowsDevice,
          ];
        } else {
          patchArgs = [
            patchScript,
            '--uefi',
            bcdDestination,
            espDevice,
            windowsDevice,
          ];
        }

        res = await _processService.run('python3', patchArgs);
        if (res.exitCode != 0) {
          logs.add(
            'WARNING: patch_bcd.py failed (exit ${res.exitCode}). '
            'Trying locate=custom fallback to allow boot on any disk.',
          );
          if (res.stdout.trim().isNotEmpty) logs.add('patch_bcd stdout: ${res.stdout.trim()}');
          if (res.stderr.trim().isNotEmpty) logs.add('patch_bcd stderr: ${res.stderr.trim()}');

          // Fallback: locate=custom — permite que bootmgfw.efi encuentre
          // winload.efi escaneando todos los discos (Estrategia B del PDF)
          final locateRes = await _injectLocateCustomBcd(bcdDestination, logs);
          if (!locateRes) {
            return fail(
              'BCD patching and locate=custom fallback both failed. '
              'stdout: ${res.stdout.trim()} | stderr: ${res.stderr.trim()}',
              res,
            );
          }
        } else {
          logs.add('BCD patched successfully with real partition UUIDs.');
          if (res.stdout.trim().isNotEmpty) {
            logs.add('patch_bcd: ${res.stdout.trim()}');
          }
        }
      }

      return _finalizeUefiBoot(
        efiDir: efiDir,
        espDevice: espDevice,
        windowsDevice: windowsDevice,
        logs: logs,
      );
    } else {
      // Legacy BIOS
      if (windowsDevice == null) {
        return fail('Missing windowsDevice for BIOS boot configuration.');
      }

      logs.add('Legacy BIOS boot mode selected.');
      logs.add('Windows directory: $windowsDir');
      logs.add('Boot target: $efiDir');
      final bootDevice = espDevice ?? windowsDevice;
      logs.add('Boot device: $bootDevice');
      logs.add('Windows device: $windowsDevice');

      final bcdSysDisk = _parentDiskFromPartition(windowsDevice);
      final bcdSysBootDisk = _parentDiskFromPartition(bootDevice);
      final bcdSysBootPartitionNumber = _partitionNumberFromPath(bootDevice);
      final bcdSysWindowsPartitionNumber = _partitionNumberFromPath(
        windowsDevice,
      );
      if (bcdSysDisk != null &&
          bcdSysBootDisk == bcdSysDisk &&
          bcdSysBootPartitionNumber != null &&
          bcdSysWindowsPartitionNumber != null) {
        final partitionReady = await _prepareLegacyBootLayout(
          bcdSysDisk,
          bcdSysBootPartitionNumber,
          bcdSysWindowsPartitionNumber,
          logs,
        );
        if (!partitionReady) {
          return fail(
            'Legacy boot partition layout is not active/type-correct before BCD-SYS.',
          );
        }

        var bcdSysRes = await _writeNt6BootRecords(
          bcdSysDisk,
          windowsDevice,
          logs,
        );
        if (bcdSysRes.exitCode != 0) {
          return fail('NT6+ MBR/VBR write failed before BCD-SYS.', bcdSysRes);
        }

        bcdSysRes =
            await _runBcdSys(
              windowsDir: windowsDir,
              systemDir: efiDir,
              firmware: 'bios',
              logs: logs,
            ) ??
            const ProcessResult(127, '', 'BCD-SYS is not installed.');
        if (bcdSysRes.exitCode == 0) {
          logs.add('BCD-SYS configured BIOS boot successfully.');
          final validation = await _processService.run('python3', [
            '/opt/requiem_installer/tools/patch_bcd.py',
            '--validate-bios',
            '$efiDir/Boot/BCD',
            windowsDevice,
          ]);
          if (validation.exitCode != 0) {
            return fail('BCD-SYS BIOS store validation failed.', validation);
          }
          logs.add('Validated BIOS BCD store and target partition references.');
          await _processService.run('sync', []);
          await _processService.run('blockdev', ['--flushbufs', bcdSysDisk]);
          return BootloaderResult(true, logs);
        }

        logs.add(
          'WARNING: BCD-SYS BIOS setup failed; falling back to internal boot configuration.',
        );
      } else {
        logs.add(
          'WARNING: Could not parse legacy devices for BCD-SYS; using internal boot configuration.',
        );
      }

      final bootmgrReady = await _copyFirstExisting(
        [
          '$windowsDir/Boot/PCAT/bootmgr',
          '$efiDir/bootmgr',
          '$windowsDir/../bootmgr',
        ],
        '$efiDir/bootmgr',
        logs,
      );
      if (!bootmgrReady) {
        return fail('Could not find or create legacy bootmgr.');
      }

      var res = await _processService.run('mkdir', ['-p', '$efiDir/Boot']);
      if (res.exitCode != 0) {
        return fail('Could not create legacy Boot directory.', res);
      }

      final bcdCopied = await _copyFirstExisting(
        [
          '$windowsDir/System32/Config/BCD-Template',
          '$windowsDir/Boot/DVD/PCAT/BCD',
          '$windowsDir/Boot/BCD',
          '$windowsDir/../Boot/BCD',
          '$efiDir/Boot/BCD',
        ],
        '$efiDir/Boot/BCD',
        logs,
      );
      if (!bcdCopied) {
        return fail('Could not find or copy a legacy BCD template.');
      }

      if (File('$windowsDir/Boot/DVD/PCAT/boot.sdi').existsSync()) {
        await _processService.run('cp', [
          '$windowsDir/Boot/DVD/PCAT/boot.sdi',
          '$efiDir/Boot/boot.sdi',
        ]);
      }

      final disk = _parentDiskFromPartition(windowsDevice);
      final bootDisk = _parentDiskFromPartition(bootDevice);
      final bootPartitionNumber = _partitionNumberFromPath(bootDevice);
      final windowsPartitionNumber = _partitionNumberFromPath(windowsDevice);
      if (disk != null &&
          bootDisk == disk &&
          bootPartitionNumber != null &&
          windowsPartitionNumber != null) {
        final partitionReady = await _prepareLegacyBootLayout(
          disk,
          bootPartitionNumber,
          windowsPartitionNumber,
          logs,
        );
        if (!partitionReady) {
          return fail(
            'Legacy boot partition layout is not active/type-correct after MBR preparation.',
          );
        }

        res = await _writeNt6BootRecords(disk, bootDevice, logs);
        if (res.exitCode != 0) {
          return fail('NT6+ MBR/VBR write failed.', res);
        }

        res = await _processService.run('python3', [
          '/opt/requiem_installer/tools/patch_bcd.py',
          '--legacy-bios',
          '$efiDir/Boot/BCD',
          bootDevice,
          windowsDevice,
        ]);
        if (res.exitCode != 0) {
          return fail('BIOS BCD patching failed.', res);
        }
        logs.add('Legacy BCD patched successfully.');
        if (res.stdout.trim().isNotEmpty) {
          logs.add('BCD patch stdout: ${res.stdout.trim()}');
        }

        res = await _processService.run('python3', [
          '/opt/requiem_installer/tools/patch_bcd.py',
          '--validate-bios',
          '$efiDir/Boot/BCD',
          windowsDevice,
        ]);
        if (res.exitCode != 0) {
          return fail('BIOS BCD validation failed.', res);
        }
        logs.add('Validated BIOS BCD store and target partition references.');

        final windowsRootDir = Directory(windowsDir).parent.absolute.path;
        final bootRootDir = Directory(efiDir).absolute.path;
        final windowsRootBootmgr = File('$windowsRootDir/bootmgr');
        final windowsRootBootDir = Directory('$windowsRootDir/Boot');
        if (windowsRootDir != bootRootDir &&
            (windowsRootBootmgr.existsSync() ||
                windowsRootBootDir.existsSync())) {
          await windowsRootBootDir.create(recursive: true);
          res = await _processService.run('cp', [
            '$efiDir/Boot/BCD',
            '$windowsRootDir/Boot/BCD',
          ]);
          if (res.exitCode != 0) {
            return fail(
              'Could not mirror patched legacy BCD to Windows root.',
              res,
            );
          }
          logs.add('Patched legacy BCD mirrored to Windows root.');
        }

        if (bootDevice != windowsDevice) {
          res = await _installLegacyGrubBootmgrBridge(
            disk,
            efiDir,
            bootDevice,
            logs,
          );
          if (res.exitCode != 0) {
            return fail('Legacy GRUB bootmgr bridge install failed.', res);
          }
        } else {
          logs.add('Legacy direct NT6 boot configured on Windows partition.');
        }
      } else {
        return fail('Could not parse legacy boot layout devices.');
      }

      await _processService.run('sync', []);
      await _processService.run('blockdev', ['--flushbufs', disk]);

      return BootloaderResult(true, logs);
    }
  }

  Future<BootloaderResult> _finalizeUefiBoot({
    required String efiDir,
    required String espDevice,
    required String windowsDevice,
    required List<String> logs,
  }) async {
    BootloaderResult fail(String message, [ProcessResult? result]) {
      logs.add('ERROR: $message');
      if (result != null && result.stdout.trim().isNotEmpty) {
        logs.add('stdout: ${result.stdout.trim()}');
      }
      if (result != null && result.stderr.trim().isNotEmpty) {
        logs.add('stderr: ${result.stderr.trim()}');
      }
      return BootloaderResult(false, logs);
    }

    final microsoftBootManager = await _findFirstExistingCaseInsensitive([
      '$efiDir/EFI/Microsoft/Boot/bootmgfw.efi',
    ]);
    if (microsoftBootManager == null ||
        File(microsoftBootManager).lengthSync() == 0) {
      return fail('EFI/Microsoft/Boot/bootmgfw.efi is missing or empty.');
    }

    final fallbackDir = '$efiDir/EFI/BOOT';
    var res = await _processService.run('mkdir', ['-p', fallbackDir]);
    if (res.exitCode != 0) {
      return fail('Could not create the UEFI fallback directory.', res);
    }
    res = await _processService.run('cp', [
      microsoftBootManager,
      '$fallbackDir/BOOTX64.EFI',
    ]);
    if (res.exitCode != 0) {
      return fail('Could not create EFI/BOOT/BOOTX64.EFI.', res);
    }
    logs.add('Validated Microsoft boot manager and fallback BOOTX64.EFI.');

    final bcdPath = '$efiDir/EFI/Microsoft/Boot/BCD';
    final bcdFile = File(bcdPath);
    if (!bcdFile.existsSync() || bcdFile.lengthSync() == 0) {
      return fail('EFI/Microsoft/Boot/BCD is missing or empty.');
    }
    res = await _processService.run('python3', [
      '/opt/requiem_installer/tools/patch_bcd.py',
      '--validate-uefi',
      bcdPath,
      windowsDevice,
    ]);
    if (res.exitCode != 0) {
      return fail('Offline BCD validation failed.', res);
    }
    logs.add('Validated BCD hive and Windows loader device references.');
    if (res.stdout.trim().isNotEmpty) {
      logs.add('BCD validation: ${res.stdout.trim()}');
    }

    final disk = _parentDiskFromPartition(espDevice);
    final part = _partitionNumberFromPath(espDevice);
    if (disk == null || part == null) {
      return fail(
        'Could not resolve the parent disk and ESP partition number.',
      );
    }

    res = await _processService.run('sgdisk', ['--info=$part', disk]);
    if (res.exitCode != 0 ||
        !res.stdout.toUpperCase().contains(
          'C12A7328-F81F-11D2-BA4B-00A0C93EC93B',
        )) {
      return fail(
        'Partition $espDevice is not typed as an EFI System Partition.',
        res,
      );
    }
    logs.add('Validated GPT EFI System Partition type GUID.');

    final signatureTool = await _processService.run('which', ['sbverify']);
    if (signatureTool.exitCode == 0) {
      final signature = await _processService.run('sbverify', [
        '--list',
        microsoftBootManager,
      ]);
      if (signature.exitCode == 0) {
        logs.add('Microsoft EFI signature is present (Secure Boot candidate).');
      } else {
        logs.add(
          'WARNING: sbverify could not confirm a signature on bootmgfw.efi; Secure Boot may reject this WIM.',
        );
      }
    }

    final registered = await _registerUefiBootEntry(
      disk: disk,
      part: part,
      espDevice: espDevice,
      logs: logs,
    );
    if (!registered) {
      return fail(
        'Windows Boot Manager could not be registered and verified in UEFI NVRAM. The fallback file exists, but automatic reboot is blocked.',
      );
    }

    await _processService.run('sync', []);
    await _processService.run('blockdev', ['--flushbufs', disk]);
    logs.add('UEFI boot files, BCD, NVRAM and disk buffers validated.');
    return BootloaderResult(true, logs);
  }

  Future<bool> _registerUefiBootEntry({
    required String disk,
    required String part,
    required String espDevice,
    required List<String> logs,
  }) async {
    final partUuidResult = await _processService.run('blkid', [
      '-s',
      'PARTUUID',
      '-o',
      'value',
      espDevice,
    ]);
    final partUuid = partUuidResult.stdout.trim().toLowerCase();
    if (partUuidResult.exitCode != 0 || partUuid.isEmpty) {
      logs.add('ERROR: Could not read the ESP PARTUUID for NVRAM validation.');
      return false;
    }

    Future<({ProcessResult result, String? bootNumber})> inspect() async {
      final result = await _processService.run('efibootmgr', ['-v']);
      if (result.exitCode != 0) return (result: result, bootNumber: null);

      final compactUuid = partUuid.replaceAll('-', '');
      for (final line in result.stdout.split('\n')) {
        final normalized = line.toLowerCase().replaceAll('-', '');
        final hasLabel = normalized.contains('windows boot manager');
        final hasPartition = normalized.contains(compactUuid);
        final hasLoader = normalized.contains(
          r'\efi\microsoft\boot\bootmgfw.efi',
        );
        if (hasLabel && hasPartition && hasLoader) {
          final match = RegExp(
            r'^Boot([0-9A-Fa-f]{4})',
          ).firstMatch(line.trim());
          return (result: result, bootNumber: match?.group(1)?.toUpperCase());
        }
      }
      return (result: result, bootNumber: null);
    }

    var inspection = await inspect();
    if (inspection.result.exitCode != 0) {
      logs.add('efibootmgr -v failed: ${inspection.result.stderr.trim()}');
      return false;
    }

    if (inspection.bootNumber == null) {
      logs.add('Creating Windows Boot Manager NVRAM entry.');
      final create = await _processService.run('efibootmgr', [
        '--create',
        '--disk',
        disk,
        '--part',
        part,
        '--label',
        'Windows Boot Manager',
        '--loader',
        r'\EFI\Microsoft\Boot\bootmgfw.efi',
      ]);
      if (create.exitCode != 0) {
        logs.add('efibootmgr create failed: ${create.stderr.trim()}');
        return false;
      }
      inspection = await inspect();
    }

    final bootNumber = inspection.bootNumber;
    if (bootNumber == null) {
      logs.add(
        'ERROR: The created UEFI entry did not resolve to the target ESP.',
      );
      return false;
    }

    final orderMatch = RegExp(
      r'^BootOrder:\s*([^\r\n]+)',
      multiLine: true,
    ).firstMatch(inspection.result.stdout);
    if (orderMatch != null) {
      final existing = orderMatch
          .group(1)!
          .split(',')
          .map((value) => value.trim().toUpperCase())
          .where((value) => value.isNotEmpty && value != bootNumber)
          .toList();
      final wantedOrder = [bootNumber, ...existing].join(',');
      final setOrder = await _processService.run('efibootmgr', [
        '--bootorder',
        wantedOrder,
      ]);
      if (setOrder.exitCode != 0) {
        logs.add(
          'efibootmgr boot-order update failed: ${setOrder.stderr.trim()}',
        );
        return false;
      }
    }

    final finalInspection = await inspect();
    if (finalInspection.bootNumber != bootNumber) {
      logs.add(
        'ERROR: Windows Boot Manager NVRAM verification did not persist.',
      );
      return false;
    }
    logs.add(
      'Verified Boot$bootNumber on $disk partition $part -> \\EFI\\Microsoft\\Boot\\bootmgfw.efi.',
    );
    return true;
  }

  @override
  Stream<DeploymentProgress> cloneDisk({
    required String sourceDrive,
    required String tempImagePath,
    required String targetDrive,
  }) async* {
    yield const DeploymentProgress(
      -1,
      'ERROR: Disk cloning is only supported on Windows in this version.',
      isError: true,
    );
  }

  bool _uuefi(bool uefi, bool bios) {
    if (uefi && bios) return true;
    return uefi;
  }

  Future<bool> _copyFirstExisting(
    List<String> sources,
    String destination,
    List<String> logs,
  ) async {
    for (final source in sources) {
      if (!File(source).existsSync()) {
        logs.add('Missing source: $source');
        continue;
      }

      if (p.canonicalize(source) == p.canonicalize(destination)) {
        logs.add('Using existing file: $destination');
        return true;
      }

      final res = await _processService.run('cp', [source, destination]);
      if (res.exitCode == 0) {
        logs.add('Copied $source -> $destination');
        return true;
      }

      logs.add('Copy failed: $source -> $destination');
      logs.add('stdout: ${res.stdout.trim()}');
      logs.add('stderr: ${res.stderr.trim()}');
      return false;
    }

    logs.add('No usable source found for $destination');
    return false;
  }

  Future<String?> _findFirstExistingCaseInsensitive(List<String> paths) async {
    for (final path in paths) {
      final file = File(path);
      if (file.existsSync()) return path;

      final dir = Directory(file.parent.path);
      if (!dir.existsSync()) continue;

      final wantedName = file.uri.pathSegments.last.toLowerCase();
      try {
        await for (final entity in dir.list()) {
          if (entity is File &&
              entity.uri.pathSegments.last.toLowerCase() == wantedName) {
            return entity.path;
          }
        }
      } catch (_) {
        continue;
      }
    }
    return null;
  }

  String? _parentDiskFromPartition(String partitionDevice) {
    final match = RegExp(
      r'^(/dev/(?:nvme\d+n\d+|mmcblk\d+|sd[a-z]+|vd[a-z]+|xvd[a-z]+))p?(\d+)$',
    ).firstMatch(partitionDevice);
    return match?.group(1);
  }

  String? _partitionNumberFromPath(String partitionDevice) {
    final match = RegExp(
      r'^/dev/(?:nvme\d+n\d+|mmcblk\d+|sd[a-z]+|vd[a-z]+|xvd[a-z]+)p?(\d+)$',
    ).firstMatch(partitionDevice);
    return match?.group(1);
  }

  Future<bool> _prepareLegacyBootLayout(
    String disk,
    String bootPartitionNumber,
    String windowsPartitionNumber,
    List<String> logs,
  ) async {
    final splitBootPartition = bootPartitionNumber != windowsPartitionNumber;
    final bootType = splitBootPartition ? 'c' : '7';

    logs.add(
      'Setting MBR boot partition type 0x$bootType on $disk partition $bootPartitionNumber.',
    );
    var res = await _processService.run('sfdisk', [
      '--part-type',
      disk,
      bootPartitionNumber,
      bootType,
    ]);
    if (res.exitCode != 0) {
      logs.add('sfdisk boot --part-type stderr: ${res.stderr.trim()}');
      return false;
    }

    if (splitBootPartition) {
      logs.add(
        'Setting Windows partition type 0x07 on $disk partition $windowsPartitionNumber.',
      );
      res = await _processService.run('sfdisk', [
        '--part-type',
        disk,
        windowsPartitionNumber,
        '7',
      ]);
      if (res.exitCode != 0) {
        logs.add('sfdisk windows --part-type stderr: ${res.stderr.trim()}');
        return false;
      }
    }

    logs.add(
      'Setting active boot flag on $disk partition $bootPartitionNumber.',
    );
    res = await _processService.run('sfdisk', [
      '--activate',
      disk,
      bootPartitionNumber,
    ]);
    if (res.exitCode != 0) {
      logs.add('WARNING: sfdisk --activate failed; trying parted boot flag.');
      logs.add('sfdisk stderr: ${res.stderr.trim()}');

      res = await _processService.run('parted', [
        '-s',
        disk,
        'set',
        bootPartitionNumber,
        'boot',
        'on',
      ]);
      if (res.exitCode != 0) {
        logs.add('parted stderr: ${res.stderr.trim()}');
        return false;
      }
    }

    await _processService.run('partprobe', [disk]);
    await _processService.run('udevadm', ['settle']);

    res = await _processService.run('sfdisk', ['--dump', disk]);
    if (res.exitCode != 0) {
      logs.add('WARNING: could not verify MBR partition table.');
      logs.add('sfdisk --dump stderr: ${res.stderr.trim()}');
      return true;
    }

    final dump = res.stdout.trim();
    logs.add('MBR partition table: $dump');
    String? bootLine;
    String? windowsLine;
    for (final line in dump.split('\n').map((line) => line.trim())) {
      if (line.startsWith('${disk}p$bootPartitionNumber') ||
          line.startsWith('$disk$bootPartitionNumber')) {
        bootLine = line;
      }
      if (line.startsWith('${disk}p$windowsPartitionNumber') ||
          line.startsWith('$disk$windowsPartitionNumber')) {
        windowsLine = line;
      }
    }

    if (bootLine == null) {
      logs.add(
        'WARNING: could not find boot partition $bootPartitionNumber in sfdisk dump.',
      );
      return true;
    }

    final bootReady =
        bootLine.contains('type=$bootType') && bootLine.contains('bootable');
    final windowsReady =
        !splitBootPartition || (windowsLine?.contains('type=7') ?? false);
    return bootReady && windowsReady;
  }

  Future<String> _getFilesystemType(String device) async {
    final res = await _processService.run('blkid', [
      '-s',
      'TYPE',
      '-o',
      'value',
      device,
    ]);
    return res.stdout.toString().trim().toLowerCase();
  }

  Future<ProcessResult> _writeNt6BootRecords(
    String disk,
    String targetDevice,
    List<String> logs,
  ) async {
    var res = await _processService.run('ms-sys', ['-7', disk]);
    if (res.exitCode != 0) return res;
    logs.add('NT6+ compatible MBR written to $disk.');
    if (res.stdout.trim().isNotEmpty) {
      logs.add('ms-sys MBR stdout: ${res.stdout.trim()}');
    }

    final fsType = await _getFilesystemType(targetDevice);
    logs.add('Detected filesystem type for $targetDevice: $fsType');

    if (fsType.contains('vfat') || fsType.contains('fat')) {
      res = await _processService.run('ms-sys', [
        '--fat32nt',
        '--partition',
        targetDevice,
      ]);
      if (res.exitCode == 0) {
        logs.add('NT6+ FAT32 volume boot record written to $targetDevice.');
        if (res.stdout.trim().isNotEmpty) {
          logs.add('ms-sys VBR stdout: ${res.stdout.trim()}');
        }
        return res;
      }
      logs.add(
        'WARNING: ms-sys --fat32nt --partition failed; trying --fat32nt.',
      );
      logs.add('ms-sys --fat32nt --partition stderr: ${res.stderr.trim()}');
      res = await _processService.run('ms-sys', ['--fat32nt', targetDevice]);
      if (res.exitCode == 0) return res;

      logs.add('WARNING: ms-sys --fat32nt failed; trying ms-sys -2 -p.');
      logs.add('ms-sys --fat32nt stderr: ${res.stderr.trim()}');
      res = await _processService.run('ms-sys', ['-2', '-p', targetDevice]);
      if (res.exitCode == 0) return res;

      logs.add('WARNING: ms-sys -2 -p failed; trying ms-sys -2.');
      logs.add('ms-sys -2 -p stderr: ${res.stderr.trim()}');
      return _processService.run('ms-sys', ['-2', targetDevice]);
    } else {
      res = await _processService.run('ms-sys', [
        '--ntfs',
        '--partition',
        targetDevice,
      ]);
      if (res.exitCode == 0) {
        logs.add('NT6+ NTFS volume boot record written to $targetDevice.');
        if (res.stdout.trim().isNotEmpty) {
          logs.add('ms-sys VBR stdout: ${res.stdout.trim()}');
        }
        return res;
      }

      logs.add('WARNING: ms-sys --ntfs --partition failed; trying --ntfs.');
      logs.add('ms-sys --ntfs --partition stderr: ${res.stderr.trim()}');
      res = await _processService.run('ms-sys', ['--ntfs', targetDevice]);
      if (res.exitCode == 0) return res;

      logs.add('WARNING: ms-sys --ntfs failed; trying ms-sys -n -p.');
      logs.add('ms-sys --ntfs stderr: ${res.stderr.trim()}');
      res = await _processService.run('ms-sys', ['-n', '-p', targetDevice]);
      if (res.exitCode == 0) return res;

      logs.add('WARNING: ms-sys -n -p failed; trying ms-sys -n.');
      logs.add('ms-sys -n -p stderr: ${res.stderr.trim()}');
      return _processService.run('ms-sys', ['-n', targetDevice]);
    }
  }

  Future<ProcessResult> _installLegacyGrubBootmgrBridge(
    String disk,
    String bootDir,
    String bootDevice,
    List<String> logs,
  ) async {
    final grubDir = Directory('$bootDir/Boot/grub');
    await grubDir.create(recursive: true);
    final uuidRes = await _processService.run('blkid', [
      '-s',
      'UUID',
      '-o',
      'value',
      bootDevice,
    ]);
    final bootFsUuid = uuidRes.stdout
        .toString()
        .trim()
        .split('\n')
        .first
        .trim();
    final searchCommand = bootFsUuid.isNotEmpty
        ? 'search --no-floppy --fs-uuid --set=root $bootFsUuid'
        : 'search --no-floppy --set=root --file /Boot/BCD';
    if (bootFsUuid.isNotEmpty) {
      logs.add('Legacy GRUB root pinned to $bootDevice UUID $bootFsUuid.');
    } else {
      logs.add(
        'WARNING: Could not read $bootDevice filesystem UUID; using Boot/BCD search fallback.',
      );
    }

    await File('${grubDir.path}/grub.cfg').writeAsString('''
set timeout=0
set default=0

insmod part_msdos
insmod fat
insmod ntfs
insmod ntldr
insmod search_fs_uuid
insmod search_fs_file

$searchCommand
ntldr /bootmgr
boot
''');

    final res = await _processService.run('grub-install', [
      '--target=i386-pc',
      '--boot-directory=$bootDir/Boot',
      '--modules=part_msdos fat ntfs ntldr search_fs_uuid search_fs_file biosdisk',
      '--recheck',
      '--force',
      disk,
    ]);
    if (res.exitCode == 0) {
      logs.add('Legacy GRUB bootmgr bridge installed on $disk.');
      if (res.stdout.trim().isNotEmpty) {
        logs.add('grub-install stdout: ${res.stdout.trim()}');
      }
    }
    return res;
  }

  Future<ProcessResult?> _runBcdSys({
    required String windowsDir,
    required String systemDir,
    required String firmware,
    required List<String> logs,
  }) async {
    const bcdSysDir = '/opt/requiem_installer/bcd-sys/Linux';
    const bcdSysScript = '$bcdSysDir/bcd-sys.sh';
    if (!File(bcdSysScript).existsSync()) {
      logs.add('BCD-SYS not found; using internal boot configuration.');
      return null;
    }

    final windowsRoot = Directory(windowsDir).parent.absolute.path;
    final systemRoot = Directory(systemDir).absolute.path;
    logs.add(
      'Running BCD-SYS: firmware=$firmware source=$windowsRoot system=$systemRoot',
    );

    final res = await _processService.run('bash', [
      bcdSysScript,
      windowsRoot,
      '-f',
      firmware,
      '-s',
      systemRoot,
      '-c',
      '-v',
      '-l',
      'en-us',
    ], workingDirectory: bcdSysDir);
    if (res.stdout.trim().isNotEmpty) {
      logs.add('BCD-SYS stdout: ${res.stdout.trim()}');
    }
    if (res.stderr.trim().isNotEmpty) {
      logs.add('BCD-SYS stderr: ${res.stderr.trim()}');
    }
    return res;
  }

  // ── Busca el directorio Boot/EFI dentro del Windows instalado ──────────────
  // Maneja variaciones de capitalización en el WIM (Windows/boot/efi vs
  // Windows/Boot/EFI) que ocurren en distintas versiones del instalador.
  Future<String?> _findBootEfiDir(String windowsDir) async {
    final candidates = [
      '$windowsDir/Boot/EFI',
      '$windowsDir/Boot/efi',
      '$windowsDir/boot/EFI',
      '$windowsDir/boot/efi',
    ];
    for (final candidate in candidates) {
      if (Directory(candidate).existsSync()) return candidate;
    }
    // Búsqueda recursiva case-insensitive si las rutas exactas fallan
    try {
      final bootDir = await _findCaseInsensitiveDir(windowsDir, 'Boot');
      if (bootDir == null) return null;
      final efiDir = await _findCaseInsensitiveDir(bootDir, 'EFI');
      return efiDir;
    } catch (_) {
      return null;
    }
  }

  Future<String?> _findCaseInsensitiveDir(
    String parentPath,
    String targetName,
  ) async {
    final parent = Directory(parentPath);
    if (!parent.existsSync()) return null;
    try {
      await for (final entity in parent.list()) {
        if (entity is Directory &&
            p.basename(entity.path).toLowerCase() == targetName.toLowerCase()) {
          return entity.path;
        }
      }
    } catch (_) {}
    return null;
  }

  // ── Localiza patch_bcd.py en las posibles rutas de instalación ─────────────
  // Busca en orden: ruta absoluta del instalador, directorio del ejecutable,
  // ruta del sistema, y directorio de trabajo actual.
  String? _findPatchBcdScript() {
    final candidates = [
      '/opt/requiem_installer/tools/patch_bcd.py',
      // Ruta relativa al ejecutable Flutter compilado
      '${p.dirname(Platform.resolvedExecutable)}/tools/patch_bcd.py',
      '${p.dirname(Platform.resolvedExecutable)}/data/flutter_assets/assets/tools/patch_bcd.py',
      // Ruta del sistema (útil en desarrollo)
      '/usr/local/bin/patch_bcd.py',
      '/usr/bin/patch_bcd.py',
    ];
    for (final candidate in candidates) {
      if (File(candidate).existsSync()) return candidate;
    }
    return null;
  }

  // ── Garantiza que EFI/BOOT/BOOTX64.EFI existe ─────────────────────────────
  // La spec UEFI §3.4.1 define /EFI/BOOT/BOOTX64.EFI como la ruta de arranque
  // por defecto cuando no existen entradas NVRAM. Es el seguro contra NVRAM
  // bloqueada por OEM o efibootmgr fallido.
  Future<void> _ensureFallbackBootx64(
    String efiDir,
    List<String> logs,
  ) async {
    final fallbackDir = '$efiDir/EFI/BOOT';
    final fallbackPath = '$fallbackDir/BOOTX64.EFI';
    final sourcePath = '$efiDir/EFI/Microsoft/Boot/bootmgfw.efi';

    if (!File(sourcePath).existsSync()) {
      logs.add('WARNING: Cannot create BOOTX64.EFI — bootmgfw.efi not found.');
      return;
    }

    await _processService.run('mkdir', ['-p', fallbackDir]);
    final res = await _processService.run('cp', [sourcePath, fallbackPath]);
    if (res.exitCode == 0) {
      logs.add('Fallback UEFI path ensured: EFI/BOOT/BOOTX64.EFI.');
    } else {
      logs.add('WARNING: Could not create EFI/BOOT/BOOTX64.EFI: ${res.stderr.trim()}');
    }
  }

  // ── Inyecta locate=custom en el BCD como fallback robusto ─────────────────
  // Implementa la Estrategia B del PDF técnico. El parámetro locate=custom
  // en los elementos 11000001 (device) y 21000001 (osdevice) del BCD instruye
  // a bootmgfw.efi para que escanee todos los dispositivos de bloque en busca
  // de la cadena \Windows\system32\winload.efi definida en el elemento 12000002,
  // eliminando completamente la dependencia del PARTUUID específico.
  //
  // Ventaja: funciona en hardware nuevo (NVMe), viejo (SATA), y en VMs.
  // Riesgo: en discos con múltiples instalaciones Windows arrancará la primera
  // que encuentre (no necesariamente la que instalamos). Aceptable para uso
  // con disco limpio (instalación desde cero).
  Future<bool> _injectLocateCustomBcd(
    String bcdPath,
    List<String> logs,
  ) async {
    if (!File(bcdPath).existsSync() || File(bcdPath).lengthSync() == 0) {
      logs.add('ERROR: BCD not found at $bcdPath for locate=custom injection.');
      return false;
    }

    // Script Python inline que inyecta locate=custom usando python3-hivex
    // El valor 0x12000002 del elemento 12000002 es el path del loader y ya
    // contiene \Windows\system32\winload.efi en el BCD-Template.
    // Los elementos 11000001 (device) y 21000001 (osdevice) se reescriben
    // con el tipo "custom" que indica a bootmgfw.efi que busque el loader.
    const inlineScript = r"""
import sys
import struct

try:
    import hivex
except ImportError:
    print("ERROR: python3-hivex not installed")
    sys.exit(1)

bcd_path = sys.argv[1]

# Valor binario para locate=custom:12000002
# Esto es un device element de tipo 0 (custom/locate) con el sub-elemento
# 12000002 codificado en little-endian como referencia de localización.
# Formato: header(0x10) + locate_type(4) + sub_element(4) + padding(8) = 0x20
def make_locate_custom_element():
    data = bytearray(0x20)
    # Type=0 (custom/locate device), flags=0
    struct.pack_into('<I', data, 0x00, 0)
    struct.pack_into('<I', data, 0x04, 0)
    struct.pack_into('<I', data, 0x08, 0x20)  # size
    struct.pack_into('<I', data, 0x0C, 0)
    # Locate type: 0 = custom, sub-element = 0x12000002
    struct.pack_into('<I', data, 0x10, 0)
    struct.pack_into('<I', data, 0x14, 0x12000002)
    return bytes(data)

locate_data = make_locate_custom_element()

try:
    h = hivex.Hivex(bcd_path, write=True)
    root = h.root()

    objects_node = None
    for child in h.node_children(root):
        if h.node_name(child).lower() == "objects":
            objects_node = child
            break

    if objects_node is None:
        print("ERROR: Objects key not found in BCD")
        sys.exit(1)

    patched = 0
    for obj in h.node_children(objects_node):
        elements_node = None
        for child in h.node_children(obj):
            if h.node_name(child).lower() == "elements":
                elements_node = child
                break
        if elements_node is None:
            continue

        for el in h.node_children(elements_node):
            el_name = h.node_name(el)
            if el_name in ["11000001", "21000001"]:
                try:
                    val = h.node_get_value(el, "Element")
                    if val:
                        h.node_set_value(el, {"key": "Element", "t": 3, "value": locate_data})
                        print(f"Injected locate=custom into {h.node_name(obj)}/Elements/{el_name}")
                        patched += 1
                except Exception as e:
                    print(f"Warning: Could not patch {el_name}: {e}")

    if patched == 0:
        print("ERROR: No device elements found to inject locate=custom")
        sys.exit(1)

    h.commit(None)
    print(f"locate=custom injected into {patched} elements. bootmgfw.efi will scan all disks.")
    sys.exit(0)

except Exception as e:
    print(f"ERROR: {e}")
    sys.exit(1)
""";

    // Escribir el script en un archivo temporal con nombre único
    final scriptPath = '/tmp/inject_locate_custom_${DateTime.now().millisecondsSinceEpoch}.py';
    try {
      await File(scriptPath).writeAsString(inlineScript);
      final res = await _processService.run('python3', [scriptPath, bcdPath]);
      if (res.stdout.trim().isNotEmpty) logs.add('locate=custom: ${res.stdout.trim()}');
      if (res.stderr.trim().isNotEmpty) logs.add('locate=custom stderr: ${res.stderr.trim()}');
      if (res.exitCode == 0) {
        logs.add('BCD locate=custom injected. bootmgfw.efi will scan all disks for winload.efi.');
        return true;
      }
      logs.add('ERROR: locate=custom injection failed (exit ${res.exitCode}).');
      return false;
    } finally {
      try {
        if (File(scriptPath).existsSync()) await File(scriptPath).delete();
      } catch (_) {}
    }
  }
}
