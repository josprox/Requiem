import 'package:flutter_test/flutter_test.dart';
import 'package:requiem_tools/models/installation_source.dart';
import 'package:requiem_tools/services/iso_packaging_service.dart';
import 'package:requiem_tools/services/wifi_network_service.dart';

void main() {
  test('bridge announcement round-trips and builds the image URL', () {
    const original = BridgeAnnouncement(
      address: '192.168.10.25',
      port: 40124,
      imageName: 'install.wim',
      imageSize: 123456,
      imageIndex: 1,
    );

    final parsed = BridgeAnnouncement.tryParse(original.encode());

    expect(parsed, isNotNull);
    expect(parsed!.address, original.address);
    expect(
      parsed.imageUri.toString(),
      'http://192.168.10.25:40124/requiem/v1/image',
    );
  });

  test('rejects bridge announcements with a non-IPv4 address', () {
    expect(
      BridgeAnnouncement.tryParse(
        '{"protocol":"requiem-bridge-v1","address":"server.local",'
        '"port":40124,"imageName":"install.wim","imageSize":1}',
      ),
      isNull,
    );
  });

  test('selects the versioned ISO asset from a GitHub release', () {
    final asset = IsoPackagingService.selectIsoAsset({
      'tag_name': 'v1.2.3',
      'assets': [
        {
          'name': 'Requiem-Tools-Setup-v1.2.3.exe',
          'browser_download_url': 'https://example.invalid/setup.exe',
        },
        {
          'name': 'Requiem-Installer-ISO-v1.2.3.iso',
          'browser_download_url': 'https://example.invalid/requiem.iso',
        },
      ],
    });

    expect(asset, isNotNull);
    expect(asset!.tag, 'v1.2.3');
    expect(asset.name, 'Requiem-Installer-ISO-v1.2.3.iso');
  });

  test('converts compound Windows paths to MSYS cygdrive paths', () {
    expect(
      IsoPackagingService.toXorrisoCompoundPath(
        r'E:\Requiem-Windows-install.iso',
        windows: true,
      ),
      '/cygdrive/e/Requiem-Windows-install.iso',
    );
    expect(
      IsoPackagingService.toXorrisoCompoundPath(
        r'C:\Users\Joss\AppData\Local\Temp\iso tree',
        windows: true,
      ),
      '/cygdrive/c/Users/Joss/AppData/Local/Temp/iso tree',
    );
  });

  test('parses and de-duplicates Wi-Fi networks by strongest signal', () {
    final networks = WifiNetworkService.parseScanOutput(
      'Lab:42:WPA2\nGuest:75:--\nLab:81:WPA2\n',
    );

    expect(networks.map((network) => network.ssid), ['Lab', 'Guest']);
    expect(networks.first.signal, 81);
    expect(networks.first.requiresPassword, isTrue);
    expect(networks.last.requiresPassword, isFalse);
  });
}
