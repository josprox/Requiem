// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a da locale. All the
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
  String get localeName => 'da';

  static String m0(count) => "${count} programmer";

  static String m1(version) => "Tilgængelig version: ${version}";

  static String m2(firmware) => "Nuværende aftale: ${firmware}";

  static String m3(error) => "Kunne ikke oprette forbindelse: ${error}";

  static String m4(error) => "Kunne ikke søge efter bro: ${error}";

  static String m5(host) => "Kontrollerer forbindelse med ${host}:1688...";

  static String m6(mode) => "Understøttet tilstand: ${mode}";

  static String m7(firmware) => "Nuværende aftale: ${firmware}";

  static String m8(diskNumber, mediaType, busType) =>
      "DISK ${diskNumber} · ${mediaType} · ${busType}";

  static String m9(recommended) => "Understøttet tilstand: ${recommended}";

  static String m10(sizeGB) => "${sizeGB} ES";

  static String m11(imageName) =>
      "Bro: \${controller.bridgeAnnouncement?.imageName ??";

  static String m12(name, edition) => "Rediger fundet: ${name} (${edition})";

  static String m13(error) => "Der opstod en fejl: ${error}";

  static String m14(val) => "Ugyldig rute: ${val}";

  static String m15(error) => "Kunne ikke læse indholdet af mappen.\\n${error}";

  static String m16(path) => "Valgt: ${path}";

  static String m17(path) => "Ugyldig rute: ${path}";

  static String m18(clients) => "${clients} forbindelser";

  static String m19(error) => "FEJL: ${error}";

  static String m20(error) => "Kunne ikke opregne IPv4-grænseflader: ${error}";

  static String m21(path) => "Valgt WIM: ${path}";

  static String m22(error) => "KMS fejl: ${error}";

  static String m23(product, channel, edition, status) =>
      "${product} / ${channel} / ${edition} bits. Fornyelsen forbliver ${status}.";

  static String m24(count) => "Detekterede pakker: ${count}.";

  static String m25(file) => "Valgt: ${file}";

  static String m26(count) => "${count} programmer";

  static String m27(host) => "Kontrollerer forbindelse med ${host}:1688...";

  static String m28(error) => "KMS FEJL: ${error}";

  static String m29(time, message) => "[${time}] ${message}";

  static String m30(count) => "Detekterede pakker: ${count}.";

  static String m31(error) =>
      "Kunne ikke oprette forbindelse til Wi-Fi: ${error}";

  static String m32(network) => "Forbundet til ${network}.";

  static String m33(error) =>
      "Kunne ikke oprette forbindelse til Wi-Fi: ${error}";

  static String m34(ssid, result) => "Wi-Fi forbundet til ${ssid}. ${result}";

  static String m35(ssid) => "Forbundet til ${ssid}.";

  static String m36(signal, security) => "${signal}% · ${security}";

  static String m37(error) => "Kunne ikke oprette forbindelse: ${error}";

  static String m38(error) => "Kunne ikke søge efter bro: ${error}";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
    "actionCancel": MessageLookupByLibrary.simpleMessage("Annuller"),
    "actionChange": MessageLookupByLibrary.simpleMessage("Skift"),
    "actionConfirm": MessageLookupByLibrary.simpleMessage("Bekræft"),
    "actionConnect": MessageLookupByLibrary.simpleMessage("Forbind"),
    "actionContinue": MessageLookupByLibrary.simpleMessage("Fortsæt"),
    "actionInstall": MessageLookupByLibrary.simpleMessage("Installer"),
    "actionRefresh": MessageLookupByLibrary.simpleMessage("Opdatering"),
    "actionRestartSystem": MessageLookupByLibrary.simpleMessage(
      "Genstart systemet",
    ),
    "actionScanAgain": MessageLookupByLibrary.simpleMessage("Scan drev igen"),
    "actionSearch": MessageLookupByLibrary.simpleMessage("Søg"),
    "actionSelect": MessageLookupByLibrary.simpleMessage("Vælg"),
    "activate": MessageLookupByLibrary.simpleMessage("Aktiver"),
    "activateKms": MessageLookupByLibrary.simpleMessage("Aktiver KMS"),
    "appTitleInstaller": MessageLookupByLibrary.simpleMessage(
      "Requiem installatør",
    ),
    "appTitleTools": MessageLookupByLibrary.simpleMessage("Requiem værktøjer"),
    "app_title_installer": MessageLookupByLibrary.simpleMessage(
      "Requiem installatør",
    ),
    "app_title_tools": MessageLookupByLibrary.simpleMessage(
      "Requiem værktøjer",
    ),
    "applicationStack": MessageLookupByLibrary.simpleMessage("Ansøgningsstak"),
    "applicationStackDescription": MessageLookupByLibrary.simpleMessage(
      "Installer og opdater væsentlige udviklingsværktøjer til Windows ved hjælp af Winget.",
    ),
    "applicationsCount": m0,
    "automaticOffice": MessageLookupByLibrary.simpleMessage(
      "automatisk kontor",
    ),
    "automaticOfficeDescription": MessageLookupByLibrary.simpleMessage(
      "Brug det allerede installerede volumen GVLK",
    ),
    "automaticRenewal": MessageLookupByLibrary.simpleMessage(
      "Automatisk fornyelse",
    ),
    "automaticWindows": MessageLookupByLibrary.simpleMessage(
      "automatiske vinduer",
    ),
    "automaticWindowsDescription": MessageLookupByLibrary.simpleMessage(
      "Registrerer udgave og kompatibel GVLK",
    ),
    "availableVersion": m1,
    "bootCurrent": m2,
    "bridgeConnectError": m3,
    "bridgeDescription": MessageLookupByLibrary.simpleMessage(
      "Forbered WIM kun én gang, og send den direkte til Requiem-klienter på det samme netværk. Klienter gemmer ikke WIM\'en, før de installeres.",
    ),
    "bridgeIp": MessageLookupByLibrary.simpleMessage("Requiem Bridge IP"),
    "bridgePorts": MessageLookupByLibrary.simpleMessage(
      "HTTP-port 40124 · UDP-opdagelse 40123. Hvis Windows Defender spørger, tillad adgang på private netværk.",
    ),
    "bridgeSearchError": m4,
    "checkingKms": m5,
    "clearLogs": MessageLookupByLibrary.simpleMessage("Rens logs"),
    "common_cancel": MessageLookupByLibrary.simpleMessage("ANNULLER"),
    "common_change": MessageLookupByLibrary.simpleMessage("ÆNDRING"),
    "common_connect": MessageLookupByLibrary.simpleMessage("FORBIND"),
    "common_continue": MessageLookupByLibrary.simpleMessage("FORTSÆT"),
    "common_label_disk": MessageLookupByLibrary.simpleMessage("DISC"),
    "common_label_image": MessageLookupByLibrary.simpleMessage("BILLEDE"),
    "common_label_mode": MessageLookupByLibrary.simpleMessage("MODE"),
    "common_refresh": MessageLookupByLibrary.simpleMessage("OPDATERING"),
    "common_search": MessageLookupByLibrary.simpleMessage("SØG"),
    "common_select": MessageLookupByLibrary.simpleMessage("VÆLG"),
    "compatibleMode": m6,
    "confirmDataDestruction": MessageLookupByLibrary.simpleMessage(
      "Bekræft destruktion af data",
    ),
    "confirmInstallation": MessageLookupByLibrary.simpleMessage(
      "Bekræft installationen",
    ),
    "connectInstallerWifi": MessageLookupByLibrary.simpleMessage(
      "Tilslut installationsprogrammet til Wi-Fi",
    ),
    "connectWifi": MessageLookupByLibrary.simpleMessage("Tilslut Wi-Fi"),
    "console_title": MessageLookupByLibrary.simpleMessage("systemkonsol"),
    "console_tooltip_clear": MessageLookupByLibrary.simpleMessage("Rens logs"),
    "console_tooltip_copy": MessageLookupByLibrary.simpleMessage(
      "Kopier optegnelser",
    ),
    "console_waiting_action": MessageLookupByLibrary.simpleMessage(
      "Venter på en handling...",
    ),
    "copyLogs": MessageLookupByLibrary.simpleMessage("Kopier optegnelser"),
    "deploymentInProgress": MessageLookupByLibrary.simpleMessage(
      "Implementering i gang",
    ),
    "designedBy": MessageLookupByLibrary.simpleMessage("Designet af Joss"),
    "destinationDiskDescription": MessageLookupByLibrary.simpleMessage(
      "Vælg det fysiske drev, hvor Windows skal installeres.",
    ),
    "detect": MessageLookupByLibrary.simpleMessage("Opdag"),
    "diskManagement": MessageLookupByLibrary.simpleMessage("natklubledelse"),
    "disk_badge_system": MessageLookupByLibrary.simpleMessage("SYSTEM"),
    "disk_boot_firmware_label": m7,
    "disk_button_confirm_and_install": MessageLookupByLibrary.simpleMessage(
      "BEKRÆF OG INSTALLER",
    ),
    "disk_dialog_confirm_destruction_title":
        MessageLookupByLibrary.simpleMessage("BEKRÆF DATADESTRUKTION"),
    "disk_dialog_confirm_install_title": MessageLookupByLibrary.simpleMessage(
      "BEKRÆF INSTALLATIONEN",
    ),
    "disk_dialog_existing_notice": MessageLookupByLibrary.simpleMessage(
      "Windows vil implementere til W:\\\\ uden formatering.",
    ),
    "disk_dialog_format_warning": MessageLookupByLibrary.simpleMessage(
      "Den valgte disk vil blive fuldstændig formateret. Alle data vil gå tabt.",
    ),
    "disk_empty_list": MessageLookupByLibrary.simpleMessage(
      "Ingen fysiske diske fundet",
    ),
    "disk_item_header": m8,
    "disk_management_appbar_title": MessageLookupByLibrary.simpleMessage(
      "DISKHÅNDTERING",
    ),
    "disk_partition_gpt_uefi": MessageLookupByLibrary.simpleMessage("GPT/UEFI"),
    "disk_partition_mbr_bios": MessageLookupByLibrary.simpleMessage("MBR/BIOS"),
    "disk_recommended_mode_label": m9,
    "disk_selection_button_start": MessageLookupByLibrary.simpleMessage(
      "START INSTALLATIONEN",
    ),
    "disk_selection_desc": MessageLookupByLibrary.simpleMessage(
      "Vælg det fysiske drev, hvor Windows skal installeres.",
    ),
    "disk_selection_title": MessageLookupByLibrary.simpleMessage(
      "Vælg Destinationsdisk",
    ),
    "disk_size_gb": m10,
    "disk_waiting_wim_hint": MessageLookupByLibrary.simpleMessage(
      "Venter på registrering af install.wim...",
    ),
    "disk_wim_bridge_source": m11,
    "disk_wim_detected": MessageLookupByLibrary.simpleMessage("Billede fundet"),
    "disk_wim_integrated_source": MessageLookupByLibrary.simpleMessage(
      "WIM integreret i ISO",
    ),
    "disk_wim_not_found": MessageLookupByLibrary.simpleMessage(
      "Billedet blev ikke fundet",
    ),
    "doNotDisconnect": MessageLookupByLibrary.simpleMessage(
      "Sluk ikke for strømmen eller fjern installationsmediet",
    ),
    "downloadAndActivate": MessageLookupByLibrary.simpleMessage(
      "Download + aktiver",
    ),
    "downloadInstaller": MessageLookupByLibrary.simpleMessage(
      "Download installationsprogrammet (.exe)",
    ),
    "downloadPortable": MessageLookupByLibrary.simpleMessage(
      "Download bærbar (.zip)",
    ),
    "drives": MessageLookupByLibrary.simpleMessage("Enheder"),
    "editionDetected": m12,
    "emptyFolder": MessageLookupByLibrary.simpleMessage("Denne mappe er tom"),
    "errorGeneric": m13,
    "file_explorer_default_title": MessageLookupByLibrary.simpleMessage(
      "Vælg Windows Installation Image",
    ),
    "file_explorer_drives_header": MessageLookupByLibrary.simpleMessage(
      "ENHEDER",
    ),
    "file_explorer_empty_folder": MessageLookupByLibrary.simpleMessage(
      "Denne mappe er tom",
    ),
    "file_explorer_filter_hint": MessageLookupByLibrary.simpleMessage(
      "Filtrer...",
    ),
    "file_explorer_go_up_tooltip": MessageLookupByLibrary.simpleMessage(
      "Gå et niveau op",
    ),
    "file_explorer_invalid_path_error": m14,
    "file_explorer_read_error": m15,
    "file_explorer_select_file_hint": MessageLookupByLibrary.simpleMessage(
      "Vælg en .wim- eller .swm-fil",
    ),
    "file_explorer_selected_file": m16,
    "filter": MessageLookupByLibrary.simpleMessage("Filtrer..."),
    "formatGpt": MessageLookupByLibrary.simpleMessage("Format GPT (anbefales)"),
    "formatGptDescription": MessageLookupByLibrary.simpleMessage(
      "Rengør diskoteket og lav UEFI-layout\nEFI (S:) + Windows (W:)",
    ),
    "formatMbr": MessageLookupByLibrary.simpleMessage(
      "Formater MBR (legacy BIOS)",
    ),
    "formatMbrDescription": MessageLookupByLibrary.simpleMessage(
      "Tør disken og opret et gammelt layout\nKun Windows (C :)",
    ),
    "formatWarning": MessageLookupByLibrary.simpleMessage(
      "Den valgte disk vil blive fuldstændig formateret. Alle data vil gå tabt.",
    ),
    "generateIso": MessageLookupByLibrary.simpleMessage("Generer ISO"),
    "getInstallOnlyIso": MessageLookupByLibrary.simpleMessage(
      "Få kun ISO til installation",
    ),
    "goUpOneLevel": MessageLookupByLibrary.simpleMessage("Gå et niveau op"),
    "imageDetected": MessageLookupByLibrary.simpleMessage("Billede fundet"),
    "imageFound": MessageLookupByLibrary.simpleMessage("Billede fundet"),
    "imageNotFound": MessageLookupByLibrary.simpleMessage(
      "Billedet blev ikke fundet",
    ),
    "imageSearching": MessageLookupByLibrary.simpleMessage(
      "Søger efter billede...",
    ),
    "installAll": MessageLookupByLibrary.simpleMessage("Installer alle"),
    "installOffice": MessageLookupByLibrary.simpleMessage(
      "Installationskontor",
    ),
    "installationProgress": MessageLookupByLibrary.simpleMessage(
      "Installationsfremskridt",
    ),
    "invalidPath": m17,
    "isoDescription": MessageLookupByLibrary.simpleMessage(
      "Få den grundlæggende ISO for at vælge en WIM ved opstart, eller opret en selvstændig ISO, der allerede inkluderer dit Windows-billede.",
    ),
    "iso_bridge_clients_count": m18,
    "iso_bridge_desc": MessageLookupByLibrary.simpleMessage(
      "Forbered WIM kun én gang, og send den direkte til Requiem-klienter på det samme netværk. Klienter gemmer ikke WIM\'en, før de installeres.",
    ),
    "iso_bridge_generic_error": m19,
    "iso_bridge_list_interfaces_error": m20,
    "iso_bridge_save_simple_iso_dialog": MessageLookupByLibrary.simpleMessage(
      "Gem Simple Requiem ISO",
    ),
    "iso_bridge_save_wim_iso_dialog": MessageLookupByLibrary.simpleMessage(
      "Gem Requiem ISO med WIM",
    ),
    "iso_bridge_select_wim_dialog": MessageLookupByLibrary.simpleMessage(
      "Vælg Windows WIM-billede",
    ),
    "iso_bridge_simple_iso_filename": MessageLookupByLibrary.simpleMessage(
      "Requiem-Installer-Simple.iso",
    ),
    "iso_bridge_start_validation_error": MessageLookupByLibrary.simpleMessage(
      "Vælg en WIM og en privat IPv4-grænseflade.",
    ),
    "iso_bridge_wim_selected_log": m21,
    "iso_panel_button_generate_iso": MessageLookupByLibrary.simpleMessage(
      "ISO GENERER",
    ),
    "iso_panel_button_select_wim": MessageLookupByLibrary.simpleMessage(
      "VÆLG WIM",
    ),
    "iso_panel_button_simple_iso": MessageLookupByLibrary.simpleMessage(
      "FÅ KUN ISO TIL INSTALLATION",
    ),
    "iso_panel_desc_media": MessageLookupByLibrary.simpleMessage(
      "Få den grundlæggende ISO for at vælge en WIM ved opstart, eller opret en selvstændig ISO, der allerede inkluderer dit Windows-billede.",
    ),
    "iso_panel_title_bridge": MessageLookupByLibrary.simpleMessage(
      "Installation af IPv4 Bridge",
    ),
    "iso_panel_title_media": MessageLookupByLibrary.simpleMessage(
      "Installationsmedie",
    ),
    "kmsError": m22,
    "kmsHostEmpty": MessageLookupByLibrary.simpleMessage(
      "Fejl: KMS-værten er tom.",
    ),
    "kmsServer": MessageLookupByLibrary.simpleMessage("KMS server"),
    "kmsTask160Days": MessageLookupByLibrary.simpleMessage("Opgave 160 dage"),
    "kmsVolumeActivation": MessageLookupByLibrary.simpleMessage(
      "Volumenaktivering (KMS)",
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
      "Windows 10/11 Education",
    ),
    "kms_product_windows_10_11_education_n":
        MessageLookupByLibrary.simpleMessage("Windows 10/11 Education N"),
    "kms_product_windows_10_11_enterprise":
        MessageLookupByLibrary.simpleMessage("Windows 10/11 business"),
    "kms_product_windows_10_11_enterprise_g":
        MessageLookupByLibrary.simpleMessage("Windows 10/11 Enterprise G"),
    "kms_product_windows_10_11_enterprise_g_n":
        MessageLookupByLibrary.simpleMessage("Windows 10/11 Enterprise GN"),
    "kms_product_windows_10_11_enterprise_n":
        MessageLookupByLibrary.simpleMessage("Windows 10/11 Enterprise N"),
    "kms_product_windows_10_11_pro": MessageLookupByLibrary.simpleMessage(
      "Windows 10/11 Pro",
    ),
    "kms_product_windows_10_11_pro_education":
        MessageLookupByLibrary.simpleMessage("Windows 10/11 Pro Education"),
    "kms_product_windows_10_11_pro_for_workstations":
        MessageLookupByLibrary.simpleMessage(
          "Windows 10/11 Pro til arbejdsstationer",
        ),
    "kms_product_windows_10_11_pro_n": MessageLookupByLibrary.simpleMessage(
      "Windows 10/11 Pro N",
    ),
    "kms_product_windows_10_11_pro_workstations":
        MessageLookupByLibrary.simpleMessage(
          "Windows 10/11 Pro arbejdsstationer",
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
        MessageLookupByLibrary.simpleMessage("Windows Server 2019 Datacenter"),
    "kms_product_windows_server_2019_standard":
        MessageLookupByLibrary.simpleMessage("Windows Server Standard 2019"),
    "kms_product_windows_server_2022_datacenter":
        MessageLookupByLibrary.simpleMessage("Windows Server 2022 Datacenter"),
    "kms_product_windows_server_2022_standard":
        MessageLookupByLibrary.simpleMessage("Windows Server 2022 Standard"),
    "kms_product_windows_server_2025_datacenter":
        MessageLookupByLibrary.simpleMessage("Windows Server 2025 Datacenter"),
    "kms_product_windows_server_2025_standard":
        MessageLookupByLibrary.simpleMessage("Windows Server 2025 Standard"),
    "kms_product_windows_subsystem_for_linux":
        MessageLookupByLibrary.simpleMessage("Windows-undersystem til Linux"),
    "kms_product_windows_terminal": MessageLookupByLibrary.simpleMessage(
      "Windows Terminal",
    ),
    "landingDescription": MessageLookupByLibrary.simpleMessage(
      "Højpræcisions Windows-installationsprogram til højtydende miljøer. Oplev hurtig implementering med direkte DISM-orkestrering og automatiseret systemoptimering.",
    ),
    "landing_badge_author": MessageLookupByLibrary.simpleMessage(
      "DESIGNET AF JOSS",
    ),
    "landing_badge_secure_boot": MessageLookupByLibrary.simpleMessage(
      "SIKKER STØVLE KOMPATIBEL",
    ),
    "landing_badge_version": MessageLookupByLibrary.simpleMessage(
      "STABIL VERSION",
    ),
    "landing_button_logs": MessageLookupByLibrary.simpleMessage("SYSTEMLOGG"),
    "landing_button_start": MessageLookupByLibrary.simpleMessage("KOM I GANG"),
    "landing_description_part1": MessageLookupByLibrary.simpleMessage(
      "Højpræcisions Windows-installationsprogram til højtydende miljøer.",
    ),
    "landing_description_part2": MessageLookupByLibrary.simpleMessage(
      "Oplev hurtig implementering med direkte DISM-orkestrering og automatiseret systemoptimering.",
    ),
    "landing_subtitle": MessageLookupByLibrary.simpleMessage(
      "NÆSTE GENERATIONS OS INVESTERING",
    ),
    "landing_title_installer": MessageLookupByLibrary.simpleMessage(
      "REQUIEM INSTALLATØR",
    ),
    "landing_title_tools": MessageLookupByLibrary.simpleMessage(
      "KRÆVER VÆRKTØJ",
    ),
    "licenseActivation": MessageLookupByLibrary.simpleMessage(
      "licensaktivering",
    ),
    "logsCopied": MessageLookupByLibrary.simpleMessage(
      "Optegnelser kopieret til udklipsholder.",
    ),
    "mandatoryUpdate": MessageLookupByLibrary.simpleMessage(
      "Denne opdatering er obligatorisk og kan ikke springes over.",
    ),
    "manualWimHint": MessageLookupByLibrary.simpleMessage(
      "Brug \"Gennemse\" for at finde din WIM-fil manuelt.",
    ),
    "mediaInstallation": MessageLookupByLibrary.simpleMessage(
      "Installationsmedie",
    ),
    "networkBridge": MessageLookupByLibrary.simpleMessage(
      "Installation af IPv4 Bridge",
    ),
    "networkInterface": MessageLookupByLibrary.simpleMessage(
      "Wi-Fi/LAN IPv4-grænseflade",
    ),
    "nextGenerationDeployment": MessageLookupByLibrary.simpleMessage(
      "Næste generation af OS-implementering",
    ),
    "noBridgeFound": MessageLookupByLibrary.simpleMessage(
      "Der blev ikke fundet nogen bro. Prøv IP-manualen.",
    ),
    "noFormatWarning": MessageLookupByLibrary.simpleMessage(
      "Windows vil implementere til W:\\ uden formatering.",
    ),
    "noImageDetected": MessageLookupByLibrary.simpleMessage(
      "Intet billede fundet",
    ),
    "noKmsProducts": MessageLookupByLibrary.simpleMessage(
      "Der er ingen KMS-produkter valgt.",
    ),
    "noPhysicalDisks": MessageLookupByLibrary.simpleMessage(
      "Ingen fysiske diske fundet",
    ),
    "noProgramsSelected": MessageLookupByLibrary.simpleMessage(
      "Der er ingen programmer valgt.",
    ),
    "noWifiNetworks": MessageLookupByLibrary.simpleMessage(
      "Der blev ikke fundet nogen tilgængelige Wi-Fi-netværk.",
    ),
    "noWingetPackages": MessageLookupByLibrary.simpleMessage(
      "Ingen kendte pakker blev fundet med Winget.",
    ),
    "officeInstallDescription": MessageLookupByLibrary.simpleMessage(
      "Implementer Microsoft Office LTSC eller 365 på en automatiseret måde ved hjælp af ODT.",
    ),
    "officeInstaller": MessageLookupByLibrary.simpleMessage(
      "kontorinstallatør",
    ),
    "officeRenewalStatus": m23,
    "officeVersion": MessageLookupByLibrary.simpleMessage("office version"),
    "office_odt_kms_badge": MessageLookupByLibrary.simpleMessage("ODT + KMS"),
    "office_odt_panel_title": MessageLookupByLibrary.simpleMessage(
      "Office Deployment Tool",
    ),
    "office_pkg_desc_2019": MessageLookupByLibrary.simpleMessage(
      "Klik og kør lydstyrken med kanalen PerpetualVL2019",
    ),
    "office_pkg_desc_2021": MessageLookupByLibrary.simpleMessage(
      "Klik og kør volumen med kanalen PerpetualVL2021",
    ),
    "office_pkg_desc_2024": MessageLookupByLibrary.simpleMessage(
      "Klik og kør lydstyrken med kanalen PerpetualVL2024",
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
      "Denne funktion er kun tilgængelig på Windows.",
    ),
    "packageStack": MessageLookupByLibrary.simpleMessage(
      "Program Stack (Winget)",
    ),
    "packagesDetected": m24,
    "partitionMode": MessageLookupByLibrary.simpleMessage("Partitionstilstand"),
    "pkg_cat_apache_php_mysql": MessageLookupByLibrary.simpleMessage(
      "Apache PHP MySQL",
    ),
    "pkg_cat_bi_desktop": MessageLookupByLibrary.simpleMessage("BI Desktop"),
    "pkg_cat_cliente_api": MessageLookupByLibrary.simpleMessage("Client API"),
    "pkg_cat_cliente_db": MessageLookupByLibrary.simpleMessage("Kundedatabase"),
    "pkg_cat_compiladores_c": MessageLookupByLibrary.simpleMessage(
      "C++ kompilatorer",
    ),
    "pkg_cat_compresor": MessageLookupByLibrary.simpleMessage("kompressor"),
    "pkg_cat_comunicacion": MessageLookupByLibrary.simpleMessage(
      "kommunikation",
    ),
    "pkg_cat_control_de_versiones": MessageLookupByLibrary.simpleMessage(
      "Versionskontrol",
    ),
    "pkg_cat_desktop": MessageLookupByLibrary.simpleMessage("Skrivebord"),
    "pkg_cat_diagramas": MessageLookupByLibrary.simpleMessage("diagrammer"),
    "pkg_cat_distro_wsl": MessageLookupByLibrary.simpleMessage(
      "WSL distribution",
    ),
    "pkg_cat_editor": MessageLookupByLibrary.simpleMessage("Redaktør"),
    "pkg_cat_golang": MessageLookupByLibrary.simpleMessage("golang"),
    "pkg_cat_gpu_compute": MessageLookupByLibrary.simpleMessage(
      "GPU computing",
    ),
    "pkg_cat_grabacion": MessageLookupByLibrary.simpleMessage("Optagelse"),
    "pkg_cat_ide_ai": MessageLookupByLibrary.simpleMessage("IDE IA"),
    "pkg_cat_ide_android": MessageLookupByLibrary.simpleMessage("IDAndroid"),
    "pkg_cat_ide_completo": MessageLookupByLibrary.simpleMessage("Komplet IDE"),
    "pkg_cat_instaladores": MessageLookupByLibrary.simpleMessage(
      "Installatører",
    ),
    "pkg_cat_javascript": MessageLookupByLibrary.simpleMessage("javascript"),
    "pkg_cat_limpieza": MessageLookupByLibrary.simpleMessage("rengøring"),
    "pkg_cat_modelos_locales": MessageLookupByLibrary.simpleMessage(
      "Lokale modeller",
    ),
    "pkg_cat_navegador": MessageLookupByLibrary.simpleMessage("Browser"),
    "pkg_cat_python_3": MessageLookupByLibrary.simpleMessage("Python 3"),
    "pkg_cat_runtime_c": MessageLookupByLibrary.simpleMessage("C++ køretid"),
    "pkg_cat_runtime_escritorio": MessageLookupByLibrary.simpleMessage(
      "Runtime Desktop",
    ),
    "pkg_cat_runtime_juegos": MessageLookupByLibrary.simpleMessage(
      "runtime spil",
    ),
    "pkg_cat_runtime_php": MessageLookupByLibrary.simpleMessage(
      "PHP under kørsel",
    ),
    "pkg_cat_rustup": MessageLookupByLibrary.simpleMessage("rusten"),
    "pkg_cat_sdk__net": MessageLookupByLibrary.simpleMessage(".NET SDK"),
    "pkg_cat_servidor_db": MessageLookupByLibrary.simpleMessage("DB server"),
    "pkg_cat_ssh_clasico": MessageLookupByLibrary.simpleMessage("klassisk SSH"),
    "pkg_cat_ssh_moderno": MessageLookupByLibrary.simpleMessage("Moderne SSH"),
    "pkg_cat_subsistema_linux": MessageLookupByLibrary.simpleMessage(
      "linux undersystem",
    ),
    "pkg_cat_temurin_21": MessageLookupByLibrary.simpleMessage("Temurin 21"),
    "pkg_cat_terminal_moderno": MessageLookupByLibrary.simpleMessage(
      "moderne terminal",
    ),
    "prepareBridge": MessageLookupByLibrary.simpleMessage(
      "Forbered og start bro",
    ),
    "progress_button_reboot": MessageLookupByLibrary.simpleMessage(
      "SYSTEM NULSTIL",
    ),
    "progress_footer_warning": MessageLookupByLibrary.simpleMessage(
      "AFBRYD IKKE STRØMEN ELLER FJERN INSTALLATIONSMEDIER",
    ),
    "progress_header_badge": MessageLookupByLibrary.simpleMessage(
      "INTRODUKTION I GANG",
    ),
    "provideWindowsImage": MessageLookupByLibrary.simpleMessage(
      "Angiv Windows installationsbillede (install.wim eller install.swm)\nfra et USB-drev eller et hvilket som helst monteret medie.",
    ),
    "receiveInstallation": MessageLookupByLibrary.simpleMessage(
      "Eller modtag den færdige installation fra Requiem til Windows",
    ),
    "renewalActive": MessageLookupByLibrary.simpleMessage("aktiv"),
    "renewalDisabled": MessageLookupByLibrary.simpleMessage("Deaktiveret"),
    "searchingImage": MessageLookupByLibrary.simpleMessage(
      "Søger efter billede...",
    ),
    "secureBootCompatible": MessageLookupByLibrary.simpleMessage(
      "Sikker boot understøttet",
    ),
    "selectDestinationDisk": MessageLookupByLibrary.simpleMessage(
      "Vælg destinationsdisk",
    ),
    "selectFileHint": MessageLookupByLibrary.simpleMessage(
      "Vælg en .wim- eller .swm-fil",
    ),
    "selectWim": MessageLookupByLibrary.simpleMessage("Vælg WIM"),
    "selectWimFirst": MessageLookupByLibrary.simpleMessage(
      "Vælg en WIM og en privat IPv4-grænseflade.",
    ),
    "selectWindowsImage": MessageLookupByLibrary.simpleMessage(
      "Vælg Windows-billede",
    ),
    "selectWindowsImageFull": MessageLookupByLibrary.simpleMessage(
      "Vælg Windows installationsbillede",
    ),
    "selectedFile": m25,
    "stableVersion": MessageLookupByLibrary.simpleMessage(
      "Stabil version v1.0.0",
    ),
    "start": MessageLookupByLibrary.simpleMessage("Kom i gang"),
    "startInstallation": MessageLookupByLibrary.simpleMessage(
      "Start installationen",
    ),
    "stopBridge": MessageLookupByLibrary.simpleMessage("bro stop"),
    "systemConsole": MessageLookupByLibrary.simpleMessage("Systemkonsol"),
    "systemDisk": MessageLookupByLibrary.simpleMessage("system"),
    "systemLogs": MessageLookupByLibrary.simpleMessage("System logs"),
    "tools_badge_iso_compatibility": MessageLookupByLibrary.simpleMessage(
      "BIOS + UEFI konservative",
    ),
    "tools_badge_kms_pending": MessageLookupByLibrary.simpleMessage(
      "Afventer KMS",
    ),
    "tools_badge_package_count": m26,
    "tools_button_activate_kms": MessageLookupByLibrary.simpleMessage(
      "AKTIVER KMS",
    ),
    "tools_button_install_all_packages": MessageLookupByLibrary.simpleMessage(
      "INSTALLER ALT",
    ),
    "tools_button_install_office": MessageLookupByLibrary.simpleMessage(
      "INSTALLATIONSKONTOR",
    ),
    "tools_header_title": MessageLookupByLibrary.simpleMessage(
      "KRÆVER MIGRATIONSVÆRKTØJER",
    ),
    "tools_kms_checking_connectivity": m27,
    "tools_kms_empty_host_error": MessageLookupByLibrary.simpleMessage(
      "FEJL: KMS-værten er tom.",
    ),
    "tools_kms_error_log": m28,
    "tools_kms_no_products_selected": MessageLookupByLibrary.simpleMessage(
      "Der er ingen KMS-produkter valgt.",
    ),
    "tools_log_format": m29,
    "tools_logs_copied_snackbar": MessageLookupByLibrary.simpleMessage(
      "Optegnelser kopieret til udklipsholder.",
    ),
    "tools_packages_detected_count": m30,
    "tools_packages_none_detected": MessageLookupByLibrary.simpleMessage(
      "Ingen kendte pakker blev fundet med Winget.",
    ),
    "tools_packages_none_selected": MessageLookupByLibrary.simpleMessage(
      "Der er ingen programmer valgt.",
    ),
    "tools_section_activation_desc": MessageLookupByLibrary.simpleMessage(
      "Konfigurer lokal eller ekstern KMS-server til at aktivere Windows og Office.",
    ),
    "tools_section_activation_title": MessageLookupByLibrary.simpleMessage(
      "Licensaktivering",
    ),
    "tools_section_iso_desc": MessageLookupByLibrary.simpleMessage(
      "Opret selvstændige medier med en integreret WIM eller distribuer en installation direkte over IPv4.",
    ),
    "tools_section_iso_title": MessageLookupByLibrary.simpleMessage(
      "ISO og rødt display",
    ),
    "tools_section_office_desc": MessageLookupByLibrary.simpleMessage(
      "Implementer Microsoft Office LTSC eller 365 på en automatiseret måde ved hjælp af ODT.",
    ),
    "tools_section_office_title": MessageLookupByLibrary.simpleMessage(
      "kontorinstallatør",
    ),
    "tools_section_packages_desc": MessageLookupByLibrary.simpleMessage(
      "Installer og opdater væsentlige udviklingsværktøjer til Windows ved hjælp af Winget.",
    ),
    "tools_section_packages_title": MessageLookupByLibrary.simpleMessage(
      "Ansøgningsstak",
    ),
    "tools_sidebar_app_name": MessageLookupByLibrary.simpleMessage("REQUIEM"),
    "tools_sidebar_mode_badge": MessageLookupByLibrary.simpleMessage(
      "Lokal værktøjstilstand",
    ),
    "tools_sidebar_tab_iso": MessageLookupByLibrary.simpleMessage(
      "ISO og Bridge",
    ),
    "tools_sidebar_tab_kms": MessageLookupByLibrary.simpleMessage(
      "KMS aktivering",
    ),
    "tools_sidebar_tab_office": MessageLookupByLibrary.simpleMessage(
      "Office installation",
    ),
    "tools_sidebar_tab_packages": MessageLookupByLibrary.simpleMessage(
      "Stable programmer",
    ),
    "unknown": MessageLookupByLibrary.simpleMessage("Ukendt"),
    "updateDescription": MessageLookupByLibrary.simpleMessage(
      "For at fortsætte med at bruge Requiem Tools er det nødvendigt at opdatere til den seneste version.",
    ),
    "updateRequired": MessageLookupByLibrary.simpleMessage(
      "Opdatering påkrævet",
    ),
    "useExistingPartitions": MessageLookupByLibrary.simpleMessage(
      "Brug eksisterende partitioner",
    ),
    "useExistingPartitionsDescription": MessageLookupByLibrary.simpleMessage(
      "Uformateret — vises i W: som den er\nDu administrerer deltagelser manuelt",
    ),
    "waitingAction": MessageLookupByLibrary.simpleMessage(
      "Venter på en handling...",
    ),
    "waitingForWim": MessageLookupByLibrary.simpleMessage(
      "Venter på registrering af install.wim...",
    ),
    "wifiConnectError": m31,
    "wifiConnected": m32,
    "wifiPassword": MessageLookupByLibrary.simpleMessage("Wi-Fi adgangskode"),
    "wifi_connect_error": m33,
    "wifi_connected_log": m34,
    "wifi_connected_status": m35,
    "wifi_dialog_title": MessageLookupByLibrary.simpleMessage(
      "Tilslut installationsprogrammet til Wi-Fi",
    ),
    "wifi_item_signal_security": m36,
    "wifi_none_found": MessageLookupByLibrary.simpleMessage(
      "Der blev ikke fundet nogen tilgængelige Wi-Fi-netværk.",
    ),
    "wifi_password_hint": MessageLookupByLibrary.simpleMessage(
      "Wi-Fi adgangskode",
    ),
    "wifi_scanning": MessageLookupByLibrary.simpleMessage(
      "Søger efter tilgængelige Wi-Fi-netværk...",
    ),
    "wimIntegrated": MessageLookupByLibrary.simpleMessage(
      "WIM integreret i ISO",
    ),
    "wim_bridge_connection_error": m37,
    "wim_bridge_ip_dialog_title": MessageLookupByLibrary.simpleMessage(
      "Requiem Bridge IP",
    ),
    "wim_bridge_ip_placeholder": MessageLookupByLibrary.simpleMessage(
      "192.168.1.20",
    ),
    "wim_bridge_not_found": MessageLookupByLibrary.simpleMessage(
      "Der blev ikke fundet nogen bro. Prøv IP-manualen.",
    ),
    "wim_bridge_search_error": m38,
    "wim_bridge_searching": MessageLookupByLibrary.simpleMessage(
      "Søger efter Requiem-broer på det lokale IPv4-netværk...",
    ),
    "wim_bridge_section_header": MessageLookupByLibrary.simpleMessage(
      "Eller modtag den færdige installation fra Requiem til Windows",
    ),
    "wim_button_change_file": MessageLookupByLibrary.simpleMessage("SKIFT FIL"),
    "wim_button_connect_wifi": MessageLookupByLibrary.simpleMessage(
      "TILSLUT WI-FI",
    ),
    "wim_button_manual_ip": MessageLookupByLibrary.simpleMessage(
      "IP BRUGSVEJLEDNING",
    ),
    "wim_button_rescan": MessageLookupByLibrary.simpleMessage("Scan drev igen"),
    "wim_button_search_bridge": MessageLookupByLibrary.simpleMessage(
      "SØG BROEN",
    ),
    "wim_manual_search_hint": MessageLookupByLibrary.simpleMessage(
      "Brug \"Gennemse\" for at finde din WIM-fil manuelt.",
    ),
    "wim_picker_description": MessageLookupByLibrary.simpleMessage(
      "Angiv Windows-installationsbilledet (install.wim eller install.swm)\\n",
    ),
    "wim_picker_title": MessageLookupByLibrary.simpleMessage(
      "Vælg Windows Image",
    ),
    "wim_status_found": MessageLookupByLibrary.simpleMessage("Billede fundet"),
    "wim_status_not_found": MessageLookupByLibrary.simpleMessage(
      "Intet billede fundet",
    ),
    "wim_status_searching": MessageLookupByLibrary.simpleMessage(
      "Søger efter billede...",
    ),
    "wim_status_searching_alt": MessageLookupByLibrary.simpleMessage(
      "Søger efter billede...",
    ),
    "wingetUnavailable": MessageLookupByLibrary.simpleMessage(
      "Winget er ikke installeret eller er ikke i PATH.",
    ),
  };
}
