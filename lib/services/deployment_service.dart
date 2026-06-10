import 'dart:async';
import 'dart:io';
import 'package:flutter/foundation.dart';
import 'process_service.dart';

/// Progress update from a deployment operation.
class DeploymentProgress {
  final double percentage; // -1 if this is a status message only
  final String status;
  final bool isError;

  const DeploymentProgress(
    this.percentage,
    this.status, {
    this.isError = false,
  });
}

class BootloaderResult {
  final bool success;
  final List<String> logs;

  const BootloaderResult(this.success, this.logs);
}

class DeploymentService {
  final ProcessService _processService = ProcessService();

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

      if (source == destination) {
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

  /// Applies a WIM/SWM image using DISM (Windows) or wimlib-imagex (Linux).
  Stream<DeploymentProgress> applyImage({
    required String imagePath,
    required String applyDir,
    int index = 1,
    String? swmPattern,
  }) async* {
    if (Platform.isLinux) {
      yield* _applyImageLinux(
        imagePath: imagePath,
        applyDir: applyDir,
        index: index,
        swmPattern: swmPattern,
      );
    } else {
      yield* _applyImageWindows(
        imagePath: imagePath,
        applyDir: applyDir,
        index: index,
        swmPattern: swmPattern,
      );
    }
  }

  /// Linux WIM application using wimlib-imagex.
  Stream<DeploymentProgress> _applyImageLinux({
    required String imagePath,
    required String applyDir,
    required int index,
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

    final List<String> args = ['apply', imagePath, index.toString(), applyDir];

    if (swmPattern != null) {
      args.add('--ref=$swmPattern');
    }

    // wimlib-imagex reports progress to stdout
    final progressRegex = RegExp(r'(\d+)%');
    double lastPercent = 0;

    final stream = _processService.runStreaming(
      'wimlib-imagex',
      args,
      terminalOutputMatcher: (line) =>
          progressRegex.hasMatch(line) && line.contains('100%'),
      terminalOutputGrace: const Duration(seconds: 45),
    );

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

  /// Windows WIM application using DISM.
  Stream<DeploymentProgress> _applyImageWindows({
    required String imagePath,
    required String applyDir,
    required int index,
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

    List<String> args = [
      '/Apply-Image',
      '/ImageFile:$imagePath',
      '/Index:$index',
      '/ApplyDir:$applyDir',
    ];

    if (swmPattern != null) {
      args.add('/SWMFile:$swmPattern');
    }

    final progressRegex = RegExp(r'(\d+\.\d+)%');
    double lastPercent = 0;

    final stream = _processService.runStreaming('dism.exe', args);

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
            'Applying image: ${pct.toStringAsFixed(1)}%',
          );
        }
      } else {
        final isErr = trimmed.contains('Error') || trimmed.contains('error');
        yield DeploymentProgress(-1, trimmed, isError: isErr);
      }
    }
  }

  /// Configures the bootloader using BCDBoot (Windows) or manual copy + efibootmgr/ms-sys (Linux).
  Future<BootloaderResult> configureBootloader(
    String windowsDir,
    String efiDir, {
    bool uefi = true,
    bool bios = false,
    String? espDevice, // Required on Linux
    String? windowsDevice, // Required on Linux
  }) async {
    if (Platform.isLinux) {
      return _configureBootloaderLinux(
        windowsDir,
        efiDir,
        uefi: uuefi(uefi, bios),
        bios: bios,
        espDevice: espDevice,
        windowsDevice: windowsDevice,
      );
    }
    return _configureBootloaderWindows(
      windowsDir,
      efiDir,
      uefi: uefi,
      bios: bios,
    );
  }

  // Helper to determine mode
  bool uuefi(bool uefi, bool bios) {
    if (uefi && bios) return true; // Default to UEFI if both specified
    return uefi;
  }

  /// Linux bootloader setup.
  Future<BootloaderResult> _configureBootloaderLinux(
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

    if (uefi) {
      if (espDevice == null || windowsDevice == null) {
        return fail('Missing devices for UEFI boot configuration.');
      }

      logs.add('UEFI boot mode selected.');
      logs.add('Windows directory: $windowsDir');
      logs.add('EFI mount: $efiDir');
      logs.add('ESP device: $espDevice');
      logs.add('Windows device: $windowsDevice');

      // 1. Create UEFI directories
      var res = await _processService.run('mkdir', [
        '-p',
        '$efiDir/EFI/Microsoft/Boot',
      ]);
      if (res.exitCode != 0) {
        return fail('Could not create Microsoft EFI boot directory.', res);
      }
      res = await _processService.run('mkdir', ['-p', '$efiDir/EFI/Boot']);
      if (res.exitCode != 0) {
        return fail('Could not create fallback EFI boot directory.', res);
      }

      // 2. Copy bootloader files
      res = await _processService.run('sh', [
        '-c',
        'cp -r "$windowsDir/Boot/EFI/"* "$efiDir/EFI/Microsoft/Boot/"',
      ]);
      if (res.exitCode != 0) {
        return fail(
          'Could not copy Windows EFI boot files. This WIM may not contain Windows/Boot/EFI.',
          res,
        );
      }
      logs.add('Copied Windows EFI boot files.');

      final efiBootManager = await _findFirstExistingCaseInsensitive([
        '$efiDir/EFI/Microsoft/Boot/bootmgfw.efi',
        '$efiDir/EFI/Microsoft/Boot/bootmgr.efi',
        '$windowsDir/Boot/EFI/bootmgfw.efi',
        '$windowsDir/Boot/EFI/bootmgr.efi',
      ]);
      if (efiBootManager == null) {
        return fail(
          'Could not find bootmgfw.efi or bootmgr.efi. This WIM looks like a BIOS/MBR backup; use Format MBR or boot the VM in BIOS firmware.',
        );
      }

      logs.add('Using EFI boot manager: $efiBootManager');
      res = await _processService.run('cp', [
        efiBootManager,
        '$efiDir/EFI/Microsoft/Boot/bootmgfw.efi',
      ]);
      if (res.exitCode != 0) {
        return fail('Could not create EFI/Microsoft/Boot/bootmgfw.efi.', res);
      }

      res = await _processService.run('cp', [
        efiBootManager,
        '$efiDir/EFI/Boot/bootx64.efi',
      ]);
      if (res.exitCode != 0) {
        return fail('Could not create fallback EFI bootx64.efi.', res);
      }
      logs.add('Created fallback EFI/Boot/bootx64.efi.');

      // 3. Copy BCD template. Captured Windows WIMs normally have BCD-Template,
      // while install media WIMs may also have Boot/DVD/EFI/BCD.
      final bcdCopied = await _copyFirstExisting(
        [
          '$windowsDir/System32/Config/BCD-Template',
          '$windowsDir/Boot/DVD/EFI/BCD',
          '$windowsDir/Boot/BCD',
        ],
        '$efiDir/EFI/Microsoft/Boot/BCD',
        logs,
      );
      if (!bcdCopied) {
        return fail('Could not find or copy a BCD template.');
      }

      // 4. Patch BCD
      res = await _processService.run('python3', [
        '/opt/joss_red_installer/tools/patch_bcd.py',
        '$efiDir/EFI/Microsoft/Boot/BCD',
        espDevice,
        windowsDevice,
      ]);
      if (res.exitCode != 0) {
        return fail('BCD patching failed.', res);
      }
      logs.add('BCD patched successfully.');

      // 5. Run efibootmgr to register UEFI Boot Entry
      final match = RegExp(
        r'^(/dev/nvme\d+n\d+|/dev/sd[a-z])p?(\d+)$',
      ).firstMatch(espDevice);
      if (match != null) {
        final disk = match.group(1)!;
        final part = match.group(2)!;
        logs.add('Registering UEFI entry on disk $disk partition $part.');

        // Remove existing "Windows Boot Manager" entries to prevent duplicates
        await _processService.run('sh', [
          '-c',
          'efibootmgr | grep "Windows Boot Manager" | cut -d" " -f1 | cut -d"t" -f2 | cut -d"*" -f1 | xargs -I {} efibootmgr -b {} -B',
        ]);

        res = await _processService.run('efibootmgr', [
          '-c',
          '-d',
          disk,
          '-p',
          part,
          '-L',
          'Windows Boot Manager',
          '-l',
          '\\EFI\\Microsoft\\Boot\\bootmgfw.efi',
        ]);
        if (res.exitCode != 0) {
          logs.add(
            'WARNING: efibootmgr failed. Fallback bootx64.efi was still created.',
          );
          if (res.stderr.trim().isNotEmpty) {
            logs.add('efibootmgr stderr: ${res.stderr.trim()}');
          }
        }
      } else {
        logs.add('WARNING: Could not parse ESP device for efibootmgr.');
      }

      return BootloaderResult(true, logs);
    } else {
      // Legacy BIOS
      if (windowsDevice == null) {
        return fail('Missing windowsDevice for BIOS boot configuration.');
      }

      logs.add('Legacy BIOS boot mode selected.');
      logs.add('Windows directory: $windowsDir');
      logs.add('Boot target: $efiDir');
      logs.add('Windows device: $windowsDevice');

      // 1. Ensure legacy bootmgr exists at the Windows partition root. Captured
      // BIOS/MBR backups usually already contain /bootmgr and /Boot/BCD.
      final bootmgrReady = await _copyFirstExisting(
        ['$efiDir/bootmgr', '$windowsDir/Boot/PCAT/bootmgr'],
        '$efiDir/bootmgr',
        logs,
      );
      if (!bootmgrReady) {
        return fail('Could not find or create legacy bootmgr.');
      }

      // 2. Create Boot directory
      var res = await _processService.run('mkdir', ['-p', '$efiDir/Boot']);
      if (res.exitCode != 0) {
        return fail('Could not create legacy Boot directory.', res);
      }

      // 3. Copy BCD template. BCD-Template is available in normal captured Windows WIMs.
      final bcdCopied = await _copyFirstExisting(
        [
          '$efiDir/Boot/BCD',
          '$windowsDir/System32/Config/BCD-Template',
          '$windowsDir/Boot/DVD/PCAT/BCD',
          '$windowsDir/Boot/BCD',
        ],
        '$efiDir/Boot/BCD',
        logs,
      );
      if (!bcdCopied) {
        return fail('Could not find or copy a legacy BCD template.');
      }

      // boot.sdi is useful for ramdisk entries but is not required for normal Windows boot.
      if (File('$windowsDir/Boot/DVD/PCAT/boot.sdi').existsSync()) {
        await _processService.run('cp', [
          '$windowsDir/Boot/DVD/PCAT/boot.sdi',
          '$efiDir/Boot/boot.sdi',
        ]);
      }

      // 4. Patch BCD (both devices point to windowsDevice)
      res = await _processService.run('python3', [
        '/opt/joss_red_installer/tools/patch_bcd.py',
        '$efiDir/Boot/BCD',
        windowsDevice,
        windowsDevice,
      ]);
      if (res.exitCode != 0) {
        return fail('BIOS BCD patching failed.', res);
      }
      logs.add('Legacy BCD patched successfully.');

      // 5. Mark the Windows partition active and write MBR/VBR boot code.
      final disk = _parentDiskFromPartition(windowsDevice);
      final partitionNumber = _partitionNumberFromPath(windowsDevice);
      if (disk != null && partitionNumber != null) {
        logs.add(
          'Setting active boot flag on $disk partition $partitionNumber.',
        );
        res = await _processService.run('sfdisk', [
          '--activate',
          disk,
          partitionNumber,
        ]);
        if (res.exitCode != 0) {
          logs.add(
            'WARNING: sfdisk --activate failed; trying parted boot flag.',
          );
          logs.add('sfdisk stderr: ${res.stderr.trim()}');

          res = await _processService.run('parted', [
            '-s',
            disk,
            'set',
            partitionNumber,
            'boot',
            'on',
          ]);
          if (res.exitCode != 0) {
            return fail('Could not mark Windows partition active.', res);
          }
        }

        await _processService.run('partprobe', [disk]);
        await _processService.run('udevadm', ['settle']);

        // Write Win7/10/11 compatible MBR
        res = await _processService.run('ms-sys', ['-7', disk]);
        if (res.exitCode != 0) {
          return fail('ms-sys MBR write failed.', res);
        }
        logs.add('Windows-compatible MBR written to $disk.');
      } else {
        logs.add('WARNING: Could not parse parent disk for $windowsDevice.');
      }

      // Write NTFS VBR
      res = await _processService.run('ms-sys', ['--ntfs', windowsDevice]);
      if (res.exitCode != 0) {
        logs.add('WARNING: ms-sys --ntfs failed; trying ms-sys -n.');
        logs.add('ms-sys --ntfs stderr: ${res.stderr.trim()}');
        res = await _processService.run('ms-sys', ['-n', windowsDevice]);
        if (res.exitCode != 0) {
          return fail('ms-sys NTFS VBR write failed.', res);
        }
      }
      logs.add('NTFS volume boot record written to $windowsDevice.');

      return BootloaderResult(true, logs);
    }
  }

  /// Windows bootloader setup using bcdboot.exe.
  Future<BootloaderResult> _configureBootloaderWindows(
    String windowsDir,
    String efiDir, {
    required bool uefi,
    required bool bios,
  }) async {
    String firmware;
    if (uefi && bios) {
      firmware = 'ALL';
    } else if (bios) {
      firmware = 'BIOS';
    } else {
      firmware = 'UEFI';
    }

    final result = await _processService.run('bcdboot.exe', [
      windowsDir,
      '/s',
      efiDir,
      '/f',
      firmware,
    ]);

    if (!result.success) {
      debugPrint('BCDBoot failed: ${result.stdout} ${result.stderr}');
    }

    return BootloaderResult(result.success, [
      'bcdboot.exe ${result.success ? 'completed' : 'failed'}',
      if (result.stdout.trim().isNotEmpty) 'stdout: ${result.stdout.trim()}',
      if (result.stderr.trim().isNotEmpty) 'stderr: ${result.stderr.trim()}',
    ]);
  }

  /// Clones a disk using DISM (Windows only).
  Stream<DeploymentProgress> cloneDisk({
    required String sourceDrive,
    required String tempImagePath,
    required String targetDrive,
  }) async* {
    if (Platform.isLinux) {
      yield const DeploymentProgress(
        -1,
        'ERROR: Disk cloning is only supported on Windows in this version.',
        isError: true,
      );
      return;
    }

    yield const DeploymentProgress(
      -1,
      'Step 1/2: Capturing source disk to WIM...',
    );

    final captureStream = _processService.runStreaming('dism.exe', [
      '/Capture-Image',
      '/ImageFile:$tempImagePath',
      '/CaptureDir:$sourceDrive\\',
      '/Name:CloneImage',
      '/Compress:fast',
    ]);

    final progressRegex = RegExp(r'(\d+\.\d+)%');
    await for (final line in captureStream) {
      final trimmed = line.trim();
      if (trimmed.isEmpty) continue;
      final match = progressRegex.firstMatch(trimmed);
      if (match != null) {
        final pct = double.tryParse(match.group(1) ?? '0') ?? 0.0;
        yield DeploymentProgress(
          pct / 200.0,
          'Capturing: ${pct.toStringAsFixed(1)}%',
        );
      }
    }

    yield const DeploymentProgress(
      0.5,
      'Step 2/2: Applying image to target disk...',
    );
    yield* applyImage(imagePath: tempImagePath, applyDir: '$targetDrive\\');
  }
}
