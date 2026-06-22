import '../disk_service.dart';

abstract class DiskProvider {
  bool? currentBootIsUefi();
  Future<List<PhysicalDisk>> listDisks();
  Future<List<DiskPartition>> listPartitions(int diskNumber);
  Future<bool> prepareDisk(PhysicalDisk disk, PartitionMode mode);
  String generateGptScript(int diskNumber);
  String generateMbrScript(int diskNumber);
  Future<void> mountExternalDrivesLinux();
  Future<bool> isSafeToProceed(int diskNumber);
}
