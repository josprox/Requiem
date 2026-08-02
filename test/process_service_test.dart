import 'dart:io';

import 'package:flutter_test/flutter_test.dart';
import 'package:requiem_tools/services/process_service.dart';

void main() {
  test(
    'runLive forwards stdout and stderr before returning the result',
    () async {
      final stdoutLines = <String>[];
      final stderrLines = <String>[];
      final service = ProcessService();

      final result = Platform.isWindows
          ? await service.runLive(
              'powershell.exe',
              [
                '-NoProfile',
                '-NonInteractive',
                '-Command',
                "Write-Output 'live-out'; [Console]::Error.WriteLine('live-err')",
              ],
              onStdout: stdoutLines.add,
              onStderr: stderrLines.add,
            )
          : await service.runLive(
              'sh',
              ['-c', "printf 'live-out\\n'; printf 'live-err\\n' >&2"],
              onStdout: stdoutLines.add,
              onStderr: stderrLines.add,
            );

      expect(result.success, isTrue);
      expect(stdoutLines, contains('live-out'));
      expect(stderrLines, contains('live-err'));
      expect(result.stdout, contains('live-out'));
      expect(result.stderr, contains('live-err'));
    },
  );
}
