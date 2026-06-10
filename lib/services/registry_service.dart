import 'dart:io';
import 'package:path/path.dart' as p;
import '../services/process_service.dart';

class RegistryService {
  final ProcessService _processService = ProcessService();

  /// Helper to merge a .reg file content into a registry hive file (Linux).
  Future<bool> _mergeRegistryLinux(String hivePath, String prefix, String regContent) async {
    final tempDir = Directory.systemTemp;
    final regFile = File(p.join(tempDir.path, 'reg_${DateTime.now().millisecondsSinceEpoch}.reg'));
    await regFile.writeAsString(regContent);

    try {
      final result = await _processService.run('hivexregedit', [
        '--merge',
        '--prefix', prefix,
        hivePath,
        regFile.path,
      ]);
      return result.exitCode == 0;
    } finally {
      if (regFile.existsSync()) {
        try {
          await regFile.delete();
        } catch (_) {}
      }
    }
  }

  /// Helper to escape string values for Windows .reg files.
  String _escapeRegValue(String val) {
    return val.replaceAll('\\', '\\\\').replaceAll('"', '\\"');
  }

  /// Loads an offline registry hive (Windows only).
  Future<bool> loadHive(String hivePath, String keyName) async {
    final result = await _processService.run('reg.exe', [
      'load',
      'HKLM\\$keyName',
      hivePath,
    ]);
    return result.exitCode == 0;
  }

  /// Unloads an offline registry hive (Windows only).
  Future<bool> unloadHive(String keyName) async {
    final result = await _processService.run('reg.exe', [
      'unload',
      'HKLM\\$keyName',
    ]);
    return result.exitCode == 0;
  }

  /// Sets a registry value (Windows only).
  Future<bool> setStringValue(String hivePrefix, String keyPath, String valueName, String valueData) async {
    final result = await _processService.run('reg.exe', [
      'add',
      'HKLM\\$hivePrefix\\$keyPath',
      '/v',
      valueName,
      '/t',
      'REG_SZ',
      '/d',
      valueData,
      '/f',
    ]);
    return result.exitCode == 0;
  }

  /// Sets an environment variable in the offline system.
  Future<bool> setEnvironmentVariable(String windowsPath, String name, String value) async {
    if (Platform.isLinux) {
      final systemHivePath = p.join(windowsPath, 'System32', 'Config', 'SYSTEM');
      if (!File(systemHivePath).existsSync()) return false;

      final escapedName = _escapeRegValue(name);
      final escapedValue = _escapeRegValue(value);

      final regContent = '''Windows Registry Editor Version 5.00

[HKEY_LOCAL_MACHINE\\SYSTEM\\ControlSet001\\Control\\Session Manager\\Environment]
"$escapedName"="$escapedValue"
''';

      return _mergeRegistryLinux(systemHivePath, 'HKEY_LOCAL_MACHINE\\SYSTEM', regContent);
    } else {
      const hiveKey = 'OFFLINE_SYSTEM';
      final systemHivePath = '$windowsPath\\System32\\Config\\SYSTEM';

      if (await loadHive(systemHivePath, hiveKey)) {
        final success = await setStringValue(hiveKey, 'ControlSet001\\Control\\Session Manager\\Environment', name, value);
        await unloadHive(hiveKey);
        return success;
      }
      return false;
    }
  }

  /// Sets OEM Information and branding.
  Future<void> setOemBranding({
    required String windowsPath,
    required String manufacturer,
    required String model,
    String? logoPath,
    String? wallpaperPath,
  }) async {
    if (Platform.isLinux) {
      final softwareHivePath = p.join(windowsPath, 'System32', 'Config', 'SOFTWARE');
      if (!File(softwareHivePath).existsSync()) return;

      final escapedMfg = _escapeRegValue(manufacturer);
      final escapedModel = _escapeRegValue(model);

      String oemLines = '';
      if (logoPath != null) {
        final escapedLogo = _escapeRegValue(logoPath);
        oemLines += '"Logo"="$escapedLogo"\n';
      }

      final regContent = '''Windows Registry Editor Version 5.00

[HKEY_LOCAL_MACHINE\\SOFTWARE\\Microsoft\\Windows\\CurrentVersion\\OEMInformation]
"Manufacturer"="$escapedMfg"
"Model"="$escapedModel"
$oemLines''';

      await _mergeRegistryLinux(softwareHivePath, 'HKEY_LOCAL_MACHINE\\SOFTWARE', regContent);
    } else {
      const hiveKey = 'OFFLINE_SOFTWARE';
      final softwareHivePath = '$windowsPath\\System32\\Config\\SOFTWARE';

      if (await loadHive(softwareHivePath, hiveKey)) {
        final oemKey = 'Microsoft\\Windows\\CurrentVersion\\OEMInformation';
        await setStringValue(hiveKey, oemKey, 'Manufacturer', manufacturer);
        await setStringValue(hiveKey, oemKey, 'Model', model);
        
        if (logoPath != null) {
          await setStringValue(hiveKey, oemKey, 'Logo', logoPath);
        }
        
        await unloadHive(hiveKey);
      }
    }
  }
}
