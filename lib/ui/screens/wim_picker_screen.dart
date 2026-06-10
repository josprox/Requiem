import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../services/main_controller.dart';
import 'disk_selection_screen.dart';

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

  @override
  void initState() {
    super.initState();
    _ctrl = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 900),
    )..forward();
    _fade = CurvedAnimation(parent: _ctrl, curve: Curves.easeIn);
    _slide = Tween<Offset>(begin: const Offset(0, 0.04), end: Offset.zero)
        .animate(CurvedAnimation(parent: _ctrl, curve: Curves.easeOutCubic));

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
    Navigator.of(context).push(
      MaterialPageRoute(builder: (_) => const DiskSelectionScreen()),
    );
  }

  @override
  Widget build(BuildContext context) {
    final ctrl = context.watch<MainController>();
    final scheme = Theme.of(context).colorScheme;

    final found = ctrl.detectedWimPath != null;
    final searching = ctrl.isSearchingWim;

    return Scaffold(
      body: Stack(children: [
        // Background gradient
        Positioned.fill(
          child: Container(
            decoration: BoxDecoration(
              gradient: RadialGradient(
                center: const Alignment(0.6, -0.5),
                radius: 1.4,
                colors: [
                  scheme.primary.withValues(alpha: 0.12),
                  scheme.surface,
                ],
                stops: const [0.0, 0.75],
              ),
            ),
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
                      style: Theme.of(context)
                          .textTheme
                          .displaySmall
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
                              child: CircularProgressIndicator(strokeWidth: 2),
                            )
                          else
                            Icon(
                              found
                                  ? Icons.check_circle_rounded
                                  : Icons.info_outline_rounded,
                              color: found ? Colors.greenAccent : scheme.error,
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
                                if (found && ctrl.detectedWimPath != null) ...[
                                  const SizedBox(height: 4),
                                  Text(
                                    ctrl.detectedWimPath!,
                                    style: TextStyle(
                                      fontSize: 12,
                                      color: Colors.white.withValues(alpha: 0.5),
                                    ),
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                ] else if (!searching) ...[
                                  const SizedBox(height: 4),
                                  Text(
                                    'Use "Buscar" para localizar su archivo WIM manualmente.',
                                    style: TextStyle(
                                      fontSize: 12,
                                      color: Colors.white.withValues(alpha: 0.45),
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
                            label: Text(found ? 'CAMBIAR ARCHIVO' : 'BUSCAR'),
                            style: OutlinedButton.styleFrom(
                              padding: const EdgeInsets.symmetric(vertical: 20),
                              textStyle: const TextStyle(
                                  fontSize: 15, fontWeight: FontWeight.bold),
                              side: BorderSide(
                                color: found
                                    ? Colors.greenAccent.withValues(alpha: 0.6)
                                    : Colors.white.withValues(alpha: 0.2),
                                width: 1.5,
                              ),
                              foregroundColor:
                                  found ? Colors.greenAccent : Colors.white70,
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
                              padding: const EdgeInsets.symmetric(vertical: 20),
                              textStyle: const TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.bold),
                              backgroundColor: scheme.primary,
                              foregroundColor: Colors.white,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(16),
                              ),
                              elevation: 8,
                              shadowColor: scheme.primary.withValues(alpha: 0.4),
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
                          : () => ctrl.autoDetectInstallWim(),
                      icon: const Icon(Icons.refresh_rounded, size: 16),
                      label: const Text('Escanear unidades de nuevo'),
                      style: TextButton.styleFrom(
                        foregroundColor: Colors.white38,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ]),
    );
  }
}
