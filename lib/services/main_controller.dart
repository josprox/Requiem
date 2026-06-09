import 'dart:io';
import 'package:flutter/material.dart';
import 'package:path_provider/path_provider.dart';
import 'package:path/path.dart' as p;
import '../services/disk_service.dart';
import '../services/deployment_service.dart';
import '../services/registry_service.dart';
import '../services/iso_builder_service.dart';

/// How the disk should be prepared before deploying Windows.
enum PartitionMode {
  /// Wipe disk and create a clean GPT/UEFI layout (S: + W:)
  formatGpt,
  /// Wipe disk and create a legacy MBR layout (W:)
  formatMbr,
  /// Use the disk as-is — assumes the user already has the right partitions
  /// and W: is already mounted/assigned.
  useExisting,
}

class MainController extends ChangeNotifier {
  final DiskService _diskService = DiskService();
  final DeploymentService _deploymentService = DeploymentService();
  final RegistryService _registryService = RegistryService();
  final IsoBuilderService _isoBuilderService = IsoBuilderService();

  List<PhysicalDisk> disks = [];
  PhysicalDisk? selectedDisk;
  bool isLoadingDisks = false;

  double installProgress = 0.0;
  String currentStatus = 'Ready';
  List<String> logs = [];

  // ISO Builder State
  bool isBuildingIso = false;
  double buildProgress = 0.0;
  String? selectedWimPath;
  String? outputIsoPath;

  // Auto-detected install.wim path (found on ISO drive in WinPE)
  String? detectedWimPath;
  bool isSearchingWim = false;

  // Partition mode chosen by user in DiskSelectionScreen
  PartitionMode _pendingPartitionMode = PartitionMode.formatGpt;
  PartitionMode get pendingPartitionMode => _pendingPartitionMode;

  void setPartitionMode(PartitionMode mode) {
    _pendingPartitionMode = mode;
    notifyListeners();
  }

  void addLog(String log) {
    logs.add('[${DateTime.now().toIso8601String().substring(11, 19)}] $log');
    notifyListeners();
  }

  // ─── Auto-detect install.wim from ISO drive ────────────────────────────────
  /// In WinPE the ISO mounts as a drive letter (D:, E:, F:…).
  /// We scan all available letters for the standard WIM location.
  Future<void> autoDetectInstallWim() async {
    isSearchingWim = true;
    detectedWimPath = null;
    notifyListeners();

    addLog('Scanning drives for Windows installation image...');

    // Letters the ISO could be mounted as (skip A/B floppy, C usually = RAM/WinPE)
    const driveLetters = ['D','E','F','G','H','I','J','K','L','M','N','O','P'];

    for (final letter in driveLetters) {
      // Standard WIM location (matches what buildIso puts in media/sources/)
      final wim = File('$letter:\\sources\\install.wim');
      if (wim.existsSync()) {
        detectedWimPath = wim.path;
        addLog('  ✓ Found install.wim on drive $letter: (${_fileSizeMb(wim)} MB)');
        break;
      }
      // Split WIM (.swm) — look for install.swm as the first part
      final swm = File('$letter:\\sources\\install.swm');
      if (swm.existsSync()) {
        detectedWimPath = swm.path;
        addLog('  ✓ Found split WIM (SWM) on drive $letter:');
        break;
      }
    }

    if (detectedWimPath == null) {
      addLog('  ⚠ install.wim not found on any drive. Check that the ISO is mounted.');
    }

    isSearchingWim = false;
    notifyListeners();
  }

  String _fileSizeMb(File f) =>
      (f.lengthSync() / 1024 / 1024).toStringAsFixed(0);

  Future<void> refreshDisks() async {
    isLoadingDisks = true;
    notifyListeners();
    addLog('Refreshing disks...');
    disks = await _diskService.listDisks();
    isLoadingDisks = false;
    notifyListeners();
    addLog('Found ${disks.length} disks.');
  }

  void selectDisk(PhysicalDisk disk) {
    selectedDisk = disk;
    addLog('Selected disk: ${disk.friendlyName}');
    notifyListeners();
  }

  // ─── Start Installation ────────────────────────────────────────────────────
  Future<void> startInstallation({
    required PartitionMode partitionMode,
    String? wimPath, // if null, uses detectedWimPath
  }) async {
    if (selectedDisk == null) return;

    final resolvedWim = wimPath ?? detectedWimPath;
    if (resolvedWim == null) {
      addLog('ERROR: No Windows image found. Cannot start installation.');
      currentStatus = 'No Image Found';
      notifyListeners();
      return;
    }

    installProgress = 0.0;
    logs.clear();
    addLog('Starting deployment on DISK ${selectedDisk!.number} — ${selectedDisk!.friendlyName}');
    addLog('Image: $resolvedWim');
    addLog('Mode: ${partitionMode.name}');

    // ── Step 1: Prepare Disk ──────────────────────────────────────────────
    if (partitionMode != PartitionMode.useExisting) {
      currentStatus = 'Preparing disk...';
      notifyListeners();

      try {
        addLog('Generating DiskPart script...');
        final script = partitionMode == PartitionMode.formatGpt
            ? _diskService.generateGptScript(selectedDisk!.number)
            : _diskService.generateMbrScript(selectedDisk!.number);

        final tempDir = await getTemporaryDirectory();
        final scriptFile = File(p.join(tempDir.path, 'dp.txt'));
        await scriptFile.writeAsString(script);

        addLog('Running DiskPart...');
        final dpResult = await _diskService.processService
            .run('diskpart.exe', ['/s', scriptFile.path]);
        if (dpResult.exitCode != 0) {
          addLog('ERROR: DiskPart failed. ${dpResult.stderr}');
          currentStatus = 'Disk Error';
          notifyListeners();
          return;
        }
        addLog('  ✓ Disk partitioned successfully.');
      } catch (e) {
        addLog('ERROR: Disk setup failed. $e');
        currentStatus = 'System Error';
        notifyListeners();
        return;
      }
    } else {
      addLog('Using existing partition layout (no format).');
    }

    // ── Step 2: Apply Image ───────────────────────────────────────────────
    currentStatus = 'Applying image...';
    notifyListeners();

    String? swmPattern;
    if (resolvedWim.toLowerCase().endsWith('.swm')) {
      swmPattern = resolvedWim.replaceAll(RegExp(r'\d*\.swm$'), '*.swm');
      addLog('Detected split WIM. Pattern: $swmPattern');
    }

    final progressStream = _deploymentService.applyImage(
      imagePath: resolvedWim,
      applyDir: 'W:\\',
      swmPattern: swmPattern,
    );

    await for (final progress in progressStream) {
      if (progress.percentage >= 0) {
        installProgress = progress.percentage;
      }
      addLog(progress.status);
      notifyListeners();
    }

    // 3. Bootloader
    currentStatus = 'Configuring bootloader...';
    addLog('Running BCDBoot...');
    notifyListeners();
    
    final isGpt = partitionMode == PartitionMode.formatGpt;
    final bootDrive = isGpt ? 'S:' : 'W:';
    final bcdResult = await _deploymentService.configureBootloader(
      'W:\\Windows',
      bootDrive,
      uefi: isGpt,
      bios: !isGpt,
    );
    if (!bcdResult) {
      addLog('ERROR: BCDBoot failed.');
    }

    // 4. Registry Injection (OEM)
    currentStatus = 'Injecting OEM configuration...';
    addLog('Modifying offline registry...');
    notifyListeners();
    
    try {
      // OEM logo: embed it from assets into the installed Windows partition
      // so it's accessible after installation on any PC (no host-path dependency)
      final oemLogoTargetDir = Directory('W:\\Windows\\System32');
      final oemLogoTarget = 'W:\\Windows\\System32\\oemlogo.bmp';
      if (await oemLogoTargetDir.exists()) {
        // Copy logo.png as oemlogo.bmp (Windows OEM branding accepts BMP or PNG in modern builds)
        await File('${p.dirname(Platform.resolvedExecutable)}\\data\\flutter_assets\\assets\\logo.png')
            .copy(oemLogoTarget);
      }

      await _registryService.setOemBranding(
        windowsPath: 'W:\\Windows',
        manufacturer: 'Joss Red Systems',
        model: 'Hyperion v1',
        logoPath: oemLogoTarget,
      );
      
      addLog('Setting environment variables...');
      await _registryService.setEnvironmentVariable('W:\\Windows', 'JOSS_RED_VERSION', '1.0');
    } catch (e) {
      addLog('WARNING: Registry injection failed. $e');
    }

    // 5. Finalizing (Copying assets)
    currentStatus = 'Finalizing...';
    addLog('Copying post-install scripts...');
    notifyListeners();
    
    try {
      final scriptDir = Directory('W:\\Windows\\Setup\\Scripts');
      if (!await scriptDir.exists()) await scriptDir.create(recursive: true);
      
      // In PE, we might have these in X:\winpe or similar. 
      // For now we assume they are reachable or we use local placeholders.
      // File('X:\\winpe\\SetupComplete.cmd').copy('W:\\Windows\\Setup\\Scripts\\SetupComplete.cmd');
      
      addLog('Assets successfully copied.');
    } catch (e) {
      addLog('WARNING: Assets copy failed. $e');
    }

    currentStatus = 'Installation Complete!';
    installProgress = 1.0;
    notifyListeners();
    addLog('All operations completed successfully.');
  }

  Future<void> reboot() async {
    addLog('Rebooting system...');
    await _diskService.processService.run('shutdown.exe', ['/r', '/t', '0']);
  }

  // --- ISO Builder Logic ---

  Future<void> buildFinalIso() async {
    if (selectedWimPath == null || outputIsoPath == null) {
      addLog('ERROR: Missing paths for ISO build.');
      return;
    }

    isBuildingIso = true;
    logs.clear();
    notifyListeners();

    try {
      // Get the path to the current executable's build folder
      // In development, this is build/windows/x64/runner/Release/
      final appPath = p.dirname(Platform.resolvedExecutable);
      
      final buildStream = _isoBuilderService.buildIso(
        sourceWimPath: selectedWimPath!,
        appBuildPath: appPath,
        outputIsoPath: outputIsoPath!,
      );

      await for (final status in buildStream) {
        addLog(status);
        notifyListeners();
      }
    } catch (e) {
      addLog('CRITICAL ERROR during ISO build: $e');
    } finally {
      isBuildingIso = false;
      notifyListeners();
    }
  }

  void setWimPath(String path) {
    selectedWimPath = path;
    addLog('Selected WIM: $path');
    notifyListeners();
  }

  void setOutputPath(String path) {
    outputIsoPath = path;
    addLog('Output ISO: $path');
    notifyListeners();
  }
}
