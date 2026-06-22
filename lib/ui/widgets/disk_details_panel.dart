import 'package:flutter/material.dart';
import '../../services/main_controller.dart';
import '../../services/disk_service.dart';

class WimStatusCard extends StatelessWidget {
  final MainController controller;
  const WimStatusCard({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    final scheme = Theme.of(context).colorScheme;
    final found = controller.detectedWimPath != null;
    final searching = controller.isSearchingWim;

    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: searching
            ? scheme.surfaceContainerHighest
            : found
                ? Colors.green.withValues(alpha: 0.1)
                : scheme.errorContainer.withValues(alpha: 0.3),
        borderRadius: BorderRadius.circular(16),
        border: Border.all(
          color: searching
              ? Colors.white.withValues(alpha: 0.1)
              : found
                  ? Colors.green.withValues(alpha: 0.4)
                  : scheme.error.withValues(alpha: 0.4),
        ),
      ),
      child: Row(
        children: [
          if (searching)
            const SizedBox(
              width: 20,
              height: 20,
              child: CircularProgressIndicator(strokeWidth: 2),
            )
          else
            Icon(
              found
                  ? Icons.check_circle_outline_rounded
                  : Icons.error_outline_rounded,
              color: found ? Colors.greenAccent : scheme.error,
              size: 22,
            ),
          const SizedBox(width: 12),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  searching
                      ? 'Buscando imagen...'
                      : found
                          ? 'Imagen detectada'
                          : 'Imagen no encontrada',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 13,
                    color: searching
                        ? Colors.white70
                        : found
                            ? Colors.greenAccent
                            : scheme.error,
                  ),
                ),
                if (found && controller.detectedWimPath != null)
                  Text(
                    controller.detectedWimPath!,
                    style: TextStyle(
                      fontSize: 11,
                      color: Colors.white.withValues(alpha: 0.5),
                    ),
                    overflow: TextOverflow.ellipsis,
                  ),
              ],
            ),
          ),
          if (!searching) ...[
            const SizedBox(width: 12),
            TextButton.icon(
              onPressed: () => controller.pickWimFile(context),
              icon: Icon(
                Icons.folder_open_rounded,
                size: 16,
                color: found ? Colors.greenAccent : scheme.error,
              ),
              label: Text(
                found ? 'CAMBIAR' : 'BUSCAR',
                style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.bold,
                  color: found ? Colors.greenAccent : scheme.error,
                ),
              ),
              style: TextButton.styleFrom(
                padding: const EdgeInsets.symmetric(
                  horizontal: 12,
                  vertical: 8,
                ),
                backgroundColor: found
                    ? Colors.greenAccent.withValues(alpha: 0.1)
                    : scheme.error.withValues(alpha: 0.1),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
            ),
          ],
        ],
      ),
    );
  }
}

class FirmwareStatusCard extends StatelessWidget {
  final MainController controller;
  const FirmwareStatusCard({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    final scheme = Theme.of(context).colorScheme;
    final detected = controller.bootedInUefi != null;
    final recommended =
        controller.recommendedPartitionMode == PartitionMode.formatGpt
            ? 'GPT / UEFI'
            : 'MBR / BIOS';

    return Container(
      padding: const EdgeInsets.all(14),
      decoration: BoxDecoration(
        color: scheme.surfaceContainerHighest.withValues(alpha: 0.45),
        borderRadius: BorderRadius.circular(14),
        border: Border.all(color: Colors.white.withValues(alpha: 0.08)),
      ),
      child: Row(
        children: [
          Icon(
            detected ? Icons.memory_rounded : Icons.help_outline_rounded,
            size: 20,
            color: detected ? scheme.primary : Colors.white54,
          ),
          const SizedBox(width: 12),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Arranque actual: ${controller.bootFirmwareLabel}',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 12,
                    color: detected ? scheme.primary : Colors.white70,
                  ),
                ),
                Text(
                  'Modo compatible: $recommended',
                  style: TextStyle(
                    fontSize: 11,
                    color: Colors.white.withValues(alpha: 0.48),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
