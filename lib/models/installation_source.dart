import 'dart:convert';
import 'dart:io';

enum InstallationSourceKind { local, embedded, bridge }

class BridgeAnnouncement {
  static const protocolName = 'requiem-bridge-v1';

  final String address;
  final int port;
  final String imageName;
  final int imageSize;
  final int imageIndex;
  final String? sha256;

  const BridgeAnnouncement({
    required this.address,
    required this.port,
    required this.imageName,
    required this.imageSize,
    this.imageIndex = 1,
    this.sha256,
  });

  Uri get imageUri =>
      Uri(scheme: 'http', host: address, port: port, path: '/requiem/v1/image');

  Map<String, Object?> toJson() => {
    'protocol': protocolName,
    'address': address,
    'port': port,
    'imageName': imageName,
    'imageSize': imageSize,
    'imageIndex': imageIndex,
    if (sha256 != null) 'sha256': sha256,
  };

  String encode() => jsonEncode(toJson());

  static BridgeAnnouncement? tryParse(String value) {
    try {
      final json = jsonDecode(value);
      if (json is! Map<String, dynamic> ||
          json['protocol'] != protocolName ||
          json['address'] is! String ||
          json['port'] is! int ||
          json['imageName'] is! String ||
          json['imageSize'] is! int) {
        return null;
      }
      final address = json['address'] as String;
      final parsedAddress = InternetAddress.tryParse(address);
      if (parsedAddress == null ||
          parsedAddress.type != InternetAddressType.IPv4) {
        return null;
      }
      final port = json['port'] as int;
      if (port < 1 || port > 65535) return null;
      return BridgeAnnouncement(
        address: address,
        port: port,
        imageName: json['imageName'] as String,
        imageSize: json['imageSize'] as int,
        imageIndex: json['imageIndex'] is int ? json['imageIndex'] as int : 1,
        sha256: json['sha256'] as String?,
      );
    } catch (_) {
      return null;
    }
  }
}
