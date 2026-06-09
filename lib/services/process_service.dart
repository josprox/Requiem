import 'dart:async';
import 'dart:convert';
import 'dart:io';
import 'package:flutter/foundation.dart';

/// Result of a completed process execution.
class ProcessResult {
  final int exitCode;
  final String stdout;
  final String stderr;

  const ProcessResult(this.exitCode, this.stdout, this.stderr);

  bool get success => exitCode == 0;

  @override
  String toString() => 'ProcessResult(exit=$exitCode, stdout=$stdout, stderr=$stderr)';
}

class ProcessService {
  /// Executes a command and streams stdout line-by-line.
  Stream<String> runStreaming(
    String executable,
    List<String> arguments, {
    String? workingDirectory,
  }) async* {
    final process = await Process.start(
      executable,
      arguments,
      workingDirectory: workingDirectory,
      runInShell: true,
    );

    // Stream stdout and stderr interleaved
    final stdoutStream = process.stdout
        .transform(systemEncoding.decoder)
        .transform(const LineSplitter());

    final stderrStream = process.stderr
        .transform(systemEncoding.decoder)
        .transform(const LineSplitter());

    // Merge both streams
    final controller = StreamController<String>();
    var pending = 2;

    void onDone() {
      pending--;
      if (pending == 0) controller.close();
    }

    stdoutStream.listen(
      controller.add,
      onError: controller.addError,
      onDone: onDone,
    );
    stderrStream.listen(
      (line) => controller.add('[ERR] $line'),
      onError: controller.addError,
      onDone: onDone,
    );

    yield* controller.stream;
  }

  /// Executes a command, waits for completion, and returns full output.
  Future<ProcessResult> run(
    String executable,
    List<String> arguments, {
    String? workingDirectory,
    Duration timeout = const Duration(minutes: 30),
  }) async {
    try {
      final process = await Process.run(
        executable,
        arguments,
        workingDirectory: workingDirectory,
        runInShell: true,
        stdoutEncoding: const SystemEncoding(),
        stderrEncoding: const SystemEncoding(),
      ).timeout(timeout, onTimeout: () {
        throw TimeoutException(
          'Command timed out after ${timeout.inMinutes}m: $executable ${arguments.join(' ')}',
        );
      });

      return ProcessResult(
        process.exitCode,
        process.stdout.toString(),
        process.stderr.toString(),
      );
    } on TimeoutException {
      rethrow;
    } catch (e) {
      debugPrint('ProcessService.run error for "$executable": $e');
      return ProcessResult(-1, '', e.toString());
    }
  }

  /// Runs a PowerShell command and returns structured output.
  Future<ProcessResult> runPowerShell(
    String script, {
    String? workingDirectory,
  }) async {
    return run(
      'powershell.exe',
      ['-NoProfile', '-NonInteractive', '-Command', script],
      workingDirectory: workingDirectory,
    );
  }
}
