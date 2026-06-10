import 'dart:io';
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
    'd3d10warp.dll',
    'd3d9.dll',
    'dbghelp.dll',
    'dwmapi.dll',
    'iphlpapi.dll',
    'oleacc.dll',
    'opengl32.dll',
    'propsys.dll',
    'uiautomationcore.dll',
    'ucrtbase.dll',
    'vcruntime140_threads.dll',
    'msvcp140_atomic_wait.dll',
    'msvcp140_codecvt_ids.dll',
    'dxgi.dll',
    'dcomp.dll',
    'd3dcompiler_47.dll',
    'd3d11.dll',
    'microsoft.internal.warppal.dll',
    'd2d1.dll',
    'd3d10level9.dll',
    'd3d11on12.dll',
    'd3d12.dll',
    'd3d12core.dll',
    'd3dref9.dll',
    'd3dscache.dll',
    'dxgidebug.dll',
    'glu32.dll',
    'mfplat.dll',
    'vulkan-1.dll',
    'wuceffects.dll',
    'dxilconv.dll',
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

    // ── diagnose.exe ───────────────────────────────────────────────────────
    final tempDiagnose = p.join(_assetsTempDir, 'tools', 'diagnose.exe');
    if (!File(tempDiagnose).existsSync() || File(tempDiagnose).lengthSync() < 1000) {
      log('Extracting diagnose.exe from embedded assets...');
      await _extractAsset('assets/tools/diagnose.exe', tempDiagnose);
      log('diagnose.exe extracted.');
    } else {
      log('diagnose.exe already cached.');
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
  /// Uses DISM /Get-MountedWimInfo to find and discard any mounted WIM sessions 
  /// that point to our boot.wim before a fresh mount. This resolves error 0xc1420127.
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
      } catch (_) {}
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

  // ─── Recursive Directory Copy ─────────────────────────────────────────────
  Future<void> _copyDirectory(Directory source, Directory destination) async {
    await destination.create(recursive: true);
    await for (final entity in source.list(recursive: false)) {
      if (entity is Directory) {
        final newDirectory = Directory(p.join(destination.absolute.path, p.basename(entity.path)));
        await _copyDirectory(entity, newDirectory);
      } else if (entity is File) {
        await entity.copy(p.join(destination.absolute.path, p.basename(entity.path)));
      }
    }
  }

  // ─── One-Time boot.wim Customization ──────────────────────────────────────
  Future<void> _ensureCustomizedBootWim(void Function(String) log) async {
    final baseBootWim = p.join(_assetsTempDir, 'base_boot.wim');
    final customizedBootWim = p.join(_assetsTempDir, 'customized_boot.wim');
    final baseFile = File(baseBootWim);
    final customFile = File(customizedBootWim);
    
    final cachedBootloadersDir = Directory(p.join(_assetsTempDir, 'bootloaders'));
    final hasBootloaders = cachedBootloadersDir.existsSync() &&
                           cachedBootloadersDir.listSync().isNotEmpty;

    if (customFile.existsSync() && customFile.lengthSync() > 1000 && hasBootloaders) {
      final baseTime = baseFile.lastModifiedSync();
      final customTime = customFile.lastModifiedSync();
      if (baseTime.isBefore(customTime)) {
        log('Customized boot.wim is up to date.');
        return;
      }
      log('Base boot.wim has been updated. Re-creating customized boot.wim...');
    } else {
      log('Customized boot.wim or bootloaders cache not found or incomplete. Starting initialization...');
    }
    
    // Export Index 1 of base_boot.wim to customized_boot.wim to ensure a single-index bootable WinPE image
    if (customFile.existsSync()) {
      try {
        await customFile.delete();
      } catch (_) {}
    }
    log('Exporting Index 1 of base boot.wim as bootable...');
    final exportResult = await _processService.run('dism.exe', [
      '/Export-Image',
      '/SourceImageFile:${baseFile.path}',
      '/SourceIndex:1',
      '/DestinationImageFile:${customFile.path}',
      '/Bootable',
    ]);
    if (exportResult.exitCode != 0) {
      throw Exception(
        'Failed to export bootable WinPE image (code ${exportResult.exitCode}).\n'
        '${exportResult.stdout.trim()}\n${exportResult.stderr.trim()}'
      );
    }
    
    // Clean stale mountpoints
    await _forceUnmountAll(customizedBootWim, log);
    
    // Mount customized_boot.wim
    final mountResult = await _safeMount(customizedBootWim, log);
    if (mountResult.exitCode != 0) {
      throw Exception(
        'Failed to mount customized_boot.wim for one-time initialization (code ${mountResult.exitCode}).\n'
        '${mountResult.stdout.trim()}\n${mountResult.stderr.trim()}'
      );
    }
    
    log('Injecting bootstrap scripts into boot.wim...');
    try {
      // 1. Create winpeshl.ini
      final iniPath = p.join(mountDir, 'Windows', 'System32', 'winpeshl.ini');
      final iniContent = '[LaunchApps]\nwpeinit.exe\n%SYSTEMROOT%\\System32\\cmd.exe, /c %SYSTEMROOT%\\System32\\find_installer.cmd\n';
      await File(iniPath).writeAsString(iniContent);
      
      // 2. Create find_installer.cmd
      final finderPath = p.join(mountDir, 'Windows', 'System32', 'find_installer.cmd');
      final finderContent = '''@echo off
title Joss Red Installer Bootstrap
color 1F

:search
cls
echo.
echo ==================================================
echo    Joss Red Installer - Bootstrap Loader
echo ==================================================
echo.
echo Scanning drive letters for JossRedInstaller...
for %%d in (C D E F G H I J K L M N O P Q R S T U V W Y Z) do (
    if exist %%d:\\JossRedInstaller\\start.cmd (
        color 0B
        echo Found installer on drive %%d:
        cd /d %%d:\\JossRedInstaller
        call start.cmd %%d
        goto :eof
    )
)

color 4F
echo.
echo ==================================================
echo [ERROR] Joss Red Installer files not found!
echo ==================================================
echo The ISO/USB media might not be mounted or drive 
echo letters are not fully assigned yet.
echo.
echo Options:
echo   [1] Try scanning again (Rescan drives)
echo   [2] Open Command Prompt (CMD) for debugging
echo   [3] Reboot computer
echo.
set /p choice="Enter option (1-3): "

if "%choice%"=="1" goto :search
if "%choice%"=="2" (
    color 07
    cls
    echo Launching command prompt. Type 'exit' to return to menu.
    cmd.exe
    goto :search
)
if "%choice%"=="3" (
    echo Rebooting...
    wpeutil reboot
)
echo.
echo No option chosen or input unavailable.
echo Retrying drive scan in 5 seconds...
timeout /t 5 >nul
goto :search
''';
      await File(finderPath).writeAsString(finderContent);
      
      // 3. Cache bootloader files (bootmgr, BCD) while the WIM is mounted
      log('Caching bootloader files for future fast builds...');
      final cachedBootloadersDir = Directory(p.join(_assetsTempDir, 'bootloaders'));
      if (cachedBootloadersDir.existsSync()) {
        await cachedBootloadersDir.delete(recursive: true);
      }
      await cachedBootloadersDir.create(recursive: true);
      
      final winBoot = p.join(mountDir, 'Windows', 'Boot');
      
      // Root boot managers
      final pcatBootmgr = File(p.join(winBoot, 'PCAT', 'bootmgr'));
      if (pcatBootmgr.existsSync()) {
        await pcatBootmgr.copy(p.join(cachedBootloadersDir.path, 'bootmgr'));
      }
      
      final efiBootmgr = File(p.join(winBoot, 'EFI', 'bootmgr.efi'));
      if (efiBootmgr.existsSync()) {
        await efiBootmgr.copy(p.join(cachedBootloadersDir.path, 'bootmgr.efi'));
      }
      
      // PCAT (Legacy BIOS) BCD and SDI
      final bootDir = p.join(cachedBootloadersDir.path, 'boot');
      await Directory(bootDir).create(recursive: true);
      if (File(p.join(winBoot, 'DVD', 'PCAT', 'BCD')).existsSync()) {
        await File(p.join(winBoot, 'DVD', 'PCAT', 'BCD')).copy(p.join(bootDir, 'bcd'));
      }
      if (File(p.join(winBoot, 'DVD', 'PCAT', 'boot.sdi')).existsSync()) {
        await File(p.join(winBoot, 'DVD', 'PCAT', 'boot.sdi')).copy(p.join(bootDir, 'boot.sdi'));
      }
      if (File(p.join(winBoot, 'DVD', 'PCAT', 'bootfix.bin')).existsSync()) {
        await File(p.join(winBoot, 'DVD', 'PCAT', 'bootfix.bin')).copy(p.join(bootDir, 'bootfix.bin'));
      }
      
      // EFI BCD and SDI
      final efiMsBootDir = p.join(cachedBootloadersDir.path, 'efi', 'microsoft', 'boot');
      await Directory(efiMsBootDir).create(recursive: true);
      if (File(p.join(winBoot, 'DVD', 'EFI', 'BCD')).existsSync()) {
        await File(p.join(winBoot, 'DVD', 'EFI', 'BCD')).copy(p.join(efiMsBootDir, 'bcd'));
      }
      if (File(p.join(winBoot, 'DVD', 'EFI', 'boot.sdi')).existsSync()) {
        await File(p.join(winBoot, 'DVD', 'EFI', 'boot.sdi')).copy(p.join(efiMsBootDir, 'boot.sdi'));
      }
      
      // EFI Boot app
      final efiBootDir = p.join(cachedBootloadersDir.path, 'efi', 'boot');
      await Directory(efiBootDir).create(recursive: true);
      if (File(p.join(winBoot, 'EFI', 'bootmgfw.efi')).existsSync()) {
        await File(p.join(winBoot, 'EFI', 'bootmgfw.efi')).copy(p.join(efiBootDir, 'bootx64.efi'));
      }
      
      log('  ✓ Bootloader files cached successfully.');
    } catch (e) {
      log('  ⚠ Warning: Could not extract/cache some bootloader files ($e)');
    }
    
    log('Unmounting and committing changes to customized_boot.wim...');
    final unmountResult = await _processService.run('dism.exe', [
      '/Unmount-Wim',
      '/MountDir:$mountDir',
      '/Commit',
    ]);
    
    if (unmountResult.exitCode != 0) {
      throw Exception(
        'Failed to unmount/commit customized_boot.wim (code ${unmountResult.exitCode}).\n'
        '${unmountResult.stdout.trim()}\n${unmountResult.stderr.trim()}'
      );
    }
    log('  ✓ customized_boot.wim successfully prepared.');
  }

  // ─── Main Build Pipeline ──────────────────────────────────────────────────
  Stream<String> buildIso({
    String? sourceWimPath,
    required String appBuildPath,
    required String outputIsoPath,
  }) async* {
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

      // ── Step 2: Locate base boot.wim ────────────────────────────────────
      yield 'Step 2/6: Locating WinPE base image...';
      String baseBootWim = p.join(_assetsTempDir, 'base_boot.wim');
      if (!File(baseBootWim).existsSync()) {
        baseBootWim = p.join(winPePath, 'media', 'sources', 'boot.wim');
      }
      if (!File(baseBootWim).existsSync()) {
        baseBootWim = p.join(winPePath, 'sources', 'boot.wim');
      }
      if (!File(baseBootWim).existsSync()) {
        throw Exception(
          'boot.wim not found. Place it in assets/winpe/ for embedded mode, '
          'or in winpe_base/media/sources/ or winpe_base/sources/.'
        );
      }
      yield '  ✓ Found base boot.wim at: $baseBootWim';

      // Validate that boot sector files (efisys.bin, etfsboot.com) exist in cache
      final etfsboot = File(p.join(mediaDir, 'boot', 'etfsboot.com'));
      final efisys   = File(p.join(mediaDir, 'efi', 'microsoft', 'boot', 'efisys.bin'));
      await _prepareBootFiles(baseBootWim, (msg) { addLog(msg); });
      for (final l in drainLogs()) { yield l; }
      
      if (!etfsboot.existsSync() || !efisys.existsSync()) {
        throw Exception('etfsboot.com or efisys.bin is missing. Cannot build bootable ISO.');
      }
      yield '  ✓ Boot sector files verified.';

      // ── Step 3: Ensure customized boot.wim is prepared ──────────────────
      yield 'Step 3/6: Ensuring customized WinPE boot image is ready...';
      await _ensureCustomizedBootWim((msg) { addLog(msg); });
      for (final l in drainLogs()) { yield l; }
      yield '  ✓ Customized boot.wim is ready in cache.';

      // ── Step 4: Clean staging media directory ───────────────────────────
      yield 'Step 4/6: Preparing staging folder structure...';
      if (Directory(mediaDir).existsSync()) {
        try {
          await Directory(mediaDir).delete(recursive: true);
        } catch (_) {}
      }
      await Directory(mediaDir).create(recursive: true);
      
      // Re-create boot directories
      await Directory(p.dirname(etfsboot.path)).create(recursive: true);
      await Directory(p.dirname(efisys.path)).create(recursive: true);
      
      // Copy boot sector files
      final tempEtfsboot = File(p.join(_assetsTempDir, 'winpe_base', 'media', 'boot', 'etfsboot.com'));
      if (tempEtfsboot.existsSync()) {
        await tempEtfsboot.copy(etfsboot.path);
      } else {
        await _extractAsset('assets/winpe/boot/etfsboot.com', etfsboot.path);
      }
      
      final tempEfisys = File(p.join(_assetsTempDir, 'winpe_base', 'media', 'efi', 'microsoft', 'boot', 'efisys.bin'));
      if (tempEfisys.existsSync()) {
        await tempEfisys.copy(efisys.path);
      } else {
        await _extractAsset('assets/winpe/boot/efisys.bin', efisys.path);
      }
      yield '  ✓ Boot sector directories and files initialized.';

      // ── Step 5: Copy application binaries & bootloader files ────────────
      yield 'Step 5/6: Deploying installer payload and bootloaders...';
      
      // 5a. Deploy cached bootloader files
      yield '  Deploying bootloader files to ISO root...';
      final cachedBootloadersDir = Directory(p.join(_assetsTempDir, 'bootloaders'));
      if (cachedBootloadersDir.existsSync()) {
        await _copyDirectory(cachedBootloadersDir, Directory(mediaDir));
      } else {
        throw Exception('Bootloader files cache not found. Re-run WIM customization.');
      }
      
      // 5b. Copy installer app binaries to mediaDir/JossRedInstaller
      yield '  Deploying application binaries...';
      final targetAppPath = p.join(mediaDir, 'JossRedInstaller');
      await Directory(targetAppPath).create(recursive: true);

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
        yield '  ⚠ xcopy warning (code ${xcopyResult.exitCode}): ${xcopyResult.stderr.trim()}';
      } else {
        yield '  ✓ Application binaries deployed.';
      }

      // 5c. Inject VC++ DLLs (from embedded assets)
      yield '  Injecting VC++ Runtime libraries...';
      final dllsTempDir = p.join(_assetsTempDir, 'dlls');
      int dllsCopied = 0;
      for (final dll in _essentialDlls) {
        final dst = File(p.join(targetAppPath, dll));
        if (!dst.existsSync()) {
          final cached = File(p.join(dllsTempDir, dll));
          if (cached.existsSync()) {
            await cached.copy(dst.path);
          } else {
            await _extractAsset('assets/dlls/$dll', dst.path);
          }
          dllsCopied++;
        }
      }
      yield '  ✓ $dllsCopied VC++ DLLs injected.';

      // 5d. Write start.cmd directly to mediaDir/JossRedInstaller/start.cmd
      yield '  Writing start.cmd bootstrap script...';
      const exeName = 'joss_red_installer.exe';
      final cmdContent = '''@echo off
color 0B
echo.
echo ==========================================
echo    JOSS RED INSTALLER - RUNNING PE SHELL
echo ==========================================
echo.
set ISO_DRIVE=%1
echo ISO Drive detected as: %ISO_DRIVE%:
cd /d %ISO_DRIVE%:\\JossRedInstaller
echo Launching $exeName...
$exeName
set APP_EXIT_CODE=%errorlevel%
echo.
echo ==========================================
echo [ERROR] The application exited with code: %APP_EXIT_CODE%
echo ==========================================
if not "%APP_EXIT_CODE%"=="0" (
    echo Auto-running diagnose.bat because application failed...
    call diagnose.bat
)
echo You can run diagnose.bat to scan for missing DLLs,
echo or run commands here to debug.
cmd.exe
''';
      await File(p.join(targetAppPath, 'start.cmd')).writeAsString(cmdContent);
      yield '  ✓ start.cmd created.';

      // Copy diagnose.exe from assets cache to mediaDir/JossRedInstaller/diagnose.exe
      yield '  Deploying dependency diagnostic tool...';
      final cachedDiagnose = File(p.join(_assetsTempDir, 'tools', 'diagnose.exe'));
      if (cachedDiagnose.existsSync()) {
        await cachedDiagnose.copy(p.join(targetAppPath, 'diagnose.exe'));
      } else {
        yield '  ⚠ Warning: diagnose.exe not found in cache, skipping diagnostic tool deploy.';
      }

      // Write diagnose.bat
      final batContent = '''@echo off
cd /d "%~dp0"
diagnose.exe
''';
      await File(p.join(targetAppPath, 'diagnose.bat')).writeAsString(batContent);
      yield '  ✓ Dependency diagnostic tool created.';

      // 5e. Copy install.wim (or split SWMs) to mediaDir/sources/install.wim
      if (sourceWimPath != null && sourceWimPath.isNotEmpty) {
        yield '  Deploying Windows install image...';
        final targetWimDir = p.join(mediaDir, 'sources');
        await Directory(targetWimDir).create(recursive: true);

        if (sourceWimPath.toLowerCase().endsWith('.swm')) {
          final wimDir = p.dirname(sourceWimPath);
          await _processService.run('xcopy', [p.join(wimDir, '*.swm'), targetWimDir, '/Y', '/Q']);
        } else {
          await File(sourceWimPath).copy(p.join(targetWimDir, 'install.wim'));
        }
        yield '  ✓ Windows image deployed.';
      } else {
        yield '  ℹ Skipping Windows install image copy (WIM selection will be done at runtime).';
      }

      // 5f. Copy customized boot.wim directly to mediaDir/sources/boot.wim
      yield '  Injecting customized boot.wim...';
      final customizedWim = File(p.join(_assetsTempDir, 'customized_boot.wim'));
      await customizedWim.copy(p.join(mediaDir, 'sources', 'boot.wim'));
      yield '  ✓ customized boot.wim injected.';

      // ── Step 6: Build ISO with oscdimg ──────────────────────────────────
      yield 'Step 6/6: Building bootable ISO...';
      String oscdimgPath = p.join(_assetsTempDir, 'tools', 'oscdimg.exe');
      if (!File(oscdimgPath).existsSync()) {
        oscdimgPath = p.join(toolsPath, 'oscdimg.exe');
      }
      if (!File(oscdimgPath).existsSync()) {
        oscdimgPath = 'oscdimg.exe';
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
      rethrow;
    }
  }
}
