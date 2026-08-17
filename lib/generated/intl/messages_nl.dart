// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a nl locale. All the
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
  String get localeName => 'nl';

  static String m0(count) => "${count} programma\'s";

  static String m1(version) => "Beschikbare versie: ${version}";

  static String m2(firmware) => "Arrangement actueel: ${firmware}";

  static String m3(error) => "Er kan geen verbinding worden gemaakt: ${error}";

  static String m4(error) => "U kunt niet naar de volgende bus gaan: ${error}";

  static String m5(host) => "Verbinding maken met ${host}:1688...";

  static String m6(mode) => "Modo-compatibel: ${mode}";

  static String m7(firmware) => "Arrangement actueel: ${firmware}";

  static String m8(diskNumber, mediaType, busType) =>
      "SCHIJF ${diskNumber} · ${mediaType} · ${busType}";

  static String m9(recommended) => "Modo-compatibel: ${recommended}";

  static String m10(sizeGB) => "${sizeGB} GB";

  static String m11(imageName) =>
      "Plaats: \${controller.bridgeAnnouncement?.imageName ??";

  static String m12(name, edition) =>
      "Edición gedetecteerd: ${name} (${edition})";

  static String m13(error) => "Er is een fout opgetreden: ${error}";

  static String m14(val) => "Ongeldige geldigheidsduur: ${val}";

  static String m15(error) =>
      "U kunt de directoryinhoud niet lezen.\\n${error}";

  static String m16(path) => "Selectie: ${path}";

  static String m17(path) => "Ongeldige geldigheidsduur: ${path}";

  static String m18(clients) => "${clients} verbindingen";

  static String m19(error) => "FOUT: ${error}";

  static String m20(error) =>
      "Er is geen opsomming van de IPv4-interfaces: ${error}";

  static String m21(path) => "WIM-selectie: ${path}";

  static String m22(error) => "Fout KMS: ${error}";

  static String m23(product, channel, edition, status) =>
      "${product} / ${channel} / ${edition} bits. De renovatie is ${status}.";

  static String m24(count) => "Paquetes gedetecteerd: ${count}.";

  static String m25(file) => "Selectie: ${file}";

  static String m26(count) => "${count} programma\'s";

  static String m27(host) => "Verbinding maken met ${host}:1688...";

  static String m28(error) => "FOUT KMS: ${error}";

  static String m29(time, message) => "[${time}] ${message}";

  static String m30(count) => "Paquetes gedetecteerd: ${count}.";

  static String m31(error) => "U kunt geen Wi-Fi aansluiten: ${error}";

  static String m32(network) => "Maak verbinding met ${network}.";

  static String m33(error) => "U kunt geen Wi-Fi aansluiten: ${error}";

  static String m34(ssid, result) => "Wifi verbonden met ${ssid}. ${result}";

  static String m35(ssid) => "Maak verbinding met ${ssid}.";

  static String m36(signal, security) => "${signal}% · ${security}";

  static String m37(error) => "Er kan geen verbinding worden gemaakt: ${error}";

  static String m38(error) => "U kunt niet naar de volgende bus gaan: ${error}";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
    "actionCancel": MessageLookupByLibrary.simpleMessage("Annuleren"),
    "actionChange": MessageLookupByLibrary.simpleMessage("Cambiar"),
    "actionConfirm": MessageLookupByLibrary.simpleMessage("Bevestiging"),
    "actionConnect": MessageLookupByLibrary.simpleMessage("Conectar"),
    "actionContinue": MessageLookupByLibrary.simpleMessage("Ga door"),
    "actionInstall": MessageLookupByLibrary.simpleMessage("Installeer"),
    "actionRefresh": MessageLookupByLibrary.simpleMessage("Werkelijk"),
    "actionRestartSystem": MessageLookupByLibrary.simpleMessage(
      "Reiniciar systeem",
    ),
    "actionScanAgain": MessageLookupByLibrary.simpleMessage(
      "Escanear unidades de nuevo",
    ),
    "actionSearch": MessageLookupByLibrary.simpleMessage("Buscar"),
    "actionSelect": MessageLookupByLibrary.simpleMessage("Selectie"),
    "activate": MessageLookupByLibrary.simpleMessage("Actief"),
    "activateKms": MessageLookupByLibrary.simpleMessage("Activar KMS"),
    "appTitleInstaller": MessageLookupByLibrary.simpleMessage(
      "Requiem-installatieprogramma",
    ),
    "appTitleTools": MessageLookupByLibrary.simpleMessage(
      "Requiem-instrumenten",
    ),
    "app_title_installer": MessageLookupByLibrary.simpleMessage(
      "Requiem-installatieprogramma",
    ),
    "app_title_tools": MessageLookupByLibrary.simpleMessage(
      "Requiem-instrumenten",
    ),
    "applicationStack": MessageLookupByLibrary.simpleMessage(
      "Stapel de applicaties",
    ),
    "applicationStackDescription": MessageLookupByLibrary.simpleMessage(
      "Installeer en actualiseer de herramen van de essentiële onderdelen voor Windows-middenvleugels.",
    ),
    "applicationsCount": m0,
    "automaticOffice": MessageLookupByLibrary.simpleMessage("Kantoorautomaat"),
    "automaticOfficeDescription": MessageLookupByLibrary.simpleMessage(
      "Gebruik de GVLK-volume-installatie",
    ),
    "automaticRenewal": MessageLookupByLibrary.simpleMessage(
      "Automatische renovatie",
    ),
    "automaticWindows": MessageLookupByLibrary.simpleMessage(
      "Windows automatisch",
    ),
    "automaticWindowsDescription": MessageLookupByLibrary.simpleMessage(
      "Detecta-edición en GVLK-compatibel",
    ),
    "availableVersion": m1,
    "bootCurrent": m2,
    "bridgeConnectError": m3,
    "bridgeDescription": MessageLookupByLibrary.simpleMessage(
      "Bereid de WIM voor op een solo en zend direct het requiem van de misma rode klanten uit. Klanten bewaken de WIM niet vóór de installatie.",
    ),
    "bridgeIp": MessageLookupByLibrary.simpleMessage("IP del puente Requiem"),
    "bridgePorts": MessageLookupByLibrary.simpleMessage(
      "Sluit HTTP 40124 aan · beschrijving UDP 40123. Als Windows Defender toegang geeft tot nieuwe privérechten.",
    ),
    "bridgeSearchError": m4,
    "checkingKms": m5,
    "clearLogs": MessageLookupByLibrary.simpleMessage("Limpiare logboeken"),
    "common_cancel": MessageLookupByLibrary.simpleMessage("ANNULEREN"),
    "common_change": MessageLookupByLibrary.simpleMessage("CAMBIAR"),
    "common_connect": MessageLookupByLibrary.simpleMessage("CONECTAR"),
    "common_continue": MessageLookupByLibrary.simpleMessage("DOORGAAN"),
    "common_label_disk": MessageLookupByLibrary.simpleMessage("SCHIJF"),
    "common_label_image": MessageLookupByLibrary.simpleMessage("BEELD"),
    "common_label_mode": MessageLookupByLibrary.simpleMessage("MODUS"),
    "common_refresh": MessageLookupByLibrary.simpleMessage("ACTUALIZAR"),
    "common_search": MessageLookupByLibrary.simpleMessage("BUSCAR"),
    "common_select": MessageLookupByLibrary.simpleMessage("SELECCIONAR"),
    "compatibleMode": m6,
    "confirmDataDestruction": MessageLookupByLibrary.simpleMessage(
      "Bevestig de gegevensvernietiging",
    ),
    "confirmInstallation": MessageLookupByLibrary.simpleMessage(
      "Bevestigde installatie",
    ),
    "connectInstallerWifi": MessageLookupByLibrary.simpleMessage(
      "Sluit een Wi-Fi-installatie aan",
    ),
    "connectWifi": MessageLookupByLibrary.simpleMessage(
      "Verbinding maken met wifi",
    ),
    "console_title": MessageLookupByLibrary.simpleMessage(
      "Consola del Sistema",
    ),
    "console_tooltip_clear": MessageLookupByLibrary.simpleMessage(
      "Limpiare logboeken",
    ),
    "console_tooltip_copy": MessageLookupByLibrary.simpleMessage(
      "Kopieer logboeken",
    ),
    "console_waiting_action": MessageLookupByLibrary.simpleMessage(
      "Esperando een accion...",
    ),
    "copyLogs": MessageLookupByLibrary.simpleMessage("Kopieer logboeken"),
    "deploymentInProgress": MessageLookupByLibrary.simpleMessage(
      "Despliegue en curso",
    ),
    "designedBy": MessageLookupByLibrary.simpleMessage("Diseñado door Joss"),
    "destinationDiskDescription": MessageLookupByLibrary.simpleMessage(
      "Elija la unidad física donde se instalará Windows.",
    ),
    "detect": MessageLookupByLibrary.simpleMessage("Detecteer"),
    "diskManagement": MessageLookupByLibrary.simpleMessage(
      "Beheer van discotheken",
    ),
    "disk_badge_system": MessageLookupByLibrary.simpleMessage("SISTEMA"),
    "disk_boot_firmware_label": m7,
    "disk_button_confirm_and_install": MessageLookupByLibrary.simpleMessage(
      "BEVESTIG E INSTALAR",
    ),
    "disk_dialog_confirm_destruction_title":
        MessageLookupByLibrary.simpleMessage(
          "BEVESTIG DE VERNIETIGING VAN DATOS",
        ),
    "disk_dialog_confirm_install_title": MessageLookupByLibrary.simpleMessage(
      "BEVESTIG INSTALACIÓN",
    ),
    "disk_dialog_existing_notice": MessageLookupByLibrary.simpleMessage(
      "Windows verschijnt in W:\\\\ sin formatear.",
    ),
    "disk_dialog_format_warning": MessageLookupByLibrary.simpleMessage(
      "De discoselectie wordt volledig uitgevoerd. Bekijk alle gegevens.",
    ),
    "disk_empty_list": MessageLookupByLibrary.simpleMessage(
      "Er is geen detectie van fysieke discotheken",
    ),
    "disk_item_header": m8,
    "disk_management_appbar_title": MessageLookupByLibrary.simpleMessage(
      "ADMINISTRACIÓN DE DISCOS",
    ),
    "disk_partition_gpt_uefi": MessageLookupByLibrary.simpleMessage("GPT/UEFI"),
    "disk_partition_mbr_bios": MessageLookupByLibrary.simpleMessage("MBR/BIOS"),
    "disk_recommended_mode_label": m9,
    "disk_selection_button_start": MessageLookupByLibrary.simpleMessage(
      "INICIAR INSTALACIÓN",
    ),
    "disk_selection_desc": MessageLookupByLibrary.simpleMessage(
      "Elija la unidad física donde se instalará Windows.",
    ),
    "disk_selection_title": MessageLookupByLibrary.simpleMessage(
      "Selectie van Disco de Destino",
    ),
    "disk_size_gb": m10,
    "disk_waiting_wim_hint": MessageLookupByLibrary.simpleMessage(
      "Esperando de detectie van install.wim...",
    ),
    "disk_wim_bridge_source": m11,
    "disk_wim_detected": MessageLookupByLibrary.simpleMessage(
      "Beeld gedetecteerd",
    ),
    "disk_wim_integrated_source": MessageLookupByLibrary.simpleMessage(
      "WIM geïntegreerd in de ISO",
    ),
    "disk_wim_not_found": MessageLookupByLibrary.simpleMessage(
      "Afbeelding geen contrada",
    ),
    "doNotDisconnect": MessageLookupByLibrary.simpleMessage(
      "Sluit de energie niet af en schakel de installatie niet uit",
    ),
    "downloadAndActivate": MessageLookupByLibrary.simpleMessage(
      "Downloaden + activar",
    ),
    "downloadInstaller": MessageLookupByLibrary.simpleMessage(
      "Installatieprogramma downloaden (.exe)",
    ),
    "downloadPortable": MessageLookupByLibrary.simpleMessage(
      "Download draagbaar (.zip)",
    ),
    "drives": MessageLookupByLibrary.simpleMessage("Unidades"),
    "editionDetected": m12,
    "emptyFolder": MessageLookupByLibrary.simpleMessage("Het tapijt is leeg"),
    "errorGeneric": m13,
    "file_explorer_default_title": MessageLookupByLibrary.simpleMessage(
      "Selecteer een afbeelding van een Windows-installatie",
    ),
    "file_explorer_drives_header": MessageLookupByLibrary.simpleMessage(
      "UNIDADES",
    ),
    "file_explorer_empty_folder": MessageLookupByLibrary.simpleMessage(
      "Het tapijt is leeg",
    ),
    "file_explorer_filter_hint": MessageLookupByLibrary.simpleMessage(
      "Filterr…",
    ),
    "file_explorer_go_up_tooltip": MessageLookupByLibrary.simpleMessage(
      "Zie een nivel",
    ),
    "file_explorer_invalid_path_error": m14,
    "file_explorer_read_error": m15,
    "file_explorer_select_file_hint": MessageLookupByLibrary.simpleMessage(
      "Selecteer een archief .wim of .swm",
    ),
    "file_explorer_selected_file": m16,
    "filter": MessageLookupByLibrary.simpleMessage("Filterr…"),
    "formatGpt": MessageLookupByLibrary.simpleMessage(
      "Formatear GPT (aanbevolen)",
    ),
    "formatGptDescription": MessageLookupByLibrary.simpleMessage(
      "Limpia de disco en het creëren van UEFI\nEFI (S:) + Windows (W:)",
    ),
    "formatMbr": MessageLookupByLibrary.simpleMessage(
      "Formatteer MBR (BIOS heredado)",
    ),
    "formatMbrDescription": MessageLookupByLibrary.simpleMessage(
      "Limpia el disco en cree deze heredado\nSolo-ramen (C:)",
    ),
    "formatWarning": MessageLookupByLibrary.simpleMessage(
      "De discoselectie wordt volledig uitgevoerd. Bekijk alle gegevens.",
    ),
    "generateIso": MessageLookupByLibrary.simpleMessage("Algemene ISO"),
    "getInstallOnlyIso": MessageLookupByLibrary.simpleMessage(
      "Verkrijg ISO voor permanente installatie",
    ),
    "goUpOneLevel": MessageLookupByLibrary.simpleMessage("Zie een nivel"),
    "imageDetected": MessageLookupByLibrary.simpleMessage("Beeld gedetecteerd"),
    "imageFound": MessageLookupByLibrary.simpleMessage(
      "Afbeelding tegengesteld",
    ),
    "imageNotFound": MessageLookupByLibrary.simpleMessage(
      "Afbeelding geen contrada",
    ),
    "imageSearching": MessageLookupByLibrary.simpleMessage(
      "Buscando-afbeelding...",
    ),
    "installAll": MessageLookupByLibrary.simpleMessage("Installatie todo"),
    "installOffice": MessageLookupByLibrary.simpleMessage("Installeer kantoor"),
    "installationProgress": MessageLookupByLibrary.simpleMessage(
      "Voortgang van de installatie",
    ),
    "invalidPath": m17,
    "isoDescription": MessageLookupByLibrary.simpleMessage(
      "Zorg ervoor dat u de ISO-basis gebruikt om een WIM-configuratie te selecteren, of maak een ISO-automatisch dat uw Windows-afbeeldingen omvat.",
    ),
    "iso_bridge_clients_count": m18,
    "iso_bridge_desc": MessageLookupByLibrary.simpleMessage(
      "Bereid de WIM voor op een solo en zend direct het requiem van de misma rode klanten uit. Klanten bewaken de WIM niet vóór de installatie.",
    ),
    "iso_bridge_generic_error": m19,
    "iso_bridge_list_interfaces_error": m20,
    "iso_bridge_save_simple_iso_dialog": MessageLookupByLibrary.simpleMessage(
      "Guardar ISO simple de Requiem",
    ),
    "iso_bridge_save_wim_iso_dialog": MessageLookupByLibrary.simpleMessage(
      "Bewaak ISO de Requiem met WIM",
    ),
    "iso_bridge_select_wim_dialog": MessageLookupByLibrary.simpleMessage(
      "Selecteer afbeeldingen WIM van Windows",
    ),
    "iso_bridge_simple_iso_filename": MessageLookupByLibrary.simpleMessage(
      "Requiem-Installer-Simple.iso",
    ),
    "iso_bridge_start_validation_error": MessageLookupByLibrary.simpleMessage(
      "Selecteer een WIM en een IPv4-interface.",
    ),
    "iso_bridge_wim_selected_log": m21,
    "iso_panel_button_generate_iso": MessageLookupByLibrary.simpleMessage(
      "ALGEMEEN ISO",
    ),
    "iso_panel_button_select_wim": MessageLookupByLibrary.simpleMessage(
      "SELECCIONAR WIM",
    ),
    "iso_panel_button_simple_iso": MessageLookupByLibrary.simpleMessage(
      "OBTENER ISO PARA INSTALACIÓN SOLAMENTE",
    ),
    "iso_panel_desc_media": MessageLookupByLibrary.simpleMessage(
      "Zorg ervoor dat u de ISO-basis gebruikt om een WIM-configuratie te selecteren, of maak een ISO-automatisch dat uw Windows-afbeeldingen omvat.",
    ),
    "iso_panel_title_bridge": MessageLookupByLibrary.simpleMessage(
      "Installeer IPv4",
    ),
    "iso_panel_title_media": MessageLookupByLibrary.simpleMessage(
      "Middellange installatie",
    ),
    "kmsError": m22,
    "kmsHostEmpty": MessageLookupByLibrary.simpleMessage(
      "Fout: de host KMS is leeg.",
    ),
    "kmsServer": MessageLookupByLibrary.simpleMessage("Dienstverlener KMS"),
    "kmsTask160Days": MessageLookupByLibrary.simpleMessage("Tarea 160 dias"),
    "kmsVolumeActivation": MessageLookupByLibrary.simpleMessage(
      "Volumeactivering (KMS)",
    ),
    "kms_product_office_ltsc_professional_plus_2021":
        MessageLookupByLibrary.simpleMessage(
          "Kantoor LTSC Professional Plus 2021",
        ),
    "kms_product_office_ltsc_professional_plus_2024":
        MessageLookupByLibrary.simpleMessage(
          "KantoorLTSC Professional Plus 2024",
        ),
    "kms_product_office_professional_plus_2013":
        MessageLookupByLibrary.simpleMessage("Office Professional Plus 2013"),
    "kms_product_office_professional_plus_2016":
        MessageLookupByLibrary.simpleMessage("Office Professional Plus 2016"),
    "kms_product_office_professional_plus_2019":
        MessageLookupByLibrary.simpleMessage("Office Professional Plus 2019"),
    "kms_product_office_standard_2013": MessageLookupByLibrary.simpleMessage(
      "Kantoorstandaard 2013",
    ),
    "kms_product_windows_10_11_education": MessageLookupByLibrary.simpleMessage(
      "Windows 10/11 Onderwijs",
    ),
    "kms_product_windows_10_11_education_n":
        MessageLookupByLibrary.simpleMessage("Windows 10/11 Onderwijs N"),
    "kms_product_windows_10_11_enterprise":
        MessageLookupByLibrary.simpleMessage("Windows 10/11 Enterprise"),
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
        MessageLookupByLibrary.simpleMessage("Windows 10/11 Pro Onderwijs"),
    "kms_product_windows_10_11_pro_for_workstations":
        MessageLookupByLibrary.simpleMessage(
          "Windows 10/11 Pro voor werkstations",
        ),
    "kms_product_windows_10_11_pro_n": MessageLookupByLibrary.simpleMessage(
      "Windows 10/11 ProN",
    ),
    "kms_product_windows_10_11_pro_workstations":
        MessageLookupByLibrary.simpleMessage("Windows 10/11 Pro-werkstations"),
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
        MessageLookupByLibrary.simpleMessage("Windows Server 2019 Datacenter"),
    "kms_product_windows_server_2019_standard":
        MessageLookupByLibrary.simpleMessage("Windows Server 2019 Standaard"),
    "kms_product_windows_server_2022_datacenter":
        MessageLookupByLibrary.simpleMessage("Windows Server 2022 Datacenter"),
    "kms_product_windows_server_2022_standard":
        MessageLookupByLibrary.simpleMessage("Windows Server 2022 Standaard"),
    "kms_product_windows_server_2025_datacenter":
        MessageLookupByLibrary.simpleMessage("Windows Server 2025 Datacenter"),
    "kms_product_windows_server_2025_standard":
        MessageLookupByLibrary.simpleMessage("Windows Server 2025 Standaard"),
    "kms_product_windows_subsystem_for_linux":
        MessageLookupByLibrary.simpleMessage("Windows-subsysteem voor Linux"),
    "kms_product_windows_terminal": MessageLookupByLibrary.simpleMessage(
      "Windows-terminal",
    ),
    "landingDescription": MessageLookupByLibrary.simpleMessage(
      "Installeer de Windows met hoge precisie voor hoge prestaties. Experimenteer met een snelle uitvoering van DISM-opdrachten en automatische optimalisatie van het systeem.",
    ),
    "landing_badge_author": MessageLookupByLibrary.simpleMessage(
      "DISEÑADO POR JOSS",
    ),
    "landing_badge_secure_boot": MessageLookupByLibrary.simpleMessage(
      "COMPATIBEL CON SECURE BOOT",
    ),
    "landing_badge_version": MessageLookupByLibrary.simpleMessage(
      "VERSIE ESTABLE",
    ),
    "landing_button_logs": MessageLookupByLibrary.simpleMessage(
      "LOGS DEL SISTEMA",
    ),
    "landing_button_start": MessageLookupByLibrary.simpleMessage("EMPEZAR"),
    "landing_description_part1": MessageLookupByLibrary.simpleMessage(
      "Installeer de Windows met hoge precisie voor hoge prestaties.",
    ),
    "landing_description_part2": MessageLookupByLibrary.simpleMessage(
      "Experimenteer met een snelle uitvoering van DISM-opdrachten en automatische optimalisatie van het systeem.",
    ),
    "landing_subtitle": MessageLookupByLibrary.simpleMessage(
      "DESPLIEGUE DE SO DE PRÓXIMA GENERACIÓN",
    ),
    "landing_title_installer": MessageLookupByLibrary.simpleMessage(
      "REQUIEM INSTALLATEUR",
    ),
    "landing_title_tools": MessageLookupByLibrary.simpleMessage(
      "VEREISTE GEREEDSCHAP",
    ),
    "licenseActivation": MessageLookupByLibrary.simpleMessage(
      "Activering van licenties",
    ),
    "logsCopied": MessageLookupByLibrary.simpleMessage(
      "Kopieën van logboeken in portapapeles.",
    ),
    "mandatoryUpdate": MessageLookupByLibrary.simpleMessage(
      "Dit actualiseren is verplicht en kan niet worden weggelaten.",
    ),
    "manualWimHint": MessageLookupByLibrary.simpleMessage(
      "Gebruik \"Buscar\" om uw WIM-archiefhandleiding te lokaliseren.",
    ),
    "mediaInstallation": MessageLookupByLibrary.simpleMessage(
      "Middellange installatie",
    ),
    "networkBridge": MessageLookupByLibrary.simpleMessage("Installeer IPv4"),
    "networkInterface": MessageLookupByLibrary.simpleMessage(
      "Interfaz Wi‑Fi/LAN IPv4",
    ),
    "nextGenerationDeployment": MessageLookupByLibrary.simpleMessage(
      "Gebruik de SO-proxima-generatie",
    ),
    "noBridgeFound": MessageLookupByLibrary.simpleMessage(
      "Geen controle meer. Pruebe con la IP-handleiding.",
    ),
    "noFormatWarning": MessageLookupByLibrary.simpleMessage(
      "Windows wordt weergegeven in W:\\ sin formatear.",
    ),
    "noImageDetected": MessageLookupByLibrary.simpleMessage(
      "Er is geen afbeelding gedetecteerd",
    ),
    "noKmsProducts": MessageLookupByLibrary.simpleMessage(
      "Geen hooiproducten KMS-selecties.",
    ),
    "noPhysicalDisks": MessageLookupByLibrary.simpleMessage(
      "Er is geen detectie van fysieke discotheken",
    ),
    "noProgramsSelected": MessageLookupByLibrary.simpleMessage(
      "Geen hooiprogramma\'s geselecteerd.",
    ),
    "noWifiNetworks": MessageLookupByLibrary.simpleMessage(
      "Er is geen toegang tot de beschikbare Wi-Fi.",
    ),
    "noWingetPackages": MessageLookupByLibrary.simpleMessage(
      "Er zijn geen conocidos met vleugeltjes gedetecteerd.",
    ),
    "officeInstallDescription": MessageLookupByLibrary.simpleMessage(
      "Gebruik Microsoft Office LTSC of 365 automatische manieren om ODT te gebruiken.",
    ),
    "officeInstaller": MessageLookupByLibrary.simpleMessage(
      "Installateur van kantoor",
    ),
    "officeRenewalStatus": m23,
    "officeVersion": MessageLookupByLibrary.simpleMessage("Versie van Office"),
    "office_odt_kms_badge": MessageLookupByLibrary.simpleMessage("ODT + KMS"),
    "office_odt_panel_title": MessageLookupByLibrary.simpleMessage(
      "Office-implementatietool",
    ),
    "office_pkg_desc_2019": MessageLookupByLibrary.simpleMessage(
      "Click-to-Run voor het volume met kanaal PerpetualVL2019",
    ),
    "office_pkg_desc_2021": MessageLookupByLibrary.simpleMessage(
      "Click-to-Run voor het volume met kanaal PerpetualVL2021",
    ),
    "office_pkg_desc_2024": MessageLookupByLibrary.simpleMessage(
      "Click-to-Run voor het volume met kanaal PerpetualVL2024",
    ),
    "office_pkg_name_2019": MessageLookupByLibrary.simpleMessage(
      "Office Pro Plus 2019",
    ),
    "office_pkg_name_2021": MessageLookupByLibrary.simpleMessage(
      "KantoorLTSC Pro Plus 2021",
    ),
    "office_pkg_name_2024": MessageLookupByLibrary.simpleMessage(
      "OfficeLTSC Pro Plus 2024",
    ),
    "onlyWindows": MessageLookupByLibrary.simpleMessage(
      "Deze functie is alleen beschikbaar in Windows.",
    ),
    "packageStack": MessageLookupByLibrary.simpleMessage(
      "Programmastapel (Winget)",
    ),
    "packagesDetected": m24,
    "partitionMode": MessageLookupByLibrary.simpleMessage("Modus van deelname"),
    "pkg_cat_apache_php_mysql": MessageLookupByLibrary.simpleMessage(
      "Apache PHP MySQL",
    ),
    "pkg_cat_bi_desktop": MessageLookupByLibrary.simpleMessage("BI-bureaublad"),
    "pkg_cat_cliente_api": MessageLookupByLibrary.simpleMessage("Client-API"),
    "pkg_cat_cliente_db": MessageLookupByLibrary.simpleMessage("Klant DB"),
    "pkg_cat_compiladores_c": MessageLookupByLibrary.simpleMessage(
      "Compiladores C++",
    ),
    "pkg_cat_compresor": MessageLookupByLibrary.simpleMessage("Compresor"),
    "pkg_cat_comunicacion": MessageLookupByLibrary.simpleMessage(
      "Communicatie",
    ),
    "pkg_cat_control_de_versiones": MessageLookupByLibrary.simpleMessage(
      "Controle van de versies",
    ),
    "pkg_cat_desktop": MessageLookupByLibrary.simpleMessage("Bureaublad"),
    "pkg_cat_diagramas": MessageLookupByLibrary.simpleMessage("Diagrammen"),
    "pkg_cat_distro_wsl": MessageLookupByLibrary.simpleMessage("Distro WSL"),
    "pkg_cat_editor": MessageLookupByLibrary.simpleMessage("Redacteur"),
    "pkg_cat_golang": MessageLookupByLibrary.simpleMessage("Golang"),
    "pkg_cat_gpu_compute": MessageLookupByLibrary.simpleMessage("GPU-computer"),
    "pkg_cat_grabacion": MessageLookupByLibrary.simpleMessage("Grijp"),
    "pkg_cat_ide_ai": MessageLookupByLibrary.simpleMessage("IDE AI"),
    "pkg_cat_ide_android": MessageLookupByLibrary.simpleMessage("IDE Android"),
    "pkg_cat_ide_completo": MessageLookupByLibrary.simpleMessage(
      "IDE compleet",
    ),
    "pkg_cat_instaladores": MessageLookupByLibrary.simpleMessage(
      "Installaties",
    ),
    "pkg_cat_javascript": MessageLookupByLibrary.simpleMessage("JavaScript"),
    "pkg_cat_limpieza": MessageLookupByLibrary.simpleMessage("Limpieza"),
    "pkg_cat_modelos_locales": MessageLookupByLibrary.simpleMessage(
      "Modellokalen",
    ),
    "pkg_cat_navegador": MessageLookupByLibrary.simpleMessage("Navegador"),
    "pkg_cat_python_3": MessageLookupByLibrary.simpleMessage("Python 3"),
    "pkg_cat_runtime_c": MessageLookupByLibrary.simpleMessage("Runtime-C++"),
    "pkg_cat_runtime_escritorio": MessageLookupByLibrary.simpleMessage(
      "Runtime-escritorio",
    ),
    "pkg_cat_runtime_juegos": MessageLookupByLibrary.simpleMessage(
      "Runtime juego\'s",
    ),
    "pkg_cat_runtime_php": MessageLookupByLibrary.simpleMessage("Runtime-PHP"),
    "pkg_cat_rustup": MessageLookupByLibrary.simpleMessage("Roest"),
    "pkg_cat_sdk__net": MessageLookupByLibrary.simpleMessage("SDK .NET"),
    "pkg_cat_servidor_db": MessageLookupByLibrary.simpleMessage(
      "Dienstverlener DB",
    ),
    "pkg_cat_ssh_clasico": MessageLookupByLibrary.simpleMessage(
      "SSH klassieker",
    ),
    "pkg_cat_ssh_moderno": MessageLookupByLibrary.simpleMessage("SSH modern"),
    "pkg_cat_subsistema_linux": MessageLookupByLibrary.simpleMessage(
      "Subsysteem Linux",
    ),
    "pkg_cat_temurin_21": MessageLookupByLibrary.simpleMessage("Temurijn 21"),
    "pkg_cat_terminal_moderno": MessageLookupByLibrary.simpleMessage(
      "Moderne terminal",
    ),
    "prepareBridge": MessageLookupByLibrary.simpleMessage(
      "Bereid een beginpunt voor",
    ),
    "progress_button_reboot": MessageLookupByLibrary.simpleMessage(
      "REINICIAR SISTEMA",
    ),
    "progress_footer_warning": MessageLookupByLibrary.simpleMessage(
      "GEEN ONTKOPPELING VAN LA ENERGÍA NI PENSION EL MEDIO DE INSTALACIÓN",
    ),
    "progress_header_badge": MessageLookupByLibrary.simpleMessage(
      "DESPLIEGUE EN CURSO",
    ),
    "provideWindowsImage": MessageLookupByLibrary.simpleMessage(
      "Proporcione de installatieafbeelding van Windows (install.wim of install.swm)\nAls u een USB-poort of een middellange termijn gebruikt.",
    ),
    "receiveInstallation": MessageLookupByLibrary.simpleMessage(
      "U kunt de installatie voorbereiden op Windows-vereisten",
    ),
    "renewalActive": MessageLookupByLibrary.simpleMessage("Actief"),
    "renewalDisabled": MessageLookupByLibrary.simpleMessage("Deactiveren"),
    "searchingImage": MessageLookupByLibrary.simpleMessage(
      "Buscando-afbeelding…",
    ),
    "secureBootCompatible": MessageLookupByLibrary.simpleMessage(
      "Compatibel met Secure Boot",
    ),
    "selectDestinationDisk": MessageLookupByLibrary.simpleMessage(
      "Selectie van de bestemmingsdisco",
    ),
    "selectFileHint": MessageLookupByLibrary.simpleMessage(
      "Selecteer een archief .wim of .swm",
    ),
    "selectWim": MessageLookupByLibrary.simpleMessage("Selecteer WIM"),
    "selectWimFirst": MessageLookupByLibrary.simpleMessage(
      "Selecteer een WIM en een IPv4-interface.",
    ),
    "selectWindowsImage": MessageLookupByLibrary.simpleMessage(
      "Selecteer Windows-afbeeldingen",
    ),
    "selectWindowsImageFull": MessageLookupByLibrary.simpleMessage(
      "Selecteer een installatieafbeelding van Windows",
    ),
    "selectedFile": m25,
    "stableVersion": MessageLookupByLibrary.simpleMessage(
      "Versie stabiel v1.0.0",
    ),
    "start": MessageLookupByLibrary.simpleMessage("Empezar"),
    "startInstallation": MessageLookupByLibrary.simpleMessage(
      "Eerste installatie",
    ),
    "stopBridge": MessageLookupByLibrary.simpleMessage("Ontspan puente"),
    "systemConsole": MessageLookupByLibrary.simpleMessage(
      "Consola del systeem",
    ),
    "systemDisk": MessageLookupByLibrary.simpleMessage("Systeem"),
    "systemLogs": MessageLookupByLibrary.simpleMessage(
      "Logboeken van het systeem",
    ),
    "tools_badge_iso_compatibility": MessageLookupByLibrary.simpleMessage(
      "BIOS + UEFI-behoud",
    ),
    "tools_badge_kms_pending": MessageLookupByLibrary.simpleMessage(
      "KMS-pendiente",
    ),
    "tools_badge_package_count": m26,
    "tools_button_activate_kms": MessageLookupByLibrary.simpleMessage(
      "ACTIVAR KMS",
    ),
    "tools_button_install_all_packages": MessageLookupByLibrary.simpleMessage(
      "INSTALAIRE TODO",
    ),
    "tools_button_install_office": MessageLookupByLibrary.simpleMessage(
      "INSTALAIRE KANTOOR",
    ),
    "tools_header_title": MessageLookupByLibrary.simpleMessage(
      "REQUIEM MIGRATIEHULPMIDDELEN",
    ),
    "tools_kms_checking_connectivity": m27,
    "tools_kms_empty_host_error": MessageLookupByLibrary.simpleMessage(
      "FOUT: de host van KMS is vacio.",
    ),
    "tools_kms_error_log": m28,
    "tools_kms_no_products_selected": MessageLookupByLibrary.simpleMessage(
      "Geen hooiproducten KMS-selecties.",
    ),
    "tools_log_format": m29,
    "tools_logs_copied_snackbar": MessageLookupByLibrary.simpleMessage(
      "Kopieën van logboeken in portapapeles.",
    ),
    "tools_packages_detected_count": m30,
    "tools_packages_none_detected": MessageLookupByLibrary.simpleMessage(
      "Er zijn geen conocidos met vleugeltjes gedetecteerd.",
    ),
    "tools_packages_none_selected": MessageLookupByLibrary.simpleMessage(
      "Geen hooiprogramma\'s geselecteerd.",
    ),
    "tools_section_activation_desc": MessageLookupByLibrary.simpleMessage(
      "Configureer de KMS-service lokaal of op afstand om Windows en Office te activeren.",
    ),
    "tools_section_activation_title": MessageLookupByLibrary.simpleMessage(
      "Activering van licenties",
    ),
    "tools_section_iso_desc": MessageLookupByLibrary.simpleMessage(
      "U kunt automatisch een WIM-integratie of een directe installatie via IPv4 distribueren.",
    ),
    "tools_section_iso_title": MessageLookupByLibrary.simpleMessage(
      "ISO en weergave por rood",
    ),
    "tools_section_office_desc": MessageLookupByLibrary.simpleMessage(
      "Gebruik Microsoft Office LTSC of 365 automatische manieren om ODT te gebruiken.",
    ),
    "tools_section_office_title": MessageLookupByLibrary.simpleMessage(
      "Installateur van kantoor",
    ),
    "tools_section_packages_desc": MessageLookupByLibrary.simpleMessage(
      "Installeer en actualiseer de herramen van de essentiële onderdelen voor Windows-middenvleugels.",
    ),
    "tools_section_packages_title": MessageLookupByLibrary.simpleMessage(
      "Stapel toepassingen",
    ),
    "tools_sidebar_app_name": MessageLookupByLibrary.simpleMessage("REQUIEM"),
    "tools_sidebar_mode_badge": MessageLookupByLibrary.simpleMessage(
      "Modus Lokale hulpmiddelen",
    ),
    "tools_sidebar_tab_iso": MessageLookupByLibrary.simpleMessage(
      "ISO en Puente",
    ),
    "tools_sidebar_tab_kms": MessageLookupByLibrary.simpleMessage(
      "Activering KMS",
    ),
    "tools_sidebar_tab_office": MessageLookupByLibrary.simpleMessage(
      "Installatiekantoor",
    ),
    "tools_sidebar_tab_packages": MessageLookupByLibrary.simpleMessage(
      "Programma\'s stapelen",
    ),
    "unknown": MessageLookupByLibrary.simpleMessage("Desconocido"),
    "updateDescription": MessageLookupByLibrary.simpleMessage(
      "Om Requiem Tools te blijven gebruiken is het noodzakelijk om de nieuwste versie te actualiseren.",
    ),
    "updateRequired": MessageLookupByLibrary.simpleMessage(
      "Actualisatie vereist",
    ),
    "useExistingPartitions": MessageLookupByLibrary.simpleMessage(
      "Gebruik bestaande deelnames",
    ),
    "useExistingPartitionsDescription": MessageLookupByLibrary.simpleMessage(
      "Sin formatear — despliega en W: tal cual\nGebruik de handmatige deelname",
    ),
    "waitingAction": MessageLookupByLibrary.simpleMessage(
      "Esperando een accion...",
    ),
    "waitingForWim": MessageLookupByLibrary.simpleMessage(
      "Esperando de detectie van install.wim...",
    ),
    "wifiConnectError": m31,
    "wifiConnected": m32,
    "wifiPassword": MessageLookupByLibrary.simpleMessage("Tegenover Wi-Fi"),
    "wifi_connect_error": m33,
    "wifi_connected_log": m34,
    "wifi_connected_status": m35,
    "wifi_dialog_title": MessageLookupByLibrary.simpleMessage(
      "Sluit een Wi-Fi-installatie aan",
    ),
    "wifi_item_signal_security": m36,
    "wifi_none_found": MessageLookupByLibrary.simpleMessage(
      "Er is geen toegang tot de beschikbare Wi-Fi.",
    ),
    "wifi_password_hint": MessageLookupByLibrary.simpleMessage(
      "Tegenover Wi-Fi",
    ),
    "wifi_scanning": MessageLookupByLibrary.simpleMessage(
      "Beschikbare Wi-Fi-netwerken scannen...",
    ),
    "wimIntegrated": MessageLookupByLibrary.simpleMessage(
      "WIM geïntegreerd in de ISO",
    ),
    "wim_bridge_connection_error": m37,
    "wim_bridge_ip_dialog_title": MessageLookupByLibrary.simpleMessage(
      "IP del puente Requiem",
    ),
    "wim_bridge_ip_placeholder": MessageLookupByLibrary.simpleMessage(
      "192.168.1.20",
    ),
    "wim_bridge_not_found": MessageLookupByLibrary.simpleMessage(
      "Geen controle meer. Pruebe con la IP-handleiding.",
    ),
    "wim_bridge_search_error": m38,
    "wim_bridge_searching": MessageLookupByLibrary.simpleMessage(
      "Zoeken naar Requiem-bridges op het lokale IPv4-netwerk...",
    ),
    "wim_bridge_section_header": MessageLookupByLibrary.simpleMessage(
      "U kunt de installatie voorbereiden op Windows-vereisten",
    ),
    "wim_button_change_file": MessageLookupByLibrary.simpleMessage(
      "CAMBIAR ARCHIVO",
    ),
    "wim_button_connect_wifi": MessageLookupByLibrary.simpleMessage(
      "CONECTAR WIFI",
    ),
    "wim_button_manual_ip": MessageLookupByLibrary.simpleMessage(
      "USAR IP-HANDLEIDING",
    ),
    "wim_button_rescan": MessageLookupByLibrary.simpleMessage(
      "Escanear unidades de nuevo",
    ),
    "wim_button_search_bridge": MessageLookupByLibrary.simpleMessage(
      "BUSCAR PUENTE",
    ),
    "wim_manual_search_hint": MessageLookupByLibrary.simpleMessage(
      "Gebruik \"Buscar\" om uw WIM-archiefhandleiding te lokaliseren.",
    ),
    "wim_picker_description": MessageLookupByLibrary.simpleMessage(
      "Proporcione the imagen de installation de Windows (install.wim of install.swm)\\n",
    ),
    "wim_picker_title": MessageLookupByLibrary.simpleMessage(
      "Selecteer Windows-afbeeldingen",
    ),
    "wim_status_found": MessageLookupByLibrary.simpleMessage(
      "Afbeelding tegengesteld",
    ),
    "wim_status_not_found": MessageLookupByLibrary.simpleMessage(
      "Er is geen afbeelding gedetecteerd",
    ),
    "wim_status_searching": MessageLookupByLibrary.simpleMessage(
      "Buscando-afbeelding…",
    ),
    "wim_status_searching_alt": MessageLookupByLibrary.simpleMessage(
      "Buscando-afbeelding...",
    ),
    "wingetUnavailable": MessageLookupByLibrary.simpleMessage(
      "er is geen installatie meer op PATH.",
    ),
  };
}
