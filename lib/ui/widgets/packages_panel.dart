import 'package:flutter/material.dart';
import '../../models/post_install_config.dart';
import 'panel.dart';

class RequiemPackagesPanel extends StatelessWidget {
  final Set<String> selectedPackages;
  final void Function(PostInstallPackage package, bool selected) onPackageChanged;
  final VoidCallback? onDetect;
  final VoidCallback? onInstall;

  const RequiemPackagesPanel({
    super.key,
    required this.selectedPackages,
    required this.onPackageChanged,
    required this.onDetect,
    required this.onInstall,
  });

  @override
  Widget build(BuildContext context) {
    final scheme = Theme.of(context).colorScheme;

    return RequiemPanel(
      icon: Icons.developer_board_rounded,
      accent: scheme.secondary,
      title: 'Stack de Programas (Winget)',
      trailing: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          OutlinedButton.icon(
            onPressed: onDetect,
            icon: const Icon(Icons.manage_search_rounded, size: 16),
            label: const Text('DETECTAR'),
            style: OutlinedButton.styleFrom(
              minimumSize: const Size(0, 42),
            ),
          ),
          const SizedBox(width: 8),
          FilledButton.icon(
            onPressed: onInstall,
            icon: const Icon(Icons.install_desktop_rounded, size: 16),
            label: const Text('INSTALAR'),
            style: FilledButton.styleFrom(
              minimumSize: const Size(0, 42),
            ),
          ),
        ],
      ),
      child: LayoutBuilder(
        builder: (context, constraints) {
          final columns = constraints.maxWidth > 760 ? 2 : 1;
          return GridView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: defaultPostInstallPackages.length,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: columns,
              mainAxisExtent: 78,
              crossAxisSpacing: 12,
              mainAxisSpacing: 12,
            ),
            itemBuilder: (context, index) {
              final package = defaultPostInstallPackages[index];
              final selected = selectedPackages.contains(package.id);
              return RequiemPackageTile(
                package: package,
                selected: selected,
                onChanged: (value) => onPackageChanged(package, value),
                accentColor: scheme.secondary,
              );
            },
          );
        },
      ),
    );
  }
}

class RequiemPackageTile extends StatelessWidget {
  final PostInstallPackage package;
  final bool selected;
  final ValueChanged<bool> onChanged;
  final Color accentColor;

  const RequiemPackageTile({
    super.key,
    required this.package,
    required this.selected,
    required this.onChanged,
    required this.accentColor,
  });

  @override
  Widget build(BuildContext context) {
    final color = selected ? accentColor : Colors.white.withValues(alpha: 0.4);
    return Material(
      color: selected
          ? accentColor.withValues(alpha: 0.08)
          : Colors.white.withValues(alpha: 0.02),
      borderRadius: BorderRadius.circular(12),
      child: InkWell(
        borderRadius: BorderRadius.circular(12),
        onTap: () => onChanged(!selected),
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 10),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            border: Border.all(
              color: selected
                  ? accentColor.withValues(alpha: 0.22)
                  : Colors.white.withValues(alpha: 0.05),
              width: 1,
            ),
          ),
          child: Row(
            children: [
              Icon(Icons.widgets_rounded, color: color, size: 22),
              const SizedBox(width: 14),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      package.name,
                      overflow: TextOverflow.ellipsis,
                      style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 13),
                    ),
                    const SizedBox(height: 2),
                    Text(
                      package.description,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                        fontSize: 11.5,
                        color: Colors.white.withValues(alpha: 0.45),
                      ),
                    ),
                  ],
                ),
              ),
              Checkbox(
                value: selected,
                onChanged: (value) => onChanged(value ?? false),
                activeColor: accentColor,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
