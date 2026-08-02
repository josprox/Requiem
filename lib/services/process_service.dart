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
  String toString() =>
      'ProcessResult(exit=$exitCode, stdout=$stdout, stderr=$stderr)';
}

class ProcessService {
  /// Executes a command without imposing a timeout and forwards stdout and
  /// stderr as soon as each complete line is emitted.
  Future<ProcessResult> runLive(
    String executable,
    List<String> arguments, {
    String? workingDirectory,
    void Function(String line)? onStdout,
    void Function(String line)? onStderr,
  }) async {
    try {
      final process = await Process.start(
        executable,
        arguments,
        workingDirectory: workingDirectory,
        runInShell: false,
      );
      final stdoutBuffer = StringBuffer();
      final stderrBuffer = StringBuffer();

      final stdoutDone = process.stdout
          .transform(systemEncoding.decoder)
          .transform(const LineSplitter())
          .forEach((line) {
            stdoutBuffer.writeln(line);
            onStdout?.call(line);
          });
      final stderrDone = process.stderr
          .transform(systemEncoding.decoder)
          .transform(const LineSplitter())
          .forEach((line) {
            stderrBuffer.writeln(line);
            onStderr?.call(line);
          });

      final exitCode = await process.exitCode;
      await Future.wait([stdoutDone, stderrDone]);
      return ProcessResult(
        exitCode,
        stdoutBuffer.toString(),
        stderrBuffer.toString(),
      );
    } catch (error) {
      final message = error.toString();
      onStderr?.call(message);
      return ProcessResult(-1, '', message);
    }
  }

  /// Pipes the producer stdout directly into the consumer stdin while
  /// returning both processes' diagnostic output as a single line stream.
  /// This is used by the Live ISO to apply a network WIM without storing it.
  Stream<String> runPipedStreaming({
    required String producerExecutable,
    required List<String> producerArguments,
    required String consumerExecutable,
    required List<String> consumerArguments,
    String? workingDirectory,
  }) async* {
    final producer = await Process.start(
      producerExecutable,
      producerArguments,
      workingDirectory: workingDirectory,
      runInShell: false,
    );
    final consumer = await Process.start(
      consumerExecutable,
      consumerArguments,
      workingDirectory: workingDirectory,
      runInShell: false,
    );
    final controller = StreamController<String>();

    Future<void> forwardLines(Stream<List<int>> stream) async {
      await for (final line
          in stream
              .transform(systemEncoding.decoder)
              .transform(const LineSplitter())) {
        if (!controller.isClosed) controller.add(line);
      }
    }

    unawaited(() async {
      Object? pipeError;
      try {
        final pipeFuture = producer.stdout.pipe(consumer.stdin).catchError((
          Object error,
        ) {
          pipeError = error;
        });
        final outputFutures = [
          forwardLines(producer.stderr),
          forwardLines(consumer.stdout),
          forwardLines(consumer.stderr),
        ];
        final producerExit = await producer.exitCode;
        await pipeFuture;
        final consumerExit = await consumer.exitCode;
        await Future.wait(outputFutures);
        if (pipeError != null) {
          controller.add('[ERR] Network stream pipe failed: $pipeError');
        }
        if (producerExit != 0) {
          controller.add(
            '[ERR] Producer exited with code $producerExit: '
            '$producerExecutable ${producerArguments.join(' ')}',
          );
        }
        if (consumerExit != 0) {
          controller.add(
            '[ERR] Consumer exited with code $consumerExit: '
            '$consumerExecutable ${consumerArguments.join(' ')}',
          );
        }
      } catch (error, stackTrace) {
        if (!controller.isClosed) controller.addError(error, stackTrace);
        producer.kill();
        consumer.kill();
      } finally {
        await controller.close();
      }
    }());

    yield* controller.stream;
  }

  /// Executes a command and streams stdout line-by-line.
  Stream<String> runStreaming(
    String executable,
    List<String> arguments, {
    String? workingDirectory,
    bool Function(String line)? terminalOutputMatcher,
    Duration terminalOutputGrace = const Duration(seconds: 45),
  }) async* {
    final process = await Process.start(
      executable,
      arguments,
      workingDirectory: workingDirectory,
      runInShell: false,
    );

    // Stream stdout and stderr interleaved
    final stdoutStream = process.stdout
        .transform(systemEncoding.decoder)
        .transform(const LineSplitter());

    final stderrStream = process.stderr
        .transform(systemEncoding.decoder)
        .transform(const LineSplitter());

    // Merge both streams. Some Linux tools can exit while their pipes take a
    // moment to close, so process exit is also watched explicitly.
    final controller = StreamController<String>();
    var pending = 2;
    var processExited = false;
    var closed = false;
    var terminalTimeoutHit = false;
    Timer? terminalTimer;
    late final StreamSubscription<String> stdoutSubscription;
    late final StreamSubscription<String> stderrSubscription;

    Future<void> closeController() async {
      if (closed) return;
      closed = true;
      terminalTimer?.cancel();
      await stdoutSubscription.cancel();
      await stderrSubscription.cancel();
      await controller.close();
    }

    void addLine(String line) {
      if (!closed) controller.add(line);

      if (terminalOutputMatcher?.call(line) == true) {
        terminalTimer?.cancel();
        terminalTimer = Timer(terminalOutputGrace, () {
          if (processExited || closed) return;
          terminalTimeoutHit = true;
          addLine(
            '[ERR] Command reached terminal output but did not exit after ${terminalOutputGrace.inSeconds}s; the process was terminated.',
          );
          process.kill();
          unawaited(closeController());
        });
      }
    }

    void maybeClose() {
      if (processExited && pending == 0) {
        unawaited(closeController());
      }
    }

    void onDone() {
      pending--;
      maybeClose();
    }

    stdoutSubscription = stdoutStream.listen(
      addLine,
      onError: (Object error, StackTrace stackTrace) {
        if (!closed) controller.addError(error, stackTrace);
      },
      onDone: onDone,
    );
    stderrSubscription = stderrStream.listen(
      (line) => addLine('[ERR] $line'),
      onError: (Object error, StackTrace stackTrace) {
        if (!closed) controller.addError(error, stackTrace);
      },
      onDone: onDone,
    );

    unawaited(
      process.exitCode.then((exitCode) async {
        processExited = true;
        if (exitCode != 0 && !terminalTimeoutHit) {
          addLine(
            '[ERR] Command exited with code $exitCode: $executable ${arguments.join(' ')}',
          );
        }

        maybeClose();

        // Fallback: if a stream never reports done after process exit, do not
        // leave the installer stuck forever.
        await Future<void>.delayed(const Duration(seconds: 2));
        await closeController();
      }),
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
      final process =
          await Process.run(
            executable,
            arguments,
            workingDirectory: workingDirectory,
            runInShell: false,
            stdoutEncoding: const SystemEncoding(),
            stderrEncoding: const SystemEncoding(),
          ).timeout(
            timeout,
            onTimeout: () {
              throw TimeoutException(
                'Command timed out after ${timeout.inMinutes}m: $executable ${arguments.join(' ')}',
              );
            },
          );

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
    return run('powershell.exe', [
      '-NoProfile',
      '-NonInteractive',
      '-Command',
      script,
    ], workingDirectory: workingDirectory);
  }
}
