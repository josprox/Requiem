import 'package:flutter/material.dart';
import '../../services/disk_service.dart';

class PartitionModeSelector extends StatelessWidget {
  final PartitionMode selectedMode;
  final String? gptBlock;
  final String? mbrBlock;
  final void Function(PartitionMode) onChange;

  const PartitionModeSelector({
    super.key,
    required this.selectedMode,
    required this.gptBlock,
    required this.mbrBlock,
    required this.onChange,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Modo de Partición',
          style: Theme.of(context).textTheme.titleMedium?.copyWith(
                fontWeight: FontWeight.w900,
                letterSpacing: 1,
              ),
        ),
        const SizedBox(height: 12),
        _PartitionModeCard(
          mode: PartitionMode.formatGpt,
          selected: selectedMode,
          enabled: gptBlock == null,
          blockedReason: gptBlock,
          icon: Icons.auto_awesome_rounded,
          title: 'Formatear GPT (Recomendado)',
          subtitle:
              'Limpia el disco y crea diseño UEFI\nEFI (S:) + Windows (W:)',
          onTap: () => onChange(PartitionMode.formatGpt),
        ),
        const SizedBox(height: 8),
        _PartitionModeCard(
          mode: PartitionMode.formatMbr,
          selected: selectedMode,
          enabled: mbrBlock == null,
          blockedReason: mbrBlock,
          icon: Icons.history_rounded,
          title: 'Formatear MBR (BIOS Heredado)',
          subtitle:
              'Limpia el disco y crea diseño heredado\nSolo Windows (C:)',
          onTap: () => onChange(PartitionMode.formatMbr),
        ),
        const SizedBox(height: 8),
        _PartitionModeCard(
          mode: PartitionMode.useExisting,
          selected: selectedMode,
          enabled: true,
          blockedReason: null,
          icon: Icons.drive_file_move_rounded,
          title: 'Usar Particiones Existentes',
          subtitle:
              'Sin formatear — despliega en W: tal cual\nUsted gestiona las particiones manualmente',
          onTap: () => onChange(PartitionMode.useExisting),
        ),
      ],
    );
  }
}

class _PartitionModeCard extends StatelessWidget {
  final PartitionMode mode;
  final PartitionMode selected;
  final bool enabled;
  final String? blockedReason;
  final IconData icon;
  final String title;
  final String subtitle;
  final VoidCallback onTap;

  const _PartitionModeCard({
    required this.mode,
    required this.selected,
    required this.enabled,
    required this.blockedReason,
    required this.icon,
    required this.title,
    required this.subtitle,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    final isSelected = selected == mode;
    final scheme = Theme.of(context).colorScheme;

    return Card(
      clipBehavior: Clip.antiAlias,
      child: InkWell(
        onTap: enabled ? onTap : null,
        child: Container(
          padding: const EdgeInsets.all(16),
          decoration: BoxDecoration(
            border: isSelected
                ? Border.all(color: scheme.primary, width: 1.5)
                : null,
            color: !enabled ? Colors.black.withValues(alpha: 0.15) : null,
          ),
          child: Row(
            children: [
              Icon(
                icon,
                color: !enabled
                    ? Colors.white.withValues(alpha: 0.2)
                    : isSelected
                        ? scheme.primary
                        : scheme.onSurfaceVariant,
              ),
              const SizedBox(width: 16),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: !enabled
                            ? Colors.white.withValues(alpha: 0.25)
                            : isSelected
                                ? scheme.primary
                                : Colors.white,
                      ),
                    ),
                    const SizedBox(height: 2),
                    Text(
                      subtitle,
                      style: TextStyle(
                        fontSize: 11,
                        color: !enabled
                            ? Colors.white.withValues(alpha: 0.15)
                            : Colors.white.withValues(alpha: 0.45),
                      ),
                    ),
                    if (blockedReason != null) ...[
                      const SizedBox(height: 6),
                      Text(
                        blockedReason!,
                        style: TextStyle(
                          fontSize: 10,
                          color: scheme.error,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
