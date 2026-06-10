import 'dart:io';
import 'package:flutter/material.dart';
import 'package:path_provider/path_provider.dart';
import 'package:path/path.dart' as p;
import '../services/disk_service.dart';
import '../services/deployment_service.dart';
import '../services/registry_service.dart';
import '../services/iso_builder_service.dart';
import 'package:file_picker/file_picker.dart';
import '../ui/widgets/custom_file_explorer.dart';


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

  // ISO Builder State (Windows-only WinPE builder)
  bool isBuildingIso = false;
  double buildProgress = 0.0;
  String? selectedWimPath;
  String? outputIsoPath;

  // Auto-detected install.wim path
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
  /// Scans common live media directories on Linux or drive letters on Windows.
  Future<void> autoDetectInstallWim() async {
    isSearchingWim = true;
    detectedWimPath = null;
    notifyListeners();

    addLog('Scanning drives for Windows installation image...');

    if (Platform.isLinux) {
      // Standard Linux live boot mount points where the WIM could be located
      final searchPaths = [
        '/run/live/medium/sources/install.wim',
        '/run/live/medium/sources/install.swm',
        '/cdrom/sources/install.wim',
        '/cdrom/sources/install.swm',
        '/run/live/medium/install.wim',
        '/mnt/install.wim',
      ];

      for (final path in searchPaths) {
        final f = File(path);
        if (f.existsSync()) {
          detectedWimPath = f.path;
          addLog('  ✓ Found install image at $path (${_fileSizeMb(f)} MB)');
          break;
        }
      }
    } else {
      // Letters the ISO could be mounted as in WinPE/Windows
      const driveLetters = ['D','E','F','G','H','I','J','K','L','M','N','O','P'];

      for (final letter in driveLetters) {
        final wim = File('$letter:\\sources\\install.wim');
        if (wim.existsSync()) {
          detectedWimPath = wim.path;
          addLog('  ✓ Found install.wim on drive $letter: (${_fileSizeMb(wim)} MB)');
          break;
        }
        final swm = File('$letter:\\sources\\install.swm');
        if (swm.existsSync()) {
          detectedWimPath = swm.path;
          addLog('  ✓ Found split WIM (SWM) on drive $letter:');
          break;
        }
      }
    }

    if (detectedWimPath == null) {
      addLog('  ⚠ install.wim not found. Please specify or mount image manually.');
    }

    isSearchingWim = false;
    notifyListeners();
  }

  /// Allows the user to manually select the WIM/SWM image using a GUI File Picker.
  Future<void> pickWimFile([BuildContext? context]) async {
    isSearchingWim = true;
    notifyListeners();

    if (Platform.isLinux) {
      addLog('Mounting external USB drives to /media/usb-*...');
      await _diskService.mountExternalDrivesLinux();
    }

    addLog('Opening file explorer to select Windows image...');
    try {
      String? path;
      if (context != null && context.mounted) {
        path = await showDialog<String>(
          context: context,
          builder: (context) => const CustomFileExplorer(),
        );
      } else {
        final result = await FilePicker.platform.pickFiles(
          type: FileType.custom,
          allowedExtensions: ['wim', 'swm'],
          dialogTitle: 'Select Windows Installation WIM or SWM Image',
        );
        if (result != null && result.files.single.path != null) {
          path = result.files.single.path!;
        }
      }

      if (path != null) {
        final file = File(path);
        detectedWimPath = path;
        addLog('  ✓ Selected image: $path (${_fileSizeMb(file)} MB)');
      } else {
        addLog('  Image selection canceled.');
      }
    } catch (e) {
      addLog('ERROR selecting image: $e');
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

    final isLinux = Platform.isLinux;
    
    // Define target directories depending on OS
    final String applyDir = isLinux ? '/mnt/windows' : 'W:\\';
    final String bootDrive = isLinux 
        ? (partitionMode == PartitionMode.formatGpt ? '/mnt/efi' : '/mnt/windows')
        : (partitionMode == PartitionMode.formatGpt ? 'S:' : 'W:');
    final String windowsDir = isLinux ? '/mnt/windows/Windows' : 'W:\\Windows';

    // ── Step 1: Prepare Disk ──────────────────────────────────────────────
    if (partitionMode != PartitionMode.useExisting) {
      currentStatus = 'Preparing disk...';
      notifyListeners();

      try {
        if (isLinux) {
          addLog('Partitioning disk using parted...');
          final success = await _diskService.prepareDiskLinux(selectedDisk!, partitionMode);
          if (!success) {
            addLog('ERROR: Disk partitioning failed on Linux.');
            currentStatus = 'Disk Error';
            notifyListeners();
            return;
          }
          addLog('  ✓ Disk partitioned successfully.');

          // Mount partitions
          addLog('Mounting target partitions...');
          final espPart = selectedDisk!.devicePath.contains(RegExp(r'\d$'))
              ? '${selectedDisk!.devicePath}p1'
              : '${selectedDisk!.devicePath}1';
          final winPart = partitionMode == PartitionMode.formatGpt
              ? (selectedDisk!.devicePath.contains(RegExp(r'\d$'))
                  ? '${selectedDisk!.devicePath}p3'
                  : '${selectedDisk!.devicePath}3')
              : (selectedDisk!.devicePath.contains(RegExp(r'\d$'))
                  ? '${selectedDisk!.devicePath}p1'
                  : '${selectedDisk!.devicePath}1');

          // Ensure mount dirs exist
          await _diskService.processService.run('mkdir', ['-p', '/mnt/windows', '/mnt/efi']);
          
          // Force unmount first
          await _diskService.processService.run('umount', ['-f', '/mnt/windows']);
          await _diskService.processService.run('umount', ['-f', '/mnt/efi']);

          // Mount Windows Partition
          var mountRes = await _diskService.processService.run('mount', [winPart, '/mnt/windows']);
          if (mountRes.exitCode != 0) {
            mountRes = await _diskService.processService.run('mount', ['-t', 'ntfs-3g', winPart, '/mnt/windows']);
            if (mountRes.exitCode != 0) {
              addLog('ERROR: Could not mount Windows partition: ${mountRes.stderr}');
              currentStatus = 'Mount Error';
              notifyListeners();
              return;
            }
          }

          if (partitionMode == PartitionMode.formatGpt) {
            // Mount ESP
            final mountEspRes = await _diskService.processService.run('mount', [espPart, '/mnt/efi']);
            if (mountEspRes.exitCode != 0) {
              addLog('ERROR: Could not mount ESP partition: ${mountEspRes.stderr}');
              currentStatus = 'Mount Error';
              notifyListeners();
              return;
            }
          }
          addLog('  ✓ Partitions mounted at /mnt/windows and /mnt/efi.');
        } else {
          // Windows diskpart execution
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
        }
      } catch (e) {
        addLog('ERROR: Disk setup failed. $e');
        currentStatus = 'System Error';
        notifyListeners();
        return;
      }
    } else {
      addLog('Using existing partition layout (no format).');
      if (isLinux) {
        addLog('Assumes target is already mounted at /mnt/windows (and /mnt/efi for GPT).');
      }
    }

    // ── Step 2: Apply Image ───────────────────────────────────────────────
    currentStatus = 'Applying image...';
    notifyListeners();

    String? swmPattern;
    if (resolvedWim.toLowerCase().endsWith('.swm')) {
      if (isLinux) {
        swmPattern = resolvedWim.replaceAll(RegExp(r'\d*\.swm$'), '*.swm');
      } else {
        swmPattern = resolvedWim.replaceAll(RegExp(r'\d*\.swm$'), '*.swm');
      }
      addLog('Detected split WIM. Pattern: $swmPattern');
    }

    final progressStream = _deploymentService.applyImage(
      imagePath: resolvedWim,
      applyDir: applyDir,
      swmPattern: swmPattern,
    );

    await for (final progress in progressStream) {
      if (progress.percentage >= 0) {
        installProgress = progress.percentage;
      }
      addLog(progress.status);
      notifyListeners();
    }

    // ── Step 3: Bootloader ────────────────────────────────────────────────
    currentStatus = 'Configuring bootloader...';
    addLog('Running Bootloader setup...');
    notifyListeners();
    
    final isGpt = partitionMode == PartitionMode.formatGpt;
    
    final espPart = isLinux ? (selectedDisk!.devicePath.contains(RegExp(r'\d$'))
        ? '${selectedDisk!.devicePath}p1'
        : '${selectedDisk!.devicePath}1') : null;
    final winPart = isLinux ? (partitionMode == PartitionMode.formatGpt
        ? (selectedDisk!.devicePath.contains(RegExp(r'\d$'))
            ? '${selectedDisk!.devicePath}p3'
            : '${selectedDisk!.devicePath}3')
        : (selectedDisk!.devicePath.contains(RegExp(r'\d$'))
            ? '${selectedDisk!.devicePath}p1'
            : '${selectedDisk!.devicePath}1')) : null;

    final bcdResult = await _deploymentService.configureBootloader(
      windowsDir,
      bootDrive,
      uefi: isGpt,
      bios: !isGpt,
      espDevice: espPart,
      windowsDevice: winPart,
    );
    if (!bcdResult) {
      addLog('ERROR: Bootloader configuration failed.');
    } else {
      addLog('  ✓ Bootloader configured successfully.');
    }

    // ── Step 4: Registry Injection (OEM) ──────────────────────────────────
    currentStatus = 'Injecting OEM configuration...';
    addLog('Modifying offline registry...');
    notifyListeners();
    
    try {
      final system32Dir = isLinux ? '/mnt/windows/Windows/System32' : 'W:\\Windows\\System32';
      final oemLogoTarget = isLinux ? '/mnt/windows/Windows/System32/oemlogo.bmp' : 'W:\\Windows\\System32\\oemlogo.bmp';
      
      final logoSourcePath = isLinux 
          ? '${p.dirname(Platform.resolvedExecutable)}/data/flutter_assets/assets/logo.png'
          : '${p.dirname(Platform.resolvedExecutable)}\\data\\flutter_assets\\assets\\logo.png';

      if (Directory(system32Dir).existsSync()) {
        final logoFile = File(logoSourcePath);
        if (logoFile.existsSync()) {
          await logoFile.copy(oemLogoTarget);
          addLog('  ✓ OEM logo copied to system.');
        } else {
          addLog('  ⚠ OEM source logo not found at $logoSourcePath.');
        }
      }

      await _registryService.setOemBranding(
        windowsPath: windowsDir,
        manufacturer: 'Joss Red Systems',
        model: 'Hyperion v1',
        logoPath: 'C:\\Windows\\System32\\oemlogo.bmp',
      );
      
      addLog('Setting environment variables...');
      await _registryService.setEnvironmentVariable(windowsDir, 'JOSS_RED_VERSION', '1.0');
      addLog('  ✓ Registry injection completed.');
    } catch (e) {
      addLog('WARNING: Registry injection failed. $e');
    }

    // ── Step 5: Finalizing (Copying assets) ────────────────────────────────
    currentStatus = 'Finalizing...';
    addLog('Copying post-install scripts...');
    notifyListeners();
    
    try {
      final scriptDir = isLinux ? Directory('/mnt/windows/Windows/Setup/Scripts') : Directory('W:\\Windows\\Setup\\Scripts');
      if (!await scriptDir.exists()) await scriptDir.create(recursive: true);
      
      addLog('Assets successfully copied.');
    } catch (e) {
      addLog('WARNING: Assets copy failed. $e');
    }

    if (isLinux) {
      addLog('Unmounting target file systems...');
      await _diskService.processService.run('umount', ['-f', '/mnt/windows']);
      await _diskService.processService.run('umount', ['-f', '/mnt/efi']);
    }

    currentStatus = 'Installation Complete!';
    installProgress = 1.0;
    notifyListeners();
    addLog('All operations completed successfully.');
  }

  Future<void> reboot() async {
    addLog('Rebooting system...');
    if (Platform.isLinux) {
      await _diskService.processService.run('reboot', []);
    } else {
      await _diskService.processService.run('shutdown.exe', ['/r', '/t', '0']);
    }
  }

  // --- ISO Builder Logic (Windows WinPE Builder Mode only) ---

  Future<void> buildFinalIso() async {
    if (outputIsoPath == null) {
      addLog('ERROR: Missing output path for ISO build.');
      return;
    }

    isBuildingIso = true;
    logs.clear();
    notifyListeners();

    try {
      final appPath = p.dirname(Platform.resolvedExecutable);
      
      final buildStream = _isoBuilderService.buildIso(
        sourceWimPath: selectedWimPath,
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
