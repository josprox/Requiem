import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../services/main_controller.dart';
import '../../services/disk_service.dart';
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
        title: const Text('ADMINISTRACIÓN DE DISCOS'),
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
              label: const Text('ACTUALIZAR'),
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
                    'Seleccionar Disco de Destino',
                    style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                      fontWeight: FontWeight.w900,
                    ),
                  ),
                  const SizedBox(height: 6),
                  Text(
                    'Elija la unidad física donde se instalará Windows.',
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
                      label: const Text('INICIAR INSTALACIÓN'),
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
                        'Esperando la detección de install.wim...',
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
              ? 'CONFIRMAR DESTRUCCIÓN DE DATOS'
              : 'CONFIRMAR INSTALACIÓN',
        ),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            if (willFormat)
              const Text(
                'El disco seleccionado se formateará por completo. Se perderán todos los datos.',
                textAlign: TextAlign.center,
              )
            else
              const Text(
                'Windows se desplegará en W:\\ sin formatear.',
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
            child: const Text('CANCELAR'),
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
            child: const Text('CONFIRMAR E INSTALAR'),
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
