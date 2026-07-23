import 'dart:io';
import 'process_service.dart';

class SystemInfoService {
  final ProcessService _processService = ProcessService();

  /// Obtiene el identificador de la edición de Windows (ej: "Professional", "Core", "Enterprise")
  Future<String?> getWindowsEdition() async {
    if (!Platform.isWindows) return null;

    try {
      final result = await _processService.run('reg', [
        'query',
        r'HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion',
        '/v',
        'EditionID',
      ]);

      if (result.exitCode == 0) {
        final output = result.stdout.toString();
        final match = RegExp(r'EditionID\s+REG_SZ\s+(\w+)').firstMatch(output);
        if (match != null) {
          return match.group(1);
        }
      }
    } catch (e) {
      // Manejo silencioso de error en consulta
    }
    return null;
  }

  /// Obtiene el nombre completo del producto/sistema operativo (ej: "Windows 11 Pro")
  Future<String?> getWindowsProductName() async {
    if (!Platform.isWindows) return null;

    try {
      final result = await _processService.run('reg', [
        'query',
        r'HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion',
        '/v',
        'ProductName',
      ]);

      if (result.exitCode == 0) {
        final output = result.stdout.toString();
        final match = RegExp(r'ProductName\s+REG_SZ\s+(.+)').firstMatch(output);
        if (match != null) {
          return match.group(1)?.trim();
        }
      }
    } catch (e) {
      // Manejo silencioso de error en consulta
    }
    return null;
  }

  Future<int?> getWindowsBuild() async {
    if (!Platform.isWindows) return null;
    final result = await _processService.run('reg', [
      'query',
      r'HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion',
      '/v',
      'CurrentBuildNumber',
    ]);
    if (result.exitCode != 0) return null;
    final match = RegExp(r'CurrentBuildNumber\s+REG_SZ\s+(\d+)').firstMatch(result.stdout.toString());
    return int.tryParse(match?.group(1) ?? '');
  }
}
