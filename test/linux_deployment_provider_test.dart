import 'dart:io';

import 'package:flutter_test/flutter_test.dart';
import 'package:requiem_tools/services/deployment/linux_deployment_provider.dart';
import 'package:requiem_tools/services/process_service.dart';

class _StreamingProcessService extends ProcessService {
  _StreamingProcessService(this.lines);

  final List<String> lines;

  @override
  Stream<String> runStreaming(
    String executable,
    List<String> arguments, {
    String? workingDirectory,
    bool Function(String line)? terminalOutputMatcher,
    Duration terminalOutputGrace = const Duration(seconds: 45),
  }) async* {
    for (final line in lines) {
      yield line;
    }
  }
}

void main() {
  test(
    'maps repeated wimlib phase percentages to monotonic overall progress',
    () async {
      final tempDir = await Directory.systemTemp.createTemp(
        'requiem-wim-test-',
      );
      addTearDown(() => tempDir.delete(recursive: true));
      final image = File('${tempDir.path}${Platform.pathSeparator}install.wim');
      await image.writeAsBytes([0]);

      final provider = LinuxDeploymentProvider(
        _StreamingProcessService([
          'Verifying integrity of install.wim: 100%',
          'Creating files: 100 of 100 (100%) done',
          'Extracting file data: 50 MiB of 100 MiB (50%) done',
          'Applying metadata to files: 100 of 100 (100%) done',
          'Done applying WIM image.',
        ]),
      );

      final progress = await provider
          .applyImage(imagePath: image.path, applyDir: tempDir.path)
          .toList();
      final percentages = progress
          .where((event) => event.percentage >= 0)
          .map((event) => event.percentage)
          .toList();

      expect(percentages, [0.05, 0.10, 0.50, 0.99, 1.0]);
      expect(
        progress.map((event) => event.status),
        contains('Extracting Windows files: 50%'),
      );
      expect(progress.last.isError, isFalse);
    },
  );

  test('does not report WIM completion after a process error', () async {
    final tempDir = await Directory.systemTemp.createTemp('requiem-wim-test-');
    addTearDown(() => tempDir.delete(recursive: true));
    final image = File('${tempDir.path}${Platform.pathSeparator}install.wim');
    await image.writeAsBytes([0]);

    final provider = LinuxDeploymentProvider(
      _StreamingProcessService([
        'Extracting file data: 20 MiB of 100 MiB (20%) done',
        '[ERR] Command exited with code 1: wimlib-imagex apply',
      ]),
    );

    final progress = await provider
        .applyImage(imagePath: image.path, applyDir: tempDir.path)
        .toList();

    expect(progress.any((event) => event.isError), isTrue);
    expect(progress.any((event) => event.percentage == 1.0), isFalse);
  });
}
