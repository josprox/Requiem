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

    // Remove stale filesystem/RAID signatures before creating a new table.
    // A leftover hybrid MBR is enough to make some firmware select the wrong
    // boot path even when the new GPT itself is valid.
    var res = await _processService.run('wipefs', ['--all', '--force', device]);
    if (res.exitCode != 0) {
      debugPrint('wipefs failed for $device: ${res.stderr}');
      return false;
    }

    if (mode == PartitionMode.formatGpt) {
      res = await _processService.run('sgdisk', ['--zap-all', device]);
      if (res.exitCode != 0) return false;

      // Windows GPT layout: ESP, MSR, Windows, Recovery.  sgdisk is used
      // instead of filesystem-name hints so every partition gets the exact
      // Microsoft type GUID expected by Windows and UEFI firmware.
      res = await _processService.run('sgdisk', [
        '--clear',
        '--set-alignment=2048',
        '--new=1:0:+512M',
        '--typecode=1:EF00',
        '--change-name=1:EFI System',
        '--new=2:0:+16M',
        '--typecode=2:0C01',
        '--change-name=2:Microsoft Reserved',
        '--new=3:0:-1024M',
        '--typecode=3:0700',
        '--change-name=3:Windows',
        '--new=4:0:0',
        '--typecode=4:2700',
        '--change-name=4:Windows Recovery',
        '--attributes=4:set:0',
        '--attributes=4:set:63',
        device,
      ]);
      if (res.exitCode != 0) return false;

      // Wait for device nodes to settle
      await _processService.run('partprobe', [device]);
      await _processService.run('udevadm', ['trigger']);
      await _processService.run('udevadm', ['settle']);
      await Future.delayed(const Duration(seconds: 2));
      // Segunda pasada para NVMe que puede ser más lento en actualizar device nodes
      await _processService.run('udevadm', ['settle']);

      final espPart = _getPartitionDevice(device, 1);
      final winPart = _getPartitionDevice(device, 3);
      final recoveryPart = _getPartitionDevice(device, 4);

      // Verificar que los device nodes existen antes de formatear
      if (!File(espPart).existsSync() ||
          !File(winPart).existsSync() ||
          !File(recoveryPart).existsSync()) {
        debugPrint('Device nodes not ready after partprobe: $espPart, $winPart, $recoveryPart');
        // Esperar extra y reintentar
        await Future.delayed(const Duration(seconds: 3));
        await _processService.run('partprobe', [device]);
        await _processService.run('udevadm', ['settle']);
        await Future.delayed(const Duration(seconds: 2));

        if (!File(espPart).existsSync() ||
            !File(winPart).existsSync() ||
            !File(recoveryPart).existsSync()) {
          debugPrint('Device nodes still not ready after retry. espPart=$espPart winPart=$winPart recovPart=$recoveryPart');
          return false;
        }
      }

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
        '-q',
        '-L',
        'Windows',
        winPart,
      ]);
      if (res.exitCode != 0) return false;

      res = await _processService.run('mkfs.ntfs', [
        '-f',
        '-q',
        '-L',
        'Recovery',
        recoveryPart,
      ]);
      if (res.exitCode != 0) return false;

      res = await _processService.run('sgdisk', ['--verify', device]);
      if (res.exitCode != 0) return false;

      final typeChecks = <int, String>{
        1: 'C12A7328-F81F-11D2-BA4B-00A0C93EC93B',
        2: 'E3C9E316-0B5C-4DB8-817D-F92DF00215AE',
        3: 'EBD0A0A2-B9E5-4433-87C0-68B6B72699C7',
        4: 'DE94BBA4-06D1-4D40-A16A-BFD50179D6AC',
      };
      for (final entry in typeChecks.entries) {
        if (!await _partitionHasTypeGuid(device, entry.key, entry.value)) {
          return false;
        }
      }
      if (await _filesystemType(espPart) != 'vfat' ||
          await _filesystemType(winPart) != 'ntfs' ||
          await _filesystemType(recoveryPart) != 'ntfs') {
        return false;
      }

      return true;
    } else if (mode == PartitionMode.formatMbr) {
      // Create MBR label
      res = await _processService.run('parted', [
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
    throw UnsupportedError(
      'GPT diskpart scripting is only supported on Windows.',
    );
  }

  @override
  String generateMbrScript(int diskNumber) {
    throw UnsupportedError(
      'MBR diskpart scripting is only supported on Windows.',
    );
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

  Future<bool> _partitionHasTypeGuid(
    String diskPath,
    int partitionNumber,
    String expectedGuid,
  ) async {
    final result = await _processService.run('sgdisk', [
      '--info=$partitionNumber',
      diskPath,
    ]);
    return result.exitCode == 0 &&
        result.stdout.toUpperCase().contains(expectedGuid);
  }

  Future<String> _filesystemType(String devicePath) async {
    final result = await _processService.run('blkid', [
      '-s',
      'TYPE',
      '-o',
      'value',
      devicePath,
    ]);
    return result.exitCode == 0 ? result.stdout.trim().toLowerCase() : '';
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
