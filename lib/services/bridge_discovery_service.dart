import 'dart:async';
import 'dart:convert';
import 'dart:io';

import '../models/installation_source.dart';
import 'bridge_server_service.dart';

class BridgeDiscoveryService {
  Future<List<BridgeAnnouncement>> discover({
    Duration timeout = const Duration(seconds: 7),
  }) async {
    final socket = await RawDatagramSocket.bind(
      InternetAddress.anyIPv4,
      BridgeServerService.discoveryPort,
      reuseAddress: true,
    );
    final found = <String, BridgeAnnouncement>{};
    final completer = Completer<List<BridgeAnnouncement>>();
    late final StreamSubscription<RawSocketEvent> subscription;
    subscription = socket.listen((event) {
      if (event != RawSocketEvent.read) return;
      final datagram = socket.receive();
      if (datagram == null) return;
      final announcement = BridgeAnnouncement.tryParse(
        utf8.decode(datagram.data, allowMalformed: true),
      );
      if (announcement != null) {
        found['${announcement.address}:${announcement.port}'] = announcement;
      }
    });
    Timer(timeout, () async {
      await subscription.cancel();
      socket.close();
      if (!completer.isCompleted) completer.complete(found.values.toList());
    });
    return completer.future;
  }

  Future<BridgeAnnouncement> inspect(String address, {int port = 40124}) async {
    final parsed = InternetAddress.tryParse(address);
    if (parsed == null || parsed.type != InternetAddressType.IPv4) {
      throw const FormatException('La dirección debe ser una IPv4 válida.');
    }
    final client = HttpClient()..connectionTimeout = const Duration(seconds: 5);
    try {
      final request = await client.getUrl(
        Uri(
          scheme: 'http',
          host: address,
          port: port,
          path: '/requiem/v1/info',
        ),
      );
      final response = await request.close();
      final body = await utf8.decodeStream(response);
      if (response.statusCode != HttpStatus.ok) {
        throw StateError('El puente respondió HTTP ${response.statusCode}.');
      }
      final announcement = BridgeAnnouncement.tryParse(body);
      if (announcement == null) {
        throw const FormatException(
          'El servidor no es un puente Requiem válido.',
        );
      }
      return announcement;
    } finally {
      client.close(force: true);
    }
  }
}
