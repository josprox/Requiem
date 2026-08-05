import 'dart:convert';
import 'dart:io';
import 'package:flutter/foundation.dart';
import 'package:package_info_plus/package_info_plus.dart';

// ---------------------------------------------------------------------------
// Tipos públicos
// ---------------------------------------------------------------------------

/// Modo de distribución detectado en tiempo de ejecución.
enum InstallMode {
  /// Instalado con Inno Setup (clave de desinstalación presente en el registro
  /// o ejecutable ubicado bajo Program Files).
  installed,

  /// Bundle portable extraído sin instalador.
  portable,
}

/// Información de la versión remota devuelta por la API de joss.red.
class RemoteVersionInfo {
  final String version;
  final String title;
  final String description;

  /// URL de descarga resuelta al artefacto exacto según el [installMode].
  final String downloadUrl;

  /// Modo de distribución detectado de la instalación actual.
  final InstallMode installMode;

  const RemoteVersionInfo({
    required this.version,
    required this.title,
    required this.description,
    required this.downloadUrl,
    required this.installMode,
  });
}

// ---------------------------------------------------------------------------
// Servicio principal
// ---------------------------------------------------------------------------

/// Servicio estático para verificar actualizaciones de Requiem Tools.
///
/// Detecta automáticamente si la app corre como **instalada** (Inno Setup) o
/// como **portable** y construye la URL de descarga al artefacto correcto:
///
/// | Modo      | Artefacto descargado                           |
/// |-----------|------------------------------------------------|
/// | installed | `Requiem-Tools-Setup-v{VERSION}.exe`           |
/// | portable  | `Requiem-Tools-Portable-v{VERSION}.zip`        |
///
/// Los nombres siguen exactamente el convenio del workflow
/// `.github/workflows/distribution.yml`.
class UpdateService {
  static const String _apiUrl = 'https://joss.red/api/version/requiem';

  // -------------------------------------------------------------------------
  // API pública
  // -------------------------------------------------------------------------

  /// Devuelve [RemoteVersionInfo] si hay una versión más nueva disponible,
  /// o [null] si ya está al día o si ocurre cualquier error de red/parseo.
  ///
  /// Solo activo en Windows (Modo Tools). En Linux Live siempre devuelve null.
  static Future<RemoteVersionInfo?> checkForUpdate() async {
    if (!Platform.isWindows) return null;

    try {
      // 1. Versión actual desde el binario (sincronizada con pubspec.yaml).
      final packageInfo = await PackageInfo.fromPlatform();
      final currentVersion = packageInfo.version; // ej. "1.0.3"

      // 2. Consultar la API.
      final client = HttpClient()
        ..connectionTimeout = const Duration(seconds: 8);

      final request = await client.getUrl(Uri.parse(_apiUrl));
      request.headers.set(HttpHeaders.acceptHeader, 'application/json');
      final response = await request.close();

      if (response.statusCode != 200) {
        if (kDebugMode) {
          debugPrint('[UpdateService] HTTP ${response.statusCode}');
        }
        client.close();
        return null;
      }

      final body = await response.transform(utf8.decoder).join();
      client.close();

      final data = json.decode(body) as Map<String, dynamic>;

      // 3. Parsear versión remota.
      final remoteVersion =
          (data['Version'] as String? ?? '').replaceAll('v', '').trim();
      final title = data['Titulo'] as String? ?? 'Nueva actualización';
      final description = data['Descripcion'] as String? ?? '';
      final downloadBase = (data['Descarga'] as String? ??
              'https://github.com/josprox/Requiem/releases/latest/download/')
          .trimRight();
      final base =
          downloadBase.endsWith('/') ? downloadBase : '$downloadBase/';

      if (kDebugMode) {
        debugPrint(
            '[UpdateService] remota=$remoteVersion local=$currentVersion');
      }

      if (!_isVersionGreater(remoteVersion, currentVersion)) return null;

      // 4. Detectar modo de instalación y construir URL exacta del artefacto.
      final mode = await _detectInstallMode();
      final fileName = mode == InstallMode.installed
          ? 'Requiem-Tools-Setup-v$remoteVersion.exe'
          : 'Requiem-Tools-Portable-v$remoteVersion.zip';
      final downloadUrl = '$base$fileName';

      if (kDebugMode) {
        debugPrint('[UpdateService] modo=$mode → $downloadUrl');
      }

      return RemoteVersionInfo(
        version: remoteVersion,
        title: title,
        description: description,
        downloadUrl: downloadUrl,
        installMode: mode,
      );
    } catch (e) {
      if (kDebugMode) debugPrint('[UpdateService] Error: $e');
      return null;
    }
  }

  // -------------------------------------------------------------------------
  // Detección del modo de instalación
  // -------------------------------------------------------------------------

  /// Determina si el binario actual se ejecuta como instalación de Inno Setup
  /// o como bundle portable.
  ///
  /// **Orden de precedencia:**
  /// 1. Clave de desinstalación de Windows en el registro
  ///    (`HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall\{GUID}_is1`).
  ///    Es la señal más fiable: Inno Setup la crea al instalar.
  /// 2. Path del ejecutable bajo una carpeta de Program Files.
  ///    Cubre el caso de que el registro no sea accesible.
  /// 3. Si ninguna coincide → portable.
  static Future<InstallMode> _detectInstallMode() async {
    // -- Método 1: clave del registro --
    if (await _isRegisteredInstall()) return InstallMode.installed;

    // -- Método 2: executable bajo Program Files --
    if (_isUnderProgramFiles()) return InstallMode.installed;

    return InstallMode.portable;
  }

  /// Consulta el registro de Windows buscando la clave que Inno Setup crea
  /// durante la instalación.
  ///
  /// Se busca en ambas ramas: HKLM (instalación de sistema) y HKCU (usuario).
  static Future<bool> _isRegisteredInstall() async {
    // Clave que Inno Setup registra con el AppId del .iss
    const uninstallSubkey =
        r'SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall'
        r'\{81254124-4499-4BE5-AF47-5AE0E978899B}_is1';

    // Probar HKLM y HKCU (instalación de admin vs usuario)
    for (final hive in ['HKLM', 'HKCU']) {
      try {
        final result = await Process.run(
          'reg',
          ['query', '$hive\\$uninstallSubkey', '/ve'],
          runInShell: true,
        );
        if (result.exitCode == 0) {
          if (kDebugMode) {
            debugPrint('[UpdateService] Clave Inno encontrada en $hive');
          }
          return true;
        }
      } catch (_) {
        // reg.exe no disponible o acceso denegado → continuar
      }
    }
    return false;
  }

  /// Comprueba si el ejecutable actual se encuentra bajo una carpeta
  /// de Program Files típica de Windows.
  static bool _isUnderProgramFiles() {
    final exe = Platform.resolvedExecutable.toLowerCase();

    // Variables de entorno que apuntan a Program Files
    final pfDirs = [
      Platform.environment['ProgramFiles'],
      Platform.environment['ProgramFiles(x86)'],
      Platform.environment['ProgramW6432'],
    ]
        .whereType<String>()
        .map((p) => p.toLowerCase().replaceAll('\\', '/'))
        .toList();

    final exeNorm = exe.replaceAll('\\', '/');
    final isUnder = pfDirs.any((pf) => exeNorm.startsWith(pf));

    if (kDebugMode) {
      debugPrint('[UpdateService] exe=$exeNorm underPF=$isUnder');
    }
    return isUnder;
  }

  // -------------------------------------------------------------------------
  // Comparación semántica de versiones
  // -------------------------------------------------------------------------

  /// Devuelve [true] si [latest] es semánticamente mayor que [current].
  static bool _isVersionGreater(String latest, String current) {
    List<int> parse(String v) => v
        .replaceAll(RegExp(r'[^0-9.]'), '')
        .split('.')
        .map((p) => int.tryParse(p) ?? 0)
        .toList();

    final lParts = parse(latest);
    final cParts = parse(current);

    final len = lParts.length > cParts.length ? lParts.length : cParts.length;
    for (int i = 0; i < len; i++) {
      final l = i < lParts.length ? lParts[i] : 0;
      final c = i < cParts.length ? cParts[i] : 0;
      if (l > c) return true;
      if (l < c) return false;
    }
    return false;
  }
}
