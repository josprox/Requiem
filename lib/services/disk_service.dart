import 'dart:convert';
import 'dart:io';
import 'package:flutter/foundation.dart';
import 'package:path/path.dart' as p;
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
      number:       int.tryParse(map['Number']?.toString() ?? '0') ?? 0,
      friendlyName: map['FriendlyName'] ?? 'Unknown Device',
      size:         int.tryParse(map['Size']?.toString() ?? '0') ?? 0,
      mediaType:    map['MediaType'] ?? 'Unknown',
      busType:      map['BusType'] ?? 'Unknown',
      status:       map['OperationalStatus'] ?? 'Unknown',
      healthStatus: map['HealthStatus'] ?? 'Unknown',
      isBootDisk:   map['IsBoot'] == true,
      isSystemDisk: map['IsSystem'] == true,
      devicePath:   map['DevicePath'] ?? '',
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
  /// Wipe disk and create a legacy MBR layout (W:)
  formatMbr,
  /// Use the disk as-is — assumes the user already has the right partitions
  /// and W: is already mounted/assigned.
  useExisting,
}

class DiskService {
  final ProcessService processService = ProcessService();

  /// Runs a DiskPart script by writing it to a temp file and running diskpart.exe /s (Windows only)
  Future<String> _runDiskPartScript(String script) async {
    final tempDir = Directory.systemTemp;
    final file = File(p.join(tempDir.path, 'dp_script_${DateTime.now().millisecondsSinceEpoch}.txt'));
    await file.writeAsString(script);
    
    try {
      final result = await processService.run('diskpart.exe', ['/s', file.path]);
      return result.stdout;
    } finally {
      if (file.existsSync()) {
        try {
          await file.delete();
        } catch (_) {}
      }
    }
  }

  /// Parses disk size strings like "50 GB" or "5120 MB" into bytes.
  int _parseSize(double value, String unit) {
    final u = unit.toUpperCase();
    if (u.contains('TB')) return (value * 1024 * 1024 * 1024 * 1024).toInt();
    if (u.contains('GB')) return (value * 1024 * 1024 * 1024).toInt();
    if (u.contains('MB')) return (value * 1024 * 1024).toInt();
    if (u.contains('KB')) return (value * 1024).toInt();
    return value.toInt();
  }

  /// Safely extracts a substring from a string.
  String _safeSubstring(String s, int start, int end) {
    if (s.length <= start) return '';
    if (s.length <= end) return s.substring(start);
    return s.substring(start, end);
  }

  /// Lists all physical disks (cross-platform).
  Future<List<PhysicalDisk>> listDisks() async {
    if (Platform.isLinux) {
      return _listDisksLinux();
    }
    return _listDisksWindows();
  }

  /// Lists physical disks on Linux using lsblk.
  Future<List<PhysicalDisk>> _listDisksLinux() async {
    try {
      final result = await processService.run('lsblk', ['-J', '-b', '-o', 'NAME,MODEL,SIZE,TYPE,TRAN,MOUNTPOINTS']);
      if (result.exitCode != 0) {
        debugPrint('lsblk failed: ${result.stderr}');
        return [];
      }

      final data = jsonDecode(result.stdout);
      final devices = data['blockdevices'] as List<dynamic>? ?? [];
      final List<PhysicalDisk> list = [];

      int diskNumber = 0;
      for (final dev in devices) {
        if (dev['type'] != 'disk') continue;

        final name = dev['name'] ?? '';
        final model = (dev['model'] as String?)?.trim() ?? 'Unknown Device';
        final sizeBytes = dev['size'] ?? 0;
        final tran = dev['tran'] ?? 'SATA';
        final devicePath = '/dev/$name';

        // Check if boot disk or system disk
        bool isBoot = false;
        bool isSystem = false;
        
        final mountpoints = dev['mountpoints'] as List<dynamic>? ?? [];
        for (final mp in mountpoints) {
          if (mp != null && (mp == '/' || mp.toString().startsWith('/run/live') || mp == '/cdrom' || mp == '/boot')) {
            isBoot = true;
            isSystem = true;
          }
        }

        final children = dev['children'] as List<dynamic>? ?? [];
        for (final child in children) {
          final childMps = child['mountpoints'] as List<dynamic>? ?? [];
          for (final mp in childMps) {
            if (mp != null && (mp == '/' || mp.toString().startsWith('/run/live') || mp == '/cdrom' || mp == '/boot')) {
              isBoot = true;
              isSystem = true;
            }
          }
        }

        list.add(PhysicalDisk(
          number: diskNumber++,
          friendlyName: '$name: $model',
          size: sizeBytes,
          mediaType: tran.toString().toUpperCase() == 'NVME' || tran.toString().toUpperCase() == 'SSD' ? 'SSD' : 'HDD',
          busType: tran.toString().toUpperCase(),
          status: 'Online',
          healthStatus: 'Healthy',
          isBootDisk: isBoot,
          isSystemDisk: isSystem,
          devicePath: devicePath,
        ));
      }

      return list;
    } catch (e) {
      debugPrint('DiskService._listDisksLinux error: $e');
      return [];
    }
  }

  /// Lists physical disks on Windows using DiskPart.
  Future<List<PhysicalDisk>> _listDisksWindows() async {
    try {
      final listOutput = await _runDiskPartScript('list disk');
      final lines = listOutput.split('\n');
      
      final diskNumbers = <int>[];
      final isGptMap = <int, bool>{};
      final sizeMap = <int, int>{};
      
      for (final line in lines) {
        final lineTrim = line.trim();
        if (!lineTrim.toUpperCase().startsWith('DISK')) continue;
        
        final tokens = lineTrim.split(RegExp(r'\s+'));
        if (tokens.length < 5) continue;
        if (tokens[0].toUpperCase() != 'DISK') continue;
        
        final diskNum = int.tryParse(tokens[1]);
        if (diskNum == null) continue;
        
        int unitIndex = -1;
        for (int i = 3; i < tokens.length; i++) {
          final t = tokens[i].toUpperCase();
          if (t == 'B' || t == 'KB' || t == 'MB' || t == 'GB' || t == 'TB') {
            unitIndex = i;
            break;
          }
        }
        
        if (unitIndex != -1 && unitIndex > 3) {
          final sizeValStr = tokens[unitIndex - 1];
          final sizeVal = double.tryParse(sizeValStr);
          final sizeUnit = tokens[unitIndex];
          
          if (sizeVal != null) {
            final sizeBytes = _parseSize(sizeVal, sizeUnit);
            diskNumbers.add(diskNum);
            isGptMap[diskNum] = lineTrim.endsWith('*');
            sizeMap[diskNum] = sizeBytes;
          }
        }
      }
      
      if (diskNumbers.isEmpty) return [];
      
      final detailScript = diskNumbers.map((dNum) => 'select disk $dNum\ndetail disk').join('\n');
      final detailOutput = await _runDiskPartScript(detailScript);
      
      return _parseDetailDisksOutput(detailOutput, diskNumbers, isGptMap, sizeMap);
    } catch (e) {
      debugPrint('DiskService._listDisksWindows error: $e');
      return [];
    }
  }

  /// Parses detail disk outputs into PhysicalDisk objects (Windows).
  List<PhysicalDisk> _parseDetailDisksOutput(
    String output,
    List<int> diskNumbers,
    Map<int, bool> isGptMap,
    Map<int, int> sizeMap,
  ) {
    final list = <PhysicalDisk>[];
    final lines = output.split('\n');
    
    int? currentDiskNum;
    String? friendlyName;
    String type = 'Unknown';
    String status = 'Unknown';
    bool isBootDisk = false;
    bool isSystemDisk = false;
    
    final selectHeaderRegex = RegExp(r'Disk\s+(\d+)\s+is now the selected disk\.', caseSensitive: false);
    final keyValueRegex = RegExp(r'^([^:]+)\s*:\s*(.+)$');
    
    bool expectFriendlyNameNext = false;
    bool inVolumesTable = false;
    
    void saveCurrentDisk() {
      if (currentDiskNum != null) {
        list.add(PhysicalDisk(
          number: currentDiskNum,
          friendlyName: friendlyName ?? 'Disk $currentDiskNum',
          size: sizeMap[currentDiskNum] ?? 0,
          mediaType: isGptMap[currentDiskNum] == true ? 'SSD (GPT)' : 'HDD (MBR)',
          busType: type,
          status: status,
          healthStatus: 'Healthy',
          isBootDisk: isBootDisk,
          isSystemDisk: isSystemDisk,
          devicePath: '\\\\.\\PhysicalDrive$currentDiskNum',
        ));
      }
    }
    
    for (int i = 0; i < lines.length; i++) {
      final line = lines[i].trim();
      if (line.isEmpty) continue;
      
      final headerMatch = selectHeaderRegex.firstMatch(line);
      if (headerMatch != null) {
        saveCurrentDisk();
        
        currentDiskNum = int.tryParse(headerMatch.group(1)!);
        friendlyName = null;
        type = 'Unknown';
        status = 'Unknown';
        isBootDisk = false;
        isSystemDisk = false;
        expectFriendlyNameNext = true;
        inVolumesTable = false;
        continue;
      }
      
      if (currentDiskNum == null) continue;
      
      if (expectFriendlyNameNext) {
        friendlyName = line;
        expectFriendlyNameNext = false;
        continue;
      }
      
      if (line.startsWith('Volume ###') || line.contains('Volume 0') || line.contains('Volume 1') || line.startsWith('----------')) {
        inVolumesTable = true;
        continue;
      }
      
      final kvMatch = keyValueRegex.firstMatch(line);
      if (kvMatch != null && !inVolumesTable) {
        final key = kvMatch.group(1)!.trim().toLowerCase();
        final value = kvMatch.group(2)!.trim();
        
        if (key == 'type') {
          type = value;
        } else if (key == 'status') {
          status = value;
        } else if (key == 'boot disk') {
          isBootDisk = value.toLowerCase() == 'yes';
        }
        continue;
      }
      
      if (inVolumesTable) {
        final upperLine = line.toUpperCase();
        if (upperLine.contains('SYSTEM') || upperLine.contains('BOOT')) {
          isSystemDisk = true;
        }
      }
    }
    
    saveCurrentDisk();
    return list;
  }

  /// Lists partitions/volumes on a given disk.
  Future<List<DiskPartition>> listPartitions(int diskNumber) async {
    if (Platform.isLinux) {
      return _listPartitionsLinux(diskNumber);
    }
    return _listPartitionsWindows(diskNumber);
  }

  /// Lists partitions on Linux using lsblk.
  Future<List<DiskPartition>> _listPartitionsLinux(int diskNumber) async {
    try {
      final disks = await listDisks();
      final disk = disks.firstWhere((d) => d.number == diskNumber, orElse: () => throw Exception('Disk not found'));

      final result = await processService.run('lsblk', ['-J', '-b', '-o', 'NAME,SIZE,TYPE,FSTYPE,LABEL,MOUNTPOINTS', disk.devicePath]);
      if (result.exitCode != 0) {
        debugPrint('lsblk partitions failed: ${result.stderr}');
        return [];
      }

      final data = jsonDecode(result.stdout);
      final devices = data['blockdevices'] as List<dynamic>? ?? [];
      if (devices.isEmpty) return [];

      final children = devices[0]['children'] as List<dynamic>? ?? [];
      final List<DiskPartition> list = [];

      for (final child in children) {
        final name = child['name'] ?? '';
        final sizeBytes = child['size'] ?? 0;
        final fstype = child['fstype'] ?? 'Unknown';
        final label = child['label'] ?? '';
        final mountpoints = child['mountpoints'] as List<dynamic>? ?? [];
        final mountStr = mountpoints.isNotEmpty ? mountpoints[0].toString() : '';

        final partNumMatch = RegExp(r'(\d+)$').firstMatch(name);
        final partNum = partNumMatch != null ? int.tryParse(partNumMatch.group(1)!) ?? 0 : 0;

        list.add(DiskPartition(
          diskNumber: diskNumber,
          partitionNumber: partNum,
          type: fstype,
          size: sizeBytes,
          driveLetter: mountStr,
          isActive: mountStr == '/' || mountStr == '/boot' || label.toString().toUpperCase() == 'SYSTEM',
          devicePath: '/dev/$name',
        ));
      }

      return list;
    } catch (e) {
      debugPrint('DiskService._listPartitionsLinux error: $e');
      return [];
    }
  }

  /// Lists partitions/volumes on Windows using DiskPart.
  Future<List<DiskPartition>> _listPartitionsWindows(int diskNumber) async {
    try {
      final output = await _runDiskPartScript('select disk $diskNumber\ndetail disk');
      final lines = output.split('\n');
      final list = <DiskPartition>[];
      
      bool inVolumesTable = false;
      
      for (final line in lines) {
        final lineTrim = line.trim();
        if (lineTrim.isEmpty) continue;
        
        if (lineTrim.toUpperCase().startsWith('VOLUME ###') || lineTrim.startsWith('----------')) {
          inVolumesTable = true;
          continue;
        }
        
        if (inVolumesTable) {
          if (lineTrim.startsWith('---')) continue;
          if (line.length < 50) continue;
          
          final volNumStr = _safeSubstring(line, 2, 13).trim().split(' ').last;
          final volNum = int.tryParse(volNumStr) ?? 0;
          
          final ltr = _safeSubstring(line, 14, 18).trim();
          final type = _safeSubstring(line, 39, 50).trim();
          final sizeStr = _safeSubstring(line, 51, 59).trim();
          final info = line.length > 71 ? line.substring(71).trim() : '';
          
          double sizeVal = 0;
          String sizeUnit = 'B';
          final sizeTokens = sizeStr.split(' ');
          if (sizeTokens.isNotEmpty) {
            sizeVal = double.tryParse(sizeTokens[0]) ?? 0;
            if (sizeTokens.length > 1) {
              sizeUnit = sizeTokens[1];
            }
          }
          final sizeBytes = _parseSize(sizeVal, sizeUnit);
          
          list.add(DiskPartition(
            diskNumber: diskNumber,
            partitionNumber: volNum,
            type: type,
            size: sizeBytes,
            driveLetter: ltr,
            isActive: info.toUpperCase().contains('SYSTEM') ||
                info.toUpperCase().contains('BOOT') ||
                info.toUpperCase().contains('ACTIVE'),
            devicePath: '\\\\.\\PhysicalDrive$diskNumber\\Partition$volNum',
          ));
        }
      }
      
      return list;
    } catch (e) {
      debugPrint('DiskService._listPartitionsWindows parse error: $e');
      return [];
    }
  }

  /// Generates partition device paths (Linux helper).
  String _getPartitionDevice(String diskPath, int partNum) {
    final lastChar = diskPath.substring(diskPath.length - 1);
    final isDigit = RegExp(r'^\d$').hasMatch(lastChar);
    return isDigit ? '${diskPath}p$partNum' : '$diskPath$partNum';
  }

  /// Unmounts all active mounts referencing partitions on the target disk (Linux).
  Future<void> _unmountDiskPartitions(String diskPath) async {
    try {
      final result = await processService.run('lsblk', ['-J', '-b', '-o', 'NAME,MOUNTPOINTS', diskPath]);
      if (result.exitCode != 0) return;

      final data = jsonDecode(result.stdout);
      final devices = data['blockdevices'] as List<dynamic>? ?? [];
      if (devices.isEmpty) return;

      final children = devices[0]['children'] as List<dynamic>? ?? [];
      for (final child in children) {
        final name = child['name'] ?? '';
        final mountpoints = child['mountpoints'] as List<dynamic>? ?? [];
        for (final mp in mountpoints) {
          if (mp != null && mp.toString().isNotEmpty) {
            debugPrint('Unmounting /dev/$name from $mp');
            await processService.run('umount', ['-f', '/dev/$name']);
          }
        }
      }
    } catch (e) {
      debugPrint('Error unmounting partitions: $e');
    }
  }

  /// Partitions and formats the disk under Linux.
  Future<bool> prepareDiskLinux(PhysicalDisk disk, PartitionMode mode) async {
    final device = disk.devicePath;
    if (device.isEmpty) return false;

    // 1. Unmount all partitions
    await _unmountDiskPartitions(device);

    if (mode == PartitionMode.formatGpt) {
      // Create GPT label
      var res = await processService.run('parted', ['-s', device, 'mklabel', 'gpt']);
      if (res.exitCode != 0) return false;

      // Create ESP partition
      res = await processService.run('parted', ['-s', device, 'mkpart', 'ESP', 'fat32', '1MiB', '513MiB']);
      if (res.exitCode != 0) return false;

      // Set ESP flag
      res = await processService.run('parted', ['-s', device, 'set', '1', 'esp', 'on']);
      if (res.exitCode != 0) return false;

      // Create MSR partition
      res = await processService.run('parted', ['-s', device, 'mkpart', 'MSR', '513MiB', '641MiB']);
      if (res.exitCode != 0) return false;

      // Create Primary partition
      res = await processService.run('parted', ['-s', device, 'mkpart', 'Basic_data_partition', 'ntfs', '641MiB', '100%']);
      if (res.exitCode != 0) return false;

      // Wait for device nodes to settle
      await processService.run('udevadm', ['settle']);
      await Future.delayed(const Duration(seconds: 1));

      final espPart = _getPartitionDevice(device, 1);
      final winPart = _getPartitionDevice(device, 3);

      // Format ESP (FAT32)
      res = await processService.run('mkfs.vfat', ['-F32', '-n', 'System', espPart]);
      if (res.exitCode != 0) return false;

      // Format Windows partition (NTFS)
      res = await processService.run('mkfs.ntfs', ['-f', '-L', 'Windows', winPart]);
      if (res.exitCode != 0) return false;

      return true;
    } else if (mode == PartitionMode.formatMbr) {
      // Create MBR label
      var res = await processService.run('parted', ['-s', device, 'mklabel', 'msdos']);
      if (res.exitCode != 0) return false;

      // Create Primary partition
      res = await processService.run('parted', ['-s', device, 'mkpart', 'primary', 'ntfs', '1MiB', '100%']);
      if (res.exitCode != 0) return false;

      // Set active/boot flag
      res = await processService.run('parted', ['-s', device, 'set', '1', 'boot', 'on']);
      if (res.exitCode != 0) return false;

      // Wait for device nodes to settle
      await processService.run('udevadm', ['settle']);
      await Future.delayed(const Duration(seconds: 1));

      final winPart = _getPartitionDevice(device, 1);

      // Format Windows partition (NTFS)
      res = await processService.run('mkfs.ntfs', ['-f', '-L', 'Windows', winPart]);
      if (res.exitCode != 0) return false;

      return true;
    }

    return false;
  }

  /// Generates a DiskPart script for a clean GPT/UEFI layout (Windows only).
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
      'exit',
    ].join('\n');
  }

  /// Generates a DiskPart script for an MBR/BIOS layout (legacy compatibility, Windows only).
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

  /// Scans all block devices and mounts any unmounted partitions of external drives to /media/usb-* (Linux).
  Future<void> mountExternalDrivesLinux() async {
    if (!Platform.isLinux) return;
    try {
      final result = await processService.run('lsblk', ['-J', '-b', '-o', 'NAME,TYPE,FSTYPE,MOUNTPOINTS']);
      if (result.exitCode != 0) return;

      final data = jsonDecode(result.stdout);
      final devices = data['blockdevices'] as List<dynamic>? ?? [];

      for (final dev in devices) {
        final children = dev['children'] as List<dynamic>? ?? [];
        for (final child in children) {
          if (child['type'] != 'part') continue;

          final name = child['name'] ?? '';
          final fstype = child['fstype'] ?? '';
          final mountpoints = child['mountpoints'] as List<dynamic>? ?? [];

          // Skip if already mounted
          if (mountpoints.isNotEmpty && mountpoints.any((mp) => mp != null && mp.toString().isNotEmpty)) {
            continue;
          }
          if (fstype == null || fstype.toString().isEmpty || fstype == 'swap') {
            continue;
          }

          final mountDir = '/media/usb-$name';
          debugPrint('Auto-mounting /dev/$name to $mountDir...');

          await processService.run('mkdir', ['-p', mountDir]);
          var mountRes = await processService.run('mount', ['/dev/$name', mountDir]);
          if (mountRes.exitCode != 0) {
            if (fstype.toString().contains('ntfs')) {
              await processService.run('mount', ['-t', 'ntfs-3g', '/dev/$name', mountDir]);
            }
          }
        }
      }
    } catch (e) {
      debugPrint('Error auto-mounting external drives: $e');
    }
  }

  /// Checks if a disk is safe to write (not the boot/system disk).
  Future<bool> isSafeToProceed(int diskNumber) async {
    final disks = await listDisks();
    final disk = disks.where((d) => d.number == diskNumber).firstOrNull;
    if (disk == null) return false;
    return !disk.isBootDisk && !disk.isSystemDisk;
  }
}
