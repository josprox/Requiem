import 'dart:io';
import 'package:flutter/material.dart';
import 'disk_selection_screen.dart';
import 'wim_picker_screen.dart';

class LandingScreen extends StatefulWidget {
  const LandingScreen({super.key});

  @override
  State<LandingScreen> createState() => _LandingScreenState();
}

class _LandingScreenState extends State<LandingScreen>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _fadeAnimation;
  late Animation<Offset> _slideAnimation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 1500),
    )..forward();

    _fadeAnimation = CurvedAnimation(parent: _controller, curve: Curves.easeIn);
    _slideAnimation = Tween<Offset>(
      begin: const Offset(0, 0.05),
      end: Offset.zero,
    ).animate(CurvedAnimation(parent: _controller, curve: Curves.easeOutCubic));
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final scheme = Theme.of(context).colorScheme;

    return Scaffold(
      body: Stack(
        children: [
          // Premium Background Gradient
          Positioned.fill(
            child: Container(
              decoration: BoxDecoration(
                gradient: RadialGradient(
                  center: const Alignment(-0.8, -0.6),
                  radius: 1.5,
                  colors: [
                    scheme.primary.withValues(alpha: 0.15),
                    scheme.surface,
                  ],
                  stops: const [0.0, 0.8],
                ),
              ),
            ),
          ),

          // Subtle local texture effect. Keep the live ISO independent from network access.
          Positioned.fill(
            child: Opacity(
              opacity: 0.03,
              child: CustomPaint(painter: _CarbonFiberPainter()),
            ),
          ),

          FadeTransition(
            opacity: _fadeAnimation,
            child: SlideTransition(
              position: _slideAnimation,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 80.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Minimalist Branding with Glow
                    Container(
                      padding: const EdgeInsets.all(20),
                      decoration: BoxDecoration(
                        color: scheme.primary.withValues(alpha: 0.1),
                        borderRadius: BorderRadius.circular(24),
                        boxShadow: [
                          BoxShadow(
                            color: scheme.primary.withValues(alpha: 0.2),
                            blurRadius: 40,
                            spreadRadius: -10,
                          ),
                        ],
                      ),
                      child: Icon(
                        Icons.rocket_launch_rounded,
                        size: 56,
                        color: scheme.primary,
                      ),
                    ),
                    const SizedBox(height: 64),

                    Text(
                      'JOSS RED',
                      style: Theme.of(context).textTheme.displayLarge?.copyWith(
                        color: Colors.white,
                        fontSize: 100,
                        fontWeight: FontWeight.w900,
                        letterSpacing: -2,
                      ),
                    ),
                    Row(
                      children: [
                        Container(height: 2, width: 40, color: scheme.primary),
                        const SizedBox(width: 16),
                        Text(
                          'DESPLIEGUE DE SO DE PRÓXIMA GENERACIÓN',
                          style: Theme.of(context).textTheme.headlineSmall
                              ?.copyWith(
                                color: scheme.primary,
                                letterSpacing: 10,
                                fontWeight: FontWeight.w300,
                              ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 32),

                    SizedBox(
                      width: 650,
                      child: Text(
                        'Instalador de Windows de alta precisión para entornos de alto rendimiento. '
                        'Experimente un despliegue rápido con orquestación directa de DISM y optimización automatizada del sistema.',
                        style: TextStyle(
                          color: Colors.white.withValues(alpha: 0.6),
                          fontSize: 20,
                          height: 1.8,
                          fontWeight: FontWeight.w300,
                        ),
                      ),
                    ),

                    const SizedBox(height: 80),

                    Row(
                      children: [
                        FilledButton(
                          onPressed: () {
                            final Widget next = Platform.isLinux
                                ? const WimPickerScreen()
                                : const DiskSelectionScreen();
                            Navigator.of(context).push(
                              MaterialPageRoute(builder: (context) => next),
                            );
                          },
                          style: FilledButton.styleFrom(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 56,
                              vertical: 32,
                            ),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(24),
                            ),
                            backgroundColor: scheme.primary,
                            foregroundColor: Colors.white,
                            elevation: 8,
                            shadowColor: scheme.primary.withValues(alpha: 0.5),
                          ),
                          child: const Text(
                            'EMPEZAR',
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        const SizedBox(width: 32),
                        OutlinedButton(
                          onPressed: () {},
                          style: OutlinedButton.styleFrom(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 56,
                              vertical: 32,
                            ),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(24),
                            ),
                            side: BorderSide(
                              color: Colors.white.withValues(alpha: 0.2),
                              width: 2,
                            ),
                          ),
                          child: const Text(
                            'LOGS DEL SISTEMA',
                            style: TextStyle(
                              fontSize: 20,
                              color: Colors.white70,
                            ),
                          ),
                        ),
                      ],
                    ),

                    const Spacer(),

                    // Footer
                    Padding(
                      padding: const EdgeInsets.only(bottom: 64),
                      child: Row(
                        children: [
                          _buildFooterItem(
                            Icons.verified_user_rounded,
                            'VERSIÓN ESTABLE v1.0.0',
                          ),
                          const SizedBox(width: 48),
                          _buildFooterItem(
                            Icons.security_rounded,
                            'COMPATIBLE CON SECURE BOOT',
                          ),
                          const Spacer(),
                          Text(
                            'DISEÑADO POR JOSS',
                            style: TextStyle(
                              color: Colors.white.withValues(alpha: 0.1),
                              fontWeight: FontWeight.bold,
                              letterSpacing: 4,
                              fontSize: 12,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildFooterItem(IconData icon, String text) {
    return Row(
      children: [
        Icon(icon, size: 16, color: Colors.white.withValues(alpha: 0.2)),
        const SizedBox(width: 8),
        Text(
          text,
          style: TextStyle(
            color: Colors.white.withValues(alpha: 0.2),
            fontWeight: FontWeight.bold,
            letterSpacing: 1.5,
            fontSize: 12,
          ),
        ),
      ],
    );
  }
}

class _CarbonFiberPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final darkPaint = Paint()..color = Colors.black;
    final lightPaint = Paint()..color = Colors.white;
    const cell = 8.0;

    for (double y = 0; y < size.height; y += cell) {
      for (double x = 0; x < size.width; x += cell) {
        final even = ((x / cell).floor() + (y / cell).floor()).isEven;
        canvas.drawRect(
          Rect.fromLTWH(x, y, cell / 2, cell / 2),
          even ? lightPaint : darkPaint,
        );
        canvas.drawRect(
          Rect.fromLTWH(x + cell / 2, y + cell / 2, cell / 2, cell / 2),
          even ? lightPaint : darkPaint,
        );
      }
    }
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}
