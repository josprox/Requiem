import 'dart:convert';
import 'package:flutter/foundation.dart';
import 'process_service.dart';

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
  });

  String get sizeGB => (size / (1024 * 1024 * 1024)).toStringAsFixed(1);
  String get displayName => '$friendlyName ($sizeGB GB, $busType)';

  factory PhysicalDisk.fromMap(Map<String, dynamic> map) {
    return PhysicalDisk(
      number:       int.tryParse(map['Number']?.toString() ?? '0') ?? 0,
      friendlyName: map['FriendlyName'] ?? 'Unknown Device',
      size:         int.tryParse(map['Size']?.toString() ?? '0') ?? 0,
      mediaType:    map['MediaType'] ?? 'Unknown',
      busType:      map['BusType'] ?? 'Unknown',
      status:       map['OperationalStatus'] ?? 'Unknown',
      healthStatus: map['HealthStatus'] ?? 'Unknown',
      isBootDisk:   map['IsBoot'] == true,
      isSystemDisk: map['IsSystem'] == true,
    );
  }
}

/// Model for a disk partition.
class DiskPartition {
  final int diskNumber;
  final int partitionNumber;
  final String type;
  final int size; // bytes
  final String driveLetter;
  final bool isActive;

  DiskPartition({
    required this.diskNumber,
    required this.partitionNumber,
    required this.type,
    required this.size,
    this.driveLetter = '',
    this.isActive = false,
  });

  String get sizeGB => (size / (1024 * 1024 * 1024)).toStringAsFixed(1);
}

class DiskService {
  final ProcessService processService = ProcessService();

  /// Lists all physical disks with rich metadata via PowerShell.
  Future<List<PhysicalDisk>> listDisks() async {
    final result = await processService.runPowerShell(
      r'''
      $disks = Get-PhysicalDisk | Select-Object DeviceId, FriendlyName, Size, MediaType, BusType, OperationalStatus, HealthStatus
      $bootDisk = (Get-Disk | Where-Object IsBoot -eq $true).Number
      $systemDisk = (Get-Disk | Where-Object IsSystem -eq $true).Number
      $disks | ForEach-Object {
        $diskNum = [int]$_.DeviceId
        $_ | Add-Member -NotePropertyName IsBoot   -NotePropertyValue ($diskNum -eq $bootDisk)   -Force
        $_ | Add-Member -NotePropertyName IsSystem -NotePropertyValue ($diskNum -eq $systemDisk) -Force
        $_ | Add-Member -NotePropertyName Number   -NotePropertyValue $diskNum -Force
      }
      $disks | ConvertTo-Json -Depth 2
      ''',
    );

    if (result.exitCode != 0 || result.stdout.trim().isEmpty) {
      debugPrint('DiskService.listDisks error: ${result.stderr}');
      return [];
    }

    try {
      final decoded = jsonDecode(result.stdout.trim());
      final list = decoded is List ? decoded : [decoded];
      return list.map((m) => PhysicalDisk.fromMap(m as Map<String, dynamic>)).toList();
    } catch (e) {
      debugPrint('DiskService.listDisks parse error: $e');
      return [];
    }
  }

  /// Lists partitions on a given disk.
  Future<List<DiskPartition>> listPartitions(int diskNumber) async {
    final result = await processService.runPowerShell(
      'Get-Partition -DiskNumber $diskNumber | Select-Object DiskNumber, PartitionNumber, Type, Size, DriveLetter, IsActive | ConvertTo-Json -Depth 2',
    );

    if (result.exitCode != 0 || result.stdout.trim().isEmpty) return [];

    try {
      final decoded = jsonDecode(result.stdout.trim());
      final list = decoded is List ? decoded : [decoded];
      return list.map((m) => DiskPartition(
        diskNumber:      m['DiskNumber'] ?? diskNumber,
        partitionNumber: m['PartitionNumber'] ?? 0,
        type:            m['Type'] ?? 'Unknown',
        size:            int.tryParse(m['Size']?.toString() ?? '0') ?? 0,
        driveLetter:     m['DriveLetter']?.toString() ?? '',
        isActive:        m['IsActive'] == true,
      )).toList();
    } catch (e) {
      debugPrint('DiskService.listPartitions parse error: $e');
      return [];
    }
  }

  /// Generates a DiskPart script for a clean GPT/UEFI layout.
  /// Layout: 500MB EFI (S:), 128MB MSR, remaining for Windows (W:).
  String generateGptScript(int diskNumber) {
    return [
      'select disk $diskNumber',
      'clean',
      'convert gpt',
      'create partition efi size=500',
      'format quick fs=fat32 label="System"',
      'assign letter=S',
      'create partition msr size=128',
      'create partition primary',
      'format quick fs=ntfs label="Windows"',
      'assign letter=W',
      'active',
      'exit',
    ].join('\n');
  }

  /// Generates a DiskPart script for an MBR/BIOS layout (legacy compatibility).
  String generateMbrScript(int diskNumber) {
    return [
      'select disk $diskNumber',
      'clean',
      'convert mbr',
      'create partition primary',
      'format quick fs=ntfs label="Windows"',
      'assign letter=W',
      'active',
      'exit',
    ].join('\n');
  }

  /// Checks if a disk is safe to write (not the boot/system disk).
  Future<bool> isSafeToProceed(int diskNumber) async {
    final disks = await listDisks();
    final disk = disks.where((d) => d.number == diskNumber).firstOrNull;
    if (disk == null) return false;
    return !disk.isBootDisk && !disk.isSystemDisk;
  }
}
