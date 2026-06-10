import 'dart:io';
import 'package:path/path.dart' as p;

// ─── Essential VC++ DLLs for WinPE ───────────────────────────────────────
const List<String> essentialDlls = [
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

void log(String msg) {
  print('[${DateTime.now().toIso8601String().substring(11, 19)}] $msg');
}

Future<void> runProcess(String cmd, List<String> args) async {
  log('Running: $cmd ${args.join(' ')}');
  final result = await Process.run(cmd, args);
  if (result.exitCode != 0) {
    log('  ⚠ Warning/Error in process execution:');
    if (result.stdout.toString().trim().isNotEmpty) print(result.stdout);
    if (result.stderr.toString().trim().isNotEmpty) print(result.stderr);
  }
}

Future<void> main() async {
  final projectDir = 'c:\\Users\\joss\\Documents\\proyectos\\JossZilla';
  final outputIsoPath = p.join(projectDir, 'joss_installer.iso');
  final appBuildPath = p.join(projectDir, 'build', 'windows', 'x64', 'runner', 'Release');

  final tempPath = Directory.systemTemp.path;
  final baseDir = p.join(tempPath, 'JossRedInstallerBuild');
  final winPePath = p.join(baseDir, 'winpe_base');
  final mountDir = p.join(baseDir, 'dism_mount');
  final mediaDir = p.join(baseDir, 'winpe_base', 'media');
  final toolsPath = p.join(baseDir, 'tools');
  final assetsTempDir = p.join(baseDir, 'temp_assets');

  log('Initializing directory structure...');
  await Directory(baseDir).create(recursive: true);
  await Directory(winPePath).create(recursive: true);
  await Directory(mountDir).create(recursive: true);
  await Directory(mediaDir).create(recursive: true);
  await Directory(toolsPath).create(recursive: true);
  await Directory(assetsTempDir).create(recursive: true);

  log('Copying embedded assets from project directory...');
  // boot.wim
  final baseBootWim = p.join(assetsTempDir, 'base_boot.wim');
  await File(p.join(projectDir, 'assets', 'winpe', 'boot.wim')).copy(baseBootWim);
  
  // tools
  await Directory(p.join(assetsTempDir, 'tools')).create(recursive: true);
  await File(p.join(projectDir, 'assets', 'tools', 'oscdimg.exe')).copy(p.join(assetsTempDir, 'tools', 'oscdimg.exe'));
  await File(p.join(projectDir, 'assets', 'tools', 'diagnose.exe')).copy(p.join(assetsTempDir, 'tools', 'diagnose.exe'));

  // boot sectors
  final mediaBootDir = p.join(mediaDir, 'boot');
  final mediaEfiDir = p.join(mediaDir, 'efi', 'microsoft', 'boot');
  await Directory(mediaBootDir).create(recursive: true);
  await Directory(mediaEfiDir).create(recursive: true);
  await File(p.join(projectDir, 'assets', 'winpe', 'boot', 'etfsboot.com')).copy(p.join(mediaBootDir, 'etfsboot.com'));
  await File(p.join(projectDir, 'assets', 'winpe', 'boot', 'efisys.bin')).copy(p.join(mediaEfiDir, 'efisys.bin'));

  // VC++ dlls
  final dllsTempDir = p.join(assetsTempDir, 'dlls');
  await Directory(dllsTempDir).create(recursive: true);
  for (final dll in essentialDlls) {
    final srcDll = File(p.join(projectDir, 'assets', 'dlls', dll));
    if (srcDll.existsSync()) {
      await srcDll.copy(p.join(dllsTempDir, dll));
    }
  }
  log('Assets initialized in temp directory.');

  // One-time customization of boot.wim
  final customizedBootWim = p.join(assetsTempDir, 'customized_boot.wim');
  log('Preparing customized boot.wim...');
  
  if (File(customizedBootWim).existsSync()) {
    try {
      await File(customizedBootWim).delete();
    } catch (_) {}
  }

  log('Exporting Index 1 of base boot.wim...');
  await runProcess('dism.exe', [
    '/Export-Image',
    '/SourceImageFile:$baseBootWim',
    '/SourceIndex:1',
    '/DestinationImageFile:$customizedBootWim',
    '/Bootable',
  ]);

  log('Cleaning stale mountpoints...');
  await runProcess('dism.exe', ['/Cleanup-Mountpoints']);
  await runProcess('dism.exe', ['/Cleanup-Wim']);

  log('Mounting customized boot.wim...');
  await runProcess('dism.exe', [
    '/Mount-Wim',
    '/WimFile:$customizedBootWim',
    '/Index:1',
    '/MountDir:$mountDir',
  ]);

  log('Injecting bootstrap scripts...');
  final iniPath = p.join(mountDir, 'Windows', 'System32', 'winpeshl.ini');
  final iniContent = '[LaunchApps]\nwpeinit.exe\n%SYSTEMROOT%\\System32\\cmd.exe, /c %SYSTEMROOT%\\System32\\find_installer.cmd\n';
  await File(iniPath).writeAsString(iniContent);

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

  log('Caching bootloader files...');
  final cachedBootloadersDir = Directory(p.join(assetsTempDir, 'bootloaders'));
  if (cachedBootloadersDir.existsSync()) {
    await cachedBootloadersDir.delete(recursive: true);
  }
  await cachedBootloadersDir.create(recursive: true);
  
  final winBoot = p.join(mountDir, 'Windows', 'Boot');
  try {
    await File(p.join(winBoot, 'PCAT', 'bootmgr')).copy(p.join(cachedBootloadersDir.path, 'bootmgr'));
    await File(p.join(winBoot, 'EFI', 'bootmgr.efi')).copy(p.join(cachedBootloadersDir.path, 'bootmgr.efi'));

    final bootDir = p.join(cachedBootloadersDir.path, 'boot');
    await Directory(bootDir).create(recursive: true);
    await File(p.join(winBoot, 'DVD', 'PCAT', 'BCD')).copy(p.join(bootDir, 'bcd'));
    await File(p.join(winBoot, 'DVD', 'PCAT', 'boot.sdi')).copy(p.join(bootDir, 'boot.sdi'));
    await File(p.join(winBoot, 'DVD', 'PCAT', 'bootfix.bin')).copy(p.join(bootDir, 'bootfix.bin'));

    final efiMsBootDir = p.join(cachedBootloadersDir.path, 'efi', 'microsoft', 'boot');
    await Directory(efiMsBootDir).create(recursive: true);
    await File(p.join(winBoot, 'DVD', 'EFI', 'BCD')).copy(p.join(efiMsBootDir, 'bcd'));
    await File(p.join(winBoot, 'DVD', 'EFI', 'boot.sdi')).copy(p.join(efiMsBootDir, 'boot.sdi'));

    final efiBootDir = p.join(cachedBootloadersDir.path, 'efi', 'boot');
    await Directory(efiBootDir).create(recursive: true);
    await File(p.join(winBoot, 'EFI', 'bootmgfw.efi')).copy(p.join(efiBootDir, 'bootx64.efi'));
  } catch (e) {
    log('  ⚠ Warning: Could not cache some bootloader files ($e)');
  }

  log('Unmounting and committing customized boot.wim...');
  await runProcess('dism.exe', [
    '/Unmount-Wim',
    '/MountDir:$mountDir',
    '/Commit',
  ]);

  log('Preparing staging media directory...');
  if (Directory(mediaDir).existsSync()) {
    try {
      await Directory(mediaDir).delete(recursive: true);
    } catch (_) {}
  }
  await Directory(mediaDir).create(recursive: true);

  // Copy bootloaders
  log('Deploying bootloader files...');
  await runProcess('xcopy', [cachedBootloadersDir.path, mediaDir, '/E', '/H', '/Y', '/Q']);

  // Deploy app binaries
  log('Deploying application binaries...');
  final targetAppPath = p.join(mediaDir, 'JossRedInstaller');
  await Directory(targetAppPath).create(recursive: true);
  await runProcess('xcopy', [appBuildPath, targetAppPath, '/E', '/H', '/Y', '/Q']);

  // Inject DLLs
  log('Injecting VC++ Runtime libraries...');
  for (final dll in essentialDlls) {
    final src = File(p.join(dllsTempDir, dll));
    if (src.existsSync()) {
      await src.copy(p.join(targetAppPath, dll));
    }
  }

  // Create start.cmd
  log('Writing start.cmd bootstrap script...');
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
echo Launching joss_red_installer.exe...
joss_red_installer.exe
set APP_EXIT_CODE=%errorlevel%
echo.
echo ==========================================
echo [ERROR] The application exited with code: %APP_EXIT_CODE%
echo ==========================================
if not "%APP_EXIT_CODE%"=="0" (
    echo Auto-running diagnose.bat because application failed...
    call diagnose.bat
)
cmd.exe
''';
  await File(p.join(targetAppPath, 'start.cmd')).writeAsString(cmdContent);

  // Copy diagnose.exe
  await File(p.join(assetsTempDir, 'tools', 'diagnose.exe')).copy(p.join(targetAppPath, 'diagnose.exe'));
  await File(p.join(projectDir, 'assets', 'winpe', 'boot', 'etfsboot.com')).copy(p.join(mediaDir, 'boot', 'etfsboot.com'));
  await File(p.join(projectDir, 'assets', 'winpe', 'boot', 'efisys.bin')).copy(p.join(mediaDir, 'efi', 'microsoft', 'boot', 'efisys.bin'));

  // Write diagnose.bat
  final diagnoseBat = '''@echo off
cd /d "%~dp0"
diagnose.exe
''';
  await File(p.join(targetAppPath, 'diagnose.bat')).writeAsString(diagnoseBat);

  // Copy customized boot.wim to mediaDir/sources/boot.wim
  log('Injecting customized boot.wim...');
  await Directory(p.join(mediaDir, 'sources')).create(recursive: true);
  await File(customizedBootWim).copy(p.join(mediaDir, 'sources', 'boot.wim'));

  // Build final ISO
  log('Building final bootable ISO without WIM...');
  final oscdimgPath = p.join(assetsTempDir, 'tools', 'oscdimg.exe');
  final etfsbootPath = p.join(mediaDir, 'boot', 'etfsboot.com');
  final efisysPath = p.join(mediaDir, 'efi', 'microsoft', 'boot', 'efisys.bin');
  final bootData = '2#p0,e,b$etfsbootPath#pEF,e,b$efisysPath';

  await runProcess(oscdimgPath, [
    '-m', '-o', '-u2', '-udfver102',
    '-bootdata:$bootData',
    mediaDir,
    outputIsoPath,
  ]);

  if (File(outputIsoPath).existsSync()) {
    log('✅ SUCCESS! ISO created successfully: $outputIsoPath (${(File(outputIsoPath).lengthSync() / 1024 / 1024).toStringAsFixed(1)} MB)');
  } else {
    log('❌ FAILED! ISO file was not created.');
  }
}
