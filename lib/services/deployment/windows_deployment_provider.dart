import 'dart:async';
import 'dart:io';
import 'package:flutter/foundation.dart';
import '../deployment_service.dart';
import '../process_service.dart';
import 'deployment_provider.dart';

class WindowsDeploymentProvider implements DeploymentProvider {
  final ProcessService _processService;
  WindowsDeploymentProvider(this._processService);

  @override
  Stream<DeploymentProgress> applyImage({
    required String imagePath,
    required String applyDir,
    String? targetDevice,
    int index = 1,
    String? swmPattern,
  }) async* {
    if (!File(imagePath).existsSync()) {
      yield DeploymentProgress(
        -1,
        'ERROR: Image file not found: $imagePath',
        isError: true,
      );
      return;
    }

    List<String> args = [
      '/Apply-Image',
      '/ImageFile:$imagePath',
      '/Index:$index',
      '/ApplyDir:$applyDir',
    ];

    if (swmPattern != null) {
      args.add('/SWMFile:$swmPattern');
    }

    final progressRegex = RegExp(r'(\d+\.\d+)%');
    double lastPercent = 0;

    final stream = _processService.runStreaming('dism.exe', args);

    await for (final line in stream) {
      final trimmed = line.trim();
      if (trimmed.isEmpty) continue;

      final match = progressRegex.firstMatch(trimmed);
      if (match != null) {
        final pct = double.tryParse(match.group(1) ?? '0') ?? 0.0;
        if (pct > lastPercent) {
          lastPercent = pct;
          yield DeploymentProgress(
            pct / 100.0,
            'Applying image: ${pct.toStringAsFixed(1)}%',
          );
        }
      } else {
        final isErr = trimmed.contains('Error') || trimmed.contains('error');
        yield DeploymentProgress(-1, trimmed, isError: isErr);
      }
    }
  }

  @override
  Future<BootloaderResult> configureBootloader(
    String windowsDir,
    String efiDir, {
    required bool uefi,
    required bool bios,
    String? espDevice,
    String? windowsDevice,
  }) async {
    String firmware;
    if (uefi && bios) {
      firmware = 'ALL';
    } else if (bios) {
      firmware = 'BIOS';
    } else {
      firmware = 'UEFI';
    }

    final result = await _processService.run('bcdboot.exe', [
      windowsDir,
      '/s',
      efiDir,
      '/f',
      firmware,
    ]);

    if (!result.success) {
      debugPrint('BCDBoot failed: ${result.stdout} ${result.stderr}');
    }

    return BootloaderResult(result.success, [
      'bcdboot.exe ${result.success ? 'completed' : 'failed'}',
      if (result.stdout.trim().isNotEmpty) 'stdout: ${result.stdout.trim()}',
      if (result.stderr.trim().isNotEmpty) 'stderr: ${result.stderr.trim()}',
    ]);
  }

  @override
  Stream<DeploymentProgress> cloneDisk({
    required String sourceDrive,
    required String tempImagePath,
    required String targetDrive,
  }) async* {
    yield const DeploymentProgress(
      -1,
      'Step 1/2: Capturing source disk to WIM...',
    );

    final captureStream = _processService.runStreaming('dism.exe', [
      '/Capture-Image',
      '/ImageFile:$tempImagePath',
      '/CaptureDir:$sourceDrive\\',
      '/Name:CloneImage',
      '/Compress:fast',
    ]);

    final progressRegex = RegExp(r'(\d+\.\d+)%');
    await for (final line in captureStream) {
      final trimmed = line.trim();
      if (trimmed.isEmpty) continue;
      final match = progressRegex.firstMatch(trimmed);
      if (match != null) {
        final pct = double.tryParse(match.group(1) ?? '0') ?? 0.0;
        yield DeploymentProgress(
          pct / 200.0,
          'Capturing: ${pct.toStringAsFixed(1)}%',
        );
      }
    }

    yield const DeploymentProgress(
      0.5,
      'Step 2/2: Applying image to target disk...',
    );
    yield* applyImage(imagePath: tempImagePath, applyDir: '$targetDrive\\');
  }
}
