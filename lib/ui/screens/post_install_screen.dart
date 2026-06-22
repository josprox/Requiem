import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:window_manager/window_manager.dart';

import '../../models/post_install_config.dart';
import '../../services/post_install_service.dart';
import '../widgets/glass_backdrop.dart';
import '../widgets/panel.dart';
import '../widgets/section_header.dart';
import '../widgets/console_panel.dart';
import '../widgets/activation_panel.dart';
import '../widgets/office_panel.dart';
import '../widgets/packages_panel.dart';

class PostInstallScreen extends StatefulWidget {
  const PostInstallScreen({super.key});

  @override
  State<PostInstallScreen> createState() => _PostInstallScreenState();
}

class _PostInstallScreenState extends State<PostInstallScreen> {
  static const _bg = Color(0xFF101114);
  static const _surface = Color(0xFF1B1D22);
  static const _red = Color(0xFFE1323C);
  static const _teal = Color(0xFF45D3A5);
  static const _blue = Color(0xFF78A9FF);

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

  void _copyLogs() {
    Clipboard.setData(ClipboardData(text: _logs.join('\n')));
    _log('Logs copiados al portapapeles.');
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
    );

    return Theme(
      data: theme,
      child: Scaffold(
        body: GlassBackdrop(
          child: Column(
            children: [
              // Premium Hybrid macOS / WinUI 3 Window Header Bar
              SizedBox(
                height: 48,
                child: Stack(
                  children: [
                    const Positioned.fill(
                      child: DragToMoveArea(child: SizedBox.expand()),
                    ),
                    Positioned(
                      left: 20,
                      top: 18,
                      child: MacTrafficLights(
                        onClose: () => windowManager.close(),
                        onMinimize: () => windowManager.minimize(),
                        onMaximize: () async {
                          if (await windowManager.isMaximized()) {
                            windowManager.unmaximize();
                          } else {
                            windowManager.maximize();
                          }
                        },
                      ),
                    ),
                    Align(
                      alignment: Alignment.center,
                      child: IgnorePointer(
                        child: Text(
                          'REQUIEM MIGRATION TOOLS',
                          style: TextStyle(
                            fontSize: 11,
                            fontWeight: FontWeight.bold,
                            letterSpacing: 3.0,
                            color: Colors.white.withValues(alpha: 0.5),
                          ),
                        ),
                      ),
                    ),
                  ],
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
                                      child: RequiemConsolePanel(
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
                                      child: RequiemConsolePanel(
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
      ),
    );
  }

  Widget _mainContent() {
    final scheme = Theme.of(context).colorScheme;
    Widget currentPanel;
    Widget currentHeader;

    if (_navIndex == 0) {
      currentHeader = RequiemHeader(
        title: 'Activación de Licencias',
        description: 'Configura el servidor KMS local o remoto para activar Windows y Office.',
        statusPills: [
          RequiemStatusPill(
            icon: Icons.dns_rounded,
            label: _kmsHostController.text.trim().isEmpty ? 'KMS pendiente' : _kmsHostController.text.trim(),
            color: scheme.secondary,
          ),
        ],
        actionButton: SizedBox(
          width: 160,
          child: FilledButton.icon(
            onPressed: _busy ? null : () => _run(_runKms),
            icon: _busy
                ? const SizedBox(
                    width: 16,
                    height: 16,
                    child: CircularProgressIndicator(strokeWidth: 2, color: Colors.white),
                  )
                : const Icon(Icons.play_arrow_rounded),
            label: const Text('ACTIVAR KMS'),
          ),
        ),
      );
      currentPanel = RequiemActivationPanel(
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
      );
    } else if (_navIndex == 1) {
      currentHeader = RequiemHeader(
        title: 'Instalador de Office',
        description: 'Despliega Microsoft Office LTSC o 365 de manera automatizada usando ODT.',
        statusPills: [
          RequiemStatusPill(
            icon: Icons.apps_rounded,
            label: _officeDeployment.name,
            color: scheme.tertiary,
          ),
        ],
        actionButton: SizedBox(
          width: 160,
          child: FilledButton.icon(
            onPressed: _busy ? null : () => _run(_installOfficeWithOdt),
            icon: _busy
                ? const SizedBox(
                    width: 16,
                    height: 16,
                    child: CircularProgressIndicator(strokeWidth: 2, color: Colors.white),
                  )
                : const Icon(Icons.download_rounded),
            label: const Text('INSTALAR OFFICE'),
          ),
        ),
      );
      currentPanel = RequiemOfficePanel(
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
      );
    } else {
      currentHeader = RequiemHeader(
        title: 'Stack de Aplicaciones',
        description: 'Instala y actualiza herramientas de desarrollo esenciales para Windows mediante winget.',
        statusPills: [
          RequiemStatusPill(
            icon: Icons.inventory_2_rounded,
            label: '${_selectedPackages.length} programas',
            color: scheme.secondary,
          ),
        ],
        actionButton: SizedBox(
          width: 160,
          child: FilledButton.icon(
            onPressed: _busy ? null : () => _run(_installPackages),
            icon: _busy
                ? const SizedBox(
                    width: 16,
                    height: 16,
                    child: CircularProgressIndicator(strokeWidth: 2, color: Colors.white),
                  )
                : const Icon(Icons.install_desktop_rounded),
            label: const Text('INSTALAR TODO'),
          ),
        ),
      );
      currentPanel = RequiemPackagesPanel(
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
      );
    }

    return Scrollbar(
      controller: _contentScrollController,
      thumbVisibility: true,
      child: ListView(
        controller: _contentScrollController,
        padding: const EdgeInsets.fromLTRB(30, 26, 30, 32),
        children: [
          currentHeader,
          const SizedBox(height: 18),
          currentPanel,
        ],
      ),
    );
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
    final scheme = Theme.of(context).colorScheme;

    return Container(
      width: 220,
      decoration: BoxDecoration(
        color: Colors.black.withValues(alpha: 0.18),
        border: Border(
          right: BorderSide(
            color: Colors.white.withValues(alpha: 0.06),
            width: 1,
          ),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 24),
          // Sidebar Branding Header
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Row(
              children: [
                Container(
                  width: 32,
                  height: 32,
                  decoration: BoxDecoration(
                    color: scheme.primary,
                    borderRadius: BorderRadius.circular(8),
                    boxShadow: [
                      BoxShadow(
                        color: scheme.primary.withValues(alpha: 0.3),
                        blurRadius: 10,
                        spreadRadius: 1,
                      ),
                    ],
                  ),
                  child: const Icon(
                    Icons.bolt_rounded,
                    color: Colors.white,
                    size: 20,
                  ),
                ),
                const SizedBox(width: 12),
                const Text(
                  'REQUIEM',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w900,
                    letterSpacing: 1.5,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 32),
          // Sidebar Items
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12.0),
              child: Column(
                children: [
                  _buildSidebarItem(
                    index: 0,
                    icon: Icons.verified_user_outlined,
                    selectedIcon: Icons.verified_user_rounded,
                    title: 'Activación KMS',
                    scheme: scheme,
                  ),
                  const SizedBox(height: 8),
                  _buildSidebarItem(
                    index: 1,
                    icon: Icons.apps_outlined,
                    selectedIcon: Icons.apps_rounded,
                    title: 'Instalación Office',
                    scheme: scheme,
                  ),
                  const SizedBox(height: 8),
                  _buildSidebarItem(
                    index: 2,
                    icon: Icons.terminal_outlined,
                    selectedIcon: Icons.terminal_rounded,
                    title: 'Stack Programas',
                    scheme: scheme,
                  ),
                ],
              ),
            ),
          ),
          // Footer
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Row(
              children: [
                Icon(
                  Icons.desktop_windows_rounded,
                  color: Colors.white.withValues(alpha: 0.3),
                  size: 16,
                ),
                const SizedBox(width: 8),
                Text(
                  'Local Tools Mode',
                  style: TextStyle(
                    fontSize: 11,
                    color: Colors.white.withValues(alpha: 0.3),
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildSidebarItem({
    required int index,
    required IconData icon,
    required IconData selectedIcon,
    required String title,
    required ColorScheme scheme,
  }) {
    final isSelected = selectedIndex == index;
    return Material(
      color: Colors.transparent,
      child: InkWell(
        onTap: () => onDestinationSelected(index),
        borderRadius: BorderRadius.circular(10),
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
          decoration: BoxDecoration(
            color: isSelected
                ? scheme.primary.withValues(alpha: 0.12)
                : Colors.transparent,
            borderRadius: BorderRadius.circular(10),
            border: Border.all(
              color: isSelected
                  ? scheme.primary.withValues(alpha: 0.15)
                  : Colors.transparent,
              width: 1,
            ),
          ),
          child: Row(
            children: [
              Icon(
                isSelected ? selectedIcon : icon,
                color: isSelected ? scheme.primary : Colors.white60,
                size: 20,
              ),
              const SizedBox(width: 12),
              Text(
                title,
                style: TextStyle(
                  color: isSelected ? Colors.white : Colors.white60,
                  fontSize: 13,
                  fontWeight: isSelected ? FontWeight.bold : FontWeight.normal,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
