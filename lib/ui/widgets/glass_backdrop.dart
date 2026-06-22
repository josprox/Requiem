import 'dart:io';
import 'package:flutter/material.dart';
import 'dart:ui';

class GlassBackdrop extends StatelessWidget {
  final Widget child;
  const GlassBackdrop({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    final scheme = Theme.of(context).colorScheme;

    return Stack(
      children: [
        // Dark Obsidian Base Background
        Positioned.fill(
          child: Container(
            color: const Color(0xFF090808),
          ),
        ),

        // Glowing Orbs (WinUI 3 Mica / macOS Sonoma Style)
        Positioned(
          top: -100,
          left: -100,
          width: 500,
          height: 500,
          child: Container(
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              gradient: RadialGradient(
                colors: [
                  scheme.primary.withValues(alpha: 0.25),
                  scheme.primary.withValues(alpha: 0.0),
                ],
              ),
            ),
          ),
        ),
        Positioned(
          bottom: -150,
          right: -50,
          width: 600,
          height: 600,
          child: Container(
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              gradient: RadialGradient(
                colors: [
                  scheme.secondary.withValues(alpha: 0.15),
                  scheme.secondary.withValues(alpha: 0.0),
                ],
              ),
            ),
          ),
        ),
        Positioned(
          top: 200,
          right: 200,
          width: 400,
          height: 400,
          child: Container(
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              gradient: RadialGradient(
                colors: [
                  scheme.tertiary.withValues(alpha: 0.12),
                  scheme.tertiary.withValues(alpha: 0.0),
                ],
              ),
            ),
          ),
        ),

        // Backdrop Filter for Soft Acrylic Blur
        Positioned.fill(
          child: BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 70.0, sigmaY: 70.0),
            child: Container(
              color: Colors.transparent,
            ),
          ),
        ),

        // Thin premium layout grid overlay (subtle)
        Positioned.fill(
          child: Opacity(
            opacity: 0.015,
            child: CustomPaint(
              painter: _GridPainter(),
            ),
          ),
        ),

        // Content
        Positioned.fill(
          child: child,
        ),
      ],
    );
  }
}

class _GridPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = Colors.white
      ..strokeWidth = 1.0;
    const step = 40.0;

    for (double y = 0; y < size.height; y += step) {
      canvas.drawLine(Offset(0, y), Offset(size.width, y), paint);
    }
    for (double x = 0; x < size.width; x += step) {
      canvas.drawLine(Offset(x, 0), Offset(x, size.height), paint);
    }
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}

class MacTrafficLights extends StatelessWidget {
  final VoidCallback? onClose;
  final VoidCallback? onMinimize;
  final VoidCallback? onMaximize;

  const MacTrafficLights({
    super.key,
    this.onClose,
    this.onMinimize,
    this.onMaximize,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        _buildLight(const Color(0xFFFF5F56), onClose),
        const SizedBox(width: 8),
        _buildLight(const Color(0xFFFFBD2E), onMinimize),
        const SizedBox(width: 8),
        _buildLight(const Color(0xFF27C93F), onMaximize),
      ],
    );
  }

  Widget _buildLight(Color color, VoidCallback? onTap) {
    return MouseRegion(
      cursor: SystemMouseCursors.click,
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          width: 12,
          height: 12,
          decoration: BoxDecoration(
            color: color,
            shape: BoxShape.circle,
            boxShadow: [
              BoxShadow(
                color: color.withValues(alpha: 0.3),
                blurRadius: 4,
                spreadRadius: 0.5,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
