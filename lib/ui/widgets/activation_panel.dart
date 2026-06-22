import 'package:flutter/material.dart';
import '../../models/post_install_config.dart';
import 'panel.dart';

class RequiemActivationPanel extends StatelessWidget {
  final TextEditingController kmsHostController;
  final bool windowsKms;
  final bool officeKms;
  final bool renewalTask;
  final KmsProduct windowsProduct;
  final KmsProduct officeProduct;
  final ValueChanged<bool> onWindowsKmsChanged;
  final ValueChanged<bool> onOfficeKmsChanged;
  final ValueChanged<bool> onRenewalChanged;
  final ValueChanged<KmsProduct?> onWindowsProductChanged;
  final ValueChanged<KmsProduct?> onOfficeProductChanged;
  final VoidCallback? onRun;

  const RequiemActivationPanel({
    super.key,
    required this.kmsHostController,
    required this.windowsKms,
    required this.officeKms,
    required this.renewalTask,
    required this.windowsProduct,
    required this.officeProduct,
    required this.onWindowsKmsChanged,
    required this.onOfficeKmsChanged,
    required this.onRenewalChanged,
    required this.onWindowsProductChanged,
    required this.onOfficeProductChanged,
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
                child: RequiemProductSelector(
                  title: 'Windows',
                  enabled: windowsKms,
                  enabledLabel: 'Activar Windows',
                  items: windowsKmsProducts,
                  value: windowsProduct,
                  onEnabledChanged: onWindowsKmsChanged,
                  onChanged: onWindowsProductChanged,
                ),
              ),
              const SizedBox(width: 14),
              Expanded(
                child: RequiemProductSelector(
                  title: 'Office existente',
                  enabled: officeKms,
                  enabledLabel: 'Activar Office instalado',
                  items: officeKmsProducts,
                  value: officeProduct,
                  onEnabledChanged: onOfficeKmsChanged,
                  onChanged: onOfficeProductChanged,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
