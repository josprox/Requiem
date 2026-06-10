import 'dart:async';
import 'dart:io';
import 'package:flutter/foundation.dart';
import 'process_service.dart';

/// Progress update from a deployment operation.
class DeploymentProgress {
  final double percentage; // -1 if this is a status message only
  final String status;
  final bool isError;

  const DeploymentProgress(this.percentage, this.status, {this.isError = false});
}

class DeploymentService {
  final ProcessService _processService = ProcessService();

  /// Applies a WIM/SWM image using DISM (Windows) or wimlib-imagex (Linux).
  Stream<DeploymentProgress> applyImage({
    required String imagePath,
    required String applyDir,
    int index = 1,
    String? swmPattern,
  }) async* {
    if (Platform.isLinux) {
      yield* _applyImageLinux(imagePath: imagePath, applyDir: applyDir, index: index, swmPattern: swmPattern);
    } else {
      yield* _applyImageWindows(imagePath: imagePath, applyDir: applyDir, index: index, swmPattern: swmPattern);
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
      yield DeploymentProgress(-1, 'ERROR: Image file not found: $imagePath', isError: true);
      return;
    }

    final List<String> args = [
      'apply',
      imagePath,
      index.toString(),
      applyDir,
    ];

    if (swmPattern != null) {
      args.add('--ref=$swmPattern');
    }

    // wimlib-imagex reports progress to stdout
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
          yield DeploymentProgress(pct / 100.0, 'Applying WIM image: ${pct.toStringAsFixed(0)}%');
        }
      } else {
        final isErr = trimmed.contains('ERROR') || trimmed.contains('error') || trimmed.contains('[ERR]');
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
      yield DeploymentProgress(-1, 'ERROR: Image file not found: $imagePath', isError: true);
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
          yield DeploymentProgress(pct / 100.0, 'Applying image: ${pct.toStringAsFixed(1)}%');
        }
      } else {
        final isErr = trimmed.contains('Error') || trimmed.contains('error');
        yield DeploymentProgress(-1, trimmed, isError: isErr);
      }
    }
  }

  /// Configures the bootloader using BCDBoot (Windows) or manual copy + efibootmgr/ms-sys (Linux).
  Future<bool> configureBootloader(
    String windowsDir,
    String efiDir, {
    bool uefi = true,
    bool bios = false,
    String? espDevice,       // Required on Linux
    String? windowsDevice,   // Required on Linux
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
    return _configureBootloaderWindows(windowsDir, efiDir, uefi: uefi, bios: bios);
  }

  // Helper to determine mode
  bool uuefi(bool uefi, bool bios) {
    if (uefi && bios) return true; // Default to UEFI if both specified
    return uefi;
  }

  /// Linux bootloader setup.
  Future<bool> _configureBootloaderLinux(
    String windowsDir,
    String efiDir, {
    required bool uefi,
    required bool bios,
    String? espDevice,
    String? windowsDevice,
  }) async {
    if (uefi) {
      if (espDevice == null || windowsDevice == null) {
        debugPrint('Missing devices for UEFI boot configuration.');
        return false;
      }

      // 1. Create UEFI directories
      var res = await _processService.run('mkdir', ['-p', '$efiDir/EFI/Microsoft/Boot']);
      if (res.exitCode != 0) return false;
      res = await _processService.run('mkdir', ['-p', '$efiDir/EFI/Boot']);
      if (res.exitCode != 0) return false;

      // 2. Copy bootloader files
      res = await _processService.run('sh', [
        '-c',
        'cp -r "$windowsDir/Boot/EFI/"* "$efiDir/EFI/Microsoft/Boot/"'
      ]);
      if (res.exitCode != 0) return false;

      res = await _processService.run('cp', [
        '$efiDir/EFI/Microsoft/Boot/bootmgfw.efi',
        '$efiDir/EFI/Boot/bootx64.efi'
      ]);
      if (res.exitCode != 0) return false;

      // 3. Copy template BCD
      res = await _processService.run('cp', [
        '$windowsDir/Boot/DVD/EFI/BCD',
        '$efiDir/EFI/Microsoft/Boot/BCD'
      ]);
      if (res.exitCode != 0) return false;

      // 4. Patch BCD
      res = await _processService.run('python3', [
        '/opt/joss_red_installer/tools/patch_bcd.py',
        '$efiDir/EFI/Microsoft/Boot/BCD',
        espDevice,
        windowsDevice,
      ]);
      if (res.exitCode != 0) {
        debugPrint('BCD Patching failed: ${res.stdout} ${res.stderr}');
        // Proceed anyway, fallback relative loader might still work
      }

      // 5. Run efibootmgr to register UEFI Boot Entry
      final match = RegExp(r'^(/dev/nvme\d+n\d+|/dev/sd[a-z])p?(\d+)$').firstMatch(espDevice);
      if (match != null) {
        final disk = match.group(1)!;
        final part = match.group(2)!;
        
        // Remove existing "Windows Boot Manager" entries to prevent duplicates
        await _processService.run('sh', [
          '-c',
          'efibootmgr | grep "Windows Boot Manager" | cut -d" " -f1 | cut -d"t" -f2 | cut -d"*" -f1 | xargs -I {} efibootmgr -b {} -B'
        ]);

        await _processService.run('efibootmgr', [
          '-c',
          '-d', disk,
          '-p', part,
          '-L', 'Windows Boot Manager',
          '-l', '\\EFI\\Microsoft\\Boot\\bootmgfw.efi',
        ]);
      }

      return true;
    } else {
      // Legacy BIOS
      if (windowsDevice == null) {
        debugPrint('Missing windowsDevice for BIOS boot configuration.');
        return false;
      }

      // 1. Copy PCAT bootmgr to Windows partition root
      var res = await _processService.run('cp', [
        '$windowsDir/Boot/PCAT/bootmgr',
        '$efiDir/bootmgr'
      ]);
      if (res.exitCode != 0) return false;

      // 2. Create Boot directory
      res = await _processService.run('mkdir', ['-p', '$efiDir/Boot']);
      if (res.exitCode != 0) return false;

      // 3. Copy template BCD & SDI files
      res = await _processService.run('cp', [
        '$windowsDir/Boot/DVD/PCAT/BCD',
        '$efiDir/Boot/BCD'
      ]);
      if (res.exitCode != 0) return false;

      res = await _processService.run('cp', [
        '$windowsDir/Boot/DVD/PCAT/boot.sdi',
        '$efiDir/Boot/boot.sdi'
      ]);
      if (res.exitCode != 0) return false;

      // 4. Patch BCD (both devices point to windowsDevice)
      res = await _processService.run('python3', [
        '/opt/joss_red_installer/tools/patch_bcd.py',
        '$efiDir/Boot/BCD',
        windowsDevice,
        windowsDevice,
      ]);
      if (res.exitCode != 0) {
        debugPrint('BIOS BCD Patching failed: ${res.stdout} ${res.stderr}');
      }

      // 5. Write MBR & VBR Boot Code using ms-sys
      final diskMatch = RegExp(r'^(/dev/nvme\d+n\d+|/dev/sd[a-z])').firstMatch(windowsDevice);
      if (diskMatch != null) {
        final disk = diskMatch.group(1)!;
        
        // Write Win7/10/11 compatible MBR
        await _processService.run('ms-sys', ['-7', disk]);
      }

      // Write NTFS VBR
      await _processService.run('ms-sys', ['-ntfs', windowsDevice]);

      return true;
    }
  }

  /// Windows bootloader setup using bcdboot.exe.
  Future<bool> _configureBootloaderWindows(
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
      '/s', efiDir,
      '/f', firmware,
    ]);

    if (!result.success) {
      debugPrint('BCDBoot failed: ${result.stdout} ${result.stderr}');
    }

    return result.success;
  }

  /// Clones a disk using DISM (Windows only).
  Stream<DeploymentProgress> cloneDisk({
    required String sourceDrive,
    required String tempImagePath,
    required String targetDrive,
  }) async* {
    if (Platform.isLinux) {
      yield const DeploymentProgress(-1, 'ERROR: Disk cloning is only supported on Windows in this version.', isError: true);
      return;
    }

    yield const DeploymentProgress(-1, 'Step 1/2: Capturing source disk to WIM...');

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
        yield DeploymentProgress(pct / 200.0, 'Capturing: ${pct.toStringAsFixed(1)}%');
      }
    }

    yield const DeploymentProgress(0.5, 'Step 2/2: Applying image to target disk...');
    yield* applyImage(imagePath: tempImagePath, applyDir: '$targetDrive\\');
  }
}
