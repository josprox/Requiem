import 'dart:io';
import 'package:flutter/foundation.dart';
import 'package:path/path.dart' as p;
import '../disk_service.dart';
import '../process_service.dart';
import 'disk_provider.dart';

class WindowsDiskProvider implements DiskProvider {
  final ProcessService _processService;
  WindowsDiskProvider(this._processService);

  @override
  bool? currentBootIsUefi() {
    return null; // Cannot easily infer firmware from user-mode APIs on Windows without Admin APIs
  }

  @override
  Future<List<PhysicalDisk>> listDisks() async {
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

      final detailScript = diskNumbers
          .map((dNum) => 'select disk $dNum\ndetail disk')
          .join('\n');
      final detailOutput = await _runDiskPartScript(detailScript);

      return _parseDetailDisksOutput(
        detailOutput,
        diskNumbers,
        isGptMap,
        sizeMap,
      );
    } catch (e) {
      debugPrint('WindowsDiskProvider.listDisks error: $e');
      return [];
    }
  }

  @override
  Future<List<DiskPartition>> listPartitions(int diskNumber) async {
    try {
      final output = await _runDiskPartScript(
        'select disk $diskNumber\ndetail disk',
      );
      final lines = output.split('\n');
      final list = <DiskPartition>[];

      bool inVolumesTable = false;

      for (final line in lines) {
        final lineTrim = line.trim();
        if (lineTrim.isEmpty) continue;

        if (lineTrim.toUpperCase().startsWith('VOLUME ###') ||
            lineTrim.startsWith('----------')) {
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

          list.add(
            DiskPartition(
              diskNumber: diskNumber,
              partitionNumber: volNum,
              type: type,
              size: sizeBytes,
              driveLetter: ltr,
              isActive:
                  info.toUpperCase().contains('SYSTEM') ||
                  info.toUpperCase().contains('BOOT') ||
                  info.toUpperCase().contains('ACTIVE'),
              devicePath: '\\\\.\\PhysicalDrive$diskNumber\\Partition$volNum',
            ),
          );
        }
      }

      return list;
    } catch (e) {
      debugPrint('WindowsDiskProvider.listPartitions error: $e');
      return [];
    }
  }

  @override
  Future<bool> prepareDisk(PhysicalDisk disk, PartitionMode mode) async {
    throw UnsupportedError('Natively preparing disk partitions is only supported on Linux. On Windows, prepare disk by running the DiskPart script output by generateGptScript/generateMbrScript.');
  }

  @override
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

  @override
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

  @override
  Future<void> mountExternalDrivesLinux() async {
    // No-op on Windows
  }

  @override
  Future<bool> isSafeToProceed(int diskNumber) async {
    final disks = await listDisks();
    final disk = disks.where((d) => d.number == diskNumber).firstOrNull;
    if (disk == null) return false;
    return !disk.isBootDisk && !disk.isSystemDisk;
  }

  Future<String> _runDiskPartScript(String script) async {
    final tempDir = Directory.systemTemp;
    final file = File(
      p.join(
        tempDir.path,
        'dp_script_${DateTime.now().millisecondsSinceEpoch}.txt',
      ),
    );
    await file.writeAsString(script);

    try {
      final result = await _processService.run('diskpart.exe', [
        '/s',
        file.path,
      ]);
      return result.stdout;
    } finally {
      if (file.existsSync()) {
        try {
          await file.delete();
        } catch (_) {}
      }
    }
  }

  int _parseSize(double value, String unit) {
    final u = unit.toUpperCase();
    if (u.contains('TB')) return (value * 1024 * 1024 * 1024 * 1024).toInt();
    if (u.contains('GB')) return (value * 1024 * 1024 * 1024).toInt();
    if (u.contains('MB')) return (value * 1024 * 1024).toInt();
    if (u.contains('KB')) return (value * 1024).toInt();
    return value.toInt();
  }

  String _safeSubstring(String s, int start, int end) {
    if (s.length <= start) return '';
    if (s.length <= end) return s.substring(start);
    return s.substring(start, end);
  }

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

    final selectHeaderRegex = RegExp(
      r'Disk\s+(\d+)\s+is now the selected disk\.',
      caseSensitive: false,
    );
    final keyValueRegex = RegExp(r'^([^:]+)\s*:\s*(.+)$');

    bool expectFriendlyNameNext = false;
    bool inVolumesTable = false;

    void saveCurrentDisk() {
      if (currentDiskNum != null) {
        list.add(
          PhysicalDisk(
            number: currentDiskNum,
            friendlyName: friendlyName ?? 'Disk $currentDiskNum',
            size: sizeMap[currentDiskNum] ?? 0,
            mediaType: isGptMap[currentDiskNum] == true
                ? 'SSD (GPT)'
                : 'HDD (MBR)',
            busType: type,
            status: status,
            healthStatus: 'Healthy',
            isBootDisk: isBootDisk,
            isSystemDisk: isSystemDisk,
            devicePath: '\\\\.\\PhysicalDrive$currentDiskNum',
          ),
        );
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

      if (line.startsWith('Volume ###') ||
          line.contains('Volume 0') ||
          line.contains('Volume 1') ||
          line.startsWith('----------')) {
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
}
