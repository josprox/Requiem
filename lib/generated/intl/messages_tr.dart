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

  static String m7(firmware) => "Gerçek düzenleme: ${firmware}";

  static String m8(diskNumber, mediaType, busType) =>
      "DİSK ${diskNumber} · ${mediaType} · ${busType}";

  static String m9(recommended) => "Mod uyumlu: ${recommended}";

  static String m10(sizeGB) => "${sizeGB} GB";

  static String m11(imageName) =>
      "Cevap: \${controller.bridgeAnnouncement?.imageName ??";

  static String m12(name, edition) => "Algılanan Edici: ${name} (${edition})";

  static String m13(error) => "Bir hata oluştu: ${error}";

  static String m14(val) => "Geçersiz kural: ${val}";

  static String m15(error) => "Dizin içeriğine erişilemiyor.\\n${error}";

  static String m16(path) => "Seçim: ${path}";

  static String m17(path) => "Geçersiz kural: ${path}";

  static String m18(clients) => "${clients} bağlantılar";

  static String m19(error) => "HATA: ${error}";

  static String m20(error) =>
      "IPv4 arayüzlerinin numaralandırılması yok: ${error}";

  static String m21(path) => "WIM seçimi: ${path}";

  static String m22(error) => "Hata KMS\'si: ${error}";

  static String m23(product, channel, edition, status) =>
      "${product} / ${channel} / ${edition} bit. Yenileme ${status}.";

  static String m24(count) => "Algılanan paket sayısı: ${count}.";

  static String m25(file) => "Seçim: ${file}";

  static String m26(count) => "${count} programlar";

  static String m27(host) => "${host}:1688 ile birleşik bağlantı";

  static String m28(error) => "HATA KMS: ${error}";

  static String m29(time, message) => "[${time}] ${message}";

  static String m30(count) => "Algılanan paket sayısı: ${count}.";

  static String m31(error) => "Wi-Fi\'a bağlanılamıyor: ${error}";

  static String m32(network) => "${network} numaralı telefona bağlanın.";

  static String m33(error) => "Wi-Fi\'a bağlanılamıyor: ${error}";

  static String m34(ssid, result) =>
      "${ssid} numaralı telefona Wi-Fi bağlandı. ${result}";

  static String m35(ssid) => "${ssid} numaralı telefona bağlanın.";

  static String m36(signal, security) => "${signal}% · ${security}";

  static String m37(error) => "Bağlantı yok: ${error}";

  static String m38(error) => "Şu adrese erişilemiyor: ${error}";

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
    "app_title_installer": MessageLookupByLibrary.simpleMessage(
      "Requiem Yükleyicisi",
    ),
    "app_title_tools": MessageLookupByLibrary.simpleMessage("Requiem Araçları"),
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
    "common_cancel": MessageLookupByLibrary.simpleMessage("İPTAL"),
    "common_change": MessageLookupByLibrary.simpleMessage("KAMBİAR"),
    "common_connect": MessageLookupByLibrary.simpleMessage("KONEKTAR"),
    "common_continue": MessageLookupByLibrary.simpleMessage("DEVAM"),
    "common_label_disk": MessageLookupByLibrary.simpleMessage("DİSK"),
    "common_label_image": MessageLookupByLibrary.simpleMessage("GÖRÜNTÜ"),
    "common_label_mode": MessageLookupByLibrary.simpleMessage("MOD"),
    "common_refresh": MessageLookupByLibrary.simpleMessage("GERÇEKLEŞTİRİCİ"),
    "common_search": MessageLookupByLibrary.simpleMessage("BUSCAR"),
    "common_select": MessageLookupByLibrary.simpleMessage("SEÇİCİ"),
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
    "console_title": MessageLookupByLibrary.simpleMessage(
      "Consola del Sistema",
    ),
    "console_tooltip_clear": MessageLookupByLibrary.simpleMessage(
      "Limpiar günlükleri",
    ),
    "console_tooltip_copy": MessageLookupByLibrary.simpleMessage(
      "Günlükleri kopyala",
    ),
    "console_waiting_action": MessageLookupByLibrary.simpleMessage(
      "Bir işlem yapın...",
    ),
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
    "disk_badge_system": MessageLookupByLibrary.simpleMessage("SİSTEMA"),
    "disk_boot_firmware_label": m7,
    "disk_button_confirm_and_install": MessageLookupByLibrary.simpleMessage(
      "KURULUMU ONAYLA",
    ),
    "disk_dialog_confirm_destruction_title":
        MessageLookupByLibrary.simpleMessage(
          "VERİLERİN İMHA EDİLMESİNİ ONAYLAYIN",
        ),
    "disk_dialog_confirm_install_title": MessageLookupByLibrary.simpleMessage(
      "KURULUMU ONAYLAYIN",
    ),
    "disk_dialog_existing_notice": MessageLookupByLibrary.simpleMessage(
      "Windows, W:\\\\ biçiminde kaldırılır.",
    ),
    "disk_dialog_format_warning": MessageLookupByLibrary.simpleMessage(
      "Seçilen disk tamamen formatlanır. Tüm verileri kapattınız.",
    ),
    "disk_empty_list": MessageLookupByLibrary.simpleMessage(
      "Disko fiziğini tespit edemiyoruz",
    ),
    "disk_item_header": m8,
    "disk_management_appbar_title": MessageLookupByLibrary.simpleMessage(
      "DİSK YÖNETİMİ",
    ),
    "disk_partition_gpt_uefi": MessageLookupByLibrary.simpleMessage(
      "GPT / UEFI",
    ),
    "disk_partition_mbr_bios": MessageLookupByLibrary.simpleMessage(
      "MBR / BIOS",
    ),
    "disk_recommended_mode_label": m9,
    "disk_selection_button_start": MessageLookupByLibrary.simpleMessage(
      "KURULUMU BAŞLATIN",
    ),
    "disk_selection_desc": MessageLookupByLibrary.simpleMessage(
      "Fiziki birim Windows\'u yükledi.",
    ),
    "disk_selection_title": MessageLookupByLibrary.simpleMessage(
      "Selectionar Disco de Destino",
    ),
    "disk_size_gb": m10,
    "disk_waiting_wim_hint": MessageLookupByLibrary.simpleMessage(
      "Install.wim algılaması yapıldı...",
    ),
    "disk_wim_bridge_source": m11,
    "disk_wim_detected": MessageLookupByLibrary.simpleMessage(
      "Görüntü algılaması",
    ),
    "disk_wim_integrated_source": MessageLookupByLibrary.simpleMessage(
      "ISO ile entegre WIM",
    ),
    "disk_wim_not_found": MessageLookupByLibrary.simpleMessage("Görüntü yok"),
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
    "editionDetected": m12,
    "emptyFolder": MessageLookupByLibrary.simpleMessage("Bu halı boş"),
    "errorGeneric": m13,
    "file_explorer_default_title": MessageLookupByLibrary.simpleMessage(
      "Windows Kurulum Görüntüsü Seçildi",
    ),
    "file_explorer_drives_header": MessageLookupByLibrary.simpleMessage(
      "UNIDADES",
    ),
    "file_explorer_empty_folder": MessageLookupByLibrary.simpleMessage(
      "Bu halı boş",
    ),
    "file_explorer_filter_hint": MessageLookupByLibrary.simpleMessage(
      "Filtrele…",
    ),
    "file_explorer_go_up_tooltip": MessageLookupByLibrary.simpleMessage(
      "Bir seviyeyi geç",
    ),
    "file_explorer_invalid_path_error": m14,
    "file_explorer_read_error": m15,
    "file_explorer_select_file_hint": MessageLookupByLibrary.simpleMessage(
      ".wim veya .swm dosyasını seçin",
    ),
    "file_explorer_selected_file": m16,
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
    "invalidPath": m17,
    "isoDescription": MessageLookupByLibrary.simpleMessage(
      "Düzenlemek için bir WIM seçmek için ISO tabanını edinin veya Windows görüntüsünü ekleyecek bir ISO otomatik oluşturun.",
    ),
    "iso_bridge_clients_count": m18,
    "iso_bridge_desc": MessageLookupByLibrary.simpleMessage(
      "WIM\'i tek başına hazırlayın ve müşterilerinize doğrudan mesaj gönderin. İstemciler yüklemeden önce WIM\'i koruyamıyor.",
    ),
    "iso_bridge_generic_error": m19,
    "iso_bridge_list_interfaces_error": m20,
    "iso_bridge_save_simple_iso_dialog": MessageLookupByLibrary.simpleMessage(
      "ISO Simple Requiem Koruması",
    ),
    "iso_bridge_save_wim_iso_dialog": MessageLookupByLibrary.simpleMessage(
      "WIM ile ISO Gerekliliğini Koruma",
    ),
    "iso_bridge_select_wim_dialog": MessageLookupByLibrary.simpleMessage(
      "Windows\'ta WIM görüntüsü seç",
    ),
    "iso_bridge_simple_iso_filename": MessageLookupByLibrary.simpleMessage(
      "Requiem-Yükleyici-Simple.iso",
    ),
    "iso_bridge_start_validation_error": MessageLookupByLibrary.simpleMessage(
      "Bir WIM ve özel bir IPv4 arayüzü seçin.",
    ),
    "iso_bridge_wim_selected_log": m21,
    "iso_panel_button_generate_iso": MessageLookupByLibrary.simpleMessage(
      "GENEL ISO",
    ),
    "iso_panel_button_select_wim": MessageLookupByLibrary.simpleMessage(
      "SEÇİMLİ WIM",
    ),
    "iso_panel_button_simple_iso": MessageLookupByLibrary.simpleMessage(
      "OBTENER ISO PARA INSTALACIÓN SOLAMENTE",
    ),
    "iso_panel_desc_media": MessageLookupByLibrary.simpleMessage(
      "Düzenlemek için bir WIM seçmek için ISO tabanını edinin veya Windows görüntüsünü ekleyecek bir ISO otomatik oluşturun.",
    ),
    "iso_panel_title_bridge": MessageLookupByLibrary.simpleMessage(
      "IPv4 kurulumunu gerçekleştirin",
    ),
    "iso_panel_title_media": MessageLookupByLibrary.simpleMessage(
      "Kurulum ortamı",
    ),
    "kmsError": m22,
    "kmsHostEmpty": MessageLookupByLibrary.simpleMessage(
      "Hata: Ana bilgisayar KMS\'si boş.",
    ),
    "kmsServer": MessageLookupByLibrary.simpleMessage("Sunucu KMS"),
    "kmsTask160Days": MessageLookupByLibrary.simpleMessage("Tarea 160 gün"),
    "kmsVolumeActivation": MessageLookupByLibrary.simpleMessage(
      "Ses düzeyinin etkinleştirilmesi (KMS)",
    ),
    "kms_product_office_ltsc_professional_plus_2021":
        MessageLookupByLibrary.simpleMessage(
          "Office LTSC Profesyonel Artı 2021",
        ),
    "kms_product_office_ltsc_professional_plus_2024":
        MessageLookupByLibrary.simpleMessage(
          "Office LTSC Profesyonel Artı 2024",
        ),
    "kms_product_office_professional_plus_2013":
        MessageLookupByLibrary.simpleMessage("Office Profesyoneli Artı 2013"),
    "kms_product_office_professional_plus_2016":
        MessageLookupByLibrary.simpleMessage("Ofis Profesyoneli Artı 2016"),
    "kms_product_office_professional_plus_2019":
        MessageLookupByLibrary.simpleMessage("Ofis Profesyoneli Artı 2019"),
    "kms_product_office_standard_2013": MessageLookupByLibrary.simpleMessage(
      "Ofis Standardı 2013",
    ),
    "kms_product_windows_10_11_education": MessageLookupByLibrary.simpleMessage(
      "Windows 10/11 Eğitimi",
    ),
    "kms_product_windows_10_11_education_n":
        MessageLookupByLibrary.simpleMessage("Windows 10/11 Eğitim N"),
    "kms_product_windows_10_11_enterprise":
        MessageLookupByLibrary.simpleMessage("Windows 10/11 Kurumsal"),
    "kms_product_windows_10_11_enterprise_g":
        MessageLookupByLibrary.simpleMessage("Windows 10/11 Kurumsal G"),
    "kms_product_windows_10_11_enterprise_g_n":
        MessageLookupByLibrary.simpleMessage("Windows 10/11 Kurumsal GN"),
    "kms_product_windows_10_11_enterprise_n":
        MessageLookupByLibrary.simpleMessage("Windows 10/11 Kurumsal N"),
    "kms_product_windows_10_11_pro": MessageLookupByLibrary.simpleMessage(
      "Windows 10/11 Pro",
    ),
    "kms_product_windows_10_11_pro_education":
        MessageLookupByLibrary.simpleMessage("Windows 10/11 Pro Eğitimi"),
    "kms_product_windows_10_11_pro_for_workstations":
        MessageLookupByLibrary.simpleMessage(
          "İş İstasyonları için Windows 10/11 Pro",
        ),
    "kms_product_windows_10_11_pro_n": MessageLookupByLibrary.simpleMessage(
      "Windows 10/11 ProN",
    ),
    "kms_product_windows_10_11_pro_workstations":
        MessageLookupByLibrary.simpleMessage(
          "Windows 10/11 Pro İş İstasyonları",
        ),
    "kms_product_windows_8_1_enterprise": MessageLookupByLibrary.simpleMessage(
      "Windows 8.1 Kurumsal",
    ),
    "kms_product_windows_8_1_pro": MessageLookupByLibrary.simpleMessage(
      "Windows 8.1 Pro",
    ),
    "kms_product_windows_8_enterprise": MessageLookupByLibrary.simpleMessage(
      "Windows 8 Kurumsal",
    ),
    "kms_product_windows_8_pro": MessageLookupByLibrary.simpleMessage(
      "Windows 8 Pro",
    ),
    "kms_product_windows_server_2019_datacenter":
        MessageLookupByLibrary.simpleMessage(
          "Windows Server 2019 Veri Merkezi",
        ),
    "kms_product_windows_server_2019_standard":
        MessageLookupByLibrary.simpleMessage("Windows Sunucusu 2019 Standardı"),
    "kms_product_windows_server_2022_datacenter":
        MessageLookupByLibrary.simpleMessage(
          "Windows Server 2022 Veri Merkezi",
        ),
    "kms_product_windows_server_2022_standard":
        MessageLookupByLibrary.simpleMessage("Windows Sunucusu 2022 Standardı"),
    "kms_product_windows_server_2025_datacenter":
        MessageLookupByLibrary.simpleMessage(
          "Windows Server 2025 Veri Merkezi",
        ),
    "kms_product_windows_server_2025_standard":
        MessageLookupByLibrary.simpleMessage("Windows Sunucusu 2025 Standardı"),
    "kms_product_windows_subsystem_for_linux":
        MessageLookupByLibrary.simpleMessage("Linux için Windows Alt Sistemi"),
    "kms_product_windows_terminal": MessageLookupByLibrary.simpleMessage(
      "Windows Terminali",
    ),
    "landingDescription": MessageLookupByLibrary.simpleMessage(
      "Daha fazla veri aktarımı için yüksek hassasiyette Windows kurulumu. Doğrudan DISM düzenlemesi ve sistemin otomatik optimizasyonu ile hızlı bir dağıtım deneyin.",
    ),
    "landing_badge_author": MessageLookupByLibrary.simpleMessage(
      "DISEÑADO POR JOSS",
    ),
    "landing_badge_secure_boot": MessageLookupByLibrary.simpleMessage(
      "UYUMLU CON GÜVENLİ ÖNYÜKLEME",
    ),
    "landing_badge_version": MessageLookupByLibrary.simpleMessage(
      "VERSİYONU KURULUYOR",
    ),
    "landing_button_logs": MessageLookupByLibrary.simpleMessage(
      "GÜNLÜKLER DEL SISTEMA",
    ),
    "landing_button_start": MessageLookupByLibrary.simpleMessage("EMPEZAR"),
    "landing_description_part1": MessageLookupByLibrary.simpleMessage(
      "Daha fazla veri aktarımı için yüksek hassasiyette Windows kurulumu.",
    ),
    "landing_description_part2": MessageLookupByLibrary.simpleMessage(
      "Doğrudan DISM düzenlemesi ve sistemin otomatik optimizasyonu ile hızlı bir dağıtım deneyin.",
    ),
    "landing_subtitle": MessageLookupByLibrary.simpleMessage(
      "DESPLIEGUE DE SO DE PRÓXIMA GENERACIÓN",
    ),
    "landing_title_installer": MessageLookupByLibrary.simpleMessage(
      "REQUIEM YÜKLEYİCİ",
    ),
    "landing_title_tools": MessageLookupByLibrary.simpleMessage(
      "REQUIEM ARAÇLARI",
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
    "officeRenewalStatus": m23,
    "officeVersion": MessageLookupByLibrary.simpleMessage("Office Sürümü"),
    "office_odt_kms_badge": MessageLookupByLibrary.simpleMessage("ODT + KMS"),
    "office_odt_panel_title": MessageLookupByLibrary.simpleMessage(
      "Ofis Dağıtım Aracı",
    ),
    "office_pkg_desc_2019": MessageLookupByLibrary.simpleMessage(
      "PerpetualVL2019 kanalındaki ses seviyesini tıkla ve çalıştır",
    ),
    "office_pkg_desc_2021": MessageLookupByLibrary.simpleMessage(
      "PerpetualVL2021 kanalındaki ses seviyesini tıkla ve çalıştır",
    ),
    "office_pkg_desc_2024": MessageLookupByLibrary.simpleMessage(
      "PerpetualVL2024 kanalındaki ses seviyesini tıkla ve çalıştır",
    ),
    "office_pkg_name_2019": MessageLookupByLibrary.simpleMessage(
      "Office Pro Plus 2019",
    ),
    "office_pkg_name_2021": MessageLookupByLibrary.simpleMessage(
      "Office LTSC Pro Plus 2021",
    ),
    "office_pkg_name_2024": MessageLookupByLibrary.simpleMessage(
      "Office LTSC Pro Plus 2024",
    ),
    "onlyWindows": MessageLookupByLibrary.simpleMessage(
      "Bu işlev yalnızca Windows\'ta kullanılabilir.",
    ),
    "packageStack": MessageLookupByLibrary.simpleMessage(
      "Program yığını (Winget)",
    ),
    "packagesDetected": m24,
    "partitionMode": MessageLookupByLibrary.simpleMessage("Katılım modu"),
    "pkg_cat_apache_php_mysql": MessageLookupByLibrary.simpleMessage(
      "Apache PHP MySQL",
    ),
    "pkg_cat_bi_desktop": MessageLookupByLibrary.simpleMessage(
      "İş Zekası Masaüstü",
    ),
    "pkg_cat_cliente_api": MessageLookupByLibrary.simpleMessage(
      "İstemci API\'si",
    ),
    "pkg_cat_cliente_db": MessageLookupByLibrary.simpleMessage(
      "Müşteri Veritabanı",
    ),
    "pkg_cat_compiladores_c": MessageLookupByLibrary.simpleMessage(
      "Derleyiciler C++",
    ),
    "pkg_cat_compresor": MessageLookupByLibrary.simpleMessage("Kompresör"),
    "pkg_cat_comunicacion": MessageLookupByLibrary.simpleMessage("İletişim"),
    "pkg_cat_control_de_versiones": MessageLookupByLibrary.simpleMessage(
      "Sürüm kontrolü",
    ),
    "pkg_cat_desktop": MessageLookupByLibrary.simpleMessage("Masaüstü"),
    "pkg_cat_diagramas": MessageLookupByLibrary.simpleMessage("Diyagramlar"),
    "pkg_cat_distro_wsl": MessageLookupByLibrary.simpleMessage("Dağıtım WSL"),
    "pkg_cat_editor": MessageLookupByLibrary.simpleMessage("Editör"),
    "pkg_cat_golang": MessageLookupByLibrary.simpleMessage("Golang"),
    "pkg_cat_gpu_compute": MessageLookupByLibrary.simpleMessage(
      "GPU hesaplaması",
    ),
    "pkg_cat_grabacion": MessageLookupByLibrary.simpleMessage("Grabacion"),
    "pkg_cat_ide_ai": MessageLookupByLibrary.simpleMessage("IDE AI"),
    "pkg_cat_ide_android": MessageLookupByLibrary.simpleMessage("IDE Android"),
    "pkg_cat_ide_completo": MessageLookupByLibrary.simpleMessage(
      "IDE tamamlandı",
    ),
    "pkg_cat_instaladores": MessageLookupByLibrary.simpleMessage(
      "Kurulumcular",
    ),
    "pkg_cat_javascript": MessageLookupByLibrary.simpleMessage("JavaScript"),
    "pkg_cat_limpieza": MessageLookupByLibrary.simpleMessage("Limpieza"),
    "pkg_cat_modelos_locales": MessageLookupByLibrary.simpleMessage(
      "Yerel modeller",
    ),
    "pkg_cat_navegador": MessageLookupByLibrary.simpleMessage("Navegador"),
    "pkg_cat_python_3": MessageLookupByLibrary.simpleMessage("Python 3"),
    "pkg_cat_runtime_c": MessageLookupByLibrary.simpleMessage(
      "Çalışma Zamanı C++",
    ),
    "pkg_cat_runtime_escritorio": MessageLookupByLibrary.simpleMessage(
      "Çalışma zamanı yazarı",
    ),
    "pkg_cat_runtime_juegos": MessageLookupByLibrary.simpleMessage(
      "Çalışma zamanı oyunları",
    ),
    "pkg_cat_runtime_php": MessageLookupByLibrary.simpleMessage(
      "Çalışma zamanı PHP",
    ),
    "pkg_cat_rustup": MessageLookupByLibrary.simpleMessage("Paslanma"),
    "pkg_cat_sdk__net": MessageLookupByLibrary.simpleMessage("SDK.NET"),
    "pkg_cat_servidor_db": MessageLookupByLibrary.simpleMessage(
      "Sunucu DB\'si",
    ),
    "pkg_cat_ssh_clasico": MessageLookupByLibrary.simpleMessage("SSH klasiği"),
    "pkg_cat_ssh_moderno": MessageLookupByLibrary.simpleMessage(
      "SSH\'nin modern versiyonu",
    ),
    "pkg_cat_subsistema_linux": MessageLookupByLibrary.simpleMessage(
      "Altsistem Linux",
    ),
    "pkg_cat_temurin_21": MessageLookupByLibrary.simpleMessage("Temurin 21"),
    "pkg_cat_terminal_moderno": MessageLookupByLibrary.simpleMessage(
      "Modern terminal",
    ),
    "prepareBridge": MessageLookupByLibrary.simpleMessage("Hazırlan ve başla"),
    "progress_button_reboot": MessageLookupByLibrary.simpleMessage(
      "SİSTEMİ YENİDEN BAŞLATIN",
    ),
    "progress_footer_warning": MessageLookupByLibrary.simpleMessage(
      "LA ENERJİYİ KESMEYİN VE KURULUM ORTAMINI KAPATMAYIN",
    ),
    "progress_header_badge": MessageLookupByLibrary.simpleMessage(
      "DESPLIEGUE EN CURSO",
    ),
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
    "selectedFile": m25,
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
    "tools_badge_iso_compatibility": MessageLookupByLibrary.simpleMessage(
      "BIOS + UEFI koruyucuları",
    ),
    "tools_badge_kms_pending": MessageLookupByLibrary.simpleMessage(
      "KMS\'ye bağlı",
    ),
    "tools_badge_package_count": m26,
    "tools_button_activate_kms": MessageLookupByLibrary.simpleMessage(
      "AKTİVAR KMS",
    ),
    "tools_button_install_all_packages": MessageLookupByLibrary.simpleMessage(
      "YAPILACAKLAR",
    ),
    "tools_button_install_office": MessageLookupByLibrary.simpleMessage(
      "İNSTALAR OFİS",
    ),
    "tools_header_title": MessageLookupByLibrary.simpleMessage(
      "REQUIEM GEÇİŞ ARAÇLARI",
    ),
    "tools_kms_checking_connectivity": m27,
    "tools_kms_empty_host_error": MessageLookupByLibrary.simpleMessage(
      "HATA: KMS ana bilgisayarı boşta.",
    ),
    "tools_kms_error_log": m28,
    "tools_kms_no_products_selected": MessageLookupByLibrary.simpleMessage(
      "KMS\'de seçilen saman ürünü yok.",
    ),
    "tools_log_format": m29,
    "tools_logs_copied_snackbar": MessageLookupByLibrary.simpleMessage(
      "Kopyalanan dosyaları günlüğe kaydeder.",
    ),
    "tools_packages_detected_count": m30,
    "tools_packages_none_detected": MessageLookupByLibrary.simpleMessage(
      "Kanatlarla ilgili paketler algılanamıyor.",
    ),
    "tools_packages_none_selected": MessageLookupByLibrary.simpleMessage(
      "Seçilen saman programı yok.",
    ),
    "tools_section_activation_desc": MessageLookupByLibrary.simpleMessage(
      "Windows ve Office\'i etkinleştirmek için KMS sunucusunu yerel veya uzaktan yapılandırın.",
    ),
    "tools_section_activation_title": MessageLookupByLibrary.simpleMessage(
      "Lisans Etkinleştirmesi",
    ),
    "tools_section_iso_desc": MessageLookupByLibrary.simpleMessage(
      "Entegre bir WIM ile otomatik olarak çalışır veya IPv4 üzerinden doğrudan bir kurulum dağıtır.",
    ),
    "tools_section_iso_title": MessageLookupByLibrary.simpleMessage(
      "ISO\'yu ve kırmızıyı açıklayın",
    ),
    "tools_section_office_desc": MessageLookupByLibrary.simpleMessage(
      "Microsoft Office LTSC veya 365\'i ODT kullanarak otomatikleştirme yöntemiyle kullanın.",
    ),
    "tools_section_office_title": MessageLookupByLibrary.simpleMessage(
      "Office Kurulumu",
    ),
    "tools_section_packages_desc": MessageLookupByLibrary.simpleMessage(
      "Windows medya kanadı için gerekli kurtarma sistemlerini yükleyin ve etkinleştirin.",
    ),
    "tools_section_packages_title": MessageLookupByLibrary.simpleMessage(
      "Uygulama Yığını",
    ),
    "tools_sidebar_app_name": MessageLookupByLibrary.simpleMessage("REQUIEM"),
    "tools_sidebar_mode_badge": MessageLookupByLibrary.simpleMessage(
      "Yerel Araçlar Modu",
    ),
    "tools_sidebar_tab_iso": MessageLookupByLibrary.simpleMessage(
      "ISO ve Puente",
    ),
    "tools_sidebar_tab_kms": MessageLookupByLibrary.simpleMessage(
      "KMS\'yi Etkinleştirme",
    ),
    "tools_sidebar_tab_office": MessageLookupByLibrary.simpleMessage(
      "Kurulum Ofisi",
    ),
    "tools_sidebar_tab_packages": MessageLookupByLibrary.simpleMessage(
      "Yığın Programları",
    ),
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
    "wifiConnectError": m31,
    "wifiConnected": m32,
    "wifiPassword": MessageLookupByLibrary.simpleMessage("Contraseña Wi-Fi"),
    "wifi_connect_error": m33,
    "wifi_connected_log": m34,
    "wifi_connected_status": m35,
    "wifi_dialog_title": MessageLookupByLibrary.simpleMessage(
      "Kurulumu Wi-Fi\'a bağlayın",
    ),
    "wifi_item_signal_security": m36,
    "wifi_none_found": MessageLookupByLibrary.simpleMessage(
      "Wi-Fi erişimine izin verilmez.",
    ),
    "wifi_password_hint": MessageLookupByLibrary.simpleMessage(
      "Contraseña Wi-Fi",
    ),
    "wifi_scanning": MessageLookupByLibrary.simpleMessage(
      "Kullanılabilir Wi-Fi ağları taranıyor...",
    ),
    "wimIntegrated": MessageLookupByLibrary.simpleMessage(
      "ISO ile entegre WIM",
    ),
    "wim_bridge_connection_error": m37,
    "wim_bridge_ip_dialog_title": MessageLookupByLibrary.simpleMessage(
      "Gereksinim IP\'si",
    ),
    "wim_bridge_ip_placeholder": MessageLookupByLibrary.simpleMessage(
      "192.168.1.20",
    ),
    "wim_bridge_not_found": MessageLookupByLibrary.simpleMessage(
      "Hiçbir şekilde kontrol edilemedi. IP kılavuzunu kullanın.",
    ),
    "wim_bridge_search_error": m38,
    "wim_bridge_searching": MessageLookupByLibrary.simpleMessage(
      "Yerel IPv4 ağında Requiem köprüleri aranıyor...",
    ),
    "wim_bridge_section_header": MessageLookupByLibrary.simpleMessage(
      "Windows için gerekli kurulumu hazırlamak için geri ödeme yapın",
    ),
    "wim_button_change_file": MessageLookupByLibrary.simpleMessage(
      "CAMBIAR ARŞİVO",
    ),
    "wim_button_connect_wifi": MessageLookupByLibrary.simpleMessage(
      "BAĞLANTI WI-FI",
    ),
    "wim_button_manual_ip": MessageLookupByLibrary.simpleMessage(
      "USAR IP KILAVUZU",
    ),
    "wim_button_rescan": MessageLookupByLibrary.simpleMessage(
      "Yeni birimlere geçiş",
    ),
    "wim_button_search_bridge": MessageLookupByLibrary.simpleMessage(
      "BUSCAR PUENTE",
    ),
    "wim_manual_search_hint": MessageLookupByLibrary.simpleMessage(
      "WIM dosyasını manuel olarak yerelleştirmek için \"Buscar\"ı kullanın.",
    ),
    "wim_picker_description": MessageLookupByLibrary.simpleMessage(
      "Windows kurulum görüntüsünün oranı (install.wim veya install.swm)\\n",
    ),
    "wim_picker_title": MessageLookupByLibrary.simpleMessage(
      "Windows Görüntüsünün Seçilmesi",
    ),
    "wim_status_found": MessageLookupByLibrary.simpleMessage("Görüntüler"),
    "wim_status_not_found": MessageLookupByLibrary.simpleMessage(
      "Yeni resim algılanamadı",
    ),
    "wim_status_searching": MessageLookupByLibrary.simpleMessage(
      "Buscando resmi…",
    ),
    "wim_status_searching_alt": MessageLookupByLibrary.simpleMessage(
      "Buscando görseli...",
    ),
    "wingetUnavailable": MessageLookupByLibrary.simpleMessage(
      "kanat kurulu değil veya PATH\'de değil.",
    ),
  };
}
