import '../services/process_service.dart';

class RegistryService {
  final ProcessService _processService = ProcessService();

  /// Loads an offline registry hive.
  Future<bool> loadHive(String hivePath, String keyName) async {
    final result = await _processService.run('reg.exe', [
      'load',
      'HKLM\\$keyName',
      hivePath,
    ]);
    return result.exitCode == 0;
  }

  /// Unloads an offline registry hive.
  Future<bool> unloadHive(String keyName) async {
    final result = await _processService.run('reg.exe', [
      'unload',
      'HKLM\\$keyName',
    ]);
    return result.exitCode == 0;
  }

  /// Sets a registry value.
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
    const hiveKey = 'OFFLINE_SYSTEM';
    final systemHivePath = '$windowsPath\\System32\\Config\\SYSTEM';

    if (await loadHive(systemHivePath, hiveKey)) {
      // Typically under ControlSet001\Control\Session Manager\Environment
      final success = await setStringValue(hiveKey, 'ControlSet001\\Control\\Session Manager\\Environment', name, value);
      await unloadHive(hiveKey);
      return success;
    }
    return false;
  }

  /// Sets OEM Information and branding.
  Future<void> setOemBranding({
    required String windowsPath,
    required String manufacturer,
    required String model,
    String? logoPath,
    String? wallpaperPath,
  }) async {
    const hiveKey = 'OFFLINE_SOFTWARE';
    final softwareHivePath = '$windowsPath\\System32\\Config\\SOFTWARE';

    if (await loadHive(softwareHivePath, hiveKey)) {
      final oemKey = 'Microsoft\\Windows\\CurrentVersion\\OEMInformation';
      await setStringValue(hiveKey, oemKey, 'Manufacturer', manufacturer);
      await setStringValue(hiveKey, oemKey, 'Model', model);
      
      if (logoPath != null) {
        await setStringValue(hiveKey, oemKey, 'Logo', logoPath);
      }

      // Wallpaper is usually in HKCU, which is harder to load (NTUSER.DAT per user).
      // But we can set a default wallpaper in HKLM if supported or via SetupComplete.cmd.
      
      await unloadHive(hiveKey);
    }
  }
}
