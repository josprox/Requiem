// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a de locale. All the
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
  String get localeName => 'de';

  static String m0(count) => "${count} Programme";

  static String m1(version) => "Verfügbare Version: ${version}";

  static String m2(firmware) => "Aktueller Auftrag: ${firmware}";

  static String m3(error) => "Keine Verbindung möglich: ${error}";

  static String m4(error) => "No se pudo buscar el puente: ${error}";

  static String m5(host) => "Verbindungsprüfung mit ${host}:1688...";

  static String m6(mode) => "Modo-kompatibel: ${mode}";

  static String m7(firmware) => "Aktueller Auftrag: ${firmware}";

  static String m8(diskNumber, mediaType, busType) =>
      "FESTPLATTE ${diskNumber} · ${mediaType} · ${busType}";

  static String m9(recommended) => "Modo-kompatibel: ${recommended}";

  static String m10(sizeGB) => "${sizeGB} GB";

  static String m11(imageName) =>
      "Puente: \${controller.bridgeAnnouncement?.imageName ??";

  static String m12(name, edition) => "Erkannte Ausgabe: ${name} (${edition})";

  static String m13(error) => "Es ist ein Fehler aufgetreten: ${error}";

  static String m14(val) => "Ungültige Route: ${val}";

  static String m15(error) =>
      "Sie können den Inhalt des Verzeichnisses nicht lesen.\\n${error}";

  static String m16(path) => "Ausgewählt: ${path}";

  static String m17(path) => "Ungültige Route: ${path}";

  static String m18(clients) => "${clients} Verbindungen";

  static String m19(error) => "FEHLER: ${error}";

  static String m20(error) =>
      "Sie können die IPv4-Schnittstellen nicht auflisten: ${error}";

  static String m21(path) => "Ausgewähltes WIM: ${path}";

  static String m22(error) => "Fehler KMS: ${error}";

  static String m23(product, channel, edition, status) =>
      "${product} / ${channel} / ${edition} Bits. Die Renovierung dauerte ${status}.";

  static String m24(count) => "Erkannte Pakete: ${count}.";

  static String m25(file) => "Ausgewählt: ${file}";

  static String m26(count) => "${count} Programme";

  static String m27(host) => "Verbindungsprüfung mit ${host}:1688...";

  static String m28(error) => "FEHLER KMS: ${error}";

  static String m29(time, message) => "[${time}] ${message}";

  static String m30(count) => "Erkannte Pakete: ${count}.";

  static String m31(error) =>
      "Sie können keine Verbindung zu WLAN herstellen: ${error}";

  static String m32(network) => "Verbunden mit ${network}.";

  static String m33(error) =>
      "Sie können keine Verbindung zu WLAN herstellen: ${error}";

  static String m34(ssid, result) => "WLAN verbunden mit ${ssid}. ${result}";

  static String m35(ssid) => "Verbunden mit ${ssid}.";

  static String m36(signal, security) => "${signal}% · ${security}";

  static String m37(error) => "Keine Verbindung möglich: ${error}";

  static String m38(error) => "No se pudo buscar el puente: ${error}";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
    "actionCancel": MessageLookupByLibrary.simpleMessage("Abbrechen"),
    "actionChange": MessageLookupByLibrary.simpleMessage("Kambiar"),
    "actionConfirm": MessageLookupByLibrary.simpleMessage("Bestätigen"),
    "actionConnect": MessageLookupByLibrary.simpleMessage("Konektar"),
    "actionContinue": MessageLookupByLibrary.simpleMessage("Fortsetzung"),
    "actionInstall": MessageLookupByLibrary.simpleMessage("Installiert"),
    "actionRefresh": MessageLookupByLibrary.simpleMessage("Aktualisieren"),
    "actionRestartSystem": MessageLookupByLibrary.simpleMessage(
      "Reiniciar-System",
    ),
    "actionScanAgain": MessageLookupByLibrary.simpleMessage(
      "Suchen Sie nach neuen Unidades",
    ),
    "actionSearch": MessageLookupByLibrary.simpleMessage("Buscar"),
    "actionSelect": MessageLookupByLibrary.simpleMessage("Auswahl"),
    "activate": MessageLookupByLibrary.simpleMessage("Aktivar"),
    "activateKms": MessageLookupByLibrary.simpleMessage("Activar KMS"),
    "appTitleInstaller": MessageLookupByLibrary.simpleMessage(
      "Requiem-Installer",
    ),
    "appTitleTools": MessageLookupByLibrary.simpleMessage("Requiem-Werkzeuge"),
    "app_title_installer": MessageLookupByLibrary.simpleMessage(
      "Requiem-Installer",
    ),
    "app_title_tools": MessageLookupByLibrary.simpleMessage(
      "Requiem-Werkzeuge",
    ),
    "applicationStack": MessageLookupByLibrary.simpleMessage(
      "Stapel von Anwendungen",
    ),
    "applicationStackDescription": MessageLookupByLibrary.simpleMessage(
      "Installieren und aktualisieren Sie die Betriebssysteme für Windows mit mittlerem Winget.",
    ),
    "applicationsCount": m0,
    "automaticOffice": MessageLookupByLibrary.simpleMessage(
      "Automatisches Büro",
    ),
    "automaticOfficeDescription": MessageLookupByLibrary.simpleMessage(
      "Verwenden Sie das installierte GVLK-Volumen",
    ),
    "automaticRenewal": MessageLookupByLibrary.simpleMessage(
      "Automatische Renovierung",
    ),
    "automaticWindows": MessageLookupByLibrary.simpleMessage(
      "Windows automatisch",
    ),
    "automaticWindowsDescription": MessageLookupByLibrary.simpleMessage(
      "Erkennen Sie die Edition und GVLK-Kompatibilität",
    ),
    "availableVersion": m1,
    "bootCurrent": m2,
    "bridgeConnectError": m3,
    "bridgeDescription": MessageLookupByLibrary.simpleMessage(
      "Bereiten Sie WIM ein einziges Mal vor und übermitteln Sie es direkt an die Kunden. Kunden dürfen WIM vor der Installation nicht bewachen.",
    ),
    "bridgeIp": MessageLookupByLibrary.simpleMessage("IP del puente Requiem"),
    "bridgePorts": MessageLookupByLibrary.simpleMessage(
      "HTTP 40124 und UDP 40123. Wenn Sie Windows Defender verwenden, erhalten Sie Zugriff auf persönliche Daten.",
    ),
    "bridgeSearchError": m4,
    "checkingKms": m5,
    "clearLogs": MessageLookupByLibrary.simpleMessage("Limpiar-Protokolle"),
    "common_cancel": MessageLookupByLibrary.simpleMessage("STORNIERUNG"),
    "common_change": MessageLookupByLibrary.simpleMessage("KAMBIAR"),
    "common_connect": MessageLookupByLibrary.simpleMessage("CONECTAR"),
    "common_continue": MessageLookupByLibrary.simpleMessage("WEITER"),
    "common_label_disk": MessageLookupByLibrary.simpleMessage("DISK"),
    "common_label_image": MessageLookupByLibrary.simpleMessage("BILD"),
    "common_label_mode": MessageLookupByLibrary.simpleMessage("MODUS"),
    "common_refresh": MessageLookupByLibrary.simpleMessage("AKTUALISIEREN"),
    "common_search": MessageLookupByLibrary.simpleMessage("BUSCAR"),
    "common_select": MessageLookupByLibrary.simpleMessage("AUSWAHL"),
    "compatibleMode": m6,
    "confirmDataDestruction": MessageLookupByLibrary.simpleMessage(
      "Bestätigen Sie die Datenvernichtung",
    ),
    "confirmInstallation": MessageLookupByLibrary.simpleMessage(
      "Bestätigen Sie die Installation",
    ),
    "connectInstallerWifi": MessageLookupByLibrary.simpleMessage(
      "Verbinden Sie den Installateur mit Wi-Fi",
    ),
    "connectWifi": MessageLookupByLibrary.simpleMessage("Conectar Wi-Fi"),
    "console_title": MessageLookupByLibrary.simpleMessage(
      "Consola del Sistema",
    ),
    "console_tooltip_clear": MessageLookupByLibrary.simpleMessage(
      "Limpiar-Protokolle",
    ),
    "console_tooltip_copy": MessageLookupByLibrary.simpleMessage(
      "Protokolle kopieren",
    ),
    "console_waiting_action": MessageLookupByLibrary.simpleMessage(
      "Esperando una acción...",
    ),
    "copyLogs": MessageLookupByLibrary.simpleMessage("Protokolle kopieren"),
    "deploymentInProgress": MessageLookupByLibrary.simpleMessage(
      "Depliegue en curso",
    ),
    "designedBy": MessageLookupByLibrary.simpleMessage("Entworfen von Joss"),
    "destinationDiskDescription": MessageLookupByLibrary.simpleMessage(
      "Elija la unidad física donde se instalará Windows.",
    ),
    "detect": MessageLookupByLibrary.simpleMessage("Detektor"),
    "diskManagement": MessageLookupByLibrary.simpleMessage(
      "Diskothekenverwaltung",
    ),
    "disk_badge_system": MessageLookupByLibrary.simpleMessage("SISTEMA"),
    "disk_boot_firmware_label": m7,
    "disk_button_confirm_and_install": MessageLookupByLibrary.simpleMessage(
      "BESTÄTIGEN UND INSTALLIEREN",
    ),
    "disk_dialog_confirm_destruction_title":
        MessageLookupByLibrary.simpleMessage(
          "BESTÄTIGEN SIE DIE ZERSTÖRUNG DER DATEN",
        ),
    "disk_dialog_confirm_install_title": MessageLookupByLibrary.simpleMessage(
      "BESTÄTIGEN SIE DIE INSTALACIÓN",
    ),
    "disk_dialog_existing_notice": MessageLookupByLibrary.simpleMessage(
      "Windows wird beim Formatieren auf W:\\\\ gelöscht.",
    ),
    "disk_dialog_format_warning": MessageLookupByLibrary.simpleMessage(
      "Die ausgewählte Disk wird komplett formatiert. Se perderán todos los data.",
    ),
    "disk_empty_list": MessageLookupByLibrary.simpleMessage(
      "Wir werden keine Finanzdiskussionen entdecken",
    ),
    "disk_item_header": m8,
    "disk_management_appbar_title": MessageLookupByLibrary.simpleMessage(
      "ADMINISTRACIÓN DE DISCOS",
    ),
    "disk_partition_gpt_uefi": MessageLookupByLibrary.simpleMessage(
      "GPT / UEFI",
    ),
    "disk_partition_mbr_bios": MessageLookupByLibrary.simpleMessage("MBR/BIOS"),
    "disk_recommended_mode_label": m9,
    "disk_selection_button_start": MessageLookupByLibrary.simpleMessage(
      "INICIAR INSTALACIÓN",
    ),
    "disk_selection_desc": MessageLookupByLibrary.simpleMessage(
      "Elija la unidad física donde se instalará Windows.",
    ),
    "disk_selection_title": MessageLookupByLibrary.simpleMessage(
      "Wählen Sie die Disco des Ziels aus",
    ),
    "disk_size_gb": m10,
    "disk_waiting_wim_hint": MessageLookupByLibrary.simpleMessage(
      "Esperando la Erkennung von install.wim...",
    ),
    "disk_wim_bridge_source": m11,
    "disk_wim_detected": MessageLookupByLibrary.simpleMessage("Bild erkannt"),
    "disk_wim_integrated_source": MessageLookupByLibrary.simpleMessage(
      "WIM in ISO integriert",
    ),
    "disk_wim_not_found": MessageLookupByLibrary.simpleMessage(
      "Bild nicht gefunden",
    ),
    "doNotDisconnect": MessageLookupByLibrary.simpleMessage(
      "Trennen Sie das Gerät während der Installation nicht vom Stromnetz und ziehen Sie es nicht aus",
    ),
    "downloadAndActivate": MessageLookupByLibrary.simpleMessage(
      "Herunterladen + aktivieren",
    ),
    "downloadInstaller": MessageLookupByLibrary.simpleMessage(
      "Installationsprogramm herunterladen (.exe)",
    ),
    "downloadPortable": MessageLookupByLibrary.simpleMessage(
      "Portable herunterladen (.zip)",
    ),
    "drives": MessageLookupByLibrary.simpleMessage("Unidades"),
    "editionDetected": m12,
    "emptyFolder": MessageLookupByLibrary.simpleMessage(
      "Dieser Teppich ist frei",
    ),
    "errorGeneric": m13,
    "file_explorer_default_title": MessageLookupByLibrary.simpleMessage(
      "Wählen Sie ein Windows-Installationsbild aus",
    ),
    "file_explorer_drives_header": MessageLookupByLibrary.simpleMessage(
      "UNIDADES",
    ),
    "file_explorer_empty_folder": MessageLookupByLibrary.simpleMessage(
      "Dieser Teppich ist frei",
    ),
    "file_explorer_filter_hint": MessageLookupByLibrary.simpleMessage(
      "Filtrar…",
    ),
    "file_explorer_go_up_tooltip": MessageLookupByLibrary.simpleMessage(
      "Unter eine Ebene",
    ),
    "file_explorer_invalid_path_error": m14,
    "file_explorer_read_error": m15,
    "file_explorer_select_file_hint": MessageLookupByLibrary.simpleMessage(
      "Wählen Sie ein .wim- oder .swm-Archiv aus",
    ),
    "file_explorer_selected_file": m16,
    "filter": MessageLookupByLibrary.simpleMessage("Filtrar…"),
    "formatGpt": MessageLookupByLibrary.simpleMessage(
      "GPT formatieren (empfohlen)",
    ),
    "formatGptDescription": MessageLookupByLibrary.simpleMessage(
      "Füge die Disco hinzu und erstelle ein UEFI-Design\nEFI (S:) + Windows (W:)",
    ),
    "formatMbr": MessageLookupByLibrary.simpleMessage(
      "MBR formatieren (BIOS übernommen)",
    ),
    "formatMbrDescription": MessageLookupByLibrary.simpleMessage(
      "Limpia el disco und create diseño hieredado\nSolo Windows (C:)",
    ),
    "formatWarning": MessageLookupByLibrary.simpleMessage(
      "Die ausgewählte Disk wird komplett formatiert. Se perderán todos los data.",
    ),
    "generateIso": MessageLookupByLibrary.simpleMessage("Generisches ISO"),
    "getInstallOnlyIso": MessageLookupByLibrary.simpleMessage(
      "Erhalten Sie ISO für die sofortige Installation",
    ),
    "goUpOneLevel": MessageLookupByLibrary.simpleMessage("Unter eine Ebene"),
    "imageDetected": MessageLookupByLibrary.simpleMessage("Bild erkannt"),
    "imageFound": MessageLookupByLibrary.simpleMessage("Bild gefunden"),
    "imageNotFound": MessageLookupByLibrary.simpleMessage(
      "Bild nicht gefunden",
    ),
    "imageSearching": MessageLookupByLibrary.simpleMessage("Buscando-Bild..."),
    "installAll": MessageLookupByLibrary.simpleMessage("ToDo installieren"),
    "installOffice": MessageLookupByLibrary.simpleMessage("Installiertes Büro"),
    "installationProgress": MessageLookupByLibrary.simpleMessage(
      "Fortschritt der Installation",
    ),
    "invalidPath": m17,
    "isoDescription": MessageLookupByLibrary.simpleMessage(
      "Holen Sie sich die ISO-Basis, um ein WIM-Arrangement auszuwählen, oder erstellen Sie eine ISO-Autonomie, die Sie in Ihr Windows-Image aufnehmen.",
    ),
    "iso_bridge_clients_count": m18,
    "iso_bridge_desc": MessageLookupByLibrary.simpleMessage(
      "Bereiten Sie WIM ein einziges Mal vor und übermitteln Sie es direkt an die Kunden. Kunden dürfen WIM vor der Installation nicht bewachen.",
    ),
    "iso_bridge_generic_error": m19,
    "iso_bridge_list_interfaces_error": m20,
    "iso_bridge_save_simple_iso_dialog": MessageLookupByLibrary.simpleMessage(
      "Guardar ISO simple de Requiem",
    ),
    "iso_bridge_save_wim_iso_dialog": MessageLookupByLibrary.simpleMessage(
      "Guardar ISO de Requiem mit WIM",
    ),
    "iso_bridge_select_wim_dialog": MessageLookupByLibrary.simpleMessage(
      "Wählen Sie das WIM-Bild von Windows aus",
    ),
    "iso_bridge_simple_iso_filename": MessageLookupByLibrary.simpleMessage(
      "Requiem-Installer-Simple.iso",
    ),
    "iso_bridge_start_validation_error": MessageLookupByLibrary.simpleMessage(
      "Wählen Sie ein WIM und eine private IPv4-Schnittstelle.",
    ),
    "iso_bridge_wim_selected_log": m21,
    "iso_panel_button_generate_iso": MessageLookupByLibrary.simpleMessage(
      "ALLGEMEINE ISO",
    ),
    "iso_panel_button_select_wim": MessageLookupByLibrary.simpleMessage(
      "WIM AUSWÄHLEN",
    ),
    "iso_panel_button_simple_iso": MessageLookupByLibrary.simpleMessage(
      "OBTENER ISO PARA INSTALACIÓN SOLAMENTE",
    ),
    "iso_panel_desc_media": MessageLookupByLibrary.simpleMessage(
      "Holen Sie sich die ISO-Basis, um ein WIM-Arrangement auszuwählen, oder erstellen Sie eine ISO-Autonomie, die Sie in Ihr Windows-Image aufnehmen.",
    ),
    "iso_panel_title_bridge": MessageLookupByLibrary.simpleMessage(
      "Puente IPv4-Installation",
    ),
    "iso_panel_title_media": MessageLookupByLibrary.simpleMessage(
      "Installationsdauer",
    ),
    "kmsError": m22,
    "kmsHostEmpty": MessageLookupByLibrary.simpleMessage(
      "Fehler: Der Host KMS ist leer.",
    ),
    "kmsServer": MessageLookupByLibrary.simpleMessage("Server-KMS"),
    "kmsTask160Days": MessageLookupByLibrary.simpleMessage("Tarea 160 Tage"),
    "kmsVolumeActivation": MessageLookupByLibrary.simpleMessage(
      "Volumenaktivierung (KMS)",
    ),
    "kms_product_office_ltsc_professional_plus_2021":
        MessageLookupByLibrary.simpleMessage(
          "Office LTSC Professional Plus 2021",
        ),
    "kms_product_office_ltsc_professional_plus_2024":
        MessageLookupByLibrary.simpleMessage(
          "Office LTSC Professional Plus 2024",
        ),
    "kms_product_office_professional_plus_2013":
        MessageLookupByLibrary.simpleMessage("Office Professional Plus 2013"),
    "kms_product_office_professional_plus_2016":
        MessageLookupByLibrary.simpleMessage("Office Professional Plus 2016"),
    "kms_product_office_professional_plus_2019":
        MessageLookupByLibrary.simpleMessage("Office Professional Plus 2019"),
    "kms_product_office_standard_2013": MessageLookupByLibrary.simpleMessage(
      "Office-Standard 2013",
    ),
    "kms_product_windows_10_11_education": MessageLookupByLibrary.simpleMessage(
      "Windows 10/11 Bildung",
    ),
    "kms_product_windows_10_11_education_n":
        MessageLookupByLibrary.simpleMessage("Windows 10/11 Education N"),
    "kms_product_windows_10_11_enterprise":
        MessageLookupByLibrary.simpleMessage("Windows 10/11 Unternehmen"),
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
        MessageLookupByLibrary.simpleMessage("Windows 10/11 Pro Education"),
    "kms_product_windows_10_11_pro_for_workstations":
        MessageLookupByLibrary.simpleMessage(
          "Windows 10/11 Pro für Workstations",
        ),
    "kms_product_windows_10_11_pro_n": MessageLookupByLibrary.simpleMessage(
      "Windows 10/11 Pro N",
    ),
    "kms_product_windows_10_11_pro_workstations":
        MessageLookupByLibrary.simpleMessage("Windows 10/11 Pro-Workstations"),
    "kms_product_windows_8_1_enterprise": MessageLookupByLibrary.simpleMessage(
      "Windows 8.1 Enterprise",
    ),
    "kms_product_windows_8_1_pro": MessageLookupByLibrary.simpleMessage(
      "Windows 8.1 Pro",
    ),
    "kms_product_windows_8_enterprise": MessageLookupByLibrary.simpleMessage(
      "Windows 8 Enterprise",
    ),
    "kms_product_windows_8_pro": MessageLookupByLibrary.simpleMessage(
      "Windows 8 Pro",
    ),
    "kms_product_windows_server_2019_datacenter":
        MessageLookupByLibrary.simpleMessage(
          "Windows Server 2019-Rechenzentrum",
        ),
    "kms_product_windows_server_2019_standard":
        MessageLookupByLibrary.simpleMessage("Windows Server 2019 Standard"),
    "kms_product_windows_server_2022_datacenter":
        MessageLookupByLibrary.simpleMessage(
          "Windows Server 2022-Rechenzentrum",
        ),
    "kms_product_windows_server_2022_standard":
        MessageLookupByLibrary.simpleMessage("Windows Server 2022 Standard"),
    "kms_product_windows_server_2025_datacenter":
        MessageLookupByLibrary.simpleMessage(
          "Windows Server 2025-Rechenzentrum",
        ),
    "kms_product_windows_server_2025_standard":
        MessageLookupByLibrary.simpleMessage("Windows Server 2025 Standard"),
    "kms_product_windows_subsystem_for_linux":
        MessageLookupByLibrary.simpleMessage("Windows-Subsystem für Linux"),
    "kms_product_windows_terminal": MessageLookupByLibrary.simpleMessage(
      "Windows-Terminal",
    ),
    "landingDescription": MessageLookupByLibrary.simpleMessage(
      "Hochpräziser Windows-Installer für Hochgeschwindigkeits-Entornos. Führen Sie ein schnelles Experiment mit direkter DISM-Ordnung und automatischer Systemoptimierung durch.",
    ),
    "landing_badge_author": MessageLookupByLibrary.simpleMessage(
      "DISEÑADO POR JOSS",
    ),
    "landing_badge_secure_boot": MessageLookupByLibrary.simpleMessage(
      "KOMPATIBEL MIT SECURE BOOT",
    ),
    "landing_badge_version": MessageLookupByLibrary.simpleMessage(
      "VERSIÓN ESTABLE",
    ),
    "landing_button_logs": MessageLookupByLibrary.simpleMessage(
      "LOGS DEL SISTEMA",
    ),
    "landing_button_start": MessageLookupByLibrary.simpleMessage("EMPEZAR"),
    "landing_description_part1": MessageLookupByLibrary.simpleMessage(
      "Hochpräziser Windows-Installer für Hochgeschwindigkeits-Entornos.",
    ),
    "landing_description_part2": MessageLookupByLibrary.simpleMessage(
      "Führen Sie ein schnelles Experiment mit direkter DISM-Ordnung und automatischer Systemoptimierung durch.",
    ),
    "landing_subtitle": MessageLookupByLibrary.simpleMessage(
      "DESPLIEGUE DE SO DE PRÓXIMA GENERACIÓN",
    ),
    "landing_title_installer": MessageLookupByLibrary.simpleMessage(
      "ERFORDERLICHER INSTALLATEUR",
    ),
    "landing_title_tools": MessageLookupByLibrary.simpleMessage(
      "ERFORDERLICHE WERKZEUGE",
    ),
    "licenseActivation": MessageLookupByLibrary.simpleMessage(
      "Aktivierung der Lizenzen",
    ),
    "logsCopied": MessageLookupByLibrary.simpleMessage(
      "Protokolle werden in tragbare Dateien kopiert.",
    ),
    "mandatoryUpdate": MessageLookupByLibrary.simpleMessage(
      "Diese Aktualisierung ist obligatorisch und kann nicht weggelassen werden.",
    ),
    "manualWimHint": MessageLookupByLibrary.simpleMessage(
      "Verwenden Sie „Buscar“, um Ihr WIM-Archiv manuell zu lokalisieren.",
    ),
    "mediaInstallation": MessageLookupByLibrary.simpleMessage(
      "Installationsdauer",
    ),
    "networkBridge": MessageLookupByLibrary.simpleMessage(
      "Puente IPv4-Installation",
    ),
    "networkInterface": MessageLookupByLibrary.simpleMessage(
      "Schnittstelle Wi-Fi/LAN IPv4",
    ),
    "nextGenerationDeployment": MessageLookupByLibrary.simpleMessage(
      "Nach SO der nächsten Generation",
    ),
    "noBridgeFound": MessageLookupByLibrary.simpleMessage(
      "Es ist nicht möglich, dass es passiert. Prüfen Sie das IP-Handbuch.",
    ),
    "noFormatWarning": MessageLookupByLibrary.simpleMessage(
      "Windows deinstalliert W:\\ ohne Formatierung.",
    ),
    "noImageDetected": MessageLookupByLibrary.simpleMessage(
      "Es wurde kein Bild erkannt",
    ),
    "noKmsProducts": MessageLookupByLibrary.simpleMessage(
      "Keine Heuprodukte von KMS ausgewählt.",
    ),
    "noPhysicalDisks": MessageLookupByLibrary.simpleMessage(
      "Wir werden keine Finanzdiskussionen entdecken",
    ),
    "noProgramsSelected": MessageLookupByLibrary.simpleMessage(
      "Keine Heuprogramme.",
    ),
    "noWifiNetworks": MessageLookupByLibrary.simpleMessage(
      "Kein Problem mit der Verfügbarkeit von Wi-Fi.",
    ),
    "noWingetPackages": MessageLookupByLibrary.simpleMessage(
      "Es werden keine Pakete entdeckt, die mit Winget verbunden sind.",
    ),
    "officeInstallDescription": MessageLookupByLibrary.simpleMessage(
      "Nutzen Sie Microsoft Office LTSC oder 365 mit ODT-Automatisierung.",
    ),
    "officeInstaller": MessageLookupByLibrary.simpleMessage(
      "Installateur des Büros",
    ),
    "officeRenewalStatus": m23,
    "officeVersion": MessageLookupByLibrary.simpleMessage("Office-Version"),
    "office_odt_kms_badge": MessageLookupByLibrary.simpleMessage("ODT + KMS"),
    "office_odt_panel_title": MessageLookupByLibrary.simpleMessage(
      "Office-Bereitstellungstool",
    ),
    "office_pkg_desc_2019": MessageLookupByLibrary.simpleMessage(
      "Click-to-Run für Volumen mit Kanal PerpetualVL2019",
    ),
    "office_pkg_desc_2021": MessageLookupByLibrary.simpleMessage(
      "Click-to-Run für Volumen mit Kanal PerpetualVL2021",
    ),
    "office_pkg_desc_2024": MessageLookupByLibrary.simpleMessage(
      "Click-to-Run für Volumen mit Kanal PerpetualVL2024",
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
      "Diese Funktion ist nur unter Windows verfügbar.",
    ),
    "packageStack": MessageLookupByLibrary.simpleMessage(
      "Programmstapel (Winget)",
    ),
    "packagesDetected": m24,
    "partitionMode": MessageLookupByLibrary.simpleMessage("Modo de partición"),
    "pkg_cat_apache_php_mysql": MessageLookupByLibrary.simpleMessage(
      "Apache PHP MySQL",
    ),
    "pkg_cat_bi_desktop": MessageLookupByLibrary.simpleMessage("BI-Desktop"),
    "pkg_cat_cliente_api": MessageLookupByLibrary.simpleMessage("Client-API"),
    "pkg_cat_cliente_db": MessageLookupByLibrary.simpleMessage(
      "Kundendatenbank",
    ),
    "pkg_cat_compiladores_c": MessageLookupByLibrary.simpleMessage(
      "C++-Compiler",
    ),
    "pkg_cat_compresor": MessageLookupByLibrary.simpleMessage("Kompressor"),
    "pkg_cat_comunicacion": MessageLookupByLibrary.simpleMessage(
      "Kommunikation",
    ),
    "pkg_cat_control_de_versiones": MessageLookupByLibrary.simpleMessage(
      "Versionskontrolle",
    ),
    "pkg_cat_desktop": MessageLookupByLibrary.simpleMessage("Desktop"),
    "pkg_cat_diagramas": MessageLookupByLibrary.simpleMessage("Diagramme"),
    "pkg_cat_distro_wsl": MessageLookupByLibrary.simpleMessage(
      "Distribution WSL",
    ),
    "pkg_cat_editor": MessageLookupByLibrary.simpleMessage("Herausgeber"),
    "pkg_cat_golang": MessageLookupByLibrary.simpleMessage("Golang"),
    "pkg_cat_gpu_compute": MessageLookupByLibrary.simpleMessage(
      "GPU-Berechnung",
    ),
    "pkg_cat_grabacion": MessageLookupByLibrary.simpleMessage("Grabacion"),
    "pkg_cat_ide_ai": MessageLookupByLibrary.simpleMessage("IDE KI"),
    "pkg_cat_ide_android": MessageLookupByLibrary.simpleMessage("IDE Android"),
    "pkg_cat_ide_completo": MessageLookupByLibrary.simpleMessage(
      "IDE komplett",
    ),
    "pkg_cat_instaladores": MessageLookupByLibrary.simpleMessage(
      "Installateure",
    ),
    "pkg_cat_javascript": MessageLookupByLibrary.simpleMessage("JavaScript"),
    "pkg_cat_limpieza": MessageLookupByLibrary.simpleMessage("Limpieza"),
    "pkg_cat_modelos_locales": MessageLookupByLibrary.simpleMessage(
      "Modelos-Gebietsschemata",
    ),
    "pkg_cat_navegador": MessageLookupByLibrary.simpleMessage("Navegador"),
    "pkg_cat_python_3": MessageLookupByLibrary.simpleMessage("Python 3"),
    "pkg_cat_runtime_c": MessageLookupByLibrary.simpleMessage("Laufzeit C++"),
    "pkg_cat_runtime_escritorio": MessageLookupByLibrary.simpleMessage(
      "Laufzeitschreiber",
    ),
    "pkg_cat_runtime_juegos": MessageLookupByLibrary.simpleMessage(
      "Laufzeitspiele",
    ),
    "pkg_cat_runtime_php": MessageLookupByLibrary.simpleMessage("Laufzeit-PHP"),
    "pkg_cat_rustup": MessageLookupByLibrary.simpleMessage("Rustup"),
    "pkg_cat_sdk__net": MessageLookupByLibrary.simpleMessage("SDK .NET"),
    "pkg_cat_servidor_db": MessageLookupByLibrary.simpleMessage("Server-DB"),
    "pkg_cat_ssh_clasico": MessageLookupByLibrary.simpleMessage(
      "SSH-Klassiker",
    ),
    "pkg_cat_ssh_moderno": MessageLookupByLibrary.simpleMessage("SSH modern"),
    "pkg_cat_subsistema_linux": MessageLookupByLibrary.simpleMessage(
      "Subsistema Linux",
    ),
    "pkg_cat_temurin_21": MessageLookupByLibrary.simpleMessage("Temurin 21"),
    "pkg_cat_terminal_moderno": MessageLookupByLibrary.simpleMessage(
      "Modernes Terminal",
    ),
    "prepareBridge": MessageLookupByLibrary.simpleMessage(
      "Bereiten Sie sich vor und beginnen Sie",
    ),
    "progress_button_reboot": MessageLookupByLibrary.simpleMessage(
      "REINISCHES SISTEMA",
    ),
    "progress_footer_warning": MessageLookupByLibrary.simpleMessage(
      "UNTERBRECHEN SIE DEN ENERGIE- UND INSTALLATIONSMITTEL",
    ),
    "progress_header_badge": MessageLookupByLibrary.simpleMessage(
      "DESPLIEGUE EN CURSO",
    ),
    "provideWindowsImage": MessageLookupByLibrary.simpleMessage(
      "Anteil des Windows-Installationsbilds (install.wim oder install.swm)\nVon einer USB-Einheit aus oder während der Montage.",
    ),
    "receiveInstallation": MessageLookupByLibrary.simpleMessage(
      "Die Installation des Requiem für Windows wurde vorbereitet",
    ),
    "renewalActive": MessageLookupByLibrary.simpleMessage("Aktiva"),
    "renewalDisabled": MessageLookupByLibrary.simpleMessage("Desaktiviert"),
    "searchingImage": MessageLookupByLibrary.simpleMessage("Buscando-Bild…"),
    "secureBootCompatible": MessageLookupByLibrary.simpleMessage(
      "Kompatibel mit Secure Boot",
    ),
    "selectDestinationDisk": MessageLookupByLibrary.simpleMessage(
      "Ziel-Disco auswählen",
    ),
    "selectFileHint": MessageLookupByLibrary.simpleMessage(
      "Wählen Sie ein .wim- oder .swm-Archiv aus",
    ),
    "selectWim": MessageLookupByLibrary.simpleMessage("Wählen Sie WIM"),
    "selectWimFirst": MessageLookupByLibrary.simpleMessage(
      "Wählen Sie ein WIM und eine private IPv4-Schnittstelle.",
    ),
    "selectWindowsImage": MessageLookupByLibrary.simpleMessage(
      "Wählen Sie ein Windows-Bild aus",
    ),
    "selectWindowsImageFull": MessageLookupByLibrary.simpleMessage(
      "Wählen Sie ein Windows-Installationsbild aus",
    ),
    "selectedFile": m25,
    "stableVersion": MessageLookupByLibrary.simpleMessage(
      "Stabile Version v1.0.0",
    ),
    "start": MessageLookupByLibrary.simpleMessage("Empezar"),
    "startInstallation": MessageLookupByLibrary.simpleMessage(
      "Erste Installation",
    ),
    "stopBridge": MessageLookupByLibrary.simpleMessage("Detener puente"),
    "systemConsole": MessageLookupByLibrary.simpleMessage(
      "Consola del sistema",
    ),
    "systemDisk": MessageLookupByLibrary.simpleMessage("System"),
    "systemLogs": MessageLookupByLibrary.simpleMessage(
      "Protokolle des Systems",
    ),
    "tools_badge_iso_compatibility": MessageLookupByLibrary.simpleMessage(
      "BIOS + UEFI beibehalten",
    ),
    "tools_badge_kms_pending": MessageLookupByLibrary.simpleMessage(
      "KMS-Anhänger",
    ),
    "tools_badge_package_count": m26,
    "tools_button_activate_kms": MessageLookupByLibrary.simpleMessage(
      "ACTIVAR KMS",
    ),
    "tools_button_install_all_packages": MessageLookupByLibrary.simpleMessage(
      "TODO INSTALLIEREN",
    ),
    "tools_button_install_office": MessageLookupByLibrary.simpleMessage(
      "INSTALARES BÜRO",
    ),
    "tools_header_title": MessageLookupByLibrary.simpleMessage(
      "REQUIEM-MIGRATIONSTOOLS",
    ),
    "tools_kms_checking_connectivity": m27,
    "tools_kms_empty_host_error": MessageLookupByLibrary.simpleMessage(
      "FEHLER: Der Host KMS ist vacio.",
    ),
    "tools_kms_error_log": m28,
    "tools_kms_no_products_selected": MessageLookupByLibrary.simpleMessage(
      "Keine Heuprodukte von KMS ausgewählt.",
    ),
    "tools_log_format": m29,
    "tools_logs_copied_snackbar": MessageLookupByLibrary.simpleMessage(
      "Protokolle werden in tragbare Dateien kopiert.",
    ),
    "tools_packages_detected_count": m30,
    "tools_packages_none_detected": MessageLookupByLibrary.simpleMessage(
      "Es werden keine Pakete entdeckt, die mit Winget verbunden sind.",
    ),
    "tools_packages_none_selected": MessageLookupByLibrary.simpleMessage(
      "Keine Heuprogramme.",
    ),
    "tools_section_activation_desc": MessageLookupByLibrary.simpleMessage(
      "Konfigurieren Sie den lokalen oder Remote-KMS-Server für die Aktivierung von Windows und Office.",
    ),
    "tools_section_activation_title": MessageLookupByLibrary.simpleMessage(
      "Aktivierung der Lizenzen",
    ),
    "tools_section_iso_desc": MessageLookupByLibrary.simpleMessage(
      "Erstellen Sie selbständige Geräte mit integriertem WIM oder verteilen Sie es direkt über IPv4.",
    ),
    "tools_section_iso_title": MessageLookupByLibrary.simpleMessage(
      "ISO y despliegue por red",
    ),
    "tools_section_office_desc": MessageLookupByLibrary.simpleMessage(
      "Nutzen Sie Microsoft Office LTSC oder 365 mit ODT-Automatisierung.",
    ),
    "tools_section_office_title": MessageLookupByLibrary.simpleMessage(
      "Installateur des Büros",
    ),
    "tools_section_packages_desc": MessageLookupByLibrary.simpleMessage(
      "Installieren und aktualisieren Sie die Betriebssysteme für Windows mit mittlerem Winget.",
    ),
    "tools_section_packages_title": MessageLookupByLibrary.simpleMessage(
      "Anwendungsstapel",
    ),
    "tools_sidebar_app_name": MessageLookupByLibrary.simpleMessage(
      "ANFORDERUNG",
    ),
    "tools_sidebar_mode_badge": MessageLookupByLibrary.simpleMessage(
      "Lokaler Tools-Modus",
    ),
    "tools_sidebar_tab_iso": MessageLookupByLibrary.simpleMessage(
      "ISO und Puente",
    ),
    "tools_sidebar_tab_kms": MessageLookupByLibrary.simpleMessage(
      "Aktivierung von KMS",
    ),
    "tools_sidebar_tab_office": MessageLookupByLibrary.simpleMessage(
      "Installationsbüro",
    ),
    "tools_sidebar_tab_packages": MessageLookupByLibrary.simpleMessage(
      "Stack-Programme",
    ),
    "unknown": MessageLookupByLibrary.simpleMessage("Desconocido"),
    "updateDescription": MessageLookupByLibrary.simpleMessage(
      "Um Requiem Tools weiterhin verwenden zu können, muss die neueste Version aktualisiert werden.",
    ),
    "updateRequired": MessageLookupByLibrary.simpleMessage(
      "Aktualisierung erforderlich",
    ),
    "useExistingPartitions": MessageLookupByLibrary.simpleMessage(
      "Wir verwenden vorhandene Particiones",
    ),
    "useExistingPartitionsDescription": MessageLookupByLibrary.simpleMessage(
      "Sin formatear – despliega en W: tal cual\nBenutzen Sie die Particiones manuell",
    ),
    "waitingAction": MessageLookupByLibrary.simpleMessage(
      "Esperando una acción...",
    ),
    "waitingForWim": MessageLookupByLibrary.simpleMessage(
      "Esperando la Erkennung von install.wim...",
    ),
    "wifiConnectError": m31,
    "wifiConnected": m32,
    "wifiPassword": MessageLookupByLibrary.simpleMessage("Kontraseña Wi-Fi"),
    "wifi_connect_error": m33,
    "wifi_connected_log": m34,
    "wifi_connected_status": m35,
    "wifi_dialog_title": MessageLookupByLibrary.simpleMessage(
      "Verbinden Sie den Installateur mit Wi-Fi",
    ),
    "wifi_item_signal_security": m36,
    "wifi_none_found": MessageLookupByLibrary.simpleMessage(
      "Kein Problem mit der Verfügbarkeit von Wi-Fi.",
    ),
    "wifi_password_hint": MessageLookupByLibrary.simpleMessage(
      "Kontraseña Wi-Fi",
    ),
    "wifi_scanning": MessageLookupByLibrary.simpleMessage(
      "Verfügbare Wi-Fi-Netzwerke werden gescannt...",
    ),
    "wimIntegrated": MessageLookupByLibrary.simpleMessage(
      "WIM in ISO integriert",
    ),
    "wim_bridge_connection_error": m37,
    "wim_bridge_ip_dialog_title": MessageLookupByLibrary.simpleMessage(
      "IP del puente Requiem",
    ),
    "wim_bridge_ip_placeholder": MessageLookupByLibrary.simpleMessage(
      "192.168.1.20",
    ),
    "wim_bridge_not_found": MessageLookupByLibrary.simpleMessage(
      "Es ist nicht möglich, dass es passiert. Prüfen Sie das IP-Handbuch.",
    ),
    "wim_bridge_search_error": m38,
    "wim_bridge_searching": MessageLookupByLibrary.simpleMessage(
      "Suche nach Requiem-Brücken im lokalen IPv4-Netzwerk ...",
    ),
    "wim_bridge_section_header": MessageLookupByLibrary.simpleMessage(
      "Die Installation des Requiem für Windows wurde vorbereitet",
    ),
    "wim_button_change_file": MessageLookupByLibrary.simpleMessage(
      "CAMBIAR-ARCHIV",
    ),
    "wim_button_connect_wifi": MessageLookupByLibrary.simpleMessage(
      "CONECTAR WI-FI",
    ),
    "wim_button_manual_ip": MessageLookupByLibrary.simpleMessage(
      "USAR IP-HANDBUCH",
    ),
    "wim_button_rescan": MessageLookupByLibrary.simpleMessage(
      "Suchen Sie nach neuen Unidades",
    ),
    "wim_button_search_bridge": MessageLookupByLibrary.simpleMessage(
      "BUSCAR PUENTE",
    ),
    "wim_manual_search_hint": MessageLookupByLibrary.simpleMessage(
      "Verwenden Sie „Buscar“, um Ihr WIM-Archiv manuell zu lokalisieren.",
    ),
    "wim_picker_description": MessageLookupByLibrary.simpleMessage(
      "Proportional zum Image der Windows-Installation (install.wim oder install.swm)\\n",
    ),
    "wim_picker_title": MessageLookupByLibrary.simpleMessage(
      "Wählen Sie Windows-Bilder aus",
    ),
    "wim_status_found": MessageLookupByLibrary.simpleMessage("Bild gefunden"),
    "wim_status_not_found": MessageLookupByLibrary.simpleMessage(
      "Es wurde kein Bild erkannt",
    ),
    "wim_status_searching": MessageLookupByLibrary.simpleMessage(
      "Buscando-Bild…",
    ),
    "wim_status_searching_alt": MessageLookupByLibrary.simpleMessage(
      "Buscando-Bild...",
    ),
    "wingetUnavailable": MessageLookupByLibrary.simpleMessage(
      "Winget ist nicht installiert oder befindet sich nicht auf PATH.",
    ),
  };
}
