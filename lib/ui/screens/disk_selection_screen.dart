import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../services/main_controller.dart';
import '../../services/disk_service.dart';
import '../../core/localizations.dart';
import '../widgets/disk_list_view.dart';
import '../widgets/partition_mode_selector.dart';
import '../widgets/disk_details_panel.dart';
import 'installation_progress_screen.dart';

class DiskSelectionScreen extends StatefulWidget {
  const DiskSelectionScreen({super.key});

  @override
  State<DiskSelectionScreen> createState() => _DiskSelectionScreenState();
}

class _DiskSelectionScreenState extends State<DiskSelectionScreen> {
  PartitionMode _selectedMode = PartitionMode.formatGpt;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      final ctrl = context.read<MainController>();
      ctrl.refreshFirmwareMode();
      if (!mounted) return;
      setState(() => _selectedMode = ctrl.recommendedPartitionMode);
      ctrl.refreshDisks();
      ctrl.autoDetectInstallWim(); // scan for install.wim immediately
    });
  }

  @override
  Widget build(BuildContext context) {
    final controller = context.watch<MainController>();
    final scheme = Theme.of(context).colorScheme;
    final t = context.l10n;
    final canStart =
        controller.selectedDisk != null &&
        controller.detectedWimPath != null &&
        controller.isPartitionModeCompatible(_selectedMode);
    final gptBlock = controller.partitionModeBlockReason(
      PartitionMode.formatGpt,
    );
    final mbrBlock = controller.partitionModeBlockReason(
      PartitionMode.formatMbr,
    );

    return Scaffold(
      appBar: AppBar(
        title: Text(t.diskManagement.toUpperCase()),
        centerTitle: false,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 16),
            child: OutlinedButton.icon(
              onPressed: () {
                controller.refreshFirmwareMode();
                controller.refreshDisks();
                controller.autoDetectInstallWim();
              },
              icon: const Icon(Icons.refresh_rounded, size: 18),
              label: Text(t.actionRefresh.toUpperCase()),
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 48, vertical: 32),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // ── Left: Disk list ───────────────────────────────────────────
            Expanded(
              flex: 3,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    t.selectDestinationDisk,
                    style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                      fontWeight: FontWeight.w900,
                    ),
                  ),
                  const SizedBox(height: 6),
                  Text(
                    t.destinationDiskDescription,
                    style: TextStyle(
                      color: Colors.white.withValues(alpha: 0.5),
                      fontSize: 14,
                    ),
                  ),
                  const SizedBox(height: 24),
                  Expanded(
                    child: DiskListView(
                      disks: controller.disks,
                      selectedDisk: controller.selectedDisk,
                      isLoading: controller.isLoadingDisks,
                      onSelect: (disk) => controller.selectDisk(disk),
                    ),
                  ),
                ],
              ),
            ),

            const SizedBox(width: 40),

            // ── Right: Options panel ──────────────────────────────────────
            SizedBox(
              width: 380,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // WIM Detection status
                  WimStatusCard(controller: controller),
                  const SizedBox(height: 12),
                  FirmwareStatusCard(controller: controller),
                  const SizedBox(height: 24),

                  // Partition mode selection
                  PartitionModeSelector(
                    selectedMode: _selectedMode,
                    gptBlock: gptBlock,
                    mbrBlock: mbrBlock,
                    onChange: (mode) => setState(() => _selectedMode = mode),
                  ),

                  const Spacer(),

                  // Proceed button
                  SizedBox(
                    width: double.infinity,
                    child: FilledButton.icon(
                      onPressed: canStart
                          ? () => _showConfirmDialog(context, controller)
                          : null,
                      icon: const Icon(Icons.play_arrow_rounded),
                      label: Text(t.startInstallation.toUpperCase()),
                      style: FilledButton.styleFrom(
                        padding: const EdgeInsets.symmetric(vertical: 20),
                        textStyle: const TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  if (controller.detectedWimPath == null &&
                      !controller.isSearchingWim)
                    Padding(
                      padding: const EdgeInsets.only(top: 8),
                      child: Text(
                        t.waitingForWim,
                        style: TextStyle(
                          color: scheme.error.withValues(alpha: 0.8),
                          fontSize: 12,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _showConfirmDialog(BuildContext context, MainController controller) {
    final scheme = Theme.of(context).colorScheme;
    final t = context.l10n;
    final willFormat = _selectedMode != PartitionMode.useExisting;

    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        icon: Icon(
          willFormat ? Icons.warning_amber_rounded : Icons.play_arrow_rounded,
          size: 48,
        ),
        iconColor: willFormat ? scheme.error : scheme.primary,
        title: Text(
          willFormat
              ? t.confirmDataDestruction.toUpperCase()
              : t.confirmInstallation.toUpperCase(),
        ),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            if (willFormat)
              Text(
                t.formatWarning,
                textAlign: TextAlign.center,
              )
            else
              Text(
                t.noFormatWarning,
                textAlign: TextAlign.center,
              ),
            const SizedBox(height: 16),
            _InfoRow(
              label: 'DISK',
              value:
                  '${controller.selectedDisk?.number}: ${controller.selectedDisk?.friendlyName}',
            ),
            const SizedBox(height: 6),
            _InfoRow(label: 'MODE', value: _selectedMode.name.toUpperCase()),
            const SizedBox(height: 6),
            _InfoRow(
              label: 'IMAGE',
              value: controller.detectedWimPath?.split('\\').last ?? '—',
            ),
          ],
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: Text(t.actionCancel.toUpperCase()),
          ),
          FilledButton(
            onPressed: () {
              Navigator.pop(context);
              // Set the partition mode before navigating
              controller.setPartitionMode(_selectedMode);
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => const InstallationProgressScreen(),
                ),
              );
            },
            style: willFormat
                ? FilledButton.styleFrom(
                    backgroundColor: scheme.error,
                    foregroundColor: scheme.onError,
                  )
                : null,
            child: Text(t.actionConfirm.toUpperCase()),
          ),
        ],
      ),
    );
  }
}

class _InfoRow extends StatelessWidget {
  final String label;
  final String value;
  const _InfoRow({required this.label, required this.value});

  @override
  Widget build(BuildContext context) {
    final scheme = Theme.of(context).colorScheme;
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
      decoration: BoxDecoration(
        color: scheme.surfaceContainerHighest,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Row(
        children: [
          Text(
            label,
            style: TextStyle(
              fontSize: 10,
              color: Colors.white.withValues(alpha: 0.4),
              letterSpacing: 1,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(width: 12),
          Expanded(
            child: Text(
              value,
              style: const TextStyle(fontSize: 13, fontWeight: FontWeight.bold),
              overflow: TextOverflow.ellipsis,
            ),
          ),
        ],
      ),
    );
  }
}
