// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a tr locale. All the
// messages from the main program should be duplicated here with the same
// function name.

// Ignore issues from commonly used lints in this file.
// ignore_for_file:unnecessary_brace_in_string_interps, unnecessary_new
// ignore_for_file:prefer_single_quotes,comment_references, directives_ordering
// ignore_for_file:annotate_overrides,prefer_generic_function_type_aliases
// ignore_for_file:unused_import, file_names, avoid_escaping_inner_quotes
// ignore_for_file:unnecessary_string_interpolations, unnecessary_string_escapes

import 'package:intl/intl.dart';
import 'package:intl/message_lookup_by_library.dart';

final messages = new MessageLookup();

typedef String MessageIfAbsent(String messageStr, List<dynamic> args);

class MessageLookup extends MessageLookupByLibrary {
  String get localeName => 'tr';

  static String m0(count) => "${count} programlar";

  static String m1(version) => "Mevcut sürüm: ${version}";

  static String m2(firmware) => "Gerçek düzenleme: ${firmware}";

  static String m3(error) => "Bağlantı yok: ${error}";

  static String m4(error) => "Şu adrese erişilemiyor: ${error}";

  static String m5(host) => "${host}:1688 ile birleşik bağlantı";

  static String m6(mode) => "Mod uyumlu: ${mode}";

  static String m7(name, edition) => "Algılanan Edici: ${name} (${edition})";

  static String m8(error) => "Bir hata oluştu: ${error}";

  static String m9(path) => "Geçersiz kural: ${path}";

  static String m10(error) => "Hata KMS\'si: ${error}";

  static String m11(product, channel, edition, status) =>
      "${product} / ${channel} / ${edition} bit. Yenileme ${status}.";

  static String m12(count) => "Algılanan paket sayısı: ${count}.";

  static String m13(file) => "Seçim: ${file}";

  static String m14(error) => "Wi-Fi\'a bağlanılamıyor: ${error}";

  static String m15(network) => "${network} numaralı telefona bağlanın.";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
    "actionCancel": MessageLookupByLibrary.simpleMessage("İptal"),
    "actionChange": MessageLookupByLibrary.simpleMessage("Kambiar"),
    "actionConfirm": MessageLookupByLibrary.simpleMessage("Onayla"),
    "actionConnect": MessageLookupByLibrary.simpleMessage("Bağlayıcı"),
    "actionContinue": MessageLookupByLibrary.simpleMessage("Devam"),
    "actionInstall": MessageLookupByLibrary.simpleMessage("Kurulum"),
    "actionRefresh": MessageLookupByLibrary.simpleMessage("Gerçekleştirme"),
    "actionRestartSystem": MessageLookupByLibrary.simpleMessage(
      "Sistemin yeniden başlatılması",
    ),
    "actionScanAgain": MessageLookupByLibrary.simpleMessage(
      "Yeni birimlere geçiş",
    ),
    "actionSearch": MessageLookupByLibrary.simpleMessage("Otobüs"),
    "actionSelect": MessageLookupByLibrary.simpleMessage("Seçici"),
    "activate": MessageLookupByLibrary.simpleMessage("Aktivar"),
    "activateKms": MessageLookupByLibrary.simpleMessage("Activar KMS"),
    "appTitleInstaller": MessageLookupByLibrary.simpleMessage(
      "Requiem Yükleyicisi",
    ),
    "appTitleTools": MessageLookupByLibrary.simpleMessage("Requiem Araçları"),
    "applicationStack": MessageLookupByLibrary.simpleMessage("Uygulama yığını"),
    "applicationStackDescription": MessageLookupByLibrary.simpleMessage(
      "Windows medya kanadı için gerekli kurtarma sistemlerini yükleyin ve etkinleştirin.",
    ),
    "applicationsCount": m0,
    "automaticOffice": MessageLookupByLibrary.simpleMessage(
      "Ofis otomatikleri",
    ),
    "automaticOfficeDescription": MessageLookupByLibrary.simpleMessage(
      "Yüklediğiniz GVLK hacmini kullanın",
    ),
    "automaticRenewal": MessageLookupByLibrary.simpleMessage(
      "Otomatik yenileme",
    ),
    "automaticWindows": MessageLookupByLibrary.simpleMessage(
      "Windows otomatik",
    ),
    "automaticWindowsDescription": MessageLookupByLibrary.simpleMessage(
      "Düzenlemeyi ve GVLK uyumluluğunu tespit etme",
    ),
    "availableVersion": m1,
    "bootCurrent": m2,
    "bridgeConnectError": m3,
    "bridgeDescription": MessageLookupByLibrary.simpleMessage(
      "WIM\'i tek başına hazırlayın ve müşterilerinize doğrudan mesaj gönderin. İstemciler yüklemeden önce WIM\'i koruyamıyor.",
    ),
    "bridgeIp": MessageLookupByLibrary.simpleMessage("Gereksinim IP\'si"),
    "bridgePorts": MessageLookupByLibrary.simpleMessage(
      "Puerto HTTP 40124 · UDP 40123 açıklaması. Windows Defender önceden, gizli erişime izin verir.",
    ),
    "bridgeSearchError": m4,
    "checkingKms": m5,
    "clearLogs": MessageLookupByLibrary.simpleMessage("Limpiar günlükleri"),
    "compatibleMode": m6,
    "confirmDataDestruction": MessageLookupByLibrary.simpleMessage(
      "Verilerin yok edilmesini onaylayın",
    ),
    "confirmInstallation": MessageLookupByLibrary.simpleMessage(
      "Kurulumu onaylayın",
    ),
    "connectInstallerWifi": MessageLookupByLibrary.simpleMessage(
      "Kurulumu Wi-Fi\'a bağlayın",
    ),
    "connectWifi": MessageLookupByLibrary.simpleMessage("Bağlantı Wi-Fi"),
    "copyLogs": MessageLookupByLibrary.simpleMessage("Günlükleri kopyala"),
    "deploymentInProgress": MessageLookupByLibrary.simpleMessage(
      "Tek kelimeyle despliegue",
    ),
    "designedBy": MessageLookupByLibrary.simpleMessage(
      "Joss tarafından tasarlandı",
    ),
    "destinationDiskDescription": MessageLookupByLibrary.simpleMessage(
      "Fiziki birim Windows\'u yükledi.",
    ),
    "detect": MessageLookupByLibrary.simpleMessage("Dedektör"),
    "diskManagement": MessageLookupByLibrary.simpleMessage("Disko yönetimi"),
    "doNotDisconnect": MessageLookupByLibrary.simpleMessage(
      "Enerjiyi kesmeyin veya kurulum ortamını kapatmayın",
    ),
    "downloadAndActivate": MessageLookupByLibrary.simpleMessage(
      "İndir + etkinleştir",
    ),
    "downloadInstaller": MessageLookupByLibrary.simpleMessage(
      "Yükleyiciyi indirin (.exe)",
    ),
    "downloadPortable": MessageLookupByLibrary.simpleMessage(
      "Taşınabilir (.zip) indir",
    ),
    "drives": MessageLookupByLibrary.simpleMessage("Unidadlar"),
    "editionDetected": m7,
    "emptyFolder": MessageLookupByLibrary.simpleMessage("Bu halı boş"),
    "errorGeneric": m8,
    "filter": MessageLookupByLibrary.simpleMessage("Filtrele…"),
    "formatGpt": MessageLookupByLibrary.simpleMessage(
      "GPT\'yi biçimlendirin (önerilir)",
    ),
    "formatGptDescription": MessageLookupByLibrary.simpleMessage(
      "Diski silin ve UEFI diski oluşturun\nEFI (S:) + Windows (W :)",
    ),
    "formatMbr": MessageLookupByLibrary.simpleMessage(
      "Formatear MBR (BIOS burada)",
    ),
    "formatMbrDescription": MessageLookupByLibrary.simpleMessage(
      "Diskoyu temizleyin ve bu dünyayı yaratın\nYalnız Windows (C :)",
    ),
    "formatWarning": MessageLookupByLibrary.simpleMessage(
      "Seçilen disk tamamen formatlanır. Tüm verileri kapattınız.",
    ),
    "generateIso": MessageLookupByLibrary.simpleMessage("Genel ISO"),
    "getInstallOnlyIso": MessageLookupByLibrary.simpleMessage(
      "Ücretsiz kurulum için ISO edinin",
    ),
    "goUpOneLevel": MessageLookupByLibrary.simpleMessage("Bir seviyeyi geç"),
    "imageDetected": MessageLookupByLibrary.simpleMessage("Görüntü algılaması"),
    "imageFound": MessageLookupByLibrary.simpleMessage("Görüntüler"),
    "imageNotFound": MessageLookupByLibrary.simpleMessage("Görüntü yok"),
    "imageSearching": MessageLookupByLibrary.simpleMessage(
      "Buscando görseli...",
    ),
    "installAll": MessageLookupByLibrary.simpleMessage("Yapılacak yükleme"),
    "installOffice": MessageLookupByLibrary.simpleMessage("Kurulum Ofisi"),
    "installationProgress": MessageLookupByLibrary.simpleMessage(
      "Kurulum ilerlemesi",
    ),
    "invalidPath": m9,
    "isoDescription": MessageLookupByLibrary.simpleMessage(
      "Düzenlemek için bir WIM seçmek için ISO tabanını edinin veya Windows görüntüsünü ekleyecek bir ISO otomatik oluşturun.",
    ),
    "kmsError": m10,
    "kmsHostEmpty": MessageLookupByLibrary.simpleMessage(
      "Hata: Ana bilgisayar KMS\'si boş.",
    ),
    "kmsServer": MessageLookupByLibrary.simpleMessage("Sunucu KMS"),
    "kmsTask160Days": MessageLookupByLibrary.simpleMessage("Tarea 160 gün"),
    "kmsVolumeActivation": MessageLookupByLibrary.simpleMessage(
      "Ses düzeyinin etkinleştirilmesi (KMS)",
    ),
    "landingDescription": MessageLookupByLibrary.simpleMessage(
      "Daha fazla veri aktarımı için yüksek hassasiyette Windows kurulumu. Doğrudan DISM düzenlemesi ve sistemin otomatik optimizasyonu ile hızlı bir dağıtım deneyin.",
    ),
    "licenseActivation": MessageLookupByLibrary.simpleMessage(
      "Lisansların Etkinleştirilmesi",
    ),
    "logsCopied": MessageLookupByLibrary.simpleMessage(
      "Kopyalanan dosyaları günlüğe kaydeder.",
    ),
    "mandatoryUpdate": MessageLookupByLibrary.simpleMessage(
      "Bu işlemin gerçekleştirilmesi zorunludur ve ihmal edilemez.",
    ),
    "manualWimHint": MessageLookupByLibrary.simpleMessage(
      "WIM dosyasını manuel olarak yerelleştirmek için \"Buscar\"ı kullanın.",
    ),
    "mediaInstallation": MessageLookupByLibrary.simpleMessage("Kurulum ortamı"),
    "networkBridge": MessageLookupByLibrary.simpleMessage(
      "IPv4 kurulumunu gerçekleştirin",
    ),
    "networkInterface": MessageLookupByLibrary.simpleMessage(
      "Arayüz Wi‑Fi/LAN IPv4",
    ),
    "nextGenerationDeployment": MessageLookupByLibrary.simpleMessage(
      "Yakın Üretim SO\'sunun Açıklaması",
    ),
    "noBridgeFound": MessageLookupByLibrary.simpleMessage(
      "Hiçbir şekilde kontrol edilemedi. IP kılavuzunu kullanın.",
    ),
    "noFormatWarning": MessageLookupByLibrary.simpleMessage(
      "Windows, W:\\ formatından kaldırılır.",
    ),
    "noImageDetected": MessageLookupByLibrary.simpleMessage(
      "Yeni resim algılanamadı",
    ),
    "noKmsProducts": MessageLookupByLibrary.simpleMessage(
      "KMS\'de seçilen saman ürünü yok.",
    ),
    "noPhysicalDisks": MessageLookupByLibrary.simpleMessage(
      "Disko fiziğini tespit edemiyoruz",
    ),
    "noProgramsSelected": MessageLookupByLibrary.simpleMessage(
      "Seçilen saman programı yok.",
    ),
    "noWifiNetworks": MessageLookupByLibrary.simpleMessage(
      "Wi-Fi erişimine izin verilmez.",
    ),
    "noWingetPackages": MessageLookupByLibrary.simpleMessage(
      "Kanatlarla ilgili paketler algılanamıyor.",
    ),
    "officeInstallDescription": MessageLookupByLibrary.simpleMessage(
      "Microsoft Office LTSC veya 365\'i ODT kullanarak otomatikleştirme yöntemiyle kullanın.",
    ),
    "officeInstaller": MessageLookupByLibrary.simpleMessage("Office Kurulumu"),
    "officeRenewalStatus": m11,
    "officeVersion": MessageLookupByLibrary.simpleMessage("Office Sürümü"),
    "onlyWindows": MessageLookupByLibrary.simpleMessage(
      "Bu işlev yalnızca Windows\'ta kullanılabilir.",
    ),
    "packageStack": MessageLookupByLibrary.simpleMessage(
      "Program yığını (Winget)",
    ),
    "packagesDetected": m12,
    "partitionMode": MessageLookupByLibrary.simpleMessage("Katılım modu"),
    "prepareBridge": MessageLookupByLibrary.simpleMessage("Hazırlan ve başla"),
    "provideWindowsImage": MessageLookupByLibrary.simpleMessage(
      "Windows kurulum görüntüsünün oranı (install.wim veya install.swm)\ntek bir USB veya daha basit bir ortam montajı var.",
    ),
    "receiveInstallation": MessageLookupByLibrary.simpleMessage(
      "Windows için gerekli kurulumu hazırlamak için geri ödeme yapın",
    ),
    "renewalActive": MessageLookupByLibrary.simpleMessage("Aktif"),
    "renewalDisabled": MessageLookupByLibrary.simpleMessage("Devre Dışı Bırak"),
    "searchingImage": MessageLookupByLibrary.simpleMessage("Buscando resmi…"),
    "secureBootCompatible": MessageLookupByLibrary.simpleMessage(
      "Uyumlu Güvenli Önyükleme",
    ),
    "selectDestinationDisk": MessageLookupByLibrary.simpleMessage(
      "Hedef disko seçimi",
    ),
    "selectFileHint": MessageLookupByLibrary.simpleMessage(
      ".wim veya .swm dosyasını seçin",
    ),
    "selectWim": MessageLookupByLibrary.simpleMessage("WIM seçimi"),
    "selectWimFirst": MessageLookupByLibrary.simpleMessage(
      "Bir WIM ve özel bir IPv4 arayüzü seçin.",
    ),
    "selectWindowsImage": MessageLookupByLibrary.simpleMessage(
      "Windows\'tan seçilmiş görüntü",
    ),
    "selectWindowsImageFull": MessageLookupByLibrary.simpleMessage(
      "Windows kurulum görüntüsünü seçin",
    ),
    "selectedFile": m13,
    "stableVersion": MessageLookupByLibrary.simpleMessage(
      "Sürüm kararlı v1.0.0",
    ),
    "start": MessageLookupByLibrary.simpleMessage("Empezar"),
    "startInstallation": MessageLookupByLibrary.simpleMessage(
      "Kurulumu başlat",
    ),
    "stopBridge": MessageLookupByLibrary.simpleMessage("Sabitleyici puente"),
    "systemConsole": MessageLookupByLibrary.simpleMessage("Sistem Konsolu"),
    "systemDisk": MessageLookupByLibrary.simpleMessage("Sistema"),
    "systemLogs": MessageLookupByLibrary.simpleMessage("Sistem günlükleri"),
    "unknown": MessageLookupByLibrary.simpleMessage("Desconocido"),
    "updateDescription": MessageLookupByLibrary.simpleMessage(
      "Requiem Tools\'u kullanmaya devam etmek için, daha önce öğrendiğimiz sürümün çalıştırılması gerekir.",
    ),
    "updateRequired": MessageLookupByLibrary.simpleMessage(
      "Gerçekleştirme gerekli",
    ),
    "useExistingPartitions": MessageLookupByLibrary.simpleMessage(
      "Kullanıcı bölümleri mevcut",
    ),
    "useExistingPartitionsDescription": MessageLookupByLibrary.simpleMessage(
      "Sin formatear — despliega en W: tal cual\nKullanılan manuel partisyonlar",
    ),
    "waitingAction": MessageLookupByLibrary.simpleMessage("Bir işlem yapın..."),
    "waitingForWim": MessageLookupByLibrary.simpleMessage(
      "Install.wim algılaması yapıldı...",
    ),
    "wifiConnectError": m14,
    "wifiConnected": m15,
    "wifiPassword": MessageLookupByLibrary.simpleMessage("Contraseña Wi-Fi"),
    "wimIntegrated": MessageLookupByLibrary.simpleMessage(
      "ISO ile entegre WIM",
    ),
    "wingetUnavailable": MessageLookupByLibrary.simpleMessage(
      "kanat kurulu değil veya PATH\'de değil.",
    ),
  };
}
