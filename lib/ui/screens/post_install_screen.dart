import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:window_manager/window_manager.dart';

import '../../models/post_install_config.dart';
import '../../services/post_install_service.dart';

class PostInstallScreen extends StatefulWidget {
  const PostInstallScreen({super.key});

  @override
  State<PostInstallScreen> createState() => _PostInstallScreenState();
}

class _PostInstallScreenState extends State<PostInstallScreen> {
  static const _bg = Color(0xFF101114);
  static const _surface = Color(0xFF1B1D22);
  static const _surfaceHigh = Color(0xFF242730);
  static const _line = Color(0xFF353945);
  static const _red = Color(0xFFE1323C);
  static const _teal = Color(0xFF45D3A5);
  static const _blue = Color(0xFF78A9FF);
  static const _amber = Color(0xFFFFC857);

  final PostInstallService _service = PostInstallService();
  final ScrollController _contentScrollController = ScrollController();
  final ScrollController _logScrollController = ScrollController();
  final TextEditingController _kmsHostController = TextEditingController(
    text: 'kms.joss.red',
  );

  bool _busy = false;
  bool _windowsKms = true;
  bool _officeKms = true;
  bool _installOffice = true;
  bool _renewalTask = true;
  int _navIndex = 0;
  KmsProduct _windowsProduct = windowsKmsProducts.first;
  KmsProduct _officeProduct = officeKmsProducts[1];
  OfficeDeploymentOption _officeDeployment = officeDeploymentOptions[1];
  final Set<String> _selectedPackages = {
    'vscode',
    'git',
    'nodejs',
    'python',
    'php',
    'mysql',
    'go',
    'rust',
    'java',
    'terminal',
    'wsl',
    'ubuntu',
    'chrome',
    'bruno',
    'heidisql',
    'nanazip',
  };
  final List<String> _logs = [];

  @override
  void dispose() {
    _contentScrollController.dispose();
    _kmsHostController.dispose();
    _logScrollController.dispose();
    super.dispose();
  }

  String? _kmsHost() {
    final host = _kmsHostController.text.trim();
    if (host.isEmpty) {
      _log('ERROR: el host KMS esta vacio.');
      return null;
    }
    return host;
  }

  void _log(String message) {
    final time = DateTime.now().toIso8601String().substring(11, 19);
    setState(() => _logs.add('[$time] $message'));
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (_logScrollController.hasClients) {
        _logScrollController.animateTo(
          _logScrollController.position.maxScrollExtent,
          duration: const Duration(milliseconds: 220),
          curve: Curves.easeOut,
        );
      }
    });
  }

  Future<void> _run(Future<void> Function() action) async {
    if (_busy) return;
    setState(() => _busy = true);
    try {
      await action();
    } finally {
      if (mounted) setState(() => _busy = false);
    }
  }

  Future<void> _runKms() async {
    final host = _kmsHost();
    if (host == null) return;

    if (!_windowsKms && !_officeKms) {
      _log('No hay productos KMS seleccionados.');
      return;
    }

    if (_windowsKms) {
      await for (final line in _service.activateWindowsKms(
        kmsHost: host,
        product: _windowsProduct,
        createRenewalTask: _renewalTask,
      )) {
        _log(line);
      }
    }

    if (_officeKms) {
      await for (final line in _service.activateOfficeKms(
        kmsHost: host,
        product: _officeProduct,
        createRenewalTask: _renewalTask,
      )) {
        _log(line);
      }
    }
  }

  Future<void> _installOfficeWithOdt() async {
    final host = _kmsHost();
    if (host == null) return;

    await for (final line in _service.installOfficeWithOdt(
      option: _officeDeployment,
      kmsHost: host,
      createRenewalTask: _renewalTask,
    )) {
      _log(line);
    }
  }

  Future<void> _installPackages() async {
    final packages = defaultPostInstallPackages
        .where((package) => _selectedPackages.contains(package.id))
        .toList();
    if (packages.isEmpty) {
      _log('No hay programas seleccionados.');
      return;
    }

    await for (final line in _service.installPackages(packages)) {
      _log(line);
    }
  }

  Future<void> _detectInstalledPackages() async {
    final detected = await _service.detectInstalledDefaults();
    if (detected.isEmpty) {
      _log('No se detectaron paquetes conocidos con winget.');
      return;
    }

    setState(() {
      _selectedPackages
        ..clear()
        ..addAll(detected);
    });
    _log('Paquetes detectados: ${detected.length}.');
  }

  Future<void> _runAll() async {
    final host = _kmsHost();
    if (host == null) return;

    if (_windowsKms) {
      await for (final line in _service.activateWindowsKms(
        kmsHost: host,
        product: _windowsProduct,
        createRenewalTask: _renewalTask,
      )) {
        _log(line);
      }
    }

    if (_installOffice) {
      await for (final line in _service.installOfficeWithOdt(
        option: _officeDeployment,
        kmsHost: host,
        createRenewalTask: _renewalTask,
      )) {
        _log(line);
      }
    } else if (_officeKms) {
      await for (final line in _service.activateOfficeKms(
        kmsHost: host,
        product: _officeProduct,
        createRenewalTask: _renewalTask,
      )) {
        _log(line);
      }
    }

    await _installPackages();
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).copyWith(
      colorScheme: ColorScheme.fromSeed(
        seedColor: _red,
        brightness: Brightness.dark,
        primary: _red,
        secondary: _teal,
        tertiary: _blue,
        surface: _surface,
      ),
      scaffoldBackgroundColor: _bg,
      inputDecorationTheme: InputDecorationTheme(
        filled: true,
        fillColor: Colors.white.withValues(alpha: 0.045),
        contentPadding: const EdgeInsets.symmetric(
          horizontal: 14,
          vertical: 14,
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: BorderSide(color: Colors.white.withValues(alpha: 0.08)),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: BorderSide(color: Colors.white.withValues(alpha: 0.08)),
        ),
        focusedBorder: const OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(8)),
          borderSide: BorderSide(color: _blue, width: 1.4),
        ),
      ),
      filledButtonTheme: FilledButtonThemeData(
        style: FilledButton.styleFrom(
          minimumSize: const Size(0, 46),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
          textStyle: const TextStyle(fontWeight: FontWeight.w800),
        ),
      ),
      outlinedButtonTheme: OutlinedButtonThemeData(
        style: OutlinedButton.styleFrom(
          minimumSize: const Size(0, 46),
          side: const BorderSide(color: _line),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
          textStyle: const TextStyle(fontWeight: FontWeight.w800),
        ),
      ),
    );

    return Theme(
      data: theme,
      child: Scaffold(
        body: Column(
          children: [
            const SizedBox(
              height: 34,
              child: DragToMoveArea(
                child: WindowCaption(
                  brightness: Brightness.dark,
                  backgroundColor: Colors.transparent,
                  title: Text(
                    'JOSS RED MIGRATION TOOLS',
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w800,
                      letterSpacing: 0,
                    ),
                  ),
                ),
              ),
            ),
            Expanded(
              child: LayoutBuilder(
                builder: (context, constraints) {
                  final compact = constraints.maxWidth < 1180;
                  return Row(
                    children: [
                      _Sidebar(
                        selectedIndex: _navIndex,
                        onDestinationSelected: (index) {
                          setState(() => _navIndex = index);
                        },
                      ),
                      Expanded(
                        child: compact
                            ? Column(
                                children: [
                                  Expanded(child: _mainContent()),
                                  SizedBox(
                                    height: 260,
                                    child: _ConsolePanel(
                                      logs: _logs,
                                      busy: _busy,
                                      controller: _logScrollController,
                                      onCopy: _copyLogs,
                                      onClear: () => setState(_logs.clear),
                                    ),
                                  ),
                                ],
                              )
                            : Row(
                                children: [
                                  Expanded(child: _mainContent()),
                                  SizedBox(
                                    width: 430,
                                    child: _ConsolePanel(
                                      logs: _logs,
                                      busy: _busy,
                                      controller: _logScrollController,
                                      onCopy: _copyLogs,
                                      onClear: () => setState(_logs.clear),
                                    ),
                                  ),
                                ],
                              ),
                      ),
                    ],
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _mainContent() {
    return Scrollbar(
      controller: _contentScrollController,
      thumbVisibility: true,
      child: ListView(
        controller: _contentScrollController,
        padding: const EdgeInsets.fromLTRB(30, 26, 30, 32),
        children: [
          _Header(
            selectedPackages: _selectedPackages.length,
            officeName: _officeDeployment.name,
            kmsHost: _kmsHostController.text.trim(),
            busy: _busy,
            onRunAll: _busy ? null : () => _run(_runAll),
          ),
          const SizedBox(height: 18),
          _ActivationPanel(
            kmsHostController: _kmsHostController,
            windowsKms: _windowsKms,
            officeKms: _officeKms,
            renewalTask: _renewalTask,
            windowsProduct: _windowsProduct,
            officeProduct: _officeProduct,
            onWindowsKmsChanged: (value) => setState(() => _windowsKms = value),
            onOfficeKmsChanged: (value) => setState(() => _officeKms = value),
            onRenewalChanged: (value) => setState(() => _renewalTask = value),
            onWindowsProductChanged: (value) {
              if (value != null) setState(() => _windowsProduct = value);
            },
            onOfficeProductChanged: (value) {
              if (value != null) setState(() => _officeProduct = value);
            },
            onRun: _busy ? null : () => _run(_runKms),
          ),
          const SizedBox(height: 14),
          _OfficePanel(
            enabled: _installOffice,
            deployment: _officeDeployment,
            renewalTask: _renewalTask,
            onEnabledChanged: (value) => setState(() => _installOffice = value),
            onDeploymentChanged: (value) {
              if (value == null) return;
              setState(() {
                _officeDeployment = value;
                _officeProduct = value.kmsProduct;
              });
            },
            onRun: _busy ? null : () => _run(_installOfficeWithOdt),
          ),
          const SizedBox(height: 14),
          _PackagesPanel(
            selectedPackages: _selectedPackages,
            onPackageChanged: (package, selected) {
              setState(() {
                if (selected) {
                  _selectedPackages.add(package.id);
                } else {
                  _selectedPackages.remove(package.id);
                }
              });
            },
            onDetect: _busy ? null : () => _run(_detectInstalledPackages),
            onInstall: _busy ? null : () => _run(_installPackages),
          ),
        ],
      ),
    );
  }

  void _copyLogs() {
    Clipboard.setData(ClipboardData(text: _logs.join('\n')));
    _log('Logs copiados al portapapeles.');
  }
}

class _Sidebar extends StatelessWidget {
  final int selectedIndex;
  final ValueChanged<int> onDestinationSelected;

  const _Sidebar({
    required this.selectedIndex,
    required this.onDestinationSelected,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 96,
      decoration: const BoxDecoration(
        color: Color(0xFF15171B),
        border: Border(right: BorderSide(color: _PostInstallScreenState._line)),
      ),
      child: Column(
        children: [
          const SizedBox(height: 24),
          Container(
            width: 48,
            height: 48,
            decoration: BoxDecoration(
              color: _PostInstallScreenState._red,
              borderRadius: BorderRadius.circular(8),
            ),
            child: const Icon(Icons.bolt_rounded, color: Colors.white),
          ),
          const SizedBox(height: 24),
          Expanded(
            child: NavigationRail(
              selectedIndex: selectedIndex,
              onDestinationSelected: onDestinationSelected,
              backgroundColor: Colors.transparent,
              labelType: NavigationRailLabelType.all,
              minWidth: 86,
              groupAlignment: -0.72,
              indicatorColor: _PostInstallScreenState._red.withValues(
                alpha: 0.22,
              ),
              destinations: const [
                NavigationRailDestination(
                  icon: Icon(Icons.verified_user_outlined),
                  selectedIcon: Icon(Icons.verified_user_rounded),
                  label: Text('KMS'),
                ),
                NavigationRailDestination(
                  icon: Icon(Icons.apps_outlined),
                  selectedIcon: Icon(Icons.apps_rounded),
                  label: Text('Office'),
                ),
                NavigationRailDestination(
                  icon: Icon(Icons.terminal_outlined),
                  selectedIcon: Icon(Icons.terminal_rounded),
                  label: Text('Stack'),
                ),
              ],
            ),
          ),
          Tooltip(
            message: 'Herramientas locales',
            child: Padding(
              padding: const EdgeInsets.only(bottom: 22),
              child: Icon(
                Icons.desktop_windows_rounded,
                color: Colors.white.withValues(alpha: 0.55),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _Header extends StatelessWidget {
  final int selectedPackages;
  final String officeName;
  final String kmsHost;
  final bool busy;
  final VoidCallback? onRunAll;

  const _Header({
    required this.selectedPackages,
    required this.officeName,
    required this.kmsHost,
    required this.busy,
    required this.onRunAll,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(22),
      decoration: BoxDecoration(
        color: _PostInstallScreenState._surfaceHigh,
        borderRadius: BorderRadius.circular(8),
        border: Border.all(color: _PostInstallScreenState._line),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Centro de migracion rapida',
                  style: TextStyle(
                    fontSize: 30,
                    height: 1,
                    fontWeight: FontWeight.w900,
                    letterSpacing: 0,
                  ),
                ),
                const SizedBox(height: 10),
                Text(
                  'Activacion KMS, Office por ODT y stack de desarrollo para Windows.',
                  style: TextStyle(
                    color: Colors.white.withValues(alpha: 0.68),
                    fontSize: 14,
                    height: 1.35,
                    letterSpacing: 0,
                  ),
                ),
                const SizedBox(height: 16),
                Wrap(
                  spacing: 8,
                  runSpacing: 8,
                  children: [
                    _StatusPill(
                      icon: Icons.dns_rounded,
                      label: kmsHost.isEmpty ? 'KMS pendiente' : kmsHost,
                      color: _PostInstallScreenState._teal,
                    ),
                    _StatusPill(
                      icon: Icons.apps_rounded,
                      label: officeName,
                      color: _PostInstallScreenState._blue,
                    ),
                    _StatusPill(
                      icon: Icons.inventory_2_rounded,
                      label: '$selectedPackages programas',
                      color: _PostInstallScreenState._amber,
                    ),
                  ],
                ),
              ],
            ),
          ),
          const SizedBox(width: 20),
          SizedBox(
            width: 210,
            child: FilledButton.icon(
              onPressed: onRunAll,
              icon: busy
                  ? const SizedBox(
                      width: 18,
                      height: 18,
                      child: CircularProgressIndicator(strokeWidth: 2),
                    )
                  : const Icon(Icons.play_arrow_rounded),
              label: Text(busy ? 'EJECUTANDO' : 'EJECUTAR TODO'),
            ),
          ),
        ],
      ),
    );
  }
}

class _StatusPill extends StatelessWidget {
  final IconData icon;
  final String label;
  final Color color;

  const _StatusPill({
    required this.icon,
    required this.label,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 8),
      decoration: BoxDecoration(
        color: color.withValues(alpha: 0.12),
        borderRadius: BorderRadius.circular(8),
        border: Border.all(color: color.withValues(alpha: 0.28)),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(icon, size: 16, color: color),
          const SizedBox(width: 7),
          ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 220),
            child: Text(
              label,
              overflow: TextOverflow.ellipsis,
              style: const TextStyle(fontSize: 12, fontWeight: FontWeight.w800),
            ),
          ),
        ],
      ),
    );
  }
}

class _ActivationPanel extends StatelessWidget {
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

  const _ActivationPanel({
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
    return _Panel(
      icon: Icons.verified_user_rounded,
      accent: _PostInstallScreenState._red,
      title: 'Activacion de volumen',
      trailing: SizedBox(
        width: 188,
        child: FilledButton.icon(
          onPressed: onRun,
          icon: const Icon(Icons.key_rounded),
          label: const Text('ACTIVAR'),
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
                    prefixIcon: Icon(Icons.dns_rounded),
                  ),
                ),
              ),
              const SizedBox(width: 12),
              _SwitchTile(
                title: 'Tarea 160 dias',
                subtitle: 'Renovacion automatica',
                value: renewalTask,
                color: _PostInstallScreenState._teal,
                onChanged: onRenewalChanged,
              ),
            ],
          ),
          const SizedBox(height: 12),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: _ProductSelector(
                  title: 'Windows',
                  enabled: windowsKms,
                  enabledLabel: 'Activar Windows',
                  items: windowsKmsProducts,
                  value: windowsProduct,
                  onEnabledChanged: onWindowsKmsChanged,
                  onChanged: onWindowsProductChanged,
                ),
              ),
              const SizedBox(width: 12),
              Expanded(
                child: _ProductSelector(
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

class _OfficePanel extends StatelessWidget {
  final bool enabled;
  final bool renewalTask;
  final OfficeDeploymentOption deployment;
  final ValueChanged<bool> onEnabledChanged;
  final ValueChanged<OfficeDeploymentOption?> onDeploymentChanged;
  final VoidCallback? onRun;

  const _OfficePanel({
    required this.enabled,
    required this.renewalTask,
    required this.deployment,
    required this.onEnabledChanged,
    required this.onDeploymentChanged,
    required this.onRun,
  });

  @override
  Widget build(BuildContext context) {
    return _Panel(
      icon: Icons.cloud_download_rounded,
      accent: _PostInstallScreenState._blue,
      title: 'Office Deployment Tool',
      trailing: SizedBox(
        width: 260,
        child: FilledButton.icon(
          onPressed: enabled ? onRun : null,
          icon: const Icon(Icons.download_for_offline_rounded),
          label: const Text('DESCARGAR + ACTIVAR'),
        ),
      ),
      child: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: DropdownButtonFormField<OfficeDeploymentOption>(
                  initialValue: deployment,
                  isExpanded: true,
                  decoration: const InputDecoration(
                    labelText: 'Version de Office',
                    prefixIcon: Icon(Icons.apps_rounded),
                  ),
                  items: [
                    for (final option in officeDeploymentOptions)
                      DropdownMenuItem(value: option, child: Text(option.name)),
                  ],
                  onChanged: enabled ? onDeploymentChanged : null,
                ),
              ),
              const SizedBox(width: 12),
              _SwitchTile(
                title: 'Instalar Office',
                subtitle: 'ODT + KMS',
                value: enabled,
                color: _PostInstallScreenState._blue,
                onChanged: onEnabledChanged,
              ),
            ],
          ),
          const SizedBox(height: 12),
          _InlineNotice(
            icon: Icons.info_outline_rounded,
            color: _PostInstallScreenState._blue,
            text:
                '${deployment.productId} / ${deployment.channel} / ${deployment.clientEdition} bits. La renovacion queda ${renewalTask ? "activa" : "desactivada"}.',
          ),
        ],
      ),
    );
  }
}

class _PackagesPanel extends StatelessWidget {
  final Set<String> selectedPackages;
  final void Function(PostInstallPackage package, bool selected)
  onPackageChanged;
  final VoidCallback? onDetect;
  final VoidCallback? onInstall;

  const _PackagesPanel({
    required this.selectedPackages,
    required this.onPackageChanged,
    required this.onDetect,
    required this.onInstall,
  });

  @override
  Widget build(BuildContext context) {
    return _Panel(
      icon: Icons.developer_board_rounded,
      accent: _PostInstallScreenState._teal,
      title: 'Stack de programas',
      trailing: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          OutlinedButton.icon(
            onPressed: onDetect,
            icon: const Icon(Icons.manage_search_rounded),
            label: const Text('DETECTAR'),
          ),
          const SizedBox(width: 8),
          FilledButton.icon(
            onPressed: onInstall,
            icon: const Icon(Icons.install_desktop_rounded),
            label: const Text('INSTALAR'),
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
              mainAxisExtent: 76,
              crossAxisSpacing: 10,
              mainAxisSpacing: 10,
            ),
            itemBuilder: (context, index) {
              final package = defaultPostInstallPackages[index];
              final selected = selectedPackages.contains(package.id);
              return _PackageTile(
                package: package,
                selected: selected,
                onChanged: (value) => onPackageChanged(package, value),
              );
            },
          );
        },
      ),
    );
  }
}

class _Panel extends StatelessWidget {
  final IconData icon;
  final Color accent;
  final String title;
  final Widget? trailing;
  final Widget child;

  const _Panel({
    required this.icon,
    required this.accent,
    required this.title,
    required this.child,
    this.trailing,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(18),
      decoration: BoxDecoration(
        color: _PostInstallScreenState._surface,
        borderRadius: BorderRadius.circular(8),
        border: Border.all(color: _PostInstallScreenState._line),
      ),
      child: Column(
        children: [
          Row(
            children: [
              Container(
                width: 38,
                height: 38,
                decoration: BoxDecoration(
                  color: accent.withValues(alpha: 0.16),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Icon(icon, color: accent, size: 20),
              ),
              const SizedBox(width: 12),
              Expanded(
                child: Text(
                  title,
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w900,
                    letterSpacing: 0,
                  ),
                ),
              ),
              ?trailing,
            ],
          ),
          const SizedBox(height: 16),
          child,
        ],
      ),
    );
  }
}

class _SwitchTile extends StatelessWidget {
  final String title;
  final String subtitle;
  final bool value;
  final Color color;
  final ValueChanged<bool> onChanged;

  const _SwitchTile({
    required this.title,
    required this.subtitle,
    required this.value,
    required this.color,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 210,
      height: 58,
      padding: const EdgeInsets.only(left: 12, right: 8),
      decoration: BoxDecoration(
        color: color.withValues(alpha: value ? 0.12 : 0.04),
        borderRadius: BorderRadius.circular(8),
        border: Border.all(
          color: value
              ? color.withValues(alpha: 0.36)
              : _PostInstallScreenState._line,
        ),
      ),
      child: Row(
        children: [
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  overflow: TextOverflow.ellipsis,
                  style: const TextStyle(
                    fontSize: 13,
                    fontWeight: FontWeight.w900,
                  ),
                ),
                Text(
                  subtitle,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    fontSize: 11,
                    color: Colors.white.withValues(alpha: 0.56),
                  ),
                ),
              ],
            ),
          ),
          Switch(value: value, onChanged: onChanged),
        ],
      ),
    );
  }
}

class _ProductSelector extends StatelessWidget {
  final String title;
  final bool enabled;
  final String enabledLabel;
  final List<KmsProduct> items;
  final KmsProduct value;
  final ValueChanged<bool> onEnabledChanged;
  final ValueChanged<KmsProduct?> onChanged;

  const _ProductSelector({
    required this.title,
    required this.enabled,
    required this.enabledLabel,
    required this.items,
    required this.value,
    required this.onEnabledChanged,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: Colors.white.withValues(alpha: 0.035),
        borderRadius: BorderRadius.circular(8),
        border: Border.all(color: _PostInstallScreenState._line),
      ),
      child: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: Text(
                  title,
                  style: const TextStyle(
                    fontSize: 13,
                    fontWeight: FontWeight.w900,
                  ),
                ),
              ),
              Switch(value: enabled, onChanged: onEnabledChanged),
            ],
          ),
          const SizedBox(height: 8),
          DropdownButtonFormField<KmsProduct>(
            initialValue: value,
            isExpanded: true,
            decoration: InputDecoration(
              labelText: enabledLabel,
              prefixIcon: const Icon(Icons.key_rounded),
            ),
            items: [
              for (final item in items)
                DropdownMenuItem(value: item, child: Text(item.name)),
            ],
            onChanged: enabled ? onChanged : null,
          ),
        ],
      ),
    );
  }
}

class _InlineNotice extends StatelessWidget {
  final IconData icon;
  final Color color;
  final String text;

  const _InlineNotice({
    required this.icon,
    required this.color,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: color.withValues(alpha: 0.1),
        borderRadius: BorderRadius.circular(8),
        border: Border.all(color: color.withValues(alpha: 0.22)),
      ),
      child: Row(
        children: [
          Icon(icon, color: color, size: 18),
          const SizedBox(width: 10),
          Expanded(
            child: Text(
              text,
              style: TextStyle(
                color: Colors.white.withValues(alpha: 0.78),
                fontSize: 12.5,
                height: 1.35,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _PackageTile extends StatelessWidget {
  final PostInstallPackage package;
  final bool selected;
  final ValueChanged<bool> onChanged;

  const _PackageTile({
    required this.package,
    required this.selected,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    final color = selected
        ? _PostInstallScreenState._teal
        : Colors.white.withValues(alpha: 0.42);
    return Material(
      color: selected
          ? _PostInstallScreenState._teal.withValues(alpha: 0.1)
          : Colors.white.withValues(alpha: 0.035),
      borderRadius: BorderRadius.circular(8),
      child: InkWell(
        borderRadius: BorderRadius.circular(8),
        onTap: () => onChanged(!selected),
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            border: Border.all(
              color: selected
                  ? _PostInstallScreenState._teal.withValues(alpha: 0.34)
                  : _PostInstallScreenState._line,
            ),
          ),
          child: Row(
            children: [
              Icon(Icons.widgets_rounded, color: color, size: 22),
              const SizedBox(width: 12),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      package.name,
                      overflow: TextOverflow.ellipsis,
                      style: const TextStyle(fontWeight: FontWeight.w900),
                    ),
                    Text(
                      package.description,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                        fontSize: 12,
                        color: Colors.white.withValues(alpha: 0.56),
                      ),
                    ),
                  ],
                ),
              ),
              Checkbox(
                value: selected,
                onChanged: (value) => onChanged(value ?? false),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _ConsolePanel extends StatelessWidget {
  final List<String> logs;
  final bool busy;
  final ScrollController controller;
  final VoidCallback onCopy;
  final VoidCallback onClear;

  const _ConsolePanel({
    required this.logs,
    required this.busy,
    required this.controller,
    required this.onCopy,
    required this.onClear,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: Color(0xFF0B0C0F),
        border: Border(left: BorderSide(color: _PostInstallScreenState._line)),
      ),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(18, 16, 12, 10),
            child: Row(
              children: [
                Icon(
                  busy ? Icons.sync_rounded : Icons.terminal_rounded,
                  size: 18,
                  color: busy
                      ? _PostInstallScreenState._amber
                      : _PostInstallScreenState._teal,
                ),
                const SizedBox(width: 9),
                const Expanded(
                  child: Text(
                    'Consola',
                    style: TextStyle(
                      fontWeight: FontWeight.w900,
                      letterSpacing: 0,
                    ),
                  ),
                ),
                Tooltip(
                  message: 'Copiar logs',
                  child: IconButton(
                    onPressed: logs.isEmpty ? null : onCopy,
                    icon: const Icon(Icons.copy_all_rounded),
                  ),
                ),
                Tooltip(
                  message: 'Limpiar logs',
                  child: IconButton(
                    onPressed: logs.isEmpty ? null : onClear,
                    icon: const Icon(Icons.clear_all_rounded),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Container(
              margin: const EdgeInsets.fromLTRB(14, 0, 14, 14),
              padding: const EdgeInsets.all(14),
              decoration: BoxDecoration(
                color: Colors.black.withValues(alpha: 0.36),
                borderRadius: BorderRadius.circular(8),
                border: Border.all(color: Colors.white.withValues(alpha: 0.08)),
              ),
              child: logs.isEmpty
                  ? Center(
                      child: Text(
                        'Esperando una accion...',
                        style: TextStyle(
                          color: Colors.white.withValues(alpha: 0.42),
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    )
                  : Scrollbar(
                      controller: controller,
                      thumbVisibility: true,
                      child: ListView.builder(
                        controller: controller,
                        itemCount: logs.length,
                        itemBuilder: (context, index) {
                          final log = logs[index];
                          final isError =
                              log.contains('ERROR') ||
                              log.contains('no se') ||
                              log.contains('no esta');
                          final isOk =
                              log.contains('OK') ||
                              log.contains('Configuracion') ||
                              log.contains('descargado');
                          return Padding(
                            padding: const EdgeInsets.only(
                              right: 10,
                              bottom: 8,
                            ),
                            child: Text(
                              log,
                              style: TextStyle(
                                fontFamily: 'monospace',
                                fontSize: 12,
                                height: 1.35,
                                color: isError
                                    ? Colors.redAccent.shade100
                                    : isOk
                                    ? _PostInstallScreenState._teal
                                    : Colors.white.withValues(alpha: 0.72),
                              ),
                            ),
                          );
                        },
                      ),
                    ),
            ),
          ),
        ],
      ),
    );
  }
}
