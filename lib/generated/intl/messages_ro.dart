// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a ro locale. All the
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
  String get localeName => 'ro';

  static String m0(count) => "${count} programe";

  static String m1(version) => "Versiune disponibilă: ${version}";

  static String m2(firmware) => "Acord curent: ${firmware}";

  static String m3(error) => "Nu s-a putut conecta: ${error}";

  static String m4(error) => "Nu s-a putut căuta puntea: ${error}";

  static String m5(host) => "Se verifică conectivitatea cu ${host}:1688...";

  static String m6(mode) => "Mod acceptat: ${mode}";

  static String m7(firmware) => "Acord curent: ${firmware}";

  static String m8(diskNumber, mediaType, busType) =>
      "DISK ${diskNumber} · ${mediaType} · ${busType}";

  static String m9(recommended) => "Mod acceptat: ${recommended}";

  static String m10(sizeGB) => "${sizeGB} ES";

  static String m11(imageName) =>
      "Pod: \${controller.bridgeAnnouncement?.imageName ??";

  static String m12(name, edition) => "Editare detectată: ${name} (${edition})";

  static String m13(error) => "A apărut o eroare: ${error}";

  static String m14(val) => "Rută nevalidă: ${val}";

  static String m15(error) =>
      "Nu s-a putut citi conținutul directorului.\\n${error}";

  static String m16(path) => "Selectat: ${path}";

  static String m17(path) => "Rută nevalidă: ${path}";

  static String m18(clients) => "${clients} conexiuni";

  static String m19(error) => "EROARE: ${error}";

  static String m20(error) =>
      "Nu s-au putut enumera interfețele IPv4: ${error}";

  static String m21(path) => "WIM selectat: ${path}";

  static String m22(error) => "Eroare KMS: ${error}";

  static String m23(product, channel, edition, status) =>
      "${product} / ${channel} / ${edition} biți. Reînnoirea rămâne ${status}.";

  static String m24(count) => "Pachete detectate: ${count}.";

  static String m25(file) => "Selectat: ${file}";

  static String m26(count) => "${count} programe";

  static String m27(host) => "Se verifică conectivitatea cu ${host}:1688...";

  static String m28(error) => "EROARE KMS: ${error}";

  static String m29(time, message) => "[${time}] ${message}";

  static String m30(count) => "Pachete detectate: ${count}.";

  static String m31(error) => "Nu s-a putut conecta la Wi-Fi: ${error}";

  static String m32(network) => "Conectat la ${network}.";

  static String m33(error) => "Nu s-a putut conecta la Wi-Fi: ${error}";

  static String m34(ssid, result) => "Wi-Fi conectat la ${ssid}. ${result}";

  static String m35(ssid) => "Conectat la ${ssid}.";

  static String m36(signal, security) => "${signal}% · ${security}";

  static String m37(error) => "Nu s-a putut conecta: ${error}";

  static String m38(error) => "Nu s-a putut căuta puntea: ${error}";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
    "actionCancel": MessageLookupByLibrary.simpleMessage("Anula"),
    "actionChange": MessageLookupByLibrary.simpleMessage("Schimba"),
    "actionConfirm": MessageLookupByLibrary.simpleMessage("Confirma"),
    "actionConnect": MessageLookupByLibrary.simpleMessage("Conectați-vă"),
    "actionContinue": MessageLookupByLibrary.simpleMessage("Continua"),
    "actionInstall": MessageLookupByLibrary.simpleMessage("Instala"),
    "actionRefresh": MessageLookupByLibrary.simpleMessage("Actualizare"),
    "actionRestartSystem": MessageLookupByLibrary.simpleMessage(
      "Reporniți sistemul",
    ),
    "actionScanAgain": MessageLookupByLibrary.simpleMessage(
      "Scanați din nou unitățile",
    ),
    "actionSearch": MessageLookupByLibrary.simpleMessage("Caută"),
    "actionSelect": MessageLookupByLibrary.simpleMessage("Selecta"),
    "activate": MessageLookupByLibrary.simpleMessage("Activa"),
    "activateKms": MessageLookupByLibrary.simpleMessage("Activați KMS"),
    "appTitleInstaller": MessageLookupByLibrary.simpleMessage(
      "Instalator Requiem",
    ),
    "appTitleTools": MessageLookupByLibrary.simpleMessage(
      "Instrumente Requiem",
    ),
    "app_title_installer": MessageLookupByLibrary.simpleMessage(
      "Instalator Requiem",
    ),
    "app_title_tools": MessageLookupByLibrary.simpleMessage(
      "Instrumente Requiem",
    ),
    "applicationStack": MessageLookupByLibrary.simpleMessage(
      "Stiva de aplicații",
    ),
    "applicationStackDescription": MessageLookupByLibrary.simpleMessage(
      "Instalați și actualizați instrumentele de dezvoltare esențiale pentru Windows folosind Winget.",
    ),
    "applicationsCount": m0,
    "automaticOffice": MessageLookupByLibrary.simpleMessage("birou automat"),
    "automaticOfficeDescription": MessageLookupByLibrary.simpleMessage(
      "Utilizați volumul deja instalat GVLK",
    ),
    "automaticRenewal": MessageLookupByLibrary.simpleMessage(
      "Reînnoire automată",
    ),
    "automaticWindows": MessageLookupByLibrary.simpleMessage(
      "ferestre automate",
    ),
    "automaticWindowsDescription": MessageLookupByLibrary.simpleMessage(
      "Detectează ediția și GVLK compatibil",
    ),
    "availableVersion": m1,
    "bootCurrent": m2,
    "bridgeConnectError": m3,
    "bridgeDescription": MessageLookupByLibrary.simpleMessage(
      "Pregătiți WIM-ul o singură dată și transmiteți-l direct clienților Requiem din aceeași rețea. Clienții nu salvează WIM-ul înainte de a-l instala.",
    ),
    "bridgeIp": MessageLookupByLibrary.simpleMessage("Requiem Bridge IP"),
    "bridgePorts": MessageLookupByLibrary.simpleMessage(
      "Port HTTP 40124 · Descoperire UDP 40123. Dacă Windows Defender vă întreabă, permiteți accesul în rețelele private.",
    ),
    "bridgeSearchError": m4,
    "checkingKms": m5,
    "clearLogs": MessageLookupByLibrary.simpleMessage("Curata bustenii"),
    "common_cancel": MessageLookupByLibrary.simpleMessage("ANULA"),
    "common_change": MessageLookupByLibrary.simpleMessage("SCHIMBA"),
    "common_connect": MessageLookupByLibrary.simpleMessage("CONECTAȚI"),
    "common_continue": MessageLookupByLibrary.simpleMessage("CONTINUA"),
    "common_label_disk": MessageLookupByLibrary.simpleMessage("DISC"),
    "common_label_image": MessageLookupByLibrary.simpleMessage("IMAGINE"),
    "common_label_mode": MessageLookupByLibrary.simpleMessage("MOD"),
    "common_refresh": MessageLookupByLibrary.simpleMessage("UPDATE"),
    "common_search": MessageLookupByLibrary.simpleMessage("CAUTĂ"),
    "common_select": MessageLookupByLibrary.simpleMessage("SELECTA"),
    "compatibleMode": m6,
    "confirmDataDestruction": MessageLookupByLibrary.simpleMessage(
      "Confirmați distrugerea datelor",
    ),
    "confirmInstallation": MessageLookupByLibrary.simpleMessage(
      "Confirmați instalarea",
    ),
    "connectInstallerWifi": MessageLookupByLibrary.simpleMessage(
      "Conectați programul de instalare la Wi-Fi",
    ),
    "connectWifi": MessageLookupByLibrary.simpleMessage("Conectați Wi-Fi"),
    "console_title": MessageLookupByLibrary.simpleMessage("consola de sistem"),
    "console_tooltip_clear": MessageLookupByLibrary.simpleMessage(
      "Curata bustenii",
    ),
    "console_tooltip_copy": MessageLookupByLibrary.simpleMessage(
      "Copiați înregistrările",
    ),
    "console_waiting_action": MessageLookupByLibrary.simpleMessage(
      "În așteptarea unei acțiuni...",
    ),
    "copyLogs": MessageLookupByLibrary.simpleMessage("Copiați înregistrările"),
    "deploymentInProgress": MessageLookupByLibrary.simpleMessage(
      "Desfășurare în curs",
    ),
    "designedBy": MessageLookupByLibrary.simpleMessage("Proiectat de Joss"),
    "destinationDiskDescription": MessageLookupByLibrary.simpleMessage(
      "Alegeți unitatea fizică pe care va fi instalat Windows.",
    ),
    "detect": MessageLookupByLibrary.simpleMessage("Detecta"),
    "diskManagement": MessageLookupByLibrary.simpleMessage(
      "managementul cluburilor de noapte",
    ),
    "disk_badge_system": MessageLookupByLibrary.simpleMessage("SISTEM"),
    "disk_boot_firmware_label": m7,
    "disk_button_confirm_and_install": MessageLookupByLibrary.simpleMessage(
      "CONFIRMĂ ȘI INSTALĂ",
    ),
    "disk_dialog_confirm_destruction_title":
        MessageLookupByLibrary.simpleMessage("CONFIRMĂ DISTRUGEREA DATELOR"),
    "disk_dialog_confirm_install_title": MessageLookupByLibrary.simpleMessage(
      "CONFIRMĂ INSTALAREA",
    ),
    "disk_dialog_existing_notice": MessageLookupByLibrary.simpleMessage(
      "Windows se va implementa în W:\\\\ fără formatare.",
    ),
    "disk_dialog_format_warning": MessageLookupByLibrary.simpleMessage(
      "Discul selectat va fi complet formatat. Toate datele se vor pierde.",
    ),
    "disk_empty_list": MessageLookupByLibrary.simpleMessage(
      "Nu au fost detectate discuri fizice",
    ),
    "disk_item_header": m8,
    "disk_management_appbar_title": MessageLookupByLibrary.simpleMessage(
      "MANAGEMENTUL DISCULUI",
    ),
    "disk_partition_gpt_uefi": MessageLookupByLibrary.simpleMessage("GPT/UEFI"),
    "disk_partition_mbr_bios": MessageLookupByLibrary.simpleMessage("MBR/BIOS"),
    "disk_recommended_mode_label": m9,
    "disk_selection_button_start": MessageLookupByLibrary.simpleMessage(
      "ÎNCEPE INSTALAREA",
    ),
    "disk_selection_desc": MessageLookupByLibrary.simpleMessage(
      "Alegeți unitatea fizică pe care va fi instalat Windows.",
    ),
    "disk_selection_title": MessageLookupByLibrary.simpleMessage(
      "Selectați Discul de destinație",
    ),
    "disk_size_gb": m10,
    "disk_waiting_wim_hint": MessageLookupByLibrary.simpleMessage(
      "Se așteaptă detectarea instal.wim...",
    ),
    "disk_wim_bridge_source": m11,
    "disk_wim_detected": MessageLookupByLibrary.simpleMessage(
      "Imaginea detectată",
    ),
    "disk_wim_integrated_source": MessageLookupByLibrary.simpleMessage(
      "WIM integrat în ISO",
    ),
    "disk_wim_not_found": MessageLookupByLibrary.simpleMessage(
      "Imaginea nu a fost găsită",
    ),
    "doNotDisconnect": MessageLookupByLibrary.simpleMessage(
      "Nu opriți alimentarea și nu îndepărtați mediul de instalare",
    ),
    "downloadAndActivate": MessageLookupByLibrary.simpleMessage(
      "Descărcați + activați",
    ),
    "downloadInstaller": MessageLookupByLibrary.simpleMessage(
      "Descărcați programul de instalare (.exe)",
    ),
    "downloadPortable": MessageLookupByLibrary.simpleMessage(
      "Descărcați portabil (.zip)",
    ),
    "drives": MessageLookupByLibrary.simpleMessage("Unități"),
    "editionDetected": m12,
    "emptyFolder": MessageLookupByLibrary.simpleMessage(
      "Acest folder este gol",
    ),
    "errorGeneric": m13,
    "file_explorer_default_title": MessageLookupByLibrary.simpleMessage(
      "Selectați Imaginea de instalare Windows",
    ),
    "file_explorer_drives_header": MessageLookupByLibrary.simpleMessage(
      "UNITATE",
    ),
    "file_explorer_empty_folder": MessageLookupByLibrary.simpleMessage(
      "Acest folder este gol",
    ),
    "file_explorer_filter_hint": MessageLookupByLibrary.simpleMessage(
      "Filtra…",
    ),
    "file_explorer_go_up_tooltip": MessageLookupByLibrary.simpleMessage(
      "Urcă un nivel",
    ),
    "file_explorer_invalid_path_error": m14,
    "file_explorer_read_error": m15,
    "file_explorer_select_file_hint": MessageLookupByLibrary.simpleMessage(
      "Selectați un fișier .wim sau .swm",
    ),
    "file_explorer_selected_file": m16,
    "filter": MessageLookupByLibrary.simpleMessage("Filtra…"),
    "formatGpt": MessageLookupByLibrary.simpleMessage(
      "Format GPT (recomandat)",
    ),
    "formatGptDescription": MessageLookupByLibrary.simpleMessage(
      "Curățați discoteca și creați aspectul UEFI\nEFI (S:) + Windows (W:)",
    ),
    "formatMbr": MessageLookupByLibrary.simpleMessage(
      "Formatați MBR (BIOS moștenit)",
    ),
    "formatMbrDescription": MessageLookupByLibrary.simpleMessage(
      "Ștergeți discul și creați un aspect moștenit\nDoar Windows (C:)",
    ),
    "formatWarning": MessageLookupByLibrary.simpleMessage(
      "Discul selectat va fi complet formatat. Toate datele se vor pierde.",
    ),
    "generateIso": MessageLookupByLibrary.simpleMessage("Generați ISO"),
    "getInstallOnlyIso": MessageLookupByLibrary.simpleMessage(
      "Obțineți ISO numai pentru instalare",
    ),
    "goUpOneLevel": MessageLookupByLibrary.simpleMessage("Urcă un nivel"),
    "imageDetected": MessageLookupByLibrary.simpleMessage("Imaginea detectată"),
    "imageFound": MessageLookupByLibrary.simpleMessage("Imaginea găsită"),
    "imageNotFound": MessageLookupByLibrary.simpleMessage(
      "Imaginea nu a fost găsită",
    ),
    "imageSearching": MessageLookupByLibrary.simpleMessage(
      "Se caută imagine...",
    ),
    "installAll": MessageLookupByLibrary.simpleMessage("Instalați toate"),
    "installOffice": MessageLookupByLibrary.simpleMessage("Birou montaj"),
    "installationProgress": MessageLookupByLibrary.simpleMessage(
      "Progresul instalării",
    ),
    "invalidPath": m17,
    "isoDescription": MessageLookupByLibrary.simpleMessage(
      "Obțineți ISO de bază pentru a selecta un WIM la pornire sau creați un ISO autonom care include deja imaginea dvs. Windows.",
    ),
    "iso_bridge_clients_count": m18,
    "iso_bridge_desc": MessageLookupByLibrary.simpleMessage(
      "Pregătiți WIM-ul o singură dată și transmiteți-l direct clienților Requiem din aceeași rețea. Clienții nu salvează WIM-ul înainte de a-l instala.",
    ),
    "iso_bridge_generic_error": m19,
    "iso_bridge_list_interfaces_error": m20,
    "iso_bridge_save_simple_iso_dialog": MessageLookupByLibrary.simpleMessage(
      "Salvați ISO Simple Requiem",
    ),
    "iso_bridge_save_wim_iso_dialog": MessageLookupByLibrary.simpleMessage(
      "Salvați Requiem ISO cu WIM",
    ),
    "iso_bridge_select_wim_dialog": MessageLookupByLibrary.simpleMessage(
      "Selectați imaginea WIM Windows",
    ),
    "iso_bridge_simple_iso_filename": MessageLookupByLibrary.simpleMessage(
      "Requiem-Installer-Simple.iso",
    ),
    "iso_bridge_start_validation_error": MessageLookupByLibrary.simpleMessage(
      "Selectați o interfață WIM și o interfață IPv4 privată.",
    ),
    "iso_bridge_wim_selected_log": m21,
    "iso_panel_button_generate_iso": MessageLookupByLibrary.simpleMessage(
      "ISO GENERATE",
    ),
    "iso_panel_button_select_wim": MessageLookupByLibrary.simpleMessage(
      "SELECTAȚI WIM",
    ),
    "iso_panel_button_simple_iso": MessageLookupByLibrary.simpleMessage(
      "OBȚINE ISO DOAR PENTRU INSTALARE",
    ),
    "iso_panel_desc_media": MessageLookupByLibrary.simpleMessage(
      "Obțineți ISO de bază pentru a selecta un WIM la pornire sau creați un ISO autonom care include deja imaginea dvs. Windows.",
    ),
    "iso_panel_title_bridge": MessageLookupByLibrary.simpleMessage(
      "Instalare IPv4 Bridge",
    ),
    "iso_panel_title_media": MessageLookupByLibrary.simpleMessage(
      "Medii de instalare",
    ),
    "kmsError": m22,
    "kmsHostEmpty": MessageLookupByLibrary.simpleMessage(
      "Eroare: gazda KMS este goală.",
    ),
    "kmsServer": MessageLookupByLibrary.simpleMessage("Server KMS"),
    "kmsTask160Days": MessageLookupByLibrary.simpleMessage(
      "Sarcina 160 de zile",
    ),
    "kmsVolumeActivation": MessageLookupByLibrary.simpleMessage(
      "Activare volum (KMS)",
    ),
    "kms_product_office_ltsc_professional_plus_2021":
        MessageLookupByLibrary.simpleMessage(
          "LTSC Professional Plus Office 2021",
        ),
    "kms_product_office_ltsc_professional_plus_2024":
        MessageLookupByLibrary.simpleMessage(
          "LTSC Professional Plus Office 2024",
        ),
    "kms_product_office_professional_plus_2013":
        MessageLookupByLibrary.simpleMessage("Office Professional Plus 2013"),
    "kms_product_office_professional_plus_2016":
        MessageLookupByLibrary.simpleMessage("Office Professional Plus 2016"),
    "kms_product_office_professional_plus_2019":
        MessageLookupByLibrary.simpleMessage("Professional Office Plus 2019"),
    "kms_product_office_standard_2013": MessageLookupByLibrary.simpleMessage(
      "Office Standard 2013",
    ),
    "kms_product_windows_10_11_education": MessageLookupByLibrary.simpleMessage(
      "Windows 10/11 Educație",
    ),
    "kms_product_windows_10_11_education_n":
        MessageLookupByLibrary.simpleMessage("Windows 10/11 Educație N"),
    "kms_product_windows_10_11_enterprise":
        MessageLookupByLibrary.simpleMessage("Windows 10/11 business"),
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
        MessageLookupByLibrary.simpleMessage("Windows 10/11 Pro Educație"),
    "kms_product_windows_10_11_pro_for_workstations":
        MessageLookupByLibrary.simpleMessage(
          "Windows 10/11 Pro pentru stații de lucru",
        ),
    "kms_product_windows_10_11_pro_n": MessageLookupByLibrary.simpleMessage(
      "Windows 10/11 Pro N",
    ),
    "kms_product_windows_10_11_pro_workstations":
        MessageLookupByLibrary.simpleMessage(
          "Stații de lucru Windows 10/11 Pro",
        ),
    "kms_product_windows_8_1_enterprise": MessageLookupByLibrary.simpleMessage(
      "Windows 8.1 Enterprise",
    ),
    "kms_product_windows_8_1_pro": MessageLookupByLibrary.simpleMessage(
      "Windows 8.1 Pro",
    ),
    "kms_product_windows_8_enterprise": MessageLookupByLibrary.simpleMessage(
      "Windows 8 Business",
    ),
    "kms_product_windows_8_pro": MessageLookupByLibrary.simpleMessage(
      "Windows 8 Pro",
    ),
    "kms_product_windows_server_2019_datacenter":
        MessageLookupByLibrary.simpleMessage(
          "Centru de date Windows Server 2019",
        ),
    "kms_product_windows_server_2019_standard":
        MessageLookupByLibrary.simpleMessage("Windows Server Standard 2019"),
    "kms_product_windows_server_2022_datacenter":
        MessageLookupByLibrary.simpleMessage(
          "Centru de date Windows Server 2022",
        ),
    "kms_product_windows_server_2022_standard":
        MessageLookupByLibrary.simpleMessage("Windows Server 2022 Standard"),
    "kms_product_windows_server_2025_datacenter":
        MessageLookupByLibrary.simpleMessage(
          "Centru de date Windows Server 2025",
        ),
    "kms_product_windows_server_2025_standard":
        MessageLookupByLibrary.simpleMessage("Windows Server 2025 Standard"),
    "kms_product_windows_subsystem_for_linux":
        MessageLookupByLibrary.simpleMessage(
          "Subsistemul Windows pentru Linux",
        ),
    "kms_product_windows_terminal": MessageLookupByLibrary.simpleMessage(
      "Terminal Windows",
    ),
    "landingDescription": MessageLookupByLibrary.simpleMessage(
      "Program de instalare Windows de înaltă precizie pentru medii de înaltă performanță. Experimentați implementarea rapidă cu orchestrarea DISM directă și optimizarea automată a sistemului.",
    ),
    "landing_badge_author": MessageLookupByLibrary.simpleMessage(
      "DESIGNAT DE JOSS",
    ),
    "landing_badge_secure_boot": MessageLookupByLibrary.simpleMessage(
      "COMPATIBIL SAFE BOOT",
    ),
    "landing_badge_version": MessageLookupByLibrary.simpleMessage(
      "VERSIUNE STABILĂ",
    ),
    "landing_button_logs": MessageLookupByLibrary.simpleMessage(
      "Jurnalele de sistem",
    ),
    "landing_button_start": MessageLookupByLibrary.simpleMessage("ÎNCEPE"),
    "landing_description_part1": MessageLookupByLibrary.simpleMessage(
      "Program de instalare Windows de înaltă precizie pentru medii de înaltă performanță.",
    ),
    "landing_description_part2": MessageLookupByLibrary.simpleMessage(
      "Experimentați implementarea rapidă cu orchestrarea DISM directă și optimizarea automată a sistemului.",
    ),
    "landing_subtitle": MessageLookupByLibrary.simpleMessage(
      "IMPLEMENTAREA OS DE GENERATIE URMATOARE",
    ),
    "landing_title_installer": MessageLookupByLibrary.simpleMessage(
      "INSTALATOR REQUIEM",
    ),
    "landing_title_tools": MessageLookupByLibrary.simpleMessage(
      "INSTRUMENTE REQUIEM",
    ),
    "licenseActivation": MessageLookupByLibrary.simpleMessage(
      "activarea licenței",
    ),
    "logsCopied": MessageLookupByLibrary.simpleMessage(
      "Înregistrările au fost copiate în clipboard.",
    ),
    "mandatoryUpdate": MessageLookupByLibrary.simpleMessage(
      "Această actualizare este obligatorie și nu poate fi omisă.",
    ),
    "manualWimHint": MessageLookupByLibrary.simpleMessage(
      "Folosiți „Răsfoiți” pentru a vă localiza manual fișierul WIM.",
    ),
    "mediaInstallation": MessageLookupByLibrary.simpleMessage(
      "Medii de instalare",
    ),
    "networkBridge": MessageLookupByLibrary.simpleMessage(
      "Instalare IPv4 Bridge",
    ),
    "networkInterface": MessageLookupByLibrary.simpleMessage(
      "Interfață Wi-Fi/LAN IPv4",
    ),
    "nextGenerationDeployment": MessageLookupByLibrary.simpleMessage(
      "Implementarea sistemului de operare de generație următoare",
    ),
    "noBridgeFound": MessageLookupByLibrary.simpleMessage(
      "Nu a fost găsit nici un pod. Încercați manualul IP.",
    ),
    "noFormatWarning": MessageLookupByLibrary.simpleMessage(
      "Windows se va implementa în W:\\ fără formatare.",
    ),
    "noImageDetected": MessageLookupByLibrary.simpleMessage(
      "Nu a fost detectată nicio imagine",
    ),
    "noKmsProducts": MessageLookupByLibrary.simpleMessage(
      "Nu sunt produse KMS selectate.",
    ),
    "noPhysicalDisks": MessageLookupByLibrary.simpleMessage(
      "Nu au fost detectate discuri fizice",
    ),
    "noProgramsSelected": MessageLookupByLibrary.simpleMessage(
      "Nu există programe selectate.",
    ),
    "noWifiNetworks": MessageLookupByLibrary.simpleMessage(
      "Nu au fost găsite rețele Wi-Fi disponibile.",
    ),
    "noWingetPackages": MessageLookupByLibrary.simpleMessage(
      "Nu au fost detectate pachete cunoscute cu Winget.",
    ),
    "officeInstallDescription": MessageLookupByLibrary.simpleMessage(
      "Implementați Microsoft Office LTSC sau 365 într-un mod automat, folosind ODT.",
    ),
    "officeInstaller": MessageLookupByLibrary.simpleMessage(
      "instalator de birou",
    ),
    "officeRenewalStatus": m23,
    "officeVersion": MessageLookupByLibrary.simpleMessage("versiune office"),
    "office_odt_kms_badge": MessageLookupByLibrary.simpleMessage("ODT + KMS"),
    "office_odt_panel_title": MessageLookupByLibrary.simpleMessage(
      "Instrument de implementare Office",
    ),
    "office_pkg_desc_2019": MessageLookupByLibrary.simpleMessage(
      "Faceți clic și rulați volumul cu canalul PerpetualVL2019",
    ),
    "office_pkg_desc_2021": MessageLookupByLibrary.simpleMessage(
      "Faceți clic și rulați volumul cu canalul PerpetualVL2021",
    ),
    "office_pkg_desc_2024": MessageLookupByLibrary.simpleMessage(
      "Faceți clic și rulați volumul cu canalul PerpetualVL2024",
    ),
    "office_pkg_name_2019": MessageLookupByLibrary.simpleMessage(
      "Office Pro Plus 2019",
    ),
    "office_pkg_name_2021": MessageLookupByLibrary.simpleMessage(
      "LTSC Pro Plus Office 2021",
    ),
    "office_pkg_name_2024": MessageLookupByLibrary.simpleMessage(
      "LTSC Pro Plus Office 2024",
    ),
    "onlyWindows": MessageLookupByLibrary.simpleMessage(
      "Această caracteristică este disponibilă numai pe Windows.",
    ),
    "packageStack": MessageLookupByLibrary.simpleMessage(
      "Stiva de programe (Winget)",
    ),
    "packagesDetected": m24,
    "partitionMode": MessageLookupByLibrary.simpleMessage("Modul partiție"),
    "pkg_cat_apache_php_mysql": MessageLookupByLibrary.simpleMessage(
      "Apache PHP MySQL",
    ),
    "pkg_cat_bi_desktop": MessageLookupByLibrary.simpleMessage("BI Desktop"),
    "pkg_cat_cliente_api": MessageLookupByLibrary.simpleMessage("Client API"),
    "pkg_cat_cliente_db": MessageLookupByLibrary.simpleMessage(
      "Baza de date a clienților",
    ),
    "pkg_cat_compiladores_c": MessageLookupByLibrary.simpleMessage(
      "Compilatoare C++",
    ),
    "pkg_cat_compresor": MessageLookupByLibrary.simpleMessage("compresor"),
    "pkg_cat_comunicacion": MessageLookupByLibrary.simpleMessage("comunicare"),
    "pkg_cat_control_de_versiones": MessageLookupByLibrary.simpleMessage(
      "Controlul versiunilor",
    ),
    "pkg_cat_desktop": MessageLookupByLibrary.simpleMessage("Birou"),
    "pkg_cat_diagramas": MessageLookupByLibrary.simpleMessage("diagrame"),
    "pkg_cat_distro_wsl": MessageLookupByLibrary.simpleMessage(
      "Distribuție WSL",
    ),
    "pkg_cat_editor": MessageLookupByLibrary.simpleMessage("Editor"),
    "pkg_cat_golang": MessageLookupByLibrary.simpleMessage("golang"),
    "pkg_cat_gpu_compute": MessageLookupByLibrary.simpleMessage(
      "GPU de calcul",
    ),
    "pkg_cat_grabacion": MessageLookupByLibrary.simpleMessage("Înregistrare"),
    "pkg_cat_ide_ai": MessageLookupByLibrary.simpleMessage("IDE IA"),
    "pkg_cat_ide_android": MessageLookupByLibrary.simpleMessage("IDEAndroid"),
    "pkg_cat_ide_completo": MessageLookupByLibrary.simpleMessage("IDE complet"),
    "pkg_cat_instaladores": MessageLookupByLibrary.simpleMessage("Instalatori"),
    "pkg_cat_javascript": MessageLookupByLibrary.simpleMessage("javascript"),
    "pkg_cat_limpieza": MessageLookupByLibrary.simpleMessage("curatenie"),
    "pkg_cat_modelos_locales": MessageLookupByLibrary.simpleMessage(
      "Modele locale",
    ),
    "pkg_cat_navegador": MessageLookupByLibrary.simpleMessage("Browser"),
    "pkg_cat_python_3": MessageLookupByLibrary.simpleMessage("Python 3"),
    "pkg_cat_runtime_c": MessageLookupByLibrary.simpleMessage("C++ runtime"),
    "pkg_cat_runtime_escritorio": MessageLookupByLibrary.simpleMessage(
      "Runtime Desktop",
    ),
    "pkg_cat_runtime_juegos": MessageLookupByLibrary.simpleMessage(
      "jocuri de rulare",
    ),
    "pkg_cat_runtime_php": MessageLookupByLibrary.simpleMessage(
      "PHP în timpul execuției",
    ),
    "pkg_cat_rustup": MessageLookupByLibrary.simpleMessage("Ruginit"),
    "pkg_cat_sdk__net": MessageLookupByLibrary.simpleMessage(".NET SDK"),
    "pkg_cat_servidor_db": MessageLookupByLibrary.simpleMessage("Server DB"),
    "pkg_cat_ssh_clasico": MessageLookupByLibrary.simpleMessage("SSH clasic"),
    "pkg_cat_ssh_moderno": MessageLookupByLibrary.simpleMessage("SSH modern"),
    "pkg_cat_subsistema_linux": MessageLookupByLibrary.simpleMessage(
      "subsistem linux",
    ),
    "pkg_cat_temurin_21": MessageLookupByLibrary.simpleMessage("Temurin 21"),
    "pkg_cat_terminal_moderno": MessageLookupByLibrary.simpleMessage(
      "terminal modern",
    ),
    "prepareBridge": MessageLookupByLibrary.simpleMessage(
      "Pregătiți și porniți podul",
    ),
    "progress_button_reboot": MessageLookupByLibrary.simpleMessage(
      "RESETAREA SISTEMULUI",
    ),
    "progress_footer_warning": MessageLookupByLibrary.simpleMessage(
      "NU DECONECTAȚI ALIMENTAREA ȘI NU ÎNCĂRTAȚI SUPORTUL DE INSTALARE",
    ),
    "progress_header_badge": MessageLookupByLibrary.simpleMessage(
      "IMPLEMENTARE ÎN CARE",
    ),
    "provideWindowsImage": MessageLookupByLibrary.simpleMessage(
      "Furnizați imaginea de instalare Windows (install.wim sau install.swm)\nde pe o unitate USB sau orice suport montat.",
    ),
    "receiveInstallation": MessageLookupByLibrary.simpleMessage(
      "Sau primiți instalarea gata de la Requiem pentru Windows",
    ),
    "renewalActive": MessageLookupByLibrary.simpleMessage("activ"),
    "renewalDisabled": MessageLookupByLibrary.simpleMessage("Dezactivat"),
    "searchingImage": MessageLookupByLibrary.simpleMessage(
      "Se caută imaginea...",
    ),
    "secureBootCompatible": MessageLookupByLibrary.simpleMessage(
      "Pornire securizată acceptată",
    ),
    "selectDestinationDisk": MessageLookupByLibrary.simpleMessage(
      "Selectați discul de destinație",
    ),
    "selectFileHint": MessageLookupByLibrary.simpleMessage(
      "Selectați un fișier .wim sau .swm",
    ),
    "selectWim": MessageLookupByLibrary.simpleMessage("Selectați WIM"),
    "selectWimFirst": MessageLookupByLibrary.simpleMessage(
      "Selectați o interfață WIM și o interfață IPv4 privată.",
    ),
    "selectWindowsImage": MessageLookupByLibrary.simpleMessage(
      "Selectați imaginea Windows",
    ),
    "selectWindowsImageFull": MessageLookupByLibrary.simpleMessage(
      "Selectați imaginea de instalare Windows",
    ),
    "selectedFile": m25,
    "stableVersion": MessageLookupByLibrary.simpleMessage(
      "Versiunea stabilă v1.0.0",
    ),
    "start": MessageLookupByLibrary.simpleMessage("ÎNCEPE"),
    "startInstallation": MessageLookupByLibrary.simpleMessage(
      "Începeți instalarea",
    ),
    "stopBridge": MessageLookupByLibrary.simpleMessage("oprire pod"),
    "systemConsole": MessageLookupByLibrary.simpleMessage("Consola de sistem"),
    "systemDisk": MessageLookupByLibrary.simpleMessage("sistem"),
    "systemLogs": MessageLookupByLibrary.simpleMessage("Jurnalele de sistem"),
    "tools_badge_iso_compatibility": MessageLookupByLibrary.simpleMessage(
      "BIOS + UEFI conservatori",
    ),
    "tools_badge_kms_pending": MessageLookupByLibrary.simpleMessage(
      "KMS în așteptare",
    ),
    "tools_badge_package_count": m26,
    "tools_button_activate_kms": MessageLookupByLibrary.simpleMessage(
      "ACTIVARE KMS",
    ),
    "tools_button_install_all_packages": MessageLookupByLibrary.simpleMessage(
      "INSTALAȚI TOATE",
    ),
    "tools_button_install_office": MessageLookupByLibrary.simpleMessage(
      "BIROUL DE INSTALARE",
    ),
    "tools_header_title": MessageLookupByLibrary.simpleMessage(
      "INSTRUMENTE DE MIGRARE REQUIEM",
    ),
    "tools_kms_checking_connectivity": m27,
    "tools_kms_empty_host_error": MessageLookupByLibrary.simpleMessage(
      "EROARE: gazda KMS este goală.",
    ),
    "tools_kms_error_log": m28,
    "tools_kms_no_products_selected": MessageLookupByLibrary.simpleMessage(
      "Nu sunt produse KMS selectate.",
    ),
    "tools_log_format": m29,
    "tools_logs_copied_snackbar": MessageLookupByLibrary.simpleMessage(
      "Înregistrările au fost copiate în clipboard.",
    ),
    "tools_packages_detected_count": m30,
    "tools_packages_none_detected": MessageLookupByLibrary.simpleMessage(
      "Nu au fost detectate pachete cunoscute cu Winget.",
    ),
    "tools_packages_none_selected": MessageLookupByLibrary.simpleMessage(
      "Nu există programe selectate.",
    ),
    "tools_section_activation_desc": MessageLookupByLibrary.simpleMessage(
      "Configurați serverul KMS local sau la distanță pentru a activa Windows și Office.",
    ),
    "tools_section_activation_title": MessageLookupByLibrary.simpleMessage(
      "Activarea licenței",
    ),
    "tools_section_iso_desc": MessageLookupByLibrary.simpleMessage(
      "Creați medii autonome cu un WIM integrat sau distribuiți o instalare direct prin IPv4.",
    ),
    "tools_section_iso_title": MessageLookupByLibrary.simpleMessage(
      "ISO și afișaj roșu",
    ),
    "tools_section_office_desc": MessageLookupByLibrary.simpleMessage(
      "Implementați Microsoft Office LTSC sau 365 într-un mod automat, folosind ODT.",
    ),
    "tools_section_office_title": MessageLookupByLibrary.simpleMessage(
      "instalator de birou",
    ),
    "tools_section_packages_desc": MessageLookupByLibrary.simpleMessage(
      "Instalați și actualizați instrumentele de dezvoltare esențiale pentru Windows folosind Winget.",
    ),
    "tools_section_packages_title": MessageLookupByLibrary.simpleMessage(
      "Stiva de aplicații",
    ),
    "tools_sidebar_app_name": MessageLookupByLibrary.simpleMessage("RECVIEM"),
    "tools_sidebar_mode_badge": MessageLookupByLibrary.simpleMessage(
      "Modul Instrumente locale",
    ),
    "tools_sidebar_tab_iso": MessageLookupByLibrary.simpleMessage(
      "ISO și Bridge",
    ),
    "tools_sidebar_tab_kms": MessageLookupByLibrary.simpleMessage(
      "Activare KMS",
    ),
    "tools_sidebar_tab_office": MessageLookupByLibrary.simpleMessage(
      "Instalare birou",
    ),
    "tools_sidebar_tab_packages": MessageLookupByLibrary.simpleMessage(
      "Stack Programs",
    ),
    "unknown": MessageLookupByLibrary.simpleMessage("Un străin"),
    "updateDescription": MessageLookupByLibrary.simpleMessage(
      "Pentru a continua să utilizați Requiem Tools, este necesar să actualizați la cea mai recentă versiune.",
    ),
    "updateRequired": MessageLookupByLibrary.simpleMessage(
      "Actualizare necesară",
    ),
    "useExistingPartitions": MessageLookupByLibrary.simpleMessage(
      "Utilizați partițiile existente",
    ),
    "useExistingPartitionsDescription": MessageLookupByLibrary.simpleMessage(
      "Neformatat — se afișează în W: așa cum este\nGestionați manual participările",
    ),
    "waitingAction": MessageLookupByLibrary.simpleMessage(
      "În așteptarea unei acțiuni...",
    ),
    "waitingForWim": MessageLookupByLibrary.simpleMessage(
      "Se așteaptă detectarea instal.wim...",
    ),
    "wifiConnectError": m31,
    "wifiConnected": m32,
    "wifiPassword": MessageLookupByLibrary.simpleMessage("Parola Wi-Fi"),
    "wifi_connect_error": m33,
    "wifi_connected_log": m34,
    "wifi_connected_status": m35,
    "wifi_dialog_title": MessageLookupByLibrary.simpleMessage(
      "Conectați programul de instalare la Wi-Fi",
    ),
    "wifi_item_signal_security": m36,
    "wifi_none_found": MessageLookupByLibrary.simpleMessage(
      "Nu au fost găsite rețele Wi-Fi disponibile.",
    ),
    "wifi_password_hint": MessageLookupByLibrary.simpleMessage("Parola Wi-Fi"),
    "wifi_scanning": MessageLookupByLibrary.simpleMessage(
      "Se caută rețele Wi-Fi disponibile...",
    ),
    "wimIntegrated": MessageLookupByLibrary.simpleMessage(
      "WIM integrat în ISO",
    ),
    "wim_bridge_connection_error": m37,
    "wim_bridge_ip_dialog_title": MessageLookupByLibrary.simpleMessage(
      "Requiem Bridge IP",
    ),
    "wim_bridge_ip_placeholder": MessageLookupByLibrary.simpleMessage(
      "192.168.1.20",
    ),
    "wim_bridge_not_found": MessageLookupByLibrary.simpleMessage(
      "Nu a fost găsit nici un pod. Încercați manualul IP.",
    ),
    "wim_bridge_search_error": m38,
    "wim_bridge_searching": MessageLookupByLibrary.simpleMessage(
      "Se caută punți Requiem în rețeaua locală IPv4...",
    ),
    "wim_bridge_section_header": MessageLookupByLibrary.simpleMessage(
      "Sau primiți instalarea gata de la Requiem pentru Windows",
    ),
    "wim_button_change_file": MessageLookupByLibrary.simpleMessage(
      "SCHIMBA FIȘIER",
    ),
    "wim_button_connect_wifi": MessageLookupByLibrary.simpleMessage(
      "CONECTAȚI WI-FI",
    ),
    "wim_button_manual_ip": MessageLookupByLibrary.simpleMessage(
      "MANUAL DE UTILIZARE IP",
    ),
    "wim_button_rescan": MessageLookupByLibrary.simpleMessage(
      "Scanați din nou unitățile",
    ),
    "wim_button_search_bridge": MessageLookupByLibrary.simpleMessage(
      "PUNTUL DE CĂUTARE",
    ),
    "wim_manual_search_hint": MessageLookupByLibrary.simpleMessage(
      "Folosiți „Răsfoiți” pentru a vă localiza manual fișierul WIM.",
    ),
    "wim_picker_description": MessageLookupByLibrary.simpleMessage(
      "Furnizați imaginea de instalare Windows (install.wim sau install.swm)\\n",
    ),
    "wim_picker_title": MessageLookupByLibrary.simpleMessage(
      "Selectați Imagine Windows",
    ),
    "wim_status_found": MessageLookupByLibrary.simpleMessage("Imaginea găsită"),
    "wim_status_not_found": MessageLookupByLibrary.simpleMessage(
      "Nu a fost detectată nicio imagine",
    ),
    "wim_status_searching": MessageLookupByLibrary.simpleMessage(
      "Se caută imaginea...",
    ),
    "wim_status_searching_alt": MessageLookupByLibrary.simpleMessage(
      "Se caută imagine...",
    ),
    "wingetUnavailable": MessageLookupByLibrary.simpleMessage(
      "Winget nu este instalat sau nu este în PATH.",
    ),
  };
}
