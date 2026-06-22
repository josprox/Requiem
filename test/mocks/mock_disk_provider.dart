import 'package:requiem_tools/services/disk/disk_provider.dart';
import 'package:requiem_tools/services/disk_service.dart';

class MockDiskProvider implements DiskProvider {
  bool? uefiMode = true;
  List<PhysicalDisk> mockDisks = [];
  List<DiskPartition> mockPartitions = [];
  bool prepareDiskResult = true;

  @override
  bool? currentBootIsUefi() => uefiMode;

  @override
  Future<List<PhysicalDisk>> listDisks() async => mockDisks;

  @override
  Future<List<DiskPartition>> listPartitions(int diskNumber) async => mockPartitions;

  @override
  Future<bool> prepareDisk(PhysicalDisk disk, PartitionMode mode) async => prepareDiskResult;

  @override
  String generateGptScript(int diskNumber) => 'select disk $diskNumber\nclean';

  @override
  String generateMbrScript(int diskNumber) => 'select disk $diskNumber\nclean';

  @override
  Future<void> mountExternalDrivesLinux() async {}

  @override
  Future<bool> isSafeToProceed(int diskNumber) async {
    final disk = mockDisks.where((d) => d.number == diskNumber).firstOrNull;
    if (disk == null) return false;
    return !disk.isBootDisk && !disk.isSystemDisk;
  }
}
