import 'package:flutter/material.dart';
import '../../models/post_install_config.dart';
import 'panel.dart';

class RequiemOfficePanel extends StatelessWidget {
  final bool enabled;
  final bool renewalTask;
  final OfficeDeploymentOption deployment;
  final ValueChanged<bool> onEnabledChanged;
  final ValueChanged<OfficeDeploymentOption?> onDeploymentChanged;
  final VoidCallback? onRun;

  const RequiemOfficePanel({
    super.key,
    required this.enabled,
    required this.renewalTask,
    required this.deployment,
    required this.onEnabledChanged,
    required this.onDeploymentChanged,
    required this.onRun,
  });

  @override
  Widget build(BuildContext context) {
    final scheme = Theme.of(context).colorScheme;

    return RequiemPanel(
      icon: Icons.cloud_download_rounded,
      accent: scheme.tertiary,
      title: 'Office Deployment Tool',
      trailing: SizedBox(
        width: 210,
        child: FilledButton.icon(
          onPressed: enabled ? onRun : null,
          icon: const Icon(Icons.download_for_offline_rounded, size: 16),
          label: const Text('DESCARGAR + ACTIVAR'),
          style: FilledButton.styleFrom(
            minimumSize: const Size(0, 42),
          ),
        ),
      ),
      child: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: DropdownButtonFormField<OfficeDeploymentOption>(
                  value: deployment,
                  isExpanded: true,
                  decoration: const InputDecoration(
                    labelText: 'Versión de Office',
                    prefixIcon: Icon(Icons.apps_rounded, size: 18),
                  ),
                  items: [
                    for (final option in officeDeploymentOptions)
                      DropdownMenuItem(value: option, child: Text(option.name)),
                  ],
                  onChanged: enabled ? onDeploymentChanged : null,
                ),
              ),
              const SizedBox(width: 14),
              RequiemSwitchTile(
                title: 'Instalar Office',
                subtitle: 'ODT + KMS',
                value: enabled,
                color: scheme.tertiary,
                onChanged: onEnabledChanged,
              ),
            ],
          ),
          const SizedBox(height: 14),
          RequiemInlineNotice(
            icon: Icons.info_outline_rounded,
            color: scheme.tertiary,
            text: '${deployment.productId} / ${deployment.channel} / ${deployment.clientEdition} bits. La renovación queda ${renewalTask ? "activa" : "desactivada"}.',
          ),
        ],
      ),
    );
  }
}
