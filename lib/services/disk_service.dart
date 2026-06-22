import 'dart:io';
import 'process_service.dart';
import 'disk/disk_provider.dart';
import 'disk/linux_disk_provider.dart';
import 'disk/windows_disk_provider.dart';

/// Detailed model of a physical disk.
class PhysicalDisk {
  final int number;
  final String friendlyName;
  final int size; // bytes
  final String mediaType;
  final String busType;
  final String status;
  final String healthStatus;
  final bool isBootDisk;
  final bool isSystemDisk;
  final String devicePath; // Added for Linux support (e.g. /dev/sda)

  PhysicalDisk({
    required this.number,
    required this.friendlyName,
    required this.size,
    required this.mediaType,
    required this.busType,
    this.status = 'Unknown',
    this.healthStatus = 'Unknown',
    this.isBootDisk = false,
    this.isSystemDisk = false,
    this.devicePath = '',
  });

  String get sizeGB => (size / (1024 * 1024 * 1024)).toStringAsFixed(1);
  String get displayName => '$friendlyName ($sizeGB GB, $busType)';

  factory PhysicalDisk.fromMap(Map<String, dynamic> map) {
    return PhysicalDisk(
      number: int.tryParse(map['Number']?.toString() ?? '0') ?? 0,
      friendlyName: map['FriendlyName'] ?? 'Unknown Device',
      size: int.tryParse(map['Size']?.toString() ?? '0') ?? 0,
      mediaType: map['MediaType'] ?? 'Unknown',
      busType: map['BusType'] ?? 'Unknown',
      status: map['OperationalStatus'] ?? 'Unknown',
      healthStatus: map['HealthStatus'] ?? 'Unknown',
      isBootDisk: map['IsBoot'] == true,
      isSystemDisk: map['IsSystem'] == true,
      devicePath: map['DevicePath'] ?? '',
    );
  }
}

/// Model for a disk partition.
class DiskPartition {
  final int diskNumber;
  final int partitionNumber;
  final String type;
  final int size; // bytes
  final String driveLetter; // Represents Mountpoint on Linux
  final bool isActive;
  final String devicePath; // Added for Linux support (e.g. /dev/sda1)

  DiskPartition({
    required this.diskNumber,
    required this.partitionNumber,
    required this.type,
    required this.size,
    this.driveLetter = '',
    this.isActive = false,
    this.devicePath = '',
  });

  String get sizeGB => (size / (1024 * 1024 * 1024)).toStringAsFixed(1);
}

enum PartitionMode {
  /// Wipe disk and create a clean GPT/UEFI layout (S: + W:)
  formatGpt,

  /// Wipe disk and create a legacy MBR layout (system FAT32 + W:)
  formatMbr,

  /// Use the disk as-is — assumes the user already has the right partitions
  /// and W: is already mounted/assigned.
  useExisting,
}

class DiskService {
  final ProcessService processService = ProcessService();
  late final DiskProvider _provider;

  DiskService() {
    if (Platform.isLinux) {
      _provider = LinuxDiskProvider(processService);
    } else {
      _provider = WindowsDiskProvider(processService);
    }
  }

  /// Returns true when the current Linux live session was booted through UEFI.
  /// Returns null on platforms where the firmware mode cannot be inferred.
  bool? currentBootIsUefi() {
    return _provider.currentBootIsUefi();
  }

  /// Lists all physical disks (cross-platform).
  Future<List<PhysicalDisk>> listDisks() async {
    return _provider.listDisks();
  }

  /// Lists partitions/volumes on a given disk.
  Future<List<DiskPartition>> listPartitions(int diskNumber) async {
    return _provider.listPartitions(diskNumber);
  }

  /// Partitions and formats the disk under Linux.
  Future<bool> prepareDiskLinux(PhysicalDisk disk, PartitionMode mode) async {
    return _provider.prepareDisk(disk, mode);
  }

  /// Generates a DiskPart script for a clean GPT/UEFI layout (Windows only).
  String generateGptScript(int diskNumber) {
    return _provider.generateGptScript(diskNumber);
  }

  /// Generates a DiskPart script for an MBR/BIOS layout (legacy compatibility, Windows only).
  String generateMbrScript(int diskNumber) {
    return _provider.generateMbrScript(diskNumber);
  }

  /// Scans all block devices and mounts any unmounted partitions of external drives to /media/usb-* (Linux).
  Future<void> mountExternalDrivesLinux() async {
    return _provider.mountExternalDrivesLinux();
  }

  /// Checks if a disk is safe to write (not the boot/system disk).
  Future<bool> isSafeToProceed(int diskNumber) async {
    return _provider.isSafeToProceed(diskNumber);
  }
}
