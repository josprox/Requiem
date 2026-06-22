import 'package:flutter_test/flutter_test.dart';
import 'package:requiem_tools/services/disk_service.dart';
import 'mocks/mock_disk_provider.dart';

void main() {
  group('DiskService Platform Abstraction Tests', () {
    late MockDiskProvider mockProvider;

    setUp(() {
      mockProvider = MockDiskProvider();
    });

    test('currentBootIsUefi returns mock value', () {
      mockProvider.uefiMode = true;
      expect(mockProvider.currentBootIsUefi(), isTrue);

      mockProvider.uefiMode = false;
      expect(mockProvider.currentBootIsUefi(), isFalse);

      mockProvider.uefiMode = null;
      expect(mockProvider.currentBootIsUefi(), isNull);
    });

    test('listDisks returns mock physical disks list', () async {
      final disk = PhysicalDisk(
        number: 0,
        friendlyName: 'Mock SSD',
        size: 512 * 1024 * 1024 * 1024,
        mediaType: 'SSD',
        busType: 'NVMe',
        isBootDisk: false,
        isSystemDisk: false,
      );
      mockProvider.mockDisks = [disk];

      final disks = await mockProvider.listDisks();
      expect(disks.length, 1);
      expect(disks.first.friendlyName, 'Mock SSD');
      expect(disks.first.sizeGB, '512.0');
      expect(disks.first.displayName, 'Mock SSD (512.0 GB, NVMe)');
    });

    test('isSafeToProceed identifies boot or system disks', () async {
      final safeDisk = PhysicalDisk(
        number: 0,
        friendlyName: 'Safe Disk',
        size: 1000000,
        mediaType: 'SSD',
        busType: 'SATA',
        isBootDisk: false,
        isSystemDisk: false,
      );
      final systemDisk = PhysicalDisk(
        number: 1,
        friendlyName: 'System Disk',
        size: 1000000,
        mediaType: 'SSD',
        busType: 'SATA',
        isBootDisk: true,
        isSystemDisk: true,
      );
      mockProvider.mockDisks = [safeDisk, systemDisk];

      expect(await mockProvider.isSafeToProceed(0), isTrue);
      expect(await mockProvider.isSafeToProceed(1), isFalse);
    });
  });
}
