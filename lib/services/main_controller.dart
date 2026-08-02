import 'dart:io';
import 'package:flutter/material.dart';
import 'package:path_provider/path_provider.dart';
import 'package:path/path.dart' as p;
import '../services/disk_service.dart';
import '../services/deployment_service.dart';
import '../services/registry_service.dart';
import 'wim_scanner_service.dart';
import 'disk_selection_controller.dart';
import '../models/installation_source.dart';

class MainController extends ChangeNotifier {
  final DiskService _diskService = DiskService();
  final DeploymentService _deploymentService = DeploymentService();
  final RegistryService _registryService = RegistryService();
  late final WimScannerService _wimScannerService;
  late final DiskSelectionController _diskSelectionController;

  MainController() {
    _wimScannerService = WimScannerService(_diskService);
    _diskSelectionController = DiskSelectionController(_diskService);
  }

  List<PhysicalDisk> get disks => _diskSelectionController.disks;
  PhysicalDisk? get selectedDisk => _diskSelectionController.selectedDisk;
  bool get isLoadingDisks => _diskSelectionController.isLoadingDisks;

  double installProgress = 0.0;
  String currentStatus = 'Ready';
  List<String> logs = [];
  bool isInstalling = false;
  bool installationComplete = false;
  bool installationFailed = false;

  // Auto-detected install.wim path
  String? detectedWimPath;
  InstallationSourceKind installationSourceKind = InstallationSourceKind.local;
  BridgeAnnouncement? bridgeAnnouncement;
  bool isSearchingWim = false;

  bool get hasEmbeddedWim =>
      installationSourceKind == InstallationSourceKind.embedded;
  bool get usesBridge =>
      installationSourceKind == InstallationSourceKind.bridge;

  // Partition mode chosen by user in DiskSelectionScreen
  PartitionMode _pendingPartitionMode = PartitionMode.formatGpt;
  PartitionMode get pendingPartitionMode => _pendingPartitionMode;

  bool? bootedInUefi;

  String get bootFirmwareLabel {
    if (bootedInUefi == null) return 'Unknown';
    return bootedInUefi! ? 'UEFI' : 'Legacy BIOS';
  }

  PartitionMode get recommendedPartitionMode {
    return PartitionMode.formatGpt;
  }

  void refreshFirmwareMode() {
    bootedInUefi = _diskService.currentBootIsUefi();
    notifyListeners();
  }

  bool isPartitionModeCompatible(PartitionMode mode) {
    if (mode == PartitionMode.useExisting || bootedInUefi == null) {
      return true;
    }
    if (bootedInUefi!) return mode == PartitionMode.formatGpt;
    return mode == PartitionMode.formatMbr;
  }

  String? partitionModeBlockReason(PartitionMode mode) {
    if (isPartitionModeCompatible(mode)) return null;
    if (bootedInUefi == true && mode == PartitionMode.formatMbr) {
      return 'This live session booted in UEFI. Use GPT or reboot the VM in legacy BIOS.';
    }
    if (bootedInUefi == false && mode == PartitionMode.formatGpt) {
      return 'This live session booted in legacy BIOS. Reboot the installer in UEFI mode before creating a GPT/UEFI Windows installation.';
    }
    return null;
  }

  void setPartitionMode(PartitionMode mode) {
    _pendingPartitionMode = mode;
    notifyListeners();
  }

  void addLog(String log) {
    logs.add('[${DateTime.now().toIso8601String().substring(11, 19)}] $log');
    notifyListeners();
  }

  Future<void> autoDetectInstallWim({bool force = false}) async {
    if (usesBridge && !force) return;
    isSearchingWim = true;
    detectedWimPath = null;
    notifyListeners();
    detectedWimPath = await _wimScannerService.autoDetectInstallWim(addLog);
    installationSourceKind =
        detectedWimPath != null &&
            WimScannerService.embeddedWimPaths.contains(detectedWimPath)
        ? InstallationSourceKind.embedded
        : InstallationSourceKind.local;
    bridgeAnnouncement = null;
    isSearchingWim = false;
    notifyListeners();
  }

  Future<void> pickWimFile([BuildContext? context]) async {
    isSearchingWim = true;
    notifyListeners();
    detectedWimPath = await _wimScannerService.pickWimFile(addLog, context);
    installationSourceKind = InstallationSourceKind.local;
    bridgeAnnouncement = null;
    isSearchingWim = false;
    notifyListeners();
  }

  bool detectEmbeddedWim() {
    final path = _wimScannerService.detectEmbeddedWim(addLog);
    if (path == null) return false;
    detectedWimPath = path;
    installationSourceKind = InstallationSourceKind.embedded;
    bridgeAnnouncement = null;
    notifyListeners();
    return true;
  }

  void useBridge(BridgeAnnouncement announcement) {
    detectedWimPath = announcement.imageUri.toString();
    bridgeAnnouncement = announcement;
    installationSourceKind = InstallationSourceKind.bridge;
    addLog(
      'Bridge selected: ${announcement.imageName} from ${announcement.address}:${announcement.port}',
    );
    notifyListeners();
  }

  Future<void> refreshDisks() async {
    await _diskSelectionController.refreshDisks(addLog);
    notifyListeners();
  }

  void selectDisk(PhysicalDisk disk) {
    _diskSelectionController.selectDisk(disk, addLog);
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
      installationFailed = true;
      notifyListeners();
      return;
    }

    installProgress = 0.0;
    isInstalling = true;
    installationComplete = false;
    installationFailed = false;
    logs.clear();
    addLog(
      'Starting deployment on DISK ${selectedDisk!.number} — ${selectedDisk!.friendlyName}',
    );
    addLog('Image: $resolvedWim');
    addLog('Mode: ${partitionMode.name}');

    final isLinux = Platform.isLinux;

    // Define target directories depending on OS
    final String applyDir = isLinux ? '/mnt/windows' : 'W:\\';
    String bootDrive = isLinux
        ? (partitionMode == PartitionMode.formatGpt
              ? '/mnt/efi'
              : '/mnt/windows')
        : (partitionMode == PartitionMode.formatGpt ? 'S:' : 'W:');
    final String windowsDir = isLinux ? '/mnt/windows/Windows' : 'W:\\Windows';
    var targetIsUefi = partitionMode == PartitionMode.formatGpt;
    String? espPart;
    String? winPart;

    Future<bool> cleanupTargetMounts() async {
      if (!isLinux) return true;

      final syncResult = await _diskService.processService.run(
        'sync',
        [],
        timeout: const Duration(minutes: 5),
      );
      if (syncResult.exitCode != 0) {
        addLog(
          'ERROR: sync failed before unmount: ${syncResult.stderr.trim()}',
        );
        return false;
      }

      if (winPart != null) {
        final parentDisk = winPart.replaceAll(RegExp(r'p?\d+$'), '');
        final flushResult = await _diskService.processService.run('blockdev', [
          '--flushbufs',
          parentDisk,
        ]);
        if (flushResult.exitCode != 0) {
          addLog(
            'ERROR: blockdev --flushbufs failed on $parentDisk: ${flushResult.stderr.trim()}',
          );
          return false;
        }
      }

      for (final mountPoint in ['/mnt/windows', '/mnt/efi', '/mnt/boot']) {
        // --target resolves the filesystem containing a path, so it reports
        // the live root filesystem even when /mnt/boot is not mounted.  Use
        // --mountpoint to require an exact mount-table entry.
        final mounted = await _diskService.processService.run('findmnt', [
          '--noheadings',
          '--mountpoint',
          mountPoint,
        ]);
        if (mounted.exitCode != 0) continue;

        var unmount = await _diskService.processService.run('umount', [
          mountPoint,
        ]);
        if (unmount.exitCode != 0) {
          addLog(
            'Unmount of $mountPoint is busy; synchronizing and retrying...',
          );
          await _diskService.processService.run(
            'sync',
            [],
            timeout: const Duration(minutes: 5),
          );
          await Future<void>.delayed(const Duration(milliseconds: 500));
          unmount = await _diskService.processService.run('umount', [
            mountPoint,
          ]);
        }
        if (unmount.exitCode != 0) {
          addLog(
            'ERROR: umount $mountPoint failed with exit ${unmount.exitCode}: ${unmount.stderr.trim()}',
          );
          return false;
        }
        addLog('  ✓ Unmounted $mountPoint cleanly.');
      }
      return true;
    }

    Future<String?> mountedDevice(String mountPoint) async {
      final result = await _diskService.processService.run('findmnt', [
        '--noheadings',
        '--output',
        'SOURCE',
        '--target',
        mountPoint,
      ]);
      if (result.exitCode != 0) return null;
      final source = result.stdout.trim().split('\n').first.trim();
      return source.startsWith('/dev/') ? source : null;
    }

    Future<void> failInstallation(String status, String message) async {
      addLog(message);
      currentStatus = status;
      installationFailed = true;
      isInstalling = false;
      final cleaned = await cleanupTargetMounts();
      if (!cleaned) {
        addLog(
          'WARNING: Target volumes remain mounted because a clean sync/unmount could not be verified.',
        );
      }
      notifyListeners();
    }

    // ── Step 1: Prepare Disk ──────────────────────────────────────────────
    bootedInUefi = _diskService.currentBootIsUefi();
    if (bootedInUefi != null) {
      addLog('Firmware boot mode: $bootFirmwareLabel');
    }
    final blockReason = partitionModeBlockReason(partitionMode);
    if (blockReason != null) {
      await failInstallation(
        'Firmware Mismatch',
        'ERROR: $blockReason The selected layout would not boot after reboot.',
      );
      return;
    }

    if (partitionMode != PartitionMode.useExisting) {
      currentStatus = 'Preparing disk...';
      notifyListeners();

      try {
        if (isLinux) {
          addLog('Partitioning disk with Windows GPT/MBR type codes...');
          final success = await _diskService.prepareDiskLinux(
            selectedDisk!,
            partitionMode,
          );
          if (!success) {
            await failInstallation(
              'Disk Error',
              'ERROR: Disk partitioning failed on Linux.',
            );
            return;
          }
          addLog('  ✓ Disk partitioned successfully.');

          espPart = selectedDisk!.devicePath.contains(RegExp(r'\d$'))
              ? '${selectedDisk!.devicePath}p1'
              : '${selectedDisk!.devicePath}1';
          winPart = partitionMode == PartitionMode.formatGpt
              ? (selectedDisk!.devicePath.contains(RegExp(r'\d$'))
                    ? '${selectedDisk!.devicePath}p3'
                    : '${selectedDisk!.devicePath}3')
              : espPart;

          // Ensure mount dirs exist
          await _diskService.processService.run('mkdir', [
            '-p',
            '/mnt/windows',
            '/mnt/efi',
            '/mnt/boot',
          ]);

          // Force unmount first
          await _diskService.processService.run('umount', [
            '-f',
            '/mnt/windows',
          ]);
          await _diskService.processService.run('umount', ['-f', '/mnt/efi']);
          await _diskService.processService.run('umount', ['-f', '/mnt/boot']);

          addLog('Target volumes are unmounted for block-level WIM apply.');
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
          final dpResult = await _diskService.processService.run(
            'diskpart.exe',
            ['/s', scriptFile.path],
          );
          if (dpResult.exitCode != 0) {
            await failInstallation(
              'Disk Error',
              'ERROR: DiskPart failed. ${dpResult.stderr}',
            );
            return;
          }
          addLog('  ✓ Disk partitioned successfully.');
        }
      } catch (e) {
        await failInstallation('System Error', 'ERROR: Disk setup failed. $e');
        return;
      }
    } else {
      addLog('Using existing partition layout (no format).');
      if (isLinux) {
        winPart = await mountedDevice('/mnt/windows');
        espPart = await mountedDevice('/mnt/efi');
        if (winPart == null) {
          await failInstallation(
            'Mount Error',
            'ERROR: /mnt/windows is not backed by a block-device partition.',
          );
          return;
        }

        targetIsUefi = espPart != null;
        bootDrive = targetIsUefi ? '/mnt/efi' : '/mnt/windows';
        if (bootedInUefi != null && bootedInUefi != targetIsUefi) {
          await failInstallation(
            'Firmware Mismatch',
            'ERROR: The existing target layout does not match the firmware mode used to boot this live session.',
          );
          return;
        }

        if (!await cleanupTargetMounts()) {
          await failInstallation(
            'Unmount Error',
            'ERROR: Existing target volumes could not be synchronized and unmounted cleanly.',
          );
          return;
        }
        addLog('Existing target volumes unmounted for block-level WIM apply.');
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
      targetDevice: isLinux ? winPart : null,
      swmPattern: swmPattern,
    );

    var applyFailed = false;
    try {
      await for (final progress in progressStream) {
        if (progress.percentage >= 0) {
          installProgress = 0.10 + (progress.percentage * 0.70);
          if (installProgress > 0.80) installProgress = 0.80;
          if (progress.percentage >= 1.0) {
            currentStatus = 'Finalizing image...';
          }
        }
        if (progress.isError) applyFailed = true;
        addLog(progress.status);
        notifyListeners();
      }
    } catch (e) {
      applyFailed = true;
      addLog('ERROR: WIM process failed unexpectedly: $e');
    }

    if (applyFailed) {
      await failInstallation(
        'Image Error',
        'ERROR: WIM application failed. The target disk is not bootable yet.',
      );
      return;
    }

    if (isLinux) {
      currentStatus = 'Syncing filesystem...';
      installProgress = 0.82;
      addLog('Syncing filesystem writes to physical disk...');
      notifyListeners();
      final syncResult = await _diskService.processService.run(
        'sync',
        [],
        timeout: const Duration(minutes: 5),
      );
      if (syncResult.exitCode != 0) {
        await failInstallation(
          'Disk Error',
          'ERROR: Could not synchronize WIM writes: ${syncResult.stderr}',
        );
        return;
      }
      addLog('  ✓ Disk writes synced.');
      notifyListeners();

      // Flush kernel write buffers en el disco padre
      final parentDisk = winPart!.replaceAll(RegExp(r'p?\d+$'), '');
      addLog('Flushing disk buffers on $parentDisk...');
      final flushResult = await _diskService.processService.run('blockdev', [
        '--flushbufs',
        parentDisk,
      ]);
      if (flushResult.exitCode != 0) {
        await failInstallation(
          'Disk Error',
          'ERROR: Could not flush $parentDisk: ${flushResult.stderr}',
        );
        return;
      }

      // Sincronizar device nodes con la tabla de particiones real
      addLog('Waiting for device nodes to settle...');
      await _diskService.processService.run('partprobe', [parentDisk]);
      await _diskService.processService.run('udevadm', ['settle']);
      await Future<void>.delayed(const Duration(seconds: 1));

      addLog('Creating mountpoints /mnt/windows and /mnt/efi...');
      await _diskService.processService.run('mkdir', ['-p', '/mnt/windows']);
      await _diskService.processService.run('mkdir', ['-p', '/mnt/efi']);
      await _diskService.processService.run('mkdir', ['-p', '/mnt/boot']);

      addLog('Mounting the applied Windows volume...');
      var mountRes = await _diskService.processService.run('mount', [
        '-t',
        'ntfs-3g',
        winPart,
        '/mnt/windows',
      ]);
      if (mountRes.exitCode != 0) {
        mountRes = await _diskService.processService.run('mount', [
          '-t',
          'ntfs3',
          winPart,
          '/mnt/windows',
        ]);
      }
      if (mountRes.exitCode != 0) {
        mountRes = await _diskService.processService.run('mount', [
          winPart,
          '/mnt/windows',
        ]);
      }
      if (mountRes.exitCode != 0) {
        await failInstallation(
          'Mount Error',
          'ERROR: Could not mount the applied Windows volume: ${mountRes.stderr}',
        );
        return;
      }

      if (!Directory('/mnt/windows/Windows').existsSync()) {
        await failInstallation(
          'Image Error',
          'ERROR: WIM apply returned success but /mnt/windows/Windows is missing.',
        );
        return;
      }

      if (targetIsUefi) {
        if (espPart == null) {
          await failInstallation(
            'Mount Error',
            'ERROR: GPT/UEFI target has no resolved ESP device.',
          );
          return;
        }
        final mountEspRes = await _diskService.processService.run('mount', [
          espPart,
          '/mnt/efi',
        ]);
        if (mountEspRes.exitCode != 0) {
          await failInstallation(
            'Mount Error',
            'ERROR: Could not mount the EFI System Partition: ${mountEspRes.stderr}',
          );
          return;
        }
      }
      addLog(
        targetIsUefi
            ? 'Target mounted at /mnt/windows; ESP mounted at /mnt/efi.'
            : 'Target mounted at /mnt/windows.',
      );
      notifyListeners();
    }

    // ── Step 3: Bootloader ────────────────────────────────────────────────
    currentStatus = 'Configuring bootloader...';
    installProgress = 0.85;
    addLog('Running Bootloader setup...');
    notifyListeners();

    final bootloaderResult = await _deploymentService.configureBootloader(
      windowsDir,
      bootDrive,
      uefi: targetIsUefi,
      bios: !targetIsUefi,
      espDevice: targetIsUefi ? espPart : winPart,
      windowsDevice: winPart,
      onLog: addLog,
    );

    if (!bootloaderResult.success) {
      await failInstallation(
        'Bootloader Error',
        'ERROR: Bootloader configuration failed. Windows files were applied, but the disk is not bootable.',
      );
      return;
    } else {
      addLog('  ✓ Bootloader configured successfully.');
    }

    // ── Step 4: Registry Injection (OEM) ──────────────────────────────────
    currentStatus = 'Injecting OEM configuration...';
    installProgress = 0.92;
    addLog('Modifying offline registry...');
    notifyListeners();

    try {
      final system32Dir = isLinux
          ? '/mnt/windows/Windows/System32'
          : 'W:\\Windows\\System32';
      final oemLogoTarget = isLinux
          ? '/mnt/windows/Windows/System32/oemlogo.bmp'
          : 'W:\\Windows\\System32\\oemlogo.bmp';

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
        manufacturer: 'Requiem Systems',
        model: 'Hyperion v1',
        logoPath: 'C:\\Windows\\System32\\oemlogo.bmp',
      );

      addLog('Enabling boot storage drivers...');
      final storageReady = await _registryService
          .enableBootStorageCompatibility(windowsDir);
      if (storageReady) {
        addLog('  ✓ Boot storage drivers enabled.');
      } else {
        addLog('  ⚠ Boot storage driver update could not be verified.');
      }

      addLog('Setting environment variables...');
      await _registryService.setEnvironmentVariable(
        windowsDir,
        'JOSS_RED_VERSION',
        '1.0',
      );
      addLog('  ✓ Registry injection completed.');
    } catch (e) {
      addLog('WARNING: Registry injection failed. $e');
    }

    // ── Step 5: Finalizing (Copying assets) ────────────────────────────────
    currentStatus = 'Finalizing...';
    installProgress = 0.97;
    addLog('Copying post-install scripts...');
    notifyListeners();

    try {
      final scriptDir = isLinux
          ? Directory('/mnt/windows/Windows/Setup/Scripts')
          : Directory('W:\\Windows\\Setup\\Scripts');
      if (!await scriptDir.exists()) await scriptDir.create(recursive: true);

      addLog('Assets successfully copied.');
    } catch (e) {
      addLog('WARNING: Assets copy failed. $e');
    }

    if (isLinux) {
      addLog('Synchronizing final registry and boot writes...');
      addLog('Unmounting target file systems cleanly...');
      if (!await cleanupTargetMounts()) {
        addLog(
          'ERROR: Final disk synchronization or clean unmount failed. The target was not marked complete.',
        );
        currentStatus = 'Unmount Error';
        installationFailed = true;
        isInstalling = false;
        notifyListeners();
        return;
      }
    }

    currentStatus = 'Installation Complete!';
    installProgress = 1.0;
    isInstalling = false;
    installationComplete = true;
    installationFailed = false;
    notifyListeners();
    addLog('All operations completed successfully.');
  }

  Future<void> reboot() async {
    if (!installationComplete) {
      addLog('Reboot blocked: installation is not complete yet.');
      return;
    }

    addLog('Rebooting system...');
    if (Platform.isLinux) {
      await _diskService.processService.run('reboot', []);
    } else {
      await _diskService.processService.run('shutdown.exe', ['/r', '/t', '0']);
    }
  }
}
