import 'package:flutter/material.dart';
import '../../services/disk_service.dart';

class DiskListView extends StatelessWidget {
  final List<PhysicalDisk> disks;
  final PhysicalDisk? selectedDisk;
  final bool isLoading;
  final void Function(PhysicalDisk) onSelect;

  const DiskListView({
    super.key,
    required this.disks,
    required this.selectedDisk,
    required this.isLoading,
    required this.onSelect,
  });

  @override
  Widget build(BuildContext context) {
    final scheme = Theme.of(context).colorScheme;

    if (isLoading) {
      return const Center(child: CircularProgressIndicator());
    }

    if (disks.isEmpty) {
      return Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.search_off_rounded,
              size: 64,
              color: scheme.primary.withValues(alpha: 0.4),
            ),
            const SizedBox(height: 16),
            const Text(
              'No se detectaron discos físicos',
              style: TextStyle(fontSize: 18),
            ),
          ],
        ),
      );
    }

    return ListView.builder(
      itemCount: disks.length,
      itemBuilder: (context, index) {
        final disk = disks[index];
        final isSelected = selectedDisk == disk;
        final isSystem = disk.isBootDisk || disk.isSystemDisk;

        return Padding(
          padding: const EdgeInsets.only(bottom: 12),
          child: Card(
            clipBehavior: Clip.antiAlias,
            child: InkWell(
              onTap: isSystem ? null : () => onSelect(disk),
              child: Container(
                padding: const EdgeInsets.all(20),
                decoration: BoxDecoration(
                  border: isSelected
                      ? Border.all(
                          color: scheme.primary,
                          width: 2,
                        )
                      : null,
                  gradient: isSelected
                      ? LinearGradient(
                          colors: [
                            scheme.primary.withValues(alpha: 0.12),
                            Colors.transparent,
                          ],
                        )
                      : null,
                ),
                child: Row(
                  children: [
                    Container(
                      padding: const EdgeInsets.all(14),
                      decoration: BoxDecoration(
                        color: isSystem
                            ? scheme.error.withValues(alpha: 0.15)
                            : isSelected
                                ? scheme.primary
                                : scheme.surfaceContainerHighest,
                        borderRadius: BorderRadius.circular(14),
                      ),
                      child: Icon(
                        disk.mediaType.contains('SSD') ||
                                disk.busType.contains('NVMe')
                            ? Icons.speed_rounded
                            : Icons.storage_rounded,
                        color: isSystem
                            ? scheme.error
                            : isSelected
                                ? Colors.white
                                : scheme.onSurfaceVariant,
                      ),
                    ),
                    const SizedBox(width: 20),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Text(
                                disk.friendlyName,
                                style: const TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              if (isSystem) ...[
                                const SizedBox(width: 8),
                                Container(
                                  padding: const EdgeInsets.symmetric(
                                    horizontal: 8,
                                    vertical: 2,
                                  ),
                                  decoration: BoxDecoration(
                                    color: scheme.error.withValues(alpha: 0.2),
                                    borderRadius: BorderRadius.circular(6),
                                  ),
                                  child: Text(
                                    'SISTEMA',
                                    style: TextStyle(
                                      fontSize: 10,
                                      color: scheme.error,
                                      fontWeight: FontWeight.bold,
                                      letterSpacing: 1,
                                    ),
                                  ),
                                ),
                              ],
                            ],
                          ),
                          const SizedBox(height: 4),
                          Text(
                            'DISK ${disk.number} · ${disk.mediaType.toUpperCase()} · ${disk.busType.toUpperCase()}',
                            style: TextStyle(
                              color: Colors.white.withValues(alpha: 0.45),
                              fontSize: 11,
                              letterSpacing: 1,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Text(
                      '${disk.sizeGB} GB',
                      style: Theme.of(context).textTheme.titleLarge?.copyWith(
                            color: isSelected ? scheme.primary : Colors.white,
                            fontWeight: FontWeight.w900,
                          ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
