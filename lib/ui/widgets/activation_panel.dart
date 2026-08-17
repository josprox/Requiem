import 'package:flutter/material.dart';
import '../../core/localizations.dart';
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
    final t = context.l10n;

    return RequiemPanel(
      icon: Icons.verified_user_rounded,
      accent: scheme.primary,
      title: t.kmsVolumeActivation,
      trailing: SizedBox(
        width: 150,
        child: FilledButton.icon(
          onPressed: onRun,
          icon: const Icon(Icons.key_rounded, size: 16),
          label: Text(t.activate),
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
                  decoration: InputDecoration(
                    labelText: t.kmsServer,
                    prefixIcon: const Icon(Icons.dns_rounded, size: 18),
                  ),
                ),
              ),
              const SizedBox(width: 14),
              RequiemSwitchTile(
                title: t.kmsTask160Days,
                subtitle: t.automaticRenewal,
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
                child: RequiemSwitchTile(title: t.automaticWindows, subtitle: t.automaticWindowsDescription, value: windowsKms, color: scheme.primary, onChanged: onWindowsKmsChanged),
              ),
              const SizedBox(width: 14),
              Expanded(
                child: RequiemSwitchTile(title: t.automaticOffice, subtitle: t.automaticOfficeDescription, value: officeKms, color: scheme.primary, onChanged: onOfficeKmsChanged),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
