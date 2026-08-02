import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:path/path.dart' as p;
import 'package:path_provider/path_provider.dart';

import '../models/installation_source.dart';
import 'process_service.dart';

class BridgeServerService {
  static const discoveryPort = 40123;
  static const defaultHttpPort = 40124;

  final ProcessService _processService;
  HttpServer? _server;
  RawDatagramSocket? _discoverySocket;
  Timer? _broadcastTimer;
  File? _preparedImage;
  BridgeAnnouncement? _announcement;
  int servedClients = 0;

  BridgeServerService({ProcessService? processService})
    : _processService = processService ?? ProcessService();

  bool get isRunning => _server != null;
  BridgeAnnouncement? get announcement => _announcement;

  static Future<List<InternetAddress>> privateIpv4Addresses() async {
    final interfaces = await NetworkInterface.list(
      type: InternetAddressType.IPv4,
      includeLoopback: false,
    );
    return interfaces
        .expand((interface) => interface.addresses)
        .where((address) => _isPrivateIpv4(address.address))
        .toList();
  }

  static bool _isPrivateIpv4(String address) {
    final octets = address.split('.').map(int.tryParse).toList();
    if (octets.length != 4 || octets.any((value) => value == null)) {
      return false;
    }
    final a = octets[0]!;
    final b = octets[1]!;
    return a == 10 ||
        (a == 172 && b >= 16 && b <= 31) ||
        (a == 192 && b == 168);
  }

  Future<void> start({
    required String sourceWimPath,
    required InternetAddress address,
    int port = defaultHttpPort,
    required void Function(String message) onLog,
    void Function()? onChanged,
  }) async {
    if (isRunning) throw StateError('El servidor puente ya está activo.');
    final source = File(sourceWimPath);
    if (!await source.exists()) {
      throw ArgumentError('El WIM seleccionado no existe.');
    }
    final wimlib = await _findWimlib();
    if (wimlib == null) {
      throw StateError(
        'No se encontró wimlib-imagex.exe. Reinstale el paquete completo de Requiem.',
      );
    }

    final cache = await getApplicationCacheDirectory();
    final bridgeDir = Directory(p.join(cache.path, 'bridge'));
    await bridgeDir.create(recursive: true);
    final prepared = File(p.join(bridgeDir.path, 'prepared.pipable.wim'));
    if (await prepared.exists()) await prepared.delete();

    onLog(
      'Preparando una imagen WIM transmitible (esta operación se hace una sola vez)...',
    );
    final export = await _processService.run(wimlib, [
      'export',
      source.path,
      '1',
      prepared.path,
      '--pipable',
      '--compress=LZX',
      '--check',
    ], timeout: const Duration(hours: 4));
    if (!export.success || !await prepared.exists()) {
      throw StateError(
        'No se pudo preparar el WIM para transmisión: ${export.stderr.trim()}',
      );
    }

    _preparedImage = prepared;
    _announcement = BridgeAnnouncement(
      address: address.address,
      port: port,
      imageName: p.basename(source.path),
      imageSize: await prepared.length(),
    );
    _server = await HttpServer.bind(address, port, shared: true);
    _server!.listen(
      (request) => _handleRequest(request, onLog, onChanged),
      onError: (Object error) => onLog('ERROR del servidor puente: $error'),
    );

    _discoverySocket = await RawDatagramSocket.bind(
      InternetAddress.anyIPv4,
      0,
      reuseAddress: true,
    );
    _discoverySocket!.broadcastEnabled = true;
    _broadcastTimer = Timer.periodic(
      const Duration(seconds: 2),
      (_) => _broadcast(),
    );
    _broadcast();
    onLog('Puente activo en http://${address.address}:$port');
    onLog(
      'Los clientes pueden descubrirlo o escribir la IP ${address.address}.',
    );
    onChanged?.call();
  }

  Future<void> stop({void Function(String message)? onLog}) async {
    _broadcastTimer?.cancel();
    _broadcastTimer = null;
    _discoverySocket?.close();
    _discoverySocket = null;
    await _server?.close(force: true);
    _server = null;
    _announcement = null;
    servedClients = 0;
    onLog?.call('Servidor puente detenido.');
  }

  void _broadcast() {
    final socket = _discoverySocket;
    final announcement = _announcement;
    if (socket == null || announcement == null) return;
    socket.send(
      utf8.encode(announcement.encode()),
      InternetAddress('255.255.255.255'),
      discoveryPort,
    );
  }

  Future<void> _handleRequest(
    HttpRequest request,
    void Function(String message) onLog,
    void Function()? onChanged,
  ) async {
    final announcement = _announcement;
    final image = _preparedImage;
    request.response.headers
      ..set(HttpHeaders.cacheControlHeader, 'no-store')
      ..set('X-Requiem-Protocol', BridgeAnnouncement.protocolName);

    if (request.method == 'GET' && request.uri.path == '/requiem/v1/info') {
      request.response.headers.contentType = ContentType.json;
      request.response.write(announcement?.encode() ?? '{}');
      await request.response.close();
      return;
    }
    if (request.method == 'GET' &&
        request.uri.path == '/requiem/v1/image' &&
        image != null &&
        await image.exists()) {
      servedClients++;
      onChanged?.call();
      final remote =
          request.connectionInfo?.remoteAddress.address ?? 'desconocido';
      onLog('Transmitiendo instalación al cliente $remote...');
      request.response.headers.contentType = ContentType.binary;
      request.response.contentLength = await image.length();
      try {
        await request.response.addStream(image.openRead());
      } finally {
        await request.response.close();
      }
      onLog('Transmisión finalizada para $remote.');
      return;
    }
    request.response.statusCode = HttpStatus.notFound;
    request.response.write('Not found');
    await request.response.close();
  }

  Future<String?> _findWimlib() async {
    final bundled = File(
      p.join(
        p.dirname(Platform.resolvedExecutable),
        'tools',
        'wimlib',
        'wimlib-imagex.exe',
      ),
    );
    if (await bundled.exists()) return bundled.path;
    final lookup = await _processService.run('where.exe', [
      'wimlib-imagex.exe',
    ]);
    if (lookup.success && lookup.stdout.trim().isNotEmpty) {
      return lookup.stdout.trim().split(RegExp(r'[\r\n]+')).first;
    }
    return null;
  }
}
