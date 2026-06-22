import 'dart:convert';
import 'dart:io';
import 'package:flutter/foundation.dart';
import '../disk_service.dart';
import '../process_service.dart';
import 'disk_provider.dart';

class LinuxDiskProvider implements DiskProvider {
  final ProcessService _processService;
  LinuxDiskProvider(this._processService);

  @override
  bool? currentBootIsUefi() {
    return Directory('/sys/firmware/efi').existsSync();
  }

  @override
  Future<List<PhysicalDisk>> listDisks() async {
    try {
      final result = await _processService.run('lsblk', [
        '-J',
        '-b',
        '-o',
        'NAME,MODEL,SIZE,TYPE,TRAN,MOUNTPOINTS',
      ]);
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

        bool isBoot = false;
        bool isSystem = false;

        final mountpoints = dev['mountpoints'] as List<dynamic>? ?? [];
        for (final mp in mountpoints) {
          if (mp != null &&
              (mp == '/' ||
                  mp.toString().startsWith('/run/live') ||
                  mp == '/cdrom' ||
                  mp == '/boot')) {
            isBoot = true;
            isSystem = true;
          }
        }

        final children = dev['children'] as List<dynamic>? ?? [];
        for (final child in children) {
          final childMps = child['mountpoints'] as List<dynamic>? ?? [];
          for (final mp in childMps) {
            if (mp != null &&
                (mp == '/' ||
                    mp.toString().startsWith('/run/live') ||
                    mp == '/cdrom' ||
                    mp == '/boot')) {
              isBoot = true;
              isSystem = true;
            }
          }
        }

        list.add(
          PhysicalDisk(
            number: diskNumber++,
            friendlyName: '$name: $model',
            size: sizeBytes,
            mediaType:
                tran.toString().toUpperCase() == 'NVME' ||
                    tran.toString().toUpperCase() == 'SSD'
                ? 'SSD'
                : 'HDD',
            busType: tran.toString().toUpperCase(),
            status: 'Online',
            healthStatus: 'Healthy',
            isBootDisk: isBoot,
            isSystemDisk: isSystem,
            devicePath: devicePath,
          ),
        );
      }

      return list;
    } catch (e) {
      debugPrint('LinuxDiskProvider.listDisks error: $e');
      return [];
    }
  }

  @override
  Future<List<DiskPartition>> listPartitions(int diskNumber) async {
    try {
      final disks = await listDisks();
      final disk = disks.firstWhere(
        (d) => d.number == diskNumber,
        orElse: () => throw Exception('Disk not found'),
      );

      final result = await _processService.run('lsblk', [
        '-J',
        '-b',
        '-o',
        'NAME,SIZE,TYPE,FSTYPE,LABEL,MOUNTPOINTS',
        disk.devicePath,
      ]);
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
        final mountStr = mountpoints.isNotEmpty
            ? mountpoints[0].toString()
            : '';

        final partNumMatch = RegExp(r'(\d+)$').firstMatch(name);
        final partNum = partNumMatch != null
            ? int.tryParse(partNumMatch.group(1)!) ?? 0
            : 0;

        list.add(
          DiskPartition(
            diskNumber: diskNumber,
            partitionNumber: partNum,
            type: fstype,
            size: sizeBytes,
            driveLetter: mountStr,
            isActive:
                mountStr == '/' ||
                mountStr == '/boot' ||
                label.toString().toUpperCase() == 'SYSTEM',
            devicePath: '/dev/$name',
          ),
        );
      }

      return list;
    } catch (e) {
      debugPrint('LinuxDiskProvider.listPartitions error: $e');
      return [];
    }
  }

  @override
  Future<bool> prepareDisk(PhysicalDisk disk, PartitionMode mode) async {
    final device = disk.devicePath;
    if (device.isEmpty) return false;

    // 1. Unmount all partitions
    await _unmountDiskPartitions(device);

    if (mode == PartitionMode.formatGpt) {
      // Create GPT label
      var res = await _processService.run('parted', [
        '-s',
        device,
        'mklabel',
        'gpt',
      ]);
      if (res.exitCode != 0) return false;

      // Create ESP partition
      res = await _processService.run('parted', [
        '-s',
        device,
        'mkpart',
        'ESP',
        'fat32',
        '1MiB',
        '513MiB',
      ]);
      if (res.exitCode != 0) return false;

      // Set ESP flag
      res = await _processService.run('parted', [
        '-s',
        device,
        'set',
        '1',
        'esp',
        'on',
      ]);
      if (res.exitCode != 0) return false;

      // Create MSR partition
      res = await _processService.run('parted', [
        '-s',
        device,
        'mkpart',
        'MSR',
        '513MiB',
        '641MiB',
      ]);
      if (res.exitCode != 0) return false;

      // Create Primary partition
      res = await _processService.run('parted', [
        '-s',
        device,
        'mkpart',
        'Basic_data_partition',
        'ntfs',
        '641MiB',
        '100%',
      ]);
      if (res.exitCode != 0) return false;

      // Wait for device nodes to settle
      await _processService.run('udevadm', ['settle']);
      await Future.delayed(const Duration(seconds: 1));

      final espPart = _getPartitionDevice(device, 1);
      final winPart = _getPartitionDevice(device, 3);

      // Format ESP (FAT32)
      res = await _processService.run('mkfs.vfat', [
        '-F32',
        '-n',
        'System',
        espPart,
      ]);
      if (res.exitCode != 0) return false;

      // Format Windows partition (NTFS)
      res = await _processService.run('mkfs.ntfs', [
        '-f',
        '-L',
        'Windows',
        winPart,
      ]);
      if (res.exitCode != 0) return false;

      return true;
    } else if (mode == PartitionMode.formatMbr) {
      // Create MBR label
      var res = await _processService.run('parted', [
        '-s',
        device,
        'mklabel',
        'msdos',
      ]);
      if (res.exitCode != 0) return false;

      res = await _processService.run('parted', [
        '-s',
        device,
        'mkpart',
        'primary',
        'ntfs',
        '1MiB',
        '100%',
      ]);
      if (res.exitCode != 0) return false;

      // Set active/boot flag
      res = await _processService.run('parted', [
        '-s',
        device,
        'set',
        '1',
        'boot',
        'on',
      ]);
      if (res.exitCode != 0) return false;
      res = await _processService.run('sfdisk', [
        '--part-type',
        device,
        '1',
        '7',
      ]);
      if (res.exitCode != 0) return false;
      res = await _processService.run('sfdisk', ['--activate', device, '1']);
      if (res.exitCode != 0) return false;

      // Wait for device nodes to settle
      await _processService.run('udevadm', ['settle']);
      await Future.delayed(const Duration(seconds: 1));

      final winPart = _getPartitionDevice(device, 1);

      // Format Windows partition (NTFS)
      res = await _processService.run('mkfs.ntfs', [
        '-f',
        '-L',
        'Windows',
        winPart,
      ]);
      if (res.exitCode != 0) return false;

      return true;
    }

    return false;
  }

  @override
  String generateGptScript(int diskNumber) {
    throw UnsupportedError('GPT diskpart scripting is only supported on Windows.');
  }

  @override
  String generateMbrScript(int diskNumber) {
    throw UnsupportedError('MBR diskpart scripting is only supported on Windows.');
  }

  @override
  Future<void> mountExternalDrivesLinux() async {
    try {
      final result = await _processService.run('lsblk', [
        '-J',
        '-b',
        '-o',
        'NAME,TYPE,FSTYPE,MOUNTPOINTS',
      ]);
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

          if (mountpoints.isNotEmpty &&
              mountpoints.any((mp) => mp != null && mp.toString().isNotEmpty)) {
            continue;
          }

          if (fstype == null || fstype.toString().isEmpty || fstype == 'swap') {
            continue;
          }

          final mountDir = '/media/usb-$name';
          debugPrint('Auto-mounting /dev/$name to $mountDir...');

          await _processService.run('mkdir', ['-p', mountDir]);
          var mountRes = await _processService.run('mount', [
            '/dev/$name',
            mountDir,
          ]);
          if (mountRes.exitCode != 0) {
            if (fstype.toString().contains('ntfs')) {
              await _processService.run('mount', [
                '-t',
                'ntfs-3g',
                '/dev/$name',
                mountDir,
              ]);
            }
          }
        }
      }
    } catch (e) {
      debugPrint('Error auto-mounting external drives: $e');
    }
  }

  @override
  Future<bool> isSafeToProceed(int diskNumber) async {
    final disks = await listDisks();
    final disk = disks.where((d) => d.number == diskNumber).firstOrNull;
    if (disk == null) return false;
    return !disk.isBootDisk && !disk.isSystemDisk;
  }

  String _getPartitionDevice(String diskPath, int partNum) {
    final lastChar = diskPath.substring(diskPath.length - 1);
    final isDigit = RegExp(r'^\d$').hasMatch(lastChar);
    return isDigit ? '${diskPath}p$partNum' : '$diskPath$partNum';
  }

  Future<void> _unmountDiskPartitions(String diskPath) async {
    try {
      final result = await _processService.run('lsblk', [
        '-J',
        '-b',
        '-o',
        'NAME,MOUNTPOINTS',
        diskPath,
      ]);
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
            await _processService.run('umount', ['-f', '/dev/$name']);
          }
        }
      }
    } catch (e) {
      debugPrint('Error unmounting partitions: $e');
    }
  }
}
