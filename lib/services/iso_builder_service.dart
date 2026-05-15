import 'dart:io';
import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';
import 'package:path/path.dart' as p;
import 'process_service.dart';

/// Robust ISO Builder Service
/// Uses PowerShell-based WIM mounting to avoid stale DISM locks.
class IsoBuilderService {
  final ProcessService _processService = ProcessService();

  // ─── Paths ────────────────────────────────────────────────────────────────
  late final String _baseDir;
  late final String winPePath;
  late final String mountDir;
  late final String mediaDir;
  late final String toolsPath;
  late final String _assetsTempDir;

  IsoBuilderService() {
    final tempPath = Directory.systemTemp.path;
    _baseDir = p.join(tempPath, 'JossRedInstallerBuild');
    winPePath    = p.join(_baseDir, 'winpe_base');
    mountDir     = p.join(_baseDir, 'dism_mount');
    mediaDir     = p.join(_baseDir, 'winpe_base', 'media');
    toolsPath    = p.join(_baseDir, 'tools');
    _assetsTempDir = p.join(_baseDir, 'temp_assets');
  }

  // ─── Essential VC++ DLLs for WinPE ───────────────────────────────────────
  static const List<String> _essentialDlls = [
    'msvcp140.dll',
    'vcruntime140.dll',
    'vcruntime140_1.dll',
    'msvcp140_1.dll',
    'msvcp140_2.dll',
  ];

  // ─── Asset Extraction ─────────────────────────────────────────────────────
  Future<void> _extractAsset(String assetPath, String targetPath) async {
    final data = await rootBundle.load(assetPath);
    final file = File(targetPath);
    await file.parent.create(recursive: true);
    await file.writeAsBytes(data.buffer.asUint8List());
  }

  Future<void> _prepareAssets(void Function(String) log) async {
    await Directory(_assetsTempDir).create(recursive: true);

    // ── boot.wim ──────────────────────────────────────────────────────────
    final tempBootWim = p.join(_assetsTempDir, 'base_boot.wim');
    if (!File(tempBootWim).existsSync() || File(tempBootWim).lengthSync() < 1000) {
      log('Extracting boot.wim from embedded assets...');
      await _extractAsset('assets/winpe/boot.wim', tempBootWim);
      log('boot.wim extracted (${(File(tempBootWim).lengthSync() / 1024 / 1024).toStringAsFixed(1)} MB)');
    } else {
      log('boot.wim already cached (${(File(tempBootWim).lengthSync() / 1024 / 1024).toStringAsFixed(1)} MB)');
    }

    // ── oscdimg.exe ───────────────────────────────────────────────────────
    final tempOscdimg = p.join(_assetsTempDir, 'tools', 'oscdimg.exe');
    if (!File(tempOscdimg).existsSync() || File(tempOscdimg).lengthSync() < 1000) {
      log('Extracting oscdimg.exe from embedded assets...');
      await _extractAsset('assets/tools/oscdimg.exe', tempOscdimg);
      log('oscdimg.exe extracted.');
    } else {
      log('oscdimg.exe already cached.');
    }

    // ── etfsboot.com (BIOS boot sector) ──────────────────────────────────
    final etfsDest = File(p.join(mediaDir, 'boot', 'etfsboot.com'));
    if (!etfsDest.existsSync() || etfsDest.lengthSync() < 512) {
      log('Extracting etfsboot.com from embedded assets...');
      await _extractAsset('assets/winpe/boot/etfsboot.com', etfsDest.path);
      log('  ✓ etfsboot.com ready.');
    } else {
      log('etfsboot.com already cached.');
    }

    // ── efisys.bin (UEFI boot sector) ────────────────────────────────────
    final efisysDest = File(p.join(mediaDir, 'efi', 'microsoft', 'boot', 'efisys.bin'));
    if (!efisysDest.existsSync() || efisysDest.lengthSync() < 512) {
      log('Extracting efisys.bin from embedded assets...');
      await _extractAsset('assets/winpe/boot/efisys.bin', efisysDest.path);
      log('  ✓ efisys.bin ready.');
    } else {
      log('efisys.bin already cached.');
    }

    // ── VC++ Runtime DLLs ───────────────────────────────────────────────
    final dllsTempDir = p.join(_assetsTempDir, 'dlls');
    await Directory(dllsTempDir).create(recursive: true);
    for (final dll in _essentialDlls) {
      final dllDest = File(p.join(dllsTempDir, dll));
      if (!dllDest.existsSync() || dllDest.lengthSync() < 1000) {
        await _extractAsset('assets/dlls/$dll', dllDest.path);
      }
    }
    log('VC++ runtime DLLs extracted.');

    log('All embedded assets prepared.');
  }

  // ─── Boot files are now embedded assets — no DISM extraction needed ───────
  /// Validates that boot sector files were correctly extracted in _prepareAssets.
  Future<void> _prepareBootFiles(
    String wimFilePath,
    void Function(String) log,
  ) async {
    final etfsboot = File(p.join(mediaDir, 'boot', 'etfsboot.com'));
    final efisys   = File(p.join(mediaDir, 'efi', 'microsoft', 'boot', 'efisys.bin'));

    if (etfsboot.existsSync() && efisys.existsSync()) {
      log('Boot sector files verified (embedded assets).');
      return;
    }

    // If somehow missing (e.g., cache wiped between steps), re-extract
    if (!etfsboot.existsSync()) {
      log('Re-extracting etfsboot.com...');
      await _extractAsset('assets/winpe/boot/etfsboot.com', etfsboot.path);
    }
    if (!efisys.existsSync()) {
      log('Re-extracting efisys.bin...');
      await _extractAsset('assets/winpe/boot/efisys.bin', efisys.path);
    }
    log('  ✓ Boot sector files ready.');
  }

  // ─── DISM Utility: Force-Unmount ALL mounts referencing our WIM file ─────
  /// Uses PowerShell to find and discard any mounted WIM sessions that point
  /// to our boot.wim before a fresh mount. This resolves error 0xc1420127.
  Future<void> _forceUnmountAll(String wimFilePath, void Function(String) log) async {
    log('Scanning for stale WIM mounts...');

    // Use DISM /Get-MountedWimInfo and parse the output
    final result = await _processService.run('dism.exe', ['/Get-MountedWimInfo']);
    final output = result.stdout.toString();

    // Parse mount entries
    final mountDirRegex = RegExp(r'Mount Dir\s*:\s*(.+)', caseSensitive: false);
    final wimFileRegex  = RegExp(r'Image File\s*:\s*(.+)', caseSensitive: false);
    final statusRegex   = RegExp(r'Status\s*:\s*(.+)', caseSensitive: false);

    final lines = output.split('\n');
    String? currentMountDir;
    String? currentWimFile;

    for (final line in lines) {
      final mountMatch = mountDirRegex.firstMatch(line);
      final wimMatch   = wimFileRegex.firstMatch(line);
      final statusMatch = statusRegex.firstMatch(line);

      if (mountMatch != null) currentMountDir = mountMatch.group(1)?.trim();
      if (wimMatch != null)   currentWimFile  = wimMatch.group(1)?.trim();

      if (statusMatch != null && currentMountDir != null) {
        // If this mount references our WIM or our mount directory, discard it
        final isDirMatch = currentMountDir.toLowerCase() == mountDir.toLowerCase();
        final isWimMatch = currentWimFile?.toLowerCase() == wimFilePath.toLowerCase();

        if (isDirMatch || isWimMatch) {
          log('Discarding stale mount: $currentMountDir');
          final discardResult = await _processService.run('dism.exe', [
            '/Unmount-Wim',
            '/MountDir:$currentMountDir',
            '/Discard',
          ]);
          if (discardResult.exitCode == 0) {
            log('  ✓ Stale mount discarded successfully.');
          } else {
            log('  ⚠ Could not discard mount: ${discardResult.stdout.trim()}');
          }
        }
        currentMountDir = null;
        currentWimFile  = null;
      }
    }

    // Final global cleanup
    log('Running DISM global cleanup...');
    await _processService.run('dism.exe', ['/Cleanup-Mountpoints']);
    await _processService.run('dism.exe', ['/Cleanup-Wim']);
    log('DISM environment is clean.');
  }

  // ─── Safe Mount: Ensures clean folder and mounts ─────────────────────────
  Future<ProcessResult> _safeMount(String wimFile, void Function(String) log) async {
    // Ensure mount directory is EMPTY (required by DISM)
    if (Directory(mountDir).existsSync()) {
      try {
        await Directory(mountDir).delete(recursive: true);
      } catch (_) {
        // May fail if DISM still holds it; the force-unmount above should prevent this
      }
    }
    await Directory(mountDir).create(recursive: true);

    log('Mounting WinPE Boot Image...');
    return await _processService.run('dism.exe', [
      '/Mount-Wim',
      '/WimFile:$wimFile',
      '/Index:1',
      '/MountDir:$mountDir',
    ]);
  }

  // ─── Main Build Pipeline ──────────────────────────────────────────────────
  Stream<String> buildIso({
    required String sourceWimPath,
    required String appBuildPath,
    required String outputIsoPath,
  }) async* {
    // Safe log drain: copy + clear, then yield each item
    final logs = <String>[];
    void addLog(String msg) => logs.add(msg);
    Iterable<String> drainLogs() {
      final copy = List<String>.from(logs);
      logs.clear();
      return copy;
    }

    try {
      // ── Step 1: Prepare assets ──────────────────────────────────────────
      yield 'Step 1/6: Preparing embedded assets...';
      await _prepareAssets((msg) { addLog(msg); });
      for (final l in drainLogs()) { yield l; }

      // ── Step 2: Locate boot.wim ─────────────────────────────────────────
      yield 'Step 2/6: Locating WinPE base image...';
      String bootWim = p.join(_assetsTempDir, 'base_boot.wim');
      if (!File(bootWim).existsSync()) {
        bootWim = p.join(winPePath, 'media', 'sources', 'boot.wim');
      }
      if (!File(bootWim).existsSync()) {
        bootWim = p.join(winPePath, 'sources', 'boot.wim');
      }
      if (!File(bootWim).existsSync()) {
        throw Exception(
          'boot.wim not found. Place it in assets/winpe/ for embedded mode, '
          'or in winpe_base/media/sources/ or winpe_base/sources/.'
        );
      }
      yield '  ✓ Found boot.wim at: $bootWim';

      // ── Step 2b: Extract boot sector files from boot.wim ───────────────
      yield 'Step 2b/6: Preparing ISO boot sector files...';
      await _prepareBootFiles(bootWim, (msg) { addLog(msg); });
      for (final l in drainLogs()) { yield l; }

      // Validate that boot files are now available
      final etfsboot = File(p.join(mediaDir, 'boot', 'etfsboot.com'));
      final efisys   = File(p.join(mediaDir, 'efi', 'microsoft', 'boot', 'efisys.bin'));
      if (!etfsboot.existsSync()) {
        throw Exception(
          'etfsboot.com is missing. Cannot build bootable ISO.\n'
          'Expected at: ${etfsboot.path}\n'
          'Solutions:\n'
          '  1. Install Windows ADK (Deployment Tools component)\n'
          '  2. Manually copy etfsboot.com to winpe_base/media/boot/'
        );
      }
      if (!efisys.existsSync()) {
        throw Exception(
          'efisys.bin is missing. Cannot build UEFI-bootable ISO.\n'
          'Expected at: ${efisys.path}\n'
          'Solutions:\n'
          '  1. Install Windows ADK (Deployment Tools component)\n'
          '  2. Manually copy efisys.bin to winpe_base/media/efi/microsoft/boot/'
        );
      }
      yield '  ✓ Boot sector files verified.';

      // ── Step 3: Clean up any stale mounts ──────────────────────────────
      yield 'Step 3/6: Cleaning DISM environment...';
      await _forceUnmountAll(bootWim, (msg) { addLog(msg); });
      for (final l in drainLogs()) { yield l; }

      // ── Step 4: Mount WIM ───────────────────────────────────────────────
      yield 'Step 4/6: Mounting WinPE Image...';
      final mountResult = await _safeMount(bootWim, (msg) { addLog(msg); });
      for (final l in drainLogs()) { yield l; }

      if (mountResult.exitCode != 0) {
        throw Exception(
          'DISM mount failed (code ${mountResult.exitCode}).\n'
          '${mountResult.stdout.trim()}\n${mountResult.stderr.trim()}'
        );
      }
      yield '  ✓ Boot Image mounted at $mountDir';

      // ── Step 5: Inject App + DLLs + winpeshl.ini ───────────────────────
      yield 'Step 5/6: Injecting Joss Red Installer...';

      // 5a. Copy app binaries (exclude internal working directories to prevent xcopy cycle)
      yield '  Copying application binaries...';
      final targetAppPath = p.join(mountDir, 'JossRedInstaller');
      await Directory(targetAppPath).create(recursive: true);

      // Write exclusion list to avoid xcopy self-reference
      final excludeFile = File(p.join(_assetsTempDir, 'xcopy_exclude.txt'));
      await excludeFile.writeAsString(
        'dism_mount\ntemp_assets\nwinpe_base\n',
      );

      final xcopyResult = await _processService.run('xcopy', [
        appBuildPath,
        targetAppPath,
        '/E', '/H', '/C', '/I', '/Y', '/Q',
        '/EXCLUDE:${excludeFile.path}',
      ]);
      if (xcopyResult.exitCode != 0 && xcopyResult.exitCode != 1) {
        // xcopy exit 1 = "no files copied" — only fail on real errors (>=2)
        yield '  ⚠ xcopy warning (code ${xcopyResult.exitCode}): ${xcopyResult.stderr.trim()}';
      } else {
        yield '  ✓ Application binaries copied.';
      }

      // 5b. Inject VC++ DLLs (from embedded assets — no System32 dependency)
      yield '  Injecting VC++ Runtime libraries...';
      final dllsTempDir = p.join(_assetsTempDir, 'dlls');
      int dllsCopied = 0;
      for (final dll in _essentialDlls) {
        final dst = File(p.join(targetAppPath, dll));
        if (!dst.existsSync()) {
          // Try from temp cache first (already extracted in _prepareAssets)
          final cached = File(p.join(dllsTempDir, dll));
          if (cached.existsSync()) {
            await cached.copy(dst.path);
          } else {
            // Fallback: extract directly from asset bundle
            await _extractAsset('assets/dlls/$dll', dst.path);
          }
          dllsCopied++;
        }
      }
      yield '  ✓ $dllsCopied VC++ DLLs injected (from embedded assets).';

      // 5c. Write winpeshl.ini & start script
      yield '  Configuring WinPE shell launcher...';
      final exeName = p.basename(Platform.resolvedExecutable);
      
      // We launch cmd.exe to run our script, preventing instant reboot on crash
      final iniContent = '[LaunchApps]\n%SYSTEMDRIVE%\\Windows\\System32\\cmd.exe, /k %SYSTEMDRIVE%\\JossRedInstaller\\start.cmd\n';
      await File(p.join(mountDir, 'Windows', 'System32', 'winpeshl.ini'))
          .writeAsString(iniContent);
          
      // Write the start.cmd script
      final cmdContent = '''
@echo off
color 0B
echo.
echo ==========================================
echo    JOSS RED INSTALLER - INITIALIZATION
echo ==========================================
echo.
cd /d %SYSTEMDRIVE%\\JossRedInstaller
echo Launching $exeName...
$exeName
echo.
echo ==========================================
echo [ERROR] The application exited unexpectedly.
echo Exit Code: %errorlevel%
echo ==========================================
echo You can run commands here to debug.
''';
      await File(p.join(targetAppPath, 'start.cmd')).writeAsString(cmdContent);
      
      yield '  ✓ winpeshl.ini configured to launch start.cmd (with debug pause)';

      // 5d. Copy install.wim to media
      yield '  Copying Windows install image...';
      final targetWimDir = p.join(mediaDir, 'sources');
      await Directory(targetWimDir).create(recursive: true);

      if (sourceWimPath.toLowerCase().endsWith('.swm')) {
        final wimDir = p.dirname(sourceWimPath);
        await _processService.run('xcopy', [p.join(wimDir, '*.swm'), targetWimDir, '/Y', '/Q']);
      } else {
        await File(sourceWimPath).copy(p.join(targetWimDir, 'install.wim'));
      }
      yield '  ✓ Windows image ready.';

      // ── Step 6: Unmount + Commit ────────────────────────────────────────
      yield 'Step 6/6: Committing and finalizing ISO...';
      yield '  Waiting for file handles to release...';
      await Future.delayed(const Duration(seconds: 3));

      yield '  Unmounting and committing changes (may take several minutes)...';
      final unmountResult = await _processService.run('dism.exe', [
        '/Unmount-Wim',
        '/MountDir:$mountDir',
        '/Commit',
      ]);

      if (unmountResult.exitCode != 0) {
        throw Exception(
          'DISM unmount/commit failed (code ${unmountResult.exitCode}).\n'
          '${unmountResult.stdout.trim()}\n${unmountResult.stderr.trim()}'
        );
      }
      yield '  ✓ Changes committed to boot.wim';

      // ── Build ISO with oscdimg ──────────────────────────────────────────
      yield '  Building bootable ISO...';
      String oscdimgPath = p.join(_assetsTempDir, 'tools', 'oscdimg.exe');
      if (!File(oscdimgPath).existsSync()) {
        oscdimgPath = p.join(toolsPath, 'oscdimg.exe');
      }
      if (!File(oscdimgPath).existsSync()) {
        oscdimgPath = 'oscdimg.exe'; // Fallback to PATH
      }

      final etfsbootPath = etfsboot.path;
      final efisysPath   = efisys.path;
      final bootData     = '2#p0,e,b$etfsbootPath#pEF,e,b$efisysPath';

      final isoResult = await _processService.run(oscdimgPath, [
        '-m', '-o', '-u2', '-udfver102',
        '-bootdata:$bootData',
        mediaDir,
        outputIsoPath,
      ]);

      if (isoResult.exitCode != 0) {
        throw Exception(
          'oscdimg failed (code ${isoResult.exitCode}).\n'
          '${isoResult.stdout.trim()}\n${isoResult.stderr.trim()}'
        );
      }

      // Verify ISO was created
      final isoFile = File(outputIsoPath);
      if (!isoFile.existsSync()) {
        throw Exception('ISO file was not created. Check output path and permissions.');
      }
      final isoSizeMB = (isoFile.lengthSync() / 1024 / 1024).toStringAsFixed(1);

      yield '────────────────────────────────────';
      yield '✅ SUCCESS! ISO created successfully!';
      yield '   Path: $outputIsoPath';
      yield '   Size: $isoSizeMB MB';
      yield '────────────────────────────────────';

    } catch (e) {
      yield '────────────────────────────────────';
      yield '❌ BUILD FAILED: $e';
      yield '────────────────────────────────────';

      // Emergency cleanup to avoid leaving the WIM stuck mounted
      try {
        debugPrint('Emergency DISM cleanup after error...');
        await _processService.run('dism.exe', ['/Unmount-Wim', '/MountDir:$mountDir', '/Discard']);
        await _processService.run('dism.exe', ['/Cleanup-Mountpoints']);
      } catch (_) {}

      rethrow;
    }
  }
}
