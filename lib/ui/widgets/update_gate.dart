import 'dart:io';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../services/update_service.dart';

/// Widget raíz que verifica actualizaciones antes de mostrar el contenido
/// principal. Solo activo en Windows (Modo Tools).
///
/// Si hay una versión más nueva disponible, bloquea la UI y muestra
/// un overlay de actualización obligatoria. El usuario no puede cerrar
/// este diálogo ni continuar usando la aplicación sin actualizar.
class UpdateGate extends StatefulWidget {
  final Widget child;

  const UpdateGate({super.key, required this.child});

  @override
  State<UpdateGate> createState() => _UpdateGateState();
}

class _UpdateGateState extends State<UpdateGate>
    with SingleTickerProviderStateMixin {
  RemoteVersionInfo? _updateInfo;
  bool _checking = true;

  late final AnimationController _animCtrl;
  late final Animation<double> _fadeAnim;
  late final Animation<double> _scaleAnim;

  @override
  void initState() {
    super.initState();

    _animCtrl = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 600),
    );
    _fadeAnim = CurvedAnimation(parent: _animCtrl, curve: Curves.easeOut);
    _scaleAnim = Tween<double>(begin: 0.88, end: 1.0)
        .animate(CurvedAnimation(parent: _animCtrl, curve: Curves.easeOutBack));

    _runCheck();
  }

  Future<void> _runCheck() async {
    final info = await UpdateService.checkForUpdate();
    if (!mounted) return;
    setState(() {
      _updateInfo = info;
      _checking = false;
    });
    if (info != null) {
      _animCtrl.forward();
    }
  }

  @override
  void dispose() {
    _animCtrl.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // Mientras verifica, muestra el contenido normal (comprobación rápida).
    if (_checking) return widget.child;

    // Sin actualización: mostrar la app normalmente.
    if (_updateInfo == null) return widget.child;

    // Hay actualización: bloquear con el overlay.
    return Stack(
      children: [
        // La app debajo, pero no interactuable.
        AbsorbPointer(child: widget.child),

        // Overlay de actualización.
        FadeTransition(
          opacity: _fadeAnim,
          child: _UpdateOverlay(info: _updateInfo!, scale: _scaleAnim),
        ),
      ],
    );
  }
}

// ---------------------------------------------------------------------------
// Overlay visual de actualización obligatoria
// ---------------------------------------------------------------------------

class _UpdateOverlay extends StatelessWidget {
  final RemoteVersionInfo info;
  final Animation<double> scale;

  const _UpdateOverlay({required this.info, required this.scale});

  static const _red = Color(0xFFFF3B30);
  static const _bg = Color(0xFF0D0C0C);

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 20, sigmaY: 20),
        child: Container(
          color: _bg.withValues(alpha: 0.92),
          child: Center(
            child: ScaleTransition(
              scale: scale,
              child: _buildCard(context),
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildCard(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final cardWidth = (size.width * 0.46).clamp(400.0, 580.0);

    return Container(
      width: cardWidth,
      padding: const EdgeInsets.all(36),
      decoration: BoxDecoration(
        color: const Color(0xFF161515),
        borderRadius: BorderRadius.circular(24),
        border: Border.all(color: Colors.white.withValues(alpha: 0.08)),
        boxShadow: [
          BoxShadow(
            color: _red.withValues(alpha: 0.15),
            blurRadius: 60,
            spreadRadius: 4,
          ),
          BoxShadow(
            color: Colors.black.withValues(alpha: 0.6),
            blurRadius: 30,
          ),
        ],
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Ícono + badge
          Row(
            children: [
              Container(
                padding: const EdgeInsets.all(12),
                decoration: BoxDecoration(
                  color: _red.withValues(alpha: 0.12),
                  borderRadius: BorderRadius.circular(14),
                  border: Border.all(color: _red.withValues(alpha: 0.25)),
                ),
                child: const Icon(
                  Icons.system_update_alt_rounded,
                  color: _red,
                  size: 28,
                ),
              ),
              const SizedBox(width: 14),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Actualización requerida',
                    style: GoogleFonts.outfit(
                      fontSize: 11,
                      fontWeight: FontWeight.w600,
                      color: _red,
                      letterSpacing: 1.2,
                    ),
                  ),
                  const SizedBox(height: 2),
                  Text(
                    info.title,
                    style: GoogleFonts.outfit(
                      fontSize: 18,
                      fontWeight: FontWeight.w800,
                      color: Colors.white,
                      letterSpacing: -0.3,
                    ),
                  ),
                ],
              ),
            ],
          ),

          const SizedBox(height: 24),

          // Separador
          Divider(color: Colors.white.withValues(alpha: 0.07), height: 1),
          const SizedBox(height: 20),

          // Descripción
          Text(
            'Para continuar usando Requiem Tools es necesario actualizar a la versión más reciente.',
            style: GoogleFonts.outfit(
              fontSize: 14,
              color: Colors.white.withValues(alpha: 0.65),
              height: 1.6,
            ),
          ),

          const SizedBox(height: 20),

          // Versión disponible
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 10),
            decoration: BoxDecoration(
              color: Colors.white.withValues(alpha: 0.04),
              borderRadius: BorderRadius.circular(12),
              border: Border.all(color: Colors.white.withValues(alpha: 0.07)),
            ),
            child: Row(
              children: [
                const Icon(Icons.new_releases_outlined,
                    size: 16, color: Color(0xFF30D158)),
                const SizedBox(width: 8),
                Text(
                  'Versión disponible:  ',
                  style: GoogleFonts.outfit(
                    fontSize: 13,
                    color: Colors.white.withValues(alpha: 0.45),
                  ),
                ),
                Text(
                  'v${info.version}',
                  style: GoogleFonts.outfit(
                    fontSize: 13,
                    fontWeight: FontWeight.w700,
                    color: const Color(0xFF30D158),
                  ),
                ),
              ],
            ),
          ),

          const SizedBox(height: 28),

          // Botón de descarga
          SizedBox(
            width: double.infinity,
            child: _DownloadButton(
              downloadUrl: info.downloadUrl,
              installMode: info.installMode,
            ),
          ),

          const SizedBox(height: 10),

          // Nota inferior
          Center(
            child: Text(
              'Esta actualización es obligatoria y no puede omitirse.',
              style: GoogleFonts.outfit(
                fontSize: 11,
                color: Colors.white.withValues(alpha: 0.3),
              ),
              textAlign: TextAlign.center,
            ),
          ),
        ],
      ),
    );
  }
}

// ---------------------------------------------------------------------------
// Botón de descarga con estado hover
// ---------------------------------------------------------------------------

class _DownloadButton extends StatefulWidget {
  final String downloadUrl;
  final InstallMode installMode;
  const _DownloadButton({
    required this.downloadUrl,
    required this.installMode,
  });

  @override
  State<_DownloadButton> createState() => _DownloadButtonState();
}

class _DownloadButtonState extends State<_DownloadButton> {
  bool _hovered = false;

  static const _red = Color(0xFFFF3B30);

  void _openDownload() async {
    // Abre la URL del artefacto exacto resuelto por UpdateService.
    await Process.start('explorer', [widget.downloadUrl]);
  }

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) => setState(() => _hovered = true),
      onExit: (_) => setState(() => _hovered = false),
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 180),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: _hovered
                ? [const Color(0xFFFF5E57), _red]
                : [_red, const Color(0xFFCC2920)],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
          borderRadius: BorderRadius.circular(14),
          boxShadow: [
            BoxShadow(
              color: _red.withValues(alpha: _hovered ? 0.45 : 0.25),
              blurRadius: _hovered ? 24 : 12,
              spreadRadius: _hovered ? 2 : 0,
            ),
          ],
        ),
        child: Material(
          color: Colors.transparent,
          child: InkWell(
            borderRadius: BorderRadius.circular(14),
            onTap: _openDownload,
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Icon(Icons.download_rounded,
                      color: Colors.white, size: 20),
                  const SizedBox(width: 10),
                  Text(
                    widget.installMode == InstallMode.installed
                        ? 'Descargar instalador (.exe)'
                        : 'Descargar portable (.zip)',
                    style: GoogleFonts.outfit(
                      fontSize: 15,
                      fontWeight: FontWeight.w700,
                      color: Colors.white,
                      letterSpacing: 0.2,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
