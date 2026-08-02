import 'package:flutter_test/flutter_test.dart';
import 'package:requiem_tools/services/deployment/windows_deployment_provider.dart';
import 'package:requiem_tools/services/process_service.dart';

class _LiveBootProcessService extends ProcessService {
  @override
  Future<ProcessResult> runLive(
    String executable,
    List<String> arguments, {
    String? workingDirectory,
    void Function(String line)? onStdout,
    void Function(String line)? onStderr,
  }) async {
    onStdout?.call('Boot files created.');
    onStderr?.call('diagnostic line');
    return const ProcessResult(0, 'Boot files created.\n', 'diagnostic line\n');
  }
}

void main() {
  test('bootloader forwards subprocess lines through onLog', () async {
    final liveLogs = <String>[];
    final provider = WindowsDeploymentProvider(_LiveBootProcessService());

    final result = await provider.configureBootloader(
      r'W:\Windows',
      'S:',
      uefi: true,
      bios: false,
      onLog: liveLogs.add,
    );

    expect(result.success, isTrue);
    expect(liveLogs, contains('bcdboot: Boot files created.'));
    expect(liveLogs, contains('bcdboot stderr: diagnostic line'));
    expect(liveLogs.last, 'bcdboot.exe completed');
    expect(result.logs, liveLogs);
  });
}
