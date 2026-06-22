import '../services/disk_service.dart';

class DiskSelectionController {
  final DiskService _diskService;

  List<PhysicalDisk> disks = [];
  PhysicalDisk? selectedDisk;
  bool isLoadingDisks = false;

  DiskSelectionController(this._diskService);

  Future<List<PhysicalDisk>> refreshDisks(void Function(String) logCallback) async {
    isLoadingDisks = true;
    logCallback('Refreshing disks...');
    disks = await _diskService.listDisks();
    isLoadingDisks = false;
    logCallback('Found ${disks.length} disks.');
    return disks;
  }

  void selectDisk(PhysicalDisk disk, void Function(String) logCallback) {
    selectedDisk = disk;
    logCallback('Selected disk: ${disk.friendlyName}');
  }
}
