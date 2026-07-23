import 'package:flutter/material.dart';
import '../../models/post_install_config.dart';
import 'panel.dart';

class RequiemActivationPanel extends StatelessWidget {
  final TextEditingController kmsHostController;
  final bool windowsKms;
  final bool officeKms;
  final bool renewalTask;
  final ValueChanged<bool> onWindowsKmsChanged;
  final ValueChanged<bool> onOfficeKmsChanged;
  final ValueChanged<bool> onRenewalChanged;
  final VoidCallback? onRun;

  const RequiemActivationPanel({
    super.key,
    required this.kmsHostController,
    required this.windowsKms,
    required this.officeKms,
    required this.renewalTask,
    required this.onWindowsKmsChanged,
    required this.onOfficeKmsChanged,
    required this.onRenewalChanged,
    required this.onRun,
  });

  @override
  Widget build(BuildContext context) {
    final scheme = Theme.of(context).colorScheme;

    return RequiemPanel(
      icon: Icons.verified_user_rounded,
      accent: scheme.primary,
      title: 'Activación de Volumen (KMS)',
      trailing: SizedBox(
        width: 150,
        child: FilledButton.icon(
          onPressed: onRun,
          icon: const Icon(Icons.key_rounded, size: 16),
          label: const Text('ACTIVAR'),
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
                child: TextField(
                  controller: kmsHostController,
                  decoration: const InputDecoration(
                    labelText: 'Servidor KMS',
                    prefixIcon: Icon(Icons.dns_rounded, size: 18),
                  ),
                ),
              ),
              const SizedBox(width: 14),
              RequiemSwitchTile(
                title: 'Tarea 160 días',
                subtitle: 'Renovación automática',
                value: renewalTask,
                color: scheme.secondary,
                onChanged: onRenewalChanged,
              ),
            ],
          ),
          const SizedBox(height: 14),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: RequiemSwitchTile(title: 'Windows automatico', subtitle: 'Detecta edicion y GVLK compatible', value: windowsKms, color: scheme.primary, onChanged: onWindowsKmsChanged),
              ),
              const SizedBox(width: 14),
              Expanded(
                child: RequiemSwitchTile(title: 'Office automatico', subtitle: 'Usa la GVLK de volumen ya instalada', value: officeKms, color: scheme.primary, onChanged: onOfficeKmsChanged),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
