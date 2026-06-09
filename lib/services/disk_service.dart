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

  /// Runs a DiskPart script by writing it to a temp file and running diskpart.exe /s
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

  /// Lists all physical disks using DiskPart for universal compatibility in WinPE.
  Future<List<PhysicalDisk>> listDisks() async {
    try {
      // 1. Get basic list of disks
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
        
        // Find the first size token by looking for a size unit (B, KB, MB, GB, TB)
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
      
      // 2. Query detailed information for all disks in a single run
      final detailScript = diskNumbers.map((dNum) => 'select disk $dNum\ndetail disk').join('\n');
      final detailOutput = await _runDiskPartScript(detailScript);
      
      // 3. Parse details of all disks
      return _parseDetailDisksOutput(detailOutput, diskNumbers, isGptMap, sizeMap);
    } catch (e) {
      debugPrint('DiskService.listDisks error: $e');
      return [];
    }
  }

  /// Parses detail disk outputs into PhysicalDisk objects.
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

  /// Lists partitions/volumes on a given disk using DiskPart.
  Future<List<DiskPartition>> listPartitions(int diskNumber) async {
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
          ));
        }
      }
      
      return list;
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
