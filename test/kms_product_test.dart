import 'package:flutter_test/flutter_test.dart';
import 'package:requiem_tools/models/post_install_config.dart';

void main() {
  test('detecta claves por edicion sin convertir Home a Pro', () {
    expect(windowsKmsProductForEdition('Core', 26100), isNull);
    expect(windowsKmsProductForEdition('Professional', 26100)?.id, 'win10_11_pro');
    expect(windowsKmsProductForEdition('EnterpriseN', 19045)?.id, 'win10_11_enterprise_n');
  });

  test('selecciona claves Server por build', () {
    expect(windowsKmsProductForEdition('ServerStandard', 26100)?.id, 'server2025_standard');
    expect(windowsKmsProductForEdition('ServerDatacenter', 20348)?.id, 'server2022_datacenter');
  });

  test('no reutiliza claves modernas en versiones antiguas desconocidas', () {
    expect(windowsKmsProductForEdition('Professional', 7601), isNull);
  });
}
