import 'dart:io';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import '../services/disk_service.dart';
import '../ui/widgets/custom_file_explorer.dart';

class WimScannerService {
  final DiskService _diskService;
  WimScannerService(this._diskService);

  Future<String?> autoDetectInstallWim(void Function(String) logCallback) async {
    logCallback('Scanning drives for Windows installation image...');

    if (Platform.isLinux) {
      final searchPaths = [
        '/run/live/medium/sources/install.wim',
        '/run/live/medium/sources/install.swm',
        '/cdrom/sources/install.wim',
        '/cdrom/sources/install.swm',
        '/run/live/medium/install.wim',
        '/mnt/install.wim',
      ];

      for (final path in searchPaths) {
        final f = File(path);
        if (f.existsSync()) {
          logCallback('  ✓ Found install image at $path (${_fileSizeMb(f)} MB)');
          return f.path;
        }
      }
    } else {
      const driveLetters = [
        'D', 'E', 'F', 'G', 'H', 'I', 'J', 'K', 'L', 'M', 'N', 'O', 'P'
      ];

      for (final letter in driveLetters) {
        final wim = File('$letter:\\sources\\install.wim');
        if (wim.existsSync()) {
          logCallback('  ✓ Found install.wim on drive $letter: (${_fileSizeMb(wim)} MB)');
          return wim.path;
        }
        final swm = File('$letter:\\sources\\install.swm');
        if (swm.existsSync()) {
          logCallback('  ✓ Found split WIM (SWM) on drive $letter:');
          return swm.path;
        }
      }
    }

    logCallback('  ⚠ install.wim not found. Please specify or mount image manually.');
    return null;
  }

  Future<String?> pickWimFile(
    void Function(String) logCallback, [
    BuildContext? context,
  ]) async {
    if (Platform.isLinux) {
      logCallback('Mounting external USB drives to /media/usb-*...');
      await _diskService.mountExternalDrivesLinux();
    }

    logCallback('Opening file explorer to select Windows image...');
    try {
      String? path;
      if (context != null && context.mounted) {
        path = await showDialog<String>(
          context: context,
          builder: (context) => const CustomFileExplorer(),
        );
      } else {
        final result = await FilePicker.platform.pickFiles(
          type: FileType.custom,
          allowedExtensions: ['wim', 'swm'],
          dialogTitle: 'Select Windows Installation WIM or SWM Image',
        );
        if (result != null && result.files.single.path != null) {
          path = result.files.single.path!;
        }
      }

      if (path != null) {
        final file = File(path);
        logCallback('  ✓ Selected image: $path (${_fileSizeMb(file)} MB)');
        return path;
      } else {
        logCallback('  Image selection canceled.');
      }
    } catch (e) {
      logCallback('ERROR selecting image: $e');
    }
    return null;
  }

  String _fileSizeMb(File f) =>
      (f.lengthSync() / 1024 / 1024).toStringAsFixed(0);
}
