import '../deployment_service.dart';

abstract class DeploymentProvider {
  Stream<DeploymentProgress> applyImage({
    required String imagePath,
    required String applyDir,
    int index = 1,
    String? swmPattern,
  });

  Future<BootloaderResult> configureBootloader(
    String windowsDir,
    String efiDir, {
    required bool uefi,
    required bool bios,
    String? espDevice,
    String? windowsDevice,
  });

  Stream<DeploymentProgress> cloneDisk({
    required String sourceDrive,
    required String tempImagePath,
    required String targetDrive,
  });
}
