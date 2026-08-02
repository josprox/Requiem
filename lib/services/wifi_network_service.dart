import 'process_service.dart';

class WifiNetwork {
  final String ssid;
  final int signal;
  final String security;

  const WifiNetwork({
    required this.ssid,
    required this.signal,
    required this.security,
  });

  bool get requiresPassword => security.trim().isNotEmpty && security != '--';
}

class WifiNetworkService {
  final ProcessService _processService;

  WifiNetworkService({ProcessService? processService})
    : _processService = processService ?? ProcessService();

  Future<List<WifiNetwork>> scan() async {
    final result = await _processService.run('nmcli', [
      '-t',
      '-e',
      'no',
      '-f',
      'SSID,SIGNAL,SECURITY',
      'device',
      'wifi',
      'list',
      '--rescan',
      'yes',
    ], timeout: const Duration(seconds: 45));
    if (!result.success) {
      throw StateError(
        'No se pudieron buscar redes Wi-Fi: ${result.stderr.trim()}',
      );
    }
    return parseScanOutput(result.stdout);
  }

  static List<WifiNetwork> parseScanOutput(String output) {
    final bySsid = <String, WifiNetwork>{};
    for (final line in output.split(RegExp(r'[\r\n]+'))) {
      final parts = line.split(':');
      if (parts.length < 3) continue;
      final ssid = parts.first.trim();
      if (ssid.isEmpty) continue;
      final network = WifiNetwork(
        ssid: ssid,
        signal: int.tryParse(parts[1]) ?? 0,
        security: parts.sublist(2).join(':').trim(),
      );
      final previous = bySsid[ssid];
      if (previous == null || network.signal > previous.signal) {
        bySsid[ssid] = network;
      }
    }
    final networks = bySsid.values.toList()
      ..sort((a, b) => b.signal.compareTo(a.signal));
    return networks;
  }

  Future<String> connect(WifiNetwork network, {String? password}) async {
    if (network.requiresPassword && (password == null || password.isEmpty)) {
      throw ArgumentError('La red ${network.ssid} requiere contraseña.');
    }
    final arguments = ['device', 'wifi', 'connect', network.ssid];
    if (network.requiresPassword) arguments.addAll(['password', password!]);
    final result = await _processService.run(
      'nmcli',
      arguments,
      timeout: const Duration(minutes: 2),
    );
    if (!result.success) {
      throw StateError(
        'No se pudo conectar a ${network.ssid}: ${result.stderr.trim()}',
      );
    }
    return result.stdout.trim();
  }
}
