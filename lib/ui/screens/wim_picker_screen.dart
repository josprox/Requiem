import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:window_manager/window_manager.dart';
import '../../services/main_controller.dart';
import '../../services/bridge_discovery_service.dart';
import '../../services/wifi_network_service.dart';
import 'disk_selection_screen.dart';
import '../widgets/glass_backdrop.dart';

class WimPickerScreen extends StatefulWidget {
  const WimPickerScreen({super.key});

  @override
  State<WimPickerScreen> createState() => _WimPickerScreenState();
}

class _WimPickerScreenState extends State<WimPickerScreen>
    with SingleTickerProviderStateMixin {
  late AnimationController _ctrl;
  late Animation<double> _fade;
  late Animation<Offset> _slide;
  bool _discoveringBridge = false;
  bool _connectingWifi = false;

  @override
  void initState() {
    super.initState();
    _ctrl = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 900),
    )..forward();
    _fade = CurvedAnimation(parent: _ctrl, curve: Curves.easeIn);
    _slide = Tween<Offset>(
      begin: const Offset(0, 0.04),
      end: Offset.zero,
    ).animate(CurvedAnimation(parent: _ctrl, curve: Curves.easeOutCubic));

    // Auto-scan for a WIM when the screen loads
    WidgetsBinding.instance.addPostFrameCallback((_) {
      context.read<MainController>().autoDetectInstallWim();
    });
  }

  @override
  void dispose() {
    _ctrl.dispose();
    super.dispose();
  }

  void _proceed(BuildContext context, MainController ctrl) {
    Navigator.of(
      context,
    ).push(MaterialPageRoute(builder: (_) => const DiskSelectionScreen()));
  }

  Future<void> _discoverBridge(MainController controller) async {
    if (_discoveringBridge) return;
    setState(() => _discoveringBridge = true);
    try {
      controller.addLog(
        'Searching for Requiem bridges on the local IPv4 network...',
      );
      final servers = await BridgeDiscoveryService().discover();
      if (!mounted) return;
      if (servers.isEmpty) {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            content: Text(
              'No se encontró ningún puente. Pruebe con la IP manual.',
            ),
          ),
        );
        return;
      }
      controller.useBridge(servers.first);
    } catch (error) {
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('No se pudo buscar el puente: $error')),
        );
      }
    } finally {
      if (mounted) setState(() => _discoveringBridge = false);
    }
  }

  Future<void> _connectManualBridge(MainController controller) async {
    final textController = TextEditingController();
    final address = await showDialog<String>(
      context: context,
      builder: (dialogContext) => AlertDialog(
        title: const Text('IP del puente Requiem'),
        content: TextField(
          controller: textController,
          autofocus: true,
          keyboardType: TextInputType.number,
          decoration: const InputDecoration(
            hintText: '192.168.1.20',
            prefixIcon: Icon(Icons.lan_rounded),
          ),
          onSubmitted: (value) => Navigator.pop(dialogContext, value.trim()),
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(dialogContext),
            child: const Text('CANCELAR'),
          ),
          FilledButton(
            onPressed: () =>
                Navigator.pop(dialogContext, textController.text.trim()),
            child: const Text('CONECTAR'),
          ),
        ],
      ),
    );
    textController.dispose();
    if (address == null || address.isEmpty || !mounted) return;
    setState(() => _discoveringBridge = true);
    try {
      final announcement = await BridgeDiscoveryService().inspect(address);
      controller.useBridge(announcement);
    } catch (error) {
      if (mounted) {
        ScaffoldMessenger.of(
          context,
        ).showSnackBar(SnackBar(content: Text('No se pudo conectar: $error')));
      }
    } finally {
      if (mounted) setState(() => _discoveringBridge = false);
    }
  }

  Future<void> _connectWifi(MainController controller) async {
    if (_connectingWifi) return;
    setState(() => _connectingWifi = true);
    final service = WifiNetworkService();
    try {
      controller.addLog('Scanning available Wi-Fi networks...');
      final networks = await service.scan();
      if (!mounted) return;
      if (networks.isEmpty) {
        throw StateError('No se encontraron redes Wi-Fi disponibles.');
      }
      final network = await showDialog<WifiNetwork>(
        context: context,
        builder: (dialogContext) => SimpleDialog(
          title: const Text('Conectar el instalador a Wi-Fi'),
          children: [
            for (final item in networks.take(12))
              SimpleDialogOption(
                onPressed: () => Navigator.pop(dialogContext, item),
                child: ListTile(
                  contentPadding: EdgeInsets.zero,
                  leading: Icon(
                    item.requiresPassword
                        ? Icons.wifi_lock_rounded
                        : Icons.wifi_rounded,
                  ),
                  title: Text(item.ssid),
                  subtitle: Text('${item.signal}% · ${item.security}'),
                ),
              ),
          ],
        ),
      );
      if (network == null || !mounted) return;

      String? password;
      if (network.requiresPassword) {
        final passwordController = TextEditingController();
        password = await showDialog<String>(
          context: context,
          builder: (dialogContext) => AlertDialog(
            title: Text(network.ssid),
            content: TextField(
              controller: passwordController,
              autofocus: true,
              obscureText: true,
              decoration: const InputDecoration(
                labelText: 'Contraseña Wi-Fi',
                prefixIcon: Icon(Icons.password_rounded),
              ),
              onSubmitted: (value) => Navigator.pop(dialogContext, value),
            ),
            actions: [
              TextButton(
                onPressed: () => Navigator.pop(dialogContext),
                child: const Text('CANCELAR'),
              ),
              FilledButton(
                onPressed: () =>
                    Navigator.pop(dialogContext, passwordController.text),
                child: const Text('CONECTAR'),
              ),
            ],
          ),
        );
        passwordController.dispose();
        if (password == null) return;
      }
      final result = await service.connect(network, password: password);
      controller.addLog('Wi-Fi connected to ${network.ssid}. $result');
      if (mounted) {
        ScaffoldMessenger.of(
          context,
        ).showSnackBar(SnackBar(content: Text('Conectado a ${network.ssid}.')));
      }
    } catch (error) {
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('No se pudo conectar a Wi-Fi: $error')),
        );
      }
    } finally {
      if (mounted) setState(() => _connectingWifi = false);
    }
  }

  @override
  Widget build(BuildContext context) {
    final ctrl = context.watch<MainController>();
    final scheme = Theme.of(context).colorScheme;

    final found = ctrl.detectedWimPath != null;
    final searching = ctrl.isSearchingWim;

    return Scaffold(
      body: GlassBackdrop(
        child: Stack(
          children: [
            // Top Bar with macOS Traffic Lights
            Positioned(
              top: 24,
              left: 24,
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

            FadeTransition(
              opacity: _fade,
              child: SlideTransition(
                position: _slide,
                child: Center(
                  child: SizedBox(
                    width: 720,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        // Icon
                        Container(
                          padding: const EdgeInsets.all(24),
                          decoration: BoxDecoration(
                            color: scheme.primary.withValues(alpha: 0.1),
                            borderRadius: BorderRadius.circular(28),
                            boxShadow: [
                              BoxShadow(
                                color: scheme.primary.withValues(alpha: 0.25),
                                blurRadius: 50,
                                spreadRadius: -10,
                              ),
                            ],
                          ),
                          child: Icon(
                            Icons.folder_zip_rounded,
                            size: 64,
                            color: scheme.primary,
                          ),
                        ),

                        const SizedBox(height: 48),

                        Text(
                          'Seleccionar Imagen de Windows',
                          style: Theme.of(context).textTheme.displaySmall
                              ?.copyWith(
                                fontWeight: FontWeight.w900,
                                letterSpacing: -1,
                              ),
                          textAlign: TextAlign.center,
                        ),

                        const SizedBox(height: 16),

                        Text(
                          'Proporcione la imagen de instalación de Windows (install.wim o install.swm)\n'
                          'desde una unidad USB o cualquier medio montado.',
                          style: TextStyle(
                            color: Colors.white.withValues(alpha: 0.55),
                            fontSize: 17,
                            height: 1.7,
                            fontWeight: FontWeight.w300,
                          ),
                          textAlign: TextAlign.center,
                        ),

                        const SizedBox(height: 48),

                        // Status card
                        AnimatedContainer(
                          duration: const Duration(milliseconds: 300),
                          padding: const EdgeInsets.all(20),
                          decoration: BoxDecoration(
                            color: searching
                                ? scheme.surfaceContainerHighest
                                : found
                                ? Colors.green.withValues(alpha: 0.10)
                                : scheme.errorContainer.withValues(alpha: 0.25),
                            borderRadius: BorderRadius.circular(20),
                            border: Border.all(
                              color: searching
                                  ? Colors.white.withValues(alpha: 0.10)
                                  : found
                                  ? Colors.greenAccent.withValues(alpha: 0.5)
                                  : scheme.error.withValues(alpha: 0.4),
                              width: 1.5,
                            ),
                          ),
                          child: Row(
                            children: [
                              if (searching)
                                const SizedBox(
                                  width: 24,
                                  height: 24,
                                  child: CircularProgressIndicator(
                                    strokeWidth: 2,
                                  ),
                                )
                              else
                                Icon(
                                  found
                                      ? Icons.check_circle_rounded
                                      : Icons.info_outline_rounded,
                                  color: found
                                      ? Colors.greenAccent
                                      : scheme.error,
                                  size: 28,
                                ),
                              const SizedBox(width: 16),
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      searching
                                          ? 'Buscando imagen…'
                                          : found
                                          ? 'Imagen encontrada'
                                          : 'No se detectó ninguna imagen',
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 15,
                                        color: searching
                                            ? Colors.white70
                                            : found
                                            ? Colors.greenAccent
                                            : scheme.error,
                                      ),
                                    ),
                                    if (found &&
                                        ctrl.detectedWimPath != null) ...[
                                      const SizedBox(height: 4),
                                      Text(
                                        ctrl.detectedWimPath!,
                                        style: TextStyle(
                                          fontSize: 12,
                                          color: Colors.white.withValues(
                                            alpha: 0.5,
                                          ),
                                        ),
                                        overflow: TextOverflow.ellipsis,
                                      ),
                                    ] else if (!searching) ...[
                                      const SizedBox(height: 4),
                                      Text(
                                        'Use "Buscar" para localizar su archivo WIM manualmente.',
                                        style: TextStyle(
                                          fontSize: 12,
                                          color: Colors.white.withValues(
                                            alpha: 0.45,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),

                        const SizedBox(height: 32),

                        // Action buttons
                        Row(
                          children: [
                            // Browse button
                            Expanded(
                              child: OutlinedButton.icon(
                                onPressed: searching
                                    ? null
                                    : () => ctrl.pickWimFile(context),
                                icon: const Icon(Icons.folder_open_rounded),
                                label: Text(
                                  found ? 'CAMBIAR ARCHIVO' : 'BUSCAR',
                                ),
                                style: OutlinedButton.styleFrom(
                                  padding: const EdgeInsets.symmetric(
                                    vertical: 20,
                                  ),
                                  textStyle: const TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold,
                                  ),
                                  side: BorderSide(
                                    color: found
                                        ? Colors.greenAccent.withValues(
                                            alpha: 0.6,
                                          )
                                        : Colors.white.withValues(alpha: 0.2),
                                    width: 1.5,
                                  ),
                                  foregroundColor: found
                                      ? Colors.greenAccent
                                      : Colors.white70,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(16),
                                  ),
                                ),
                              ),
                            ),

                            const SizedBox(width: 16),

                            // Continue button
                            Expanded(
                              flex: 2,
                              child: FilledButton.icon(
                                onPressed: found
                                    ? () => _proceed(context, ctrl)
                                    : null,
                                icon: const Icon(Icons.arrow_forward_rounded),
                                label: const Text('CONTINUAR'),
                                style: FilledButton.styleFrom(
                                  padding: const EdgeInsets.symmetric(
                                    vertical: 20,
                                  ),
                                  textStyle: const TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                  ),
                                  backgroundColor: scheme.primary,
                                  foregroundColor: Colors.white,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(16),
                                  ),
                                  elevation: 8,
                                  shadowColor: scheme.primary.withValues(
                                    alpha: 0.4,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),

                        const SizedBox(height: 24),

                        // Re-scan hint
                        TextButton.icon(
                          onPressed: searching
                              ? null
                              : () => ctrl.autoDetectInstallWim(force: true),
                          icon: const Icon(Icons.refresh_rounded, size: 16),
                          label: const Text('Escanear unidades de nuevo'),
                          style: TextButton.styleFrom(
                            foregroundColor: Colors.white38,
                          ),
                        ),
                        const SizedBox(height: 6),
                        Text(
                          'O reciba la instalación preparada desde Requiem para Windows',
                          style: TextStyle(
                            color: Colors.white.withValues(alpha: 0.45),
                            fontSize: 12,
                          ),
                        ),
                        const SizedBox(height: 10),
                        Wrap(
                          alignment: WrapAlignment.center,
                          spacing: 12,
                          runSpacing: 8,
                          children: [
                            OutlinedButton.icon(
                              onPressed:
                                  searching ||
                                      _discoveringBridge ||
                                      _connectingWifi
                                  ? null
                                  : () => _connectWifi(ctrl),
                              icon: _connectingWifi
                                  ? const SizedBox(
                                      width: 16,
                                      height: 16,
                                      child: CircularProgressIndicator(
                                        strokeWidth: 2,
                                      ),
                                    )
                                  : const Icon(Icons.wifi_rounded),
                              label: const Text('CONECTAR WI-FI'),
                            ),
                            FilledButton.tonalIcon(
                              onPressed: searching || _discoveringBridge
                                  ? null
                                  : () => _discoverBridge(ctrl),
                              icon: _discoveringBridge
                                  ? const SizedBox(
                                      width: 16,
                                      height: 16,
                                      child: CircularProgressIndicator(
                                        strokeWidth: 2,
                                      ),
                                    )
                                  : const Icon(Icons.wifi_find_rounded),
                              label: const Text('BUSCAR PUENTE'),
                            ),
                            TextButton.icon(
                              onPressed: searching || _discoveringBridge
                                  ? null
                                  : () => _connectManualBridge(ctrl),
                              icon: const Icon(Icons.lan_rounded),
                              label: const Text('USAR IP MANUAL'),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
