// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a pl locale. All the
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
  String get localeName => 'pl';

  static String m0(count) => "${count} programy";

  static String m1(version) => "Dostępna wersja: ${version}";

  static String m2(firmware) => "Aktualna aranżacja: ${firmware}";

  static String m3(error) => "Nie możesz się połączyć: ${error}";

  static String m4(error) => "Nie se pudo buscar el puente: ${error}";

  static String m5(host) => "Połączenie połączone z ${host}:1688...";

  static String m6(mode) => "Kompatybilny z Modo: ${mode}";

  static String m7(firmware) => "Aktualna aranżacja: ${firmware}";

  static String m8(diskNumber, mediaType, busType) =>
      "DYSK ${diskNumber} · ${mediaType} · ${busType}";

  static String m9(recommended) => "Kompatybilny z Modo: ${recommended}";

  static String m10(sizeGB) => "${sizeGB} GB";

  static String m11(imageName) =>
      "Puente: \${controller.bridgeAnnouncement?.imageName ??";

  static String m12(name, edition) => "Edycja wykryta: ${name} (${edition})";

  static String m13(error) => "Wystąpił błąd: ${error}";

  static String m14(val) => "Ruta nieważna: ${val}";

  static String m15(error) => "Nie możesz czytać treści dyrektora.\\n${error}";

  static String m16(path) => "Wybrany: ${path}";

  static String m17(path) => "Ruta nieważna: ${path}";

  static String m18(clients) => "${clients} połączenia";

  static String m19(error) => "BŁĄD: ${error}";

  static String m20(error) => "Brak wyliczonych interfejsów IPv4: ${error}";

  static String m21(path) => "Wybór WIM: ${path}";

  static String m22(error) => "Błąd KMS: ${error}";

  static String m23(product, channel, edition, status) =>
      "${product} / ${channel} / ${edition} bitów. La renovación queda ${status}.";

  static String m24(count) => "Wykryte wykrycia: ${count}.";

  static String m25(file) => "Wybrany: ${file}";

  static String m26(count) => "${count} programy";

  static String m27(host) => "Połączenie połączone z ${host}:1688...";

  static String m28(error) => "BŁĄD KMS-a: ${error}";

  static String m29(time, message) => "[${time}] ${message}";

  static String m30(count) => "Wykryte wykrycia: ${count}.";

  static String m31(error) => "Nie można podłączyć do Wi-Fi: ${error}";

  static String m32(network) => "Połącz się z ${network}.";

  static String m33(error) => "Nie można podłączyć do Wi-Fi: ${error}";

  static String m34(ssid, result) => "Wi-Fi połączone z ${ssid}. ${result}";

  static String m35(ssid) => "Połącz się z ${ssid}.";

  static String m36(signal, security) => "${signal}% · ${security}";

  static String m37(error) => "Nie możesz się połączyć: ${error}";

  static String m38(error) => "Nie se pudo buscar el puente: ${error}";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
    "actionCancel": MessageLookupByLibrary.simpleMessage("Anuluj"),
    "actionChange": MessageLookupByLibrary.simpleMessage("Kambiar"),
    "actionConfirm": MessageLookupByLibrary.simpleMessage("Potwierdź"),
    "actionConnect": MessageLookupByLibrary.simpleMessage("Połącz"),
    "actionContinue": MessageLookupByLibrary.simpleMessage("Kontynuuj"),
    "actionInstall": MessageLookupByLibrary.simpleMessage("Instaluj"),
    "actionRefresh": MessageLookupByLibrary.simpleMessage("Aktualizuj"),
    "actionRestartSystem": MessageLookupByLibrary.simpleMessage(
      "System Reiniciara",
    ),
    "actionScanAgain": MessageLookupByLibrary.simpleMessage(
      "Escanear unidades de nuevo",
    ),
    "actionSearch": MessageLookupByLibrary.simpleMessage("Autobus"),
    "actionSelect": MessageLookupByLibrary.simpleMessage("Wybór"),
    "activate": MessageLookupByLibrary.simpleMessage("Aktywator"),
    "activateKms": MessageLookupByLibrary.simpleMessage("Aktywuj KMS"),
    "appTitleInstaller": MessageLookupByLibrary.simpleMessage(
      "Instalator Requiem",
    ),
    "appTitleTools": MessageLookupByLibrary.simpleMessage("Narzędzia Requiem"),
    "app_title_installer": MessageLookupByLibrary.simpleMessage(
      "Instalator Requiem",
    ),
    "app_title_tools": MessageLookupByLibrary.simpleMessage(
      "Narzędzia Requiem",
    ),
    "applicationStack": MessageLookupByLibrary.simpleMessage("Stos aplikacji"),
    "applicationStackDescription": MessageLookupByLibrary.simpleMessage(
      "Zainstaluj i zaktualizuj herramientas de desarrollo esenciales dla Windows Mediante Winget.",
    ),
    "applicationsCount": m0,
    "automaticOffice": MessageLookupByLibrary.simpleMessage(
      "Automatyka biurowa",
    ),
    "automaticOfficeDescription": MessageLookupByLibrary.simpleMessage(
      "Użyj GVLK de wolumenu instalacji",
    ),
    "automaticRenewal": MessageLookupByLibrary.simpleMessage(
      "Renovación automatica",
    ),
    "automaticWindows": MessageLookupByLibrary.simpleMessage(
      "Automatyka Windows",
    ),
    "automaticWindowsDescription": MessageLookupByLibrary.simpleMessage(
      "Kompatybilny z Detecta edición i GVLK",
    ),
    "availableVersion": m1,
    "bootCurrent": m2,
    "bridgeConnectError": m3,
    "bridgeDescription": MessageLookupByLibrary.simpleMessage(
      "Przygotuj WIM do samodzielnego przesłania bezpośrednio do klientów Requiem de la misma red. Los klientów nie chroni przed instalacją WIM.",
    ),
    "bridgeIp": MessageLookupByLibrary.simpleMessage("IP del Puente Requiem"),
    "bridgePorts": MessageLookupByLibrary.simpleMessage(
      "Puerto HTTP 40124 · pobierz UDP 40123. Jeśli Windows Defender jest dostępny, możesz uzyskać dostęp do prywatnych danych.",
    ),
    "bridgeSearchError": m4,
    "checkingKms": m5,
    "clearLogs": MessageLookupByLibrary.simpleMessage("Dzienniki lipiarskie"),
    "common_cancel": MessageLookupByLibrary.simpleMessage("ANULUJ"),
    "common_change": MessageLookupByLibrary.simpleMessage("CAMBIAR"),
    "common_connect": MessageLookupByLibrary.simpleMessage("CONECTAR"),
    "common_continue": MessageLookupByLibrary.simpleMessage("KONTYNUUJ"),
    "common_label_disk": MessageLookupByLibrary.simpleMessage("DYSK"),
    "common_label_image": MessageLookupByLibrary.simpleMessage("OBRAZ"),
    "common_label_mode": MessageLookupByLibrary.simpleMessage("TRYB"),
    "common_refresh": MessageLookupByLibrary.simpleMessage("AKTUALIZACJA"),
    "common_search": MessageLookupByLibrary.simpleMessage("AUTOBUS"),
    "common_select": MessageLookupByLibrary.simpleMessage("SELEKCIONAR"),
    "compatibleMode": m6,
    "confirmDataDestruction": MessageLookupByLibrary.simpleMessage(
      "Potwierdź zniszczenie danych",
    ),
    "confirmInstallation": MessageLookupByLibrary.simpleMessage(
      "Potwierdź instalację",
    ),
    "connectInstallerWifi": MessageLookupByLibrary.simpleMessage(
      "Połącz się z instalatorem Wi-Fi",
    ),
    "connectWifi": MessageLookupByLibrary.simpleMessage("Podłącz Wi-Fi"),
    "console_title": MessageLookupByLibrary.simpleMessage("Konsola systemu"),
    "console_tooltip_clear": MessageLookupByLibrary.simpleMessage(
      "Dzienniki lipiarskie",
    ),
    "console_tooltip_copy": MessageLookupByLibrary.simpleMessage("Kopiuj logi"),
    "console_waiting_action": MessageLookupByLibrary.simpleMessage(
      "Esperando una acción...",
    ),
    "copyLogs": MessageLookupByLibrary.simpleMessage("Kopiuj logi"),
    "deploymentInProgress": MessageLookupByLibrary.simpleMessage(
      "Despliegue en curso",
    ),
    "designedBy": MessageLookupByLibrary.simpleMessage("Diseñado por Joss"),
    "destinationDiskDescription": MessageLookupByLibrary.simpleMessage(
      "Elija la unidad física donde se instalará Windows.",
    ),
    "detect": MessageLookupByLibrary.simpleMessage("Detektor"),
    "diskManagement": MessageLookupByLibrary.simpleMessage(
      "Administracja dyskotekami",
    ),
    "disk_badge_system": MessageLookupByLibrary.simpleMessage("SISTEMA"),
    "disk_boot_firmware_label": m7,
    "disk_button_confirm_and_install": MessageLookupByLibrary.simpleMessage(
      "POTWIERDŹ INSTALACJĘ",
    ),
    "disk_dialog_confirm_destruction_title":
        MessageLookupByLibrary.simpleMessage("POTWIERDŹ DESTRUCCIÓN DE DATOS"),
    "disk_dialog_confirm_install_title": MessageLookupByLibrary.simpleMessage(
      "POTWIERDŹ INSTALACJĘ",
    ),
    "disk_dialog_existing_notice": MessageLookupByLibrary.simpleMessage(
      "Windows se desplegará en W:\\\\ sin formatear.",
    ),
    "disk_dialog_format_warning": MessageLookupByLibrary.simpleMessage(
      "El disco seleccionado se formateará por completo. Se perderán todos los datos.",
    ),
    "disk_empty_list": MessageLookupByLibrary.simpleMessage(
      "Nie można wykrywać dyskotek físicos",
    ),
    "disk_item_header": m8,
    "disk_management_appbar_title": MessageLookupByLibrary.simpleMessage(
      "ADMINISTRACJA DYSKOTÓW",
    ),
    "disk_partition_gpt_uefi": MessageLookupByLibrary.simpleMessage("GPT/UEFI"),
    "disk_partition_mbr_bios": MessageLookupByLibrary.simpleMessage("MBR/BIOS"),
    "disk_recommended_mode_label": m9,
    "disk_selection_button_start": MessageLookupByLibrary.simpleMessage(
      "INICIAR INSTALACJA",
    ),
    "disk_selection_desc": MessageLookupByLibrary.simpleMessage(
      "Elija la unidad física donde se instalará Windows.",
    ),
    "disk_selection_title": MessageLookupByLibrary.simpleMessage(
      "Wybierz dyskotekę Destino",
    ),
    "disk_size_gb": m10,
    "disk_waiting_wim_hint": MessageLookupByLibrary.simpleMessage(
      "Esperando la detección de install.wim...",
    ),
    "disk_wim_bridge_source": m11,
    "disk_wim_detected": MessageLookupByLibrary.simpleMessage(
      "Wykrycie obrazu",
    ),
    "disk_wim_integrated_source": MessageLookupByLibrary.simpleMessage(
      "WIM zintegrowany z ISO",
    ),
    "disk_wim_not_found": MessageLookupByLibrary.simpleMessage(
      "Nie ma encontrady",
    ),
    "doNotDisconnect": MessageLookupByLibrary.simpleMessage(
      "No desconecte la energía ni retire el medio de instalación",
    ),
    "downloadAndActivate": MessageLookupByLibrary.simpleMessage(
      "Pobierz + aktywator",
    ),
    "downloadInstaller": MessageLookupByLibrary.simpleMessage(
      "Pobierz instalator (.exe)",
    ),
    "downloadPortable": MessageLookupByLibrary.simpleMessage(
      "Pobierz przenośny (.zip)",
    ),
    "drives": MessageLookupByLibrary.simpleMessage("Unidades"),
    "editionDetected": m12,
    "emptyFolder": MessageLookupByLibrary.simpleMessage(
      "Esta dywan está vacía",
    ),
    "errorGeneric": m13,
    "file_explorer_default_title": MessageLookupByLibrary.simpleMessage(
      "Wybierz obraz instalacji systemu Windows",
    ),
    "file_explorer_drives_header": MessageLookupByLibrary.simpleMessage(
      "UNIDADY",
    ),
    "file_explorer_empty_folder": MessageLookupByLibrary.simpleMessage(
      "Esta dywan está vacía",
    ),
    "file_explorer_filter_hint": MessageLookupByLibrary.simpleMessage("Filtr…"),
    "file_explorer_go_up_tooltip": MessageLookupByLibrary.simpleMessage(
      "Subir un nivel",
    ),
    "file_explorer_invalid_path_error": m14,
    "file_explorer_read_error": m15,
    "file_explorer_select_file_hint": MessageLookupByLibrary.simpleMessage(
      "Wybierz archiwum .wim lub .swm",
    ),
    "file_explorer_selected_file": m16,
    "filter": MessageLookupByLibrary.simpleMessage("Filtr…"),
    "formatGpt": MessageLookupByLibrary.simpleMessage(
      "Formatuj GPT (zalecane)",
    ),
    "formatGptDescription": MessageLookupByLibrary.simpleMessage(
      "Limpia el disco y crea diseño UEFI\nEFI (S:) + Windows (W:)",
    ),
    "formatMbr": MessageLookupByLibrary.simpleMessage(
      "Formatuj MBR (BIOS tutaj)",
    ),
    "formatMbrDescription": MessageLookupByLibrary.simpleMessage(
      "Limpia el disco y crea diseño heredado\nOkna solowe (C:)",
    ),
    "formatWarning": MessageLookupByLibrary.simpleMessage(
      "El disco seleccionado se formateará por completo. Se perderán todos los datos.",
    ),
    "generateIso": MessageLookupByLibrary.simpleMessage("Ogólne ISO"),
    "getInstallOnlyIso": MessageLookupByLibrary.simpleMessage(
      "Uzyskaj ISO para instalación solamente",
    ),
    "goUpOneLevel": MessageLookupByLibrary.simpleMessage("Subir un nivel"),
    "imageDetected": MessageLookupByLibrary.simpleMessage("Wykrycie obrazu"),
    "imageFound": MessageLookupByLibrary.simpleMessage("Obraz encontrada"),
    "imageNotFound": MessageLookupByLibrary.simpleMessage("Nie ma encontrady"),
    "imageSearching": MessageLookupByLibrary.simpleMessage(
      "Zdjęcie Buscando...",
    ),
    "installAll": MessageLookupByLibrary.simpleMessage("Zainstaluj to zadanie"),
    "installOffice": MessageLookupByLibrary.simpleMessage("Biuro Instalatora"),
    "installationProgress": MessageLookupByLibrary.simpleMessage(
      "Postęp instalacji",
    ),
    "invalidPath": m17,
    "isoDescription": MessageLookupByLibrary.simpleMessage(
      "Obtenga la ISO base do wyboru WIM al Arrancar, lub tworzy auto ISO que ya incluya su image of Windows.",
    ),
    "iso_bridge_clients_count": m18,
    "iso_bridge_desc": MessageLookupByLibrary.simpleMessage(
      "Przygotuj WIM do samodzielnego przesłania bezpośrednio do klientów Requiem de la misma red. Los klientów nie chroni przed instalacją WIM.",
    ),
    "iso_bridge_generic_error": m19,
    "iso_bridge_list_interfaces_error": m20,
    "iso_bridge_save_simple_iso_dialog": MessageLookupByLibrary.simpleMessage(
      "Guardar ISO proste Requiem",
    ),
    "iso_bridge_save_wim_iso_dialog": MessageLookupByLibrary.simpleMessage(
      "Guardar ISO de Requiem z WIM",
    ),
    "iso_bridge_select_wim_dialog": MessageLookupByLibrary.simpleMessage(
      "Wybierz obraz WIM z Windows",
    ),
    "iso_bridge_simple_iso_filename": MessageLookupByLibrary.simpleMessage(
      "Requiem-Installer-Simple.iso",
    ),
    "iso_bridge_start_validation_error": MessageLookupByLibrary.simpleMessage(
      "Wybierz WIM i prywatny interfejs IPv4.",
    ),
    "iso_bridge_wim_selected_log": m21,
    "iso_panel_button_generate_iso": MessageLookupByLibrary.simpleMessage(
      "OGÓLNE ISO",
    ),
    "iso_panel_button_select_wim": MessageLookupByLibrary.simpleMessage(
      "SELEKCJONARIUSZ WIM",
    ),
    "iso_panel_button_simple_iso": MessageLookupByLibrary.simpleMessage(
      "OBTENER ISO PARA INSTALACIÓN SOLAMENTE",
    ),
    "iso_panel_desc_media": MessageLookupByLibrary.simpleMessage(
      "Obtenga la ISO base do wyboru WIM al Arrancar, lub tworzy auto ISO que ya incluya su image of Windows.",
    ),
    "iso_panel_title_bridge": MessageLookupByLibrary.simpleMessage(
      "Puente IPv4 do instalacji",
    ),
    "iso_panel_title_media": MessageLookupByLibrary.simpleMessage(
      "Średnio instalacja",
    ),
    "kmsError": m22,
    "kmsHostEmpty": MessageLookupByLibrary.simpleMessage(
      "Błąd: el host KMS está vacío.",
    ),
    "kmsServer": MessageLookupByLibrary.simpleMessage("Serwer KMS"),
    "kmsTask160Days": MessageLookupByLibrary.simpleMessage("Tarea 160 días"),
    "kmsVolumeActivation": MessageLookupByLibrary.simpleMessage(
      "Aktywacja głośności (KMS)",
    ),
    "kms_product_office_ltsc_professional_plus_2021":
        MessageLookupByLibrary.simpleMessage(
          "Pakiet Office LTSC Professional Plus 2021",
        ),
    "kms_product_office_ltsc_professional_plus_2024":
        MessageLookupByLibrary.simpleMessage(
          "Office LTSC Professional Plus 2024",
        ),
    "kms_product_office_professional_plus_2013":
        MessageLookupByLibrary.simpleMessage(
          "Pakiet Office Professional Plus 2013",
        ),
    "kms_product_office_professional_plus_2016":
        MessageLookupByLibrary.simpleMessage(
          "Pakiet Office Professional Plus 2016",
        ),
    "kms_product_office_professional_plus_2019":
        MessageLookupByLibrary.simpleMessage(
          "Pakiet Office Professional Plus 2019",
        ),
    "kms_product_office_standard_2013": MessageLookupByLibrary.simpleMessage(
      "Standard biurowy 2013",
    ),
    "kms_product_windows_10_11_education": MessageLookupByLibrary.simpleMessage(
      "Edukacja w systemie Windows 10/11",
    ),
    "kms_product_windows_10_11_education_n":
        MessageLookupByLibrary.simpleMessage("Windows 10/11 Edukacja N"),
    "kms_product_windows_10_11_enterprise":
        MessageLookupByLibrary.simpleMessage(
          "Windows 10/11 dla przedsiębiorstw",
        ),
    "kms_product_windows_10_11_enterprise_g":
        MessageLookupByLibrary.simpleMessage("Windows 10/11 Enterprise G"),
    "kms_product_windows_10_11_enterprise_g_n":
        MessageLookupByLibrary.simpleMessage("Windows 10/11 Enterprise G N"),
    "kms_product_windows_10_11_enterprise_n":
        MessageLookupByLibrary.simpleMessage("Windows 10/11 Enterprise N"),
    "kms_product_windows_10_11_pro": MessageLookupByLibrary.simpleMessage(
      "Windows 10/11 Pro",
    ),
    "kms_product_windows_10_11_pro_education":
        MessageLookupByLibrary.simpleMessage("Windows 10/11 Pro Edukacja"),
    "kms_product_windows_10_11_pro_for_workstations":
        MessageLookupByLibrary.simpleMessage(
          "Windows 10/11 Pro dla stacji roboczych",
        ),
    "kms_product_windows_10_11_pro_n": MessageLookupByLibrary.simpleMessage(
      "Windows 10/11 Pro N",
    ),
    "kms_product_windows_10_11_pro_workstations":
        MessageLookupByLibrary.simpleMessage(
          "Stacje robocze z systemem Windows 10/11 Pro",
        ),
    "kms_product_windows_8_1_enterprise": MessageLookupByLibrary.simpleMessage(
      "Korporacyjny system Windows 8.1",
    ),
    "kms_product_windows_8_1_pro": MessageLookupByLibrary.simpleMessage(
      "Windows 8.1 Pro",
    ),
    "kms_product_windows_8_enterprise": MessageLookupByLibrary.simpleMessage(
      "Windows 8 dla przedsiębiorstw",
    ),
    "kms_product_windows_8_pro": MessageLookupByLibrary.simpleMessage(
      "Windows 8Pro",
    ),
    "kms_product_windows_server_2019_datacenter":
        MessageLookupByLibrary.simpleMessage(
          "Centrum danych Windows Server 2019",
        ),
    "kms_product_windows_server_2019_standard":
        MessageLookupByLibrary.simpleMessage("Standard Windows Server 2019"),
    "kms_product_windows_server_2022_datacenter":
        MessageLookupByLibrary.simpleMessage(
          "Centrum danych Windows Server 2022",
        ),
    "kms_product_windows_server_2022_standard":
        MessageLookupByLibrary.simpleMessage("Standard Windows Server 2022"),
    "kms_product_windows_server_2025_datacenter":
        MessageLookupByLibrary.simpleMessage(
          "Centrum danych Windows Server 2025",
        ),
    "kms_product_windows_server_2025_standard":
        MessageLookupByLibrary.simpleMessage("Standard Windows Server 2025"),
    "kms_product_windows_subsystem_for_linux":
        MessageLookupByLibrary.simpleMessage(
          "Podsystem Windows dla systemu Linux",
        ),
    "kms_product_windows_terminal": MessageLookupByLibrary.simpleMessage(
      "Terminal Windowsowy",
    ),
    "landingDescription": MessageLookupByLibrary.simpleMessage(
      "Instalador de Windows de alta precisión para entornos de alto rendimiento. Experimente un despliegue rápido con orquestación directa de DISM y optimización automatizada del sistema.",
    ),
    "landing_badge_author": MessageLookupByLibrary.simpleMessage(
      "DISEÑADO POR JOSS",
    ),
    "landing_badge_secure_boot": MessageLookupByLibrary.simpleMessage(
      "KOMPATYBILNY BEZPIECZNY BUT",
    ),
    "landing_badge_version": MessageLookupByLibrary.simpleMessage(
      "WERSJA STABILNA",
    ),
    "landing_button_logs": MessageLookupByLibrary.simpleMessage(
      "LOGI DEL SISTEMA",
    ),
    "landing_button_start": MessageLookupByLibrary.simpleMessage("EMPEZAR"),
    "landing_description_part1": MessageLookupByLibrary.simpleMessage(
      "Instalador de Windows de alta precisión para entornos de alto rendimiento.",
    ),
    "landing_description_part2": MessageLookupByLibrary.simpleMessage(
      "Experimente un despliegue rápido con orquestación directa de DISM y optimización automatizada del sistema.",
    ),
    "landing_subtitle": MessageLookupByLibrary.simpleMessage(
      "DESPLIEGUE DE SO DE PRÓXIMA GENERACIÓN",
    ),
    "landing_title_installer": MessageLookupByLibrary.simpleMessage(
      "INSTALATOR REQUIEM",
    ),
    "landing_title_tools": MessageLookupByLibrary.simpleMessage(
      "NARZĘDZIA REQUIEM",
    ),
    "licenseActivation": MessageLookupByLibrary.simpleMessage(
      "Aktywacja licencji",
    ),
    "logsCopied": MessageLookupByLibrary.simpleMessage(
      "Logi copiados al portapapeles.",
    ),
    "mandatoryUpdate": MessageLookupByLibrary.simpleMessage(
      "Esta updateización es obligatoryjne y no puede omitirse.",
    ),
    "manualWimHint": MessageLookupByLibrary.simpleMessage(
      "Użyj „Buscar” do lokalnego archiwizowania instrukcji WIM.",
    ),
    "mediaInstallation": MessageLookupByLibrary.simpleMessage(
      "Średnio instalacja",
    ),
    "networkBridge": MessageLookupByLibrary.simpleMessage(
      "Puente IPv4 do instalacji",
    ),
    "networkInterface": MessageLookupByLibrary.simpleMessage(
      "Interfaz Wi-Fi/LAN IPv4",
    ),
    "nextGenerationDeployment": MessageLookupByLibrary.simpleMessage(
      "Despliegue de SO de próxima generación",
    ),
    "noBridgeFound": MessageLookupByLibrary.simpleMessage(
      "No se encontró ningún puente. Pruebe z instrukcją IP.",
    ),
    "noFormatWarning": MessageLookupByLibrary.simpleMessage(
      "Windows se desplegará en W:\\ sin formatear.",
    ),
    "noImageDetected": MessageLookupByLibrary.simpleMessage(
      "Nie wykrywaj obrazu",
    ),
    "noKmsProducts": MessageLookupByLibrary.simpleMessage(
      "Brak produktów siana wybranych przez KMS.",
    ),
    "noPhysicalDisks": MessageLookupByLibrary.simpleMessage(
      "Nie można wykrywać dyskotek físicos",
    ),
    "noProgramsSelected": MessageLookupByLibrary.simpleMessage(
      "Brak programów do wyboru.",
    ),
    "noWifiNetworks": MessageLookupByLibrary.simpleMessage(
      "Brak dostępu do sieci Wi-Fi.",
    ),
    "noWingetPackages": MessageLookupByLibrary.simpleMessage(
      "Nie ma wykrywacza paquetes conocidos con winget.",
    ),
    "officeInstallDescription": MessageLookupByLibrary.simpleMessage(
      "Despliega Microsoft Office LTSC lub 365-stopniowa automatyzacja za pomocą ODT.",
    ),
    "officeInstaller": MessageLookupByLibrary.simpleMessage(
      "Instalator pakietu Office",
    ),
    "officeRenewalStatus": m23,
    "officeVersion": MessageLookupByLibrary.simpleMessage(
      "Wersja pakietu Office",
    ),
    "office_odt_kms_badge": MessageLookupByLibrary.simpleMessage("ODT + KMS"),
    "office_odt_panel_title": MessageLookupByLibrary.simpleMessage(
      "Narzędzie do wdrażania pakietu Office",
    ),
    "office_pkg_desc_2019": MessageLookupByLibrary.simpleMessage(
      "Kliknij, aby uruchomić wolumen kanału PerpetualVL2019",
    ),
    "office_pkg_desc_2021": MessageLookupByLibrary.simpleMessage(
      "Kliknij, aby uruchomić wolumen kanału PerpetualVL2021",
    ),
    "office_pkg_desc_2024": MessageLookupByLibrary.simpleMessage(
      "Kliknij, aby uruchomić wolumen kanału PerpetualVL2024",
    ),
    "office_pkg_name_2019": MessageLookupByLibrary.simpleMessage(
      "Pakiet Office Pro Plus 2019",
    ),
    "office_pkg_name_2021": MessageLookupByLibrary.simpleMessage(
      "Pakiet Office LTSC Pro Plus 2021",
    ),
    "office_pkg_name_2024": MessageLookupByLibrary.simpleMessage(
      "Pakiet Office LTSC Pro Plus 2024",
    ),
    "onlyWindows": MessageLookupByLibrary.simpleMessage(
      "Ta funkcja jest dostępna solo w systemie Windows.",
    ),
    "packageStack": MessageLookupByLibrary.simpleMessage(
      "Programy stosowe (Winget)",
    ),
    "packagesDetected": m24,
    "partitionMode": MessageLookupByLibrary.simpleMessage("Modo de partyción"),
    "pkg_cat_apache_php_mysql": MessageLookupByLibrary.simpleMessage(
      "Apache PHP MySQL",
    ),
    "pkg_cat_bi_desktop": MessageLookupByLibrary.simpleMessage("Pulpit BI"),
    "pkg_cat_cliente_api": MessageLookupByLibrary.simpleMessage("API klienta"),
    "pkg_cat_cliente_db": MessageLookupByLibrary.simpleMessage("Klient DB"),
    "pkg_cat_compiladores_c": MessageLookupByLibrary.simpleMessage(
      "Kompilatory C++",
    ),
    "pkg_cat_compresor": MessageLookupByLibrary.simpleMessage("Kompresor"),
    "pkg_cat_comunicacion": MessageLookupByLibrary.simpleMessage("Komunikacja"),
    "pkg_cat_control_de_versiones": MessageLookupByLibrary.simpleMessage(
      "Kontrola wersji",
    ),
    "pkg_cat_desktop": MessageLookupByLibrary.simpleMessage("Pulpit"),
    "pkg_cat_diagramas": MessageLookupByLibrary.simpleMessage("Diagramy"),
    "pkg_cat_distro_wsl": MessageLookupByLibrary.simpleMessage(
      "Dystrybucja WSL",
    ),
    "pkg_cat_editor": MessageLookupByLibrary.simpleMessage("Redaktor"),
    "pkg_cat_golang": MessageLookupByLibrary.simpleMessage("Golang"),
    "pkg_cat_gpu_compute": MessageLookupByLibrary.simpleMessage(
      "Obliczenia GPU",
    ),
    "pkg_cat_grabacion": MessageLookupByLibrary.simpleMessage("Grabacion"),
    "pkg_cat_ide_ai": MessageLookupByLibrary.simpleMessage("IDE AI"),
    "pkg_cat_ide_android": MessageLookupByLibrary.simpleMessage("IDE Androida"),
    "pkg_cat_ide_completo": MessageLookupByLibrary.simpleMessage(
      "IDE kompletne",
    ),
    "pkg_cat_instaladores": MessageLookupByLibrary.simpleMessage(
      "Instalatorzy",
    ),
    "pkg_cat_javascript": MessageLookupByLibrary.simpleMessage("JavaScript"),
    "pkg_cat_limpieza": MessageLookupByLibrary.simpleMessage("Limpieza"),
    "pkg_cat_modelos_locales": MessageLookupByLibrary.simpleMessage(
      "Lokalizacje modeli",
    ),
    "pkg_cat_navegador": MessageLookupByLibrary.simpleMessage("Navegador"),
    "pkg_cat_python_3": MessageLookupByLibrary.simpleMessage("Pyton 3"),
    "pkg_cat_runtime_c": MessageLookupByLibrary.simpleMessage(
      "Środowisko wykonawcze C++",
    ),
    "pkg_cat_runtime_escritorio": MessageLookupByLibrary.simpleMessage(
      "Opis środowiska wykonawczego",
    ),
    "pkg_cat_runtime_juegos": MessageLookupByLibrary.simpleMessage(
      "Czas wykonania",
    ),
    "pkg_cat_runtime_php": MessageLookupByLibrary.simpleMessage(
      "Środowisko wykonawcze PHP",
    ),
    "pkg_cat_rustup": MessageLookupByLibrary.simpleMessage("Rustup"),
    "pkg_cat_sdk__net": MessageLookupByLibrary.simpleMessage("SDK.NET"),
    "pkg_cat_servidor_db": MessageLookupByLibrary.simpleMessage("Serwer DB"),
    "pkg_cat_ssh_clasico": MessageLookupByLibrary.simpleMessage(
      "Klasyczny SSH",
    ),
    "pkg_cat_ssh_moderno": MessageLookupByLibrary.simpleMessage(
      "Nowoczesne SSH",
    ),
    "pkg_cat_subsistema_linux": MessageLookupByLibrary.simpleMessage(
      "Subsistema Linux",
    ),
    "pkg_cat_temurin_21": MessageLookupByLibrary.simpleMessage("Temurin 21"),
    "pkg_cat_terminal_moderno": MessageLookupByLibrary.simpleMessage(
      "Nowoczesny terminal",
    ),
    "prepareBridge": MessageLookupByLibrary.simpleMessage(
      "Przygotuj i zainicjuj puente",
    ),
    "progress_button_reboot": MessageLookupByLibrary.simpleMessage(
      "REINICIAR SISTEMA",
    ),
    "progress_footer_warning": MessageLookupByLibrary.simpleMessage(
      "NO DESCONECTE LA ENERGÍA NI RETIRE EL MEDIO DE INSTALACIÓN",
    ),
    "progress_header_badge": MessageLookupByLibrary.simpleMessage(
      "DESPLIEGUE EN CURSO",
    ),
    "provideWindowsImage": MessageLookupByLibrary.simpleMessage(
      "Proporcja obrazu instalacji systemu Windows (install.wim lub install.swm)\ndesde una unidad USB lub cualquier medio montado.",
    ),
    "receiveInstallation": MessageLookupByLibrary.simpleMessage(
      "O reciba la installación preparada desde Requiem dla Windows",
    ),
    "renewalActive": MessageLookupByLibrary.simpleMessage("Aktywa"),
    "renewalDisabled": MessageLookupByLibrary.simpleMessage("Dezaktywacja"),
    "searchingImage": MessageLookupByLibrary.simpleMessage("Obraz Buscando…"),
    "secureBootCompatible": MessageLookupByLibrary.simpleMessage(
      "Kompatybilny z bezpiecznym rozruchem",
    ),
    "selectDestinationDisk": MessageLookupByLibrary.simpleMessage(
      "Wybierz dyskotekę przeznaczoną",
    ),
    "selectFileHint": MessageLookupByLibrary.simpleMessage(
      "Wybierz archiwum .wim lub .swm",
    ),
    "selectWim": MessageLookupByLibrary.simpleMessage("Wybierz WIM"),
    "selectWimFirst": MessageLookupByLibrary.simpleMessage(
      "Wybierz WIM i prywatny interfejs IPv4.",
    ),
    "selectWindowsImage": MessageLookupByLibrary.simpleMessage(
      "Wybierz obraz systemu Windows",
    ),
    "selectWindowsImageFull": MessageLookupByLibrary.simpleMessage(
      "Wybierz obraz instalacji systemu Windows",
    ),
    "selectedFile": m25,
    "stableVersion": MessageLookupByLibrary.simpleMessage(
      "Wersja stabilna v1.0.0",
    ),
    "start": MessageLookupByLibrary.simpleMessage("Empezara"),
    "startInstallation": MessageLookupByLibrary.simpleMessage(
      "Pierwsza instalacja",
    ),
    "stopBridge": MessageLookupByLibrary.simpleMessage("Zachowaj ostrożność"),
    "systemConsole": MessageLookupByLibrary.simpleMessage("Konsola systemu"),
    "systemDisk": MessageLookupByLibrary.simpleMessage("System"),
    "systemLogs": MessageLookupByLibrary.simpleMessage("Logi systemu"),
    "tools_badge_iso_compatibility": MessageLookupByLibrary.simpleMessage(
      "Konserwacje BIOS + UEFI",
    ),
    "tools_badge_kms_pending": MessageLookupByLibrary.simpleMessage(
      "Dołącz KMS",
    ),
    "tools_badge_package_count": m26,
    "tools_button_activate_kms": MessageLookupByLibrary.simpleMessage(
      "AKTYWAR KMS",
    ),
    "tools_button_install_all_packages": MessageLookupByLibrary.simpleMessage(
      "INSTALACJA DO ZROBIENIA",
    ),
    "tools_button_install_office": MessageLookupByLibrary.simpleMessage(
      "BIURO INSTALARNE",
    ),
    "tools_header_title": MessageLookupByLibrary.simpleMessage(
      "NARZĘDZIA DO MIGRACJI REQUIEM",
    ),
    "tools_kms_checking_connectivity": m27,
    "tools_kms_empty_host_error": MessageLookupByLibrary.simpleMessage(
      "BŁĄD: el host KMS jest pusty.",
    ),
    "tools_kms_error_log": m28,
    "tools_kms_no_products_selected": MessageLookupByLibrary.simpleMessage(
      "Brak produktów siana wybranych przez KMS.",
    ),
    "tools_log_format": m29,
    "tools_logs_copied_snackbar": MessageLookupByLibrary.simpleMessage(
      "Logi copiados al portapapeles.",
    ),
    "tools_packages_detected_count": m30,
    "tools_packages_none_detected": MessageLookupByLibrary.simpleMessage(
      "Nie ma wykrywacza paquetes conocidos con winget.",
    ),
    "tools_packages_none_selected": MessageLookupByLibrary.simpleMessage(
      "Brak programów do wyboru.",
    ),
    "tools_section_activation_desc": MessageLookupByLibrary.simpleMessage(
      "Skonfiguruj serwer KMS lokalnie lub zdalnie, aby aktywować system Windows i pakiet Office.",
    ),
    "tools_section_activation_title": MessageLookupByLibrary.simpleMessage(
      "Aktywacja licencji",
    ),
    "tools_section_iso_desc": MessageLookupByLibrary.simpleMessage(
      "Bezpłatne narzędzia autonomiczne z integracją lub dystrybucją WIM poprzez bezpośrednią instalację dla protokołu IPv4.",
    ),
    "tools_section_iso_title": MessageLookupByLibrary.simpleMessage(
      "ISO i usuń kolor czerwony",
    ),
    "tools_section_office_desc": MessageLookupByLibrary.simpleMessage(
      "Despliega Microsoft Office LTSC lub 365-stopniowa automatyzacja za pomocą ODT.",
    ),
    "tools_section_office_title": MessageLookupByLibrary.simpleMessage(
      "Instalator pakietu Office",
    ),
    "tools_section_packages_desc": MessageLookupByLibrary.simpleMessage(
      "Zainstaluj i zaktualizuj herramientas de desarrollo esenciales dla Windows Mediante Winget.",
    ),
    "tools_section_packages_title": MessageLookupByLibrary.simpleMessage(
      "Stos aplikacji",
    ),
    "tools_sidebar_app_name": MessageLookupByLibrary.simpleMessage("REQUIEM"),
    "tools_sidebar_mode_badge": MessageLookupByLibrary.simpleMessage(
      "Tryb narzędzi lokalnych",
    ),
    "tools_sidebar_tab_iso": MessageLookupByLibrary.simpleMessage(
      "ISO i Puente",
    ),
    "tools_sidebar_tab_kms": MessageLookupByLibrary.simpleMessage(
      "Aktywacja KMS",
    ),
    "tools_sidebar_tab_office": MessageLookupByLibrary.simpleMessage(
      "Biuro instalacji",
    ),
    "tools_sidebar_tab_packages": MessageLookupByLibrary.simpleMessage(
      "Programy stosowe",
    ),
    "unknown": MessageLookupByLibrary.simpleMessage("Desconocido"),
    "updateDescription": MessageLookupByLibrary.simpleMessage(
      "Ciągłe używanie Requiem Tools jest niezbędne do aktualizacji wersji más reciente.",
    ),
    "updateRequired": MessageLookupByLibrary.simpleMessage(
      "Aktualizowanie żądania",
    ),
    "useExistingPartitions": MessageLookupByLibrary.simpleMessage(
      "Użyj partycji istniejących",
    ),
    "useExistingPartitionsDescription": MessageLookupByLibrary.simpleMessage(
      "Sin formatear — despliega en W: tal cual\nUżywane gestiona las particiones manualmente",
    ),
    "waitingAction": MessageLookupByLibrary.simpleMessage(
      "Esperando una acción...",
    ),
    "waitingForWim": MessageLookupByLibrary.simpleMessage(
      "Esperando la detección de install.wim...",
    ),
    "wifiConnectError": m31,
    "wifiConnected": m32,
    "wifiPassword": MessageLookupByLibrary.simpleMessage("Contraseña Wi-Fi"),
    "wifi_connect_error": m33,
    "wifi_connected_log": m34,
    "wifi_connected_status": m35,
    "wifi_dialog_title": MessageLookupByLibrary.simpleMessage(
      "Połącz się z instalatorem Wi-Fi",
    ),
    "wifi_item_signal_security": m36,
    "wifi_none_found": MessageLookupByLibrary.simpleMessage(
      "Brak dostępu do sieci Wi-Fi.",
    ),
    "wifi_password_hint": MessageLookupByLibrary.simpleMessage(
      "Contraseña Wi-Fi",
    ),
    "wifi_scanning": MessageLookupByLibrary.simpleMessage(
      "Skanuję dostępne sieci Wi-Fi...",
    ),
    "wimIntegrated": MessageLookupByLibrary.simpleMessage(
      "WIM zintegrowany z ISO",
    ),
    "wim_bridge_connection_error": m37,
    "wim_bridge_ip_dialog_title": MessageLookupByLibrary.simpleMessage(
      "IP del Puente Requiem",
    ),
    "wim_bridge_ip_placeholder": MessageLookupByLibrary.simpleMessage(
      "192.168.1.20",
    ),
    "wim_bridge_not_found": MessageLookupByLibrary.simpleMessage(
      "No se encontró ningún puente. Pruebe z instrukcją IP.",
    ),
    "wim_bridge_search_error": m38,
    "wim_bridge_searching": MessageLookupByLibrary.simpleMessage(
      "Wyszukiwanie mostów Requiem w lokalnej sieci IPv4...",
    ),
    "wim_bridge_section_header": MessageLookupByLibrary.simpleMessage(
      "O reciba la installación preparada desde Requiem dla Windows",
    ),
    "wim_button_change_file": MessageLookupByLibrary.simpleMessage(
      "ARCHIWO CAMBIAR",
    ),
    "wim_button_connect_wifi": MessageLookupByLibrary.simpleMessage(
      "CONECTAR WI-FI",
    ),
    "wim_button_manual_ip": MessageLookupByLibrary.simpleMessage(
      "PODRĘCZNIK IP USAR",
    ),
    "wim_button_rescan": MessageLookupByLibrary.simpleMessage(
      "Escanear unidades de nuevo",
    ),
    "wim_button_search_bridge": MessageLookupByLibrary.simpleMessage(
      "BUSCAR PUENTE",
    ),
    "wim_manual_search_hint": MessageLookupByLibrary.simpleMessage(
      "Użyj „Buscar” do lokalnego archiwizowania instrukcji WIM.",
    ),
    "wim_picker_description": MessageLookupByLibrary.simpleMessage(
      "Odpowiedni do obrazu instalacji systemu Windows (install.wim lub install.swm)\\n",
    ),
    "wim_picker_title": MessageLookupByLibrary.simpleMessage(
      "Wybierz obraz systemu Windows",
    ),
    "wim_status_found": MessageLookupByLibrary.simpleMessage(
      "Obraz encontrada",
    ),
    "wim_status_not_found": MessageLookupByLibrary.simpleMessage(
      "Nie wykrywaj obrazu",
    ),
    "wim_status_searching": MessageLookupByLibrary.simpleMessage(
      "Obraz Buscando…",
    ),
    "wim_status_searching_alt": MessageLookupByLibrary.simpleMessage(
      "Zdjęcie Buscando...",
    ),
    "wingetUnavailable": MessageLookupByLibrary.simpleMessage(
      "winget no está instalado o no está en PATH.",
    ),
  };
}
