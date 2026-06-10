import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../services/main_controller.dart';
import '../../services/disk_service.dart';
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
      ctrl.refreshDisks();
      ctrl.autoDetectInstallWim(); // scan for install.wim immediately
    });
  }

  @override
  Widget build(BuildContext context) {
    final controller = context.watch<MainController>();
    final scheme = Theme.of(context).colorScheme;

    return Scaffold(
      appBar: AppBar(
        title: const Text('ADMINISTRACIÓN DE DISCOS'),
        centerTitle: false,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 16),
            child: OutlinedButton.icon(
              onPressed: () {
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
                    style: Theme.of(context)
                        .textTheme
                        .headlineMedium
                        ?.copyWith(fontWeight: FontWeight.w900),
                  ),
                  const SizedBox(height: 6),
                  Text(
                    'Elija la unidad física donde se instalará Windows.',
                    style: TextStyle(
                        color: Colors.white.withValues(alpha: 0.5),
                        fontSize: 14),
                  ),
                  const SizedBox(height: 24),
                  Expanded(
                    child: controller.isLoadingDisks
                        ? const Center(child: CircularProgressIndicator())
                        : controller.disks.isEmpty
                            ? Center(
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Icon(Icons.search_off_rounded,
                                        size: 64,
                                        color: scheme.primary
                                            .withValues(alpha: 0.4)),
                                    const SizedBox(height: 16),
                                    const Text('No se detectaron discos físicos',
                                        style: TextStyle(fontSize: 18)),
                                  ],
                                ),
                              )
                            : ListView.builder(
                                itemCount: controller.disks.length,
                                itemBuilder: (context, index) {
                                  final disk = controller.disks[index];
                                  final isSelected =
                                      controller.selectedDisk == disk;
                                  final isSystem =
                                      disk.isBootDisk || disk.isSystemDisk;

                                  return Padding(
                                    padding: const EdgeInsets.only(bottom: 12),
                                    child: Card(
                                      clipBehavior: Clip.antiAlias,
                                      child: InkWell(
                                        onTap: isSystem
                                            ? null // Prevent selecting system disk
                                            : () =>
                                                controller.selectDisk(disk),
                                        child: Container(
                                          padding: const EdgeInsets.all(20),
                                          decoration: BoxDecoration(
                                            border: isSelected
                                                ? Border.all(
                                                    color: scheme.primary,
                                                    width: 2)
                                                : null,
                                            gradient: isSelected
                                                ? LinearGradient(colors: [
                                                    scheme.primary
                                                        .withValues(alpha: 0.12),
                                                    Colors.transparent,
                                                  ])
                                                : null,
                                          ),
                                          child: Row(
                                            children: [
                                              Container(
                                                padding:
                                                    const EdgeInsets.all(14),
                                                decoration: BoxDecoration(
                                                  color: isSystem
                                                      ? scheme.error.withValues(
                                                          alpha: 0.15)
                                                      : isSelected
                                                          ? scheme.primary
                                                          : scheme
                                                              .surfaceContainerHighest,
                                                  borderRadius:
                                                      BorderRadius.circular(14),
                                                ),
                                                child: Icon(
                                                  disk.mediaType
                                                              .contains(
                                                                  'SSD') ||
                                                          disk.busType
                                                              .contains('NVMe')
                                                      ? Icons.speed_rounded
                                                      : Icons.storage_rounded,
                                                  color: isSystem
                                                      ? scheme.error
                                                      : isSelected
                                                          ? Colors.white
                                                          : scheme
                                                              .onSurfaceVariant,
                                                ),
                                              ),
                                              const SizedBox(width: 20),
                                              Expanded(
                                                child: Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Row(
                                                      children: [
                                                        Text(
                                                          disk.friendlyName,
                                                          style:
                                                              const TextStyle(
                                                                  fontSize: 16,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .bold),
                                                        ),
                                                        if (isSystem) ...[
                                                          const SizedBox(
                                                              width: 8),
                                                          Container(
                                                            padding:
                                                                const EdgeInsets
                                                                    .symmetric(
                                                                    horizontal:
                                                                        8,
                                                                    vertical:
                                                                        2),
                                                            decoration:
                                                                BoxDecoration(
                                                              color: scheme.error
                                                                  .withValues(
                                                                      alpha:
                                                                          0.2),
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          6),
                                                            ),
                                                            child: Text(
                                                              'SISTEMA',
                                                              style: TextStyle(
                                                                  fontSize: 10,
                                                                  color: scheme
                                                                      .error,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .bold,
                                                                  letterSpacing:
                                                                      1),
                                                            ),
                                                          ),
                                                        ],
                                                      ],
                                                    ),
                                                    const SizedBox(height: 4),
                                                    Text(
                                                      'DISK ${disk.number} · ${disk.mediaType.toUpperCase()} · ${disk.busType.toUpperCase()}',
                                                      style: TextStyle(
                                                          color: Colors.white
                                                              .withValues(
                                                                  alpha: 0.45),
                                                          fontSize: 11,
                                                          letterSpacing: 1),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              Text(
                                                '${disk.sizeGB} GB',
                                                style: Theme.of(context)
                                                    .textTheme
                                                    .titleLarge
                                                    ?.copyWith(
                                                      color: isSelected
                                                          ? scheme.primary
                                                          : Colors.white,
                                                      fontWeight:
                                                          FontWeight.w900,
                                                    ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                  );
                                },
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
                  _WimStatusCard(controller: controller),
                  const SizedBox(height: 24),

                  // Partition mode selection
                  Text(
                    'Modo de Partición',
                    style: Theme.of(context)
                        .textTheme
                        .titleMedium
                        ?.copyWith(fontWeight: FontWeight.w900, letterSpacing: 1),
                  ),
                  const SizedBox(height: 12),
                  _PartitionModeCard(
                    mode: PartitionMode.formatGpt,
                    selected: _selectedMode,
                    icon: Icons.auto_awesome_rounded,
                    title: 'Formatear GPT (Recomendado)',
                    subtitle: 'Limpia el disco y crea diseño UEFI\nEFI (S:) + Windows (W:)',
                    onTap: () => setState(() => _selectedMode = PartitionMode.formatGpt),
                  ),
                  const SizedBox(height: 8),
                  _PartitionModeCard(
                    mode: PartitionMode.formatMbr,
                    selected: _selectedMode,
                    icon: Icons.history_rounded,
                    title: 'Formatear MBR (BIOS Heredado)',
                    subtitle: 'Limpia el disco y crea diseño heredado\nSolo Windows (W:)',
                    onTap: () => setState(() => _selectedMode = PartitionMode.formatMbr),
                  ),
                  const SizedBox(height: 8),
                  _PartitionModeCard(
                    mode: PartitionMode.useExisting,
                    selected: _selectedMode,
                    icon: Icons.drive_file_move_rounded,
                    title: 'Usar Particiones Existentes',
                    subtitle: 'Sin formatear — despliega en W: tal cual\nUsted gestiona las particiones manualmente',
                    onTap: () => setState(() => _selectedMode = PartitionMode.useExisting),
                  ),

                  const Spacer(),

                  // Proceed button
                  SizedBox(
                    width: double.infinity,
                    child: FilledButton.icon(
                      onPressed: (controller.selectedDisk == null ||
                              controller.detectedWimPath == null)
                          ? null
                          : () => _showConfirmDialog(context, controller),
                      icon: const Icon(Icons.play_arrow_rounded),
                      label: const Text('INICIAR INSTALACIÓN'),
                      style: FilledButton.styleFrom(
                        padding: const EdgeInsets.symmetric(vertical: 20),
                        textStyle: const TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold),
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
                            fontSize: 12),
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
        title: Text(willFormat ? 'CONFIRMAR DESTRUCCIÓN DE DATOS' : 'CONFIRMAR INSTALACIÓN'),
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
                    '${controller.selectedDisk?.number}: ${controller.selectedDisk?.friendlyName}'),
            const SizedBox(height: 6),
            _InfoRow(label: 'MODE', value: _selectedMode.name.toUpperCase()),
            const SizedBox(height: 6),
            _InfoRow(
                label: 'IMAGE',
                value: controller.detectedWimPath
                        ?.split('\\')
                        .last ??
                    '—'),
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
                    builder: (context) => const InstallationProgressScreen()),
              );
            },
            style: willFormat
                ? FilledButton.styleFrom(
                    backgroundColor: scheme.error,
                    foregroundColor: scheme.onError)
                : null,
            child: const Text('CONFIRMAR E INSTALAR'),
          ),
        ],
      ),
    );
  }
}

// ─── Sub-widgets ──────────────────────────────────────────────────────────────

class _WimStatusCard extends StatelessWidget {
  final MainController controller;
  const _WimStatusCard({required this.controller});

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
                child: CircularProgressIndicator(strokeWidth: 2))
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
                        color: Colors.white.withValues(alpha: 0.5)),
                    overflow: TextOverflow.ellipsis,
                  ),
              ],
            ),
          ),
          if (!searching) ...[
            const SizedBox(width: 12),
            TextButton.icon(
              onPressed: () => controller.pickWimFile(context),
              icon: Icon(Icons.folder_open_rounded, size: 16, color: found ? Colors.greenAccent : scheme.error),
              label: Text(
                found ? 'CAMBIAR' : 'BUSCAR',
                style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.bold,
                  color: found ? Colors.greenAccent : scheme.error,
                ),
              ),
              style: TextButton.styleFrom(
                padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
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

class _PartitionModeCard extends StatelessWidget {
  final PartitionMode mode;
  final PartitionMode selected;
  final IconData icon;
  final String title;
  final String subtitle;
  final VoidCallback onTap;

  const _PartitionModeCard({
    required this.mode,
    required this.selected,
    required this.icon,
    required this.title,
    required this.subtitle,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    final scheme = Theme.of(context).colorScheme;
    final isSelected = mode == selected;

    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(14),
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 200),
        padding: const EdgeInsets.all(14),
        decoration: BoxDecoration(
          color: isSelected
              ? scheme.primary.withValues(alpha: 0.12)
              : scheme.surfaceContainerHighest.withValues(alpha: 0.5),
          borderRadius: BorderRadius.circular(14),
          border: Border.all(
            color: isSelected
                ? scheme.primary
                : Colors.white.withValues(alpha: 0.08),
            width: isSelected ? 2 : 1,
          ),
        ),
        child: Row(
          children: [
            Icon(icon,
                size: 22,
                color: isSelected ? scheme.primary : Colors.white54),
            const SizedBox(width: 12),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(title,
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 13,
                          color: isSelected ? scheme.primary : Colors.white)),
                  const SizedBox(height: 2),
                  Text(subtitle,
                      style: TextStyle(
                          fontSize: 11,
                          color: Colors.white.withValues(alpha: 0.45),
                          height: 1.4)),
                ],
              ),
            ),
            if (isSelected)
              Icon(Icons.radio_button_checked_rounded,
                  color: scheme.primary, size: 18)
            else
              Icon(Icons.radio_button_unchecked_rounded,
                  color: Colors.white24, size: 18),
          ],
        ),
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
          Text(label,
              style: TextStyle(
                  fontSize: 10,
                  color: Colors.white.withValues(alpha: 0.4),
                  letterSpacing: 1,
                  fontWeight: FontWeight.bold)),
          const SizedBox(width: 12),
          Expanded(
            child: Text(value,
                style: const TextStyle(
                    fontSize: 13, fontWeight: FontWeight.bold),
                overflow: TextOverflow.ellipsis),
          ),
        ],
      ),
    );
  }
}
