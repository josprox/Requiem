import 'dart:async';
import 'dart:io';
import 'process_service.dart';
import 'deployment/deployment_provider.dart';
import 'deployment/linux_deployment_provider.dart';
import 'deployment/windows_deployment_provider.dart';

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
  late final DeploymentProvider _provider;

  DeploymentService() {
    if (Platform.isLinux) {
      _provider = LinuxDeploymentProvider(_processService);
    } else {
      _provider = WindowsDeploymentProvider(_processService);
    }
  }

  /// Applies a WIM/SWM image using DISM (Windows) or wimlib-imagex (Linux).
  Stream<DeploymentProgress> applyImage({
    required String imagePath,
    required String applyDir,
    String? targetDevice,
    int index = 1,
    String? swmPattern,
  }) {
    return _provider.applyImage(
      imagePath: imagePath,
      applyDir: applyDir,
      targetDevice: targetDevice,
      index: index,
      swmPattern: swmPattern,
    );
  }

  /// Configures the bootloader using BCDBoot (Windows) or manual copy + efibootmgr/ms-sys (Linux).
  Future<BootloaderResult> configureBootloader(
    String windowsDir,
    String efiDir, {
    bool uefi = true,
    bool bios = false,
    String? espDevice, // Required on Linux
    String? windowsDevice, // Required on Linux
  }) {
    return _provider.configureBootloader(
      windowsDir,
      efiDir,
      uefi: uefi,
      bios: bios,
      espDevice: espDevice,
      windowsDevice: windowsDevice,
    );
  }

  /// Clones a disk using DISM (Windows only).
  Stream<DeploymentProgress> cloneDisk({
    required String sourceDrive,
    required String tempImagePath,
    required String targetDrive,
  }) {
    return _provider.cloneDisk(
      sourceDrive: sourceDrive,
      tempImagePath: tempImagePath,
      targetDrive: targetDrive,
    );
  }
}
