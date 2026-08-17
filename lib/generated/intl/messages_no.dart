// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a no locale. All the
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
  String get localeName => 'no';

  static String m0(count) => "${count} programmer";

  static String m1(version) => "Tilgjengelig versjon: ${version}";

  static String m2(firmware) => "Gjeldende avtale: ${firmware}";

  static String m3(error) => "Kunne ikke koble til: ${error}";

  static String m4(error) => "Kunne ikke søke etter bro: ${error}";

  static String m5(host) => "Sjekker tilkobling med ${host}:1688...";

  static String m6(mode) => "Støttet modus: ${mode}";

  static String m7(firmware) => "Gjeldende avtale: ${firmware}";

  static String m8(diskNumber, mediaType, busType) =>
      "DISK ${diskNumber} · ${mediaType} · ${busType}";

  static String m9(recommended) => "Støttet modus: ${recommended}";

  static String m10(sizeGB) => "${sizeGB} ES";

  static String m11(imageName) =>
      "Bro: \${controller.bridgeAnnouncement?.imageName ??";

  static String m12(name, edition) =>
      "Redigering oppdaget: ${name} (${edition})";

  static String m13(error) => "Det oppstod en feil: ${error}";

  static String m14(val) => "Ugyldig rute: ${val}";

  static String m15(error) =>
      "Kunne ikke lese innholdet i katalogen.\\n${error}";

  static String m16(path) => "Valgt: ${path}";

  static String m17(path) => "Ugyldig rute: ${path}";

  static String m18(clients) => "${clients} tilkoblinger";

  static String m19(error) => "FEIL: ${error}";

  static String m20(error) => "Kunne ikke telle opp IPv4-grensesnitt: ${error}";

  static String m21(path) => "Valgt WIM: ${path}";

  static String m22(error) => "KMS-feil: ${error}";

  static String m23(product, channel, edition, status) =>
      "${product} / ${channel} / ${edition} biter. Fornyelsen gjenstår ${status}.";

  static String m24(count) => "Oppdaget pakker: ${count}.";

  static String m25(file) => "Valgt: ${file}";

  static String m26(count) => "${count} programmer";

  static String m27(host) => "Sjekker tilkobling med ${host}:1688...";

  static String m28(error) => "KMS-FEIL: ${error}";

  static String m29(time, message) => "[${time}] ${message}";

  static String m30(count) => "Oppdaget pakker: ${count}.";

  static String m31(error) => "Kunne ikke koble til Wi-Fi: ${error}";

  static String m32(network) => "Koblet til ${network}.";

  static String m33(error) => "Kunne ikke koble til Wi-Fi: ${error}";

  static String m34(ssid, result) => "Wi-Fi koblet til ${ssid}. ${result}";

  static String m35(ssid) => "Koblet til ${ssid}.";

  static String m36(signal, security) => "${signal}% · ${security}";

  static String m37(error) => "Kunne ikke koble til: ${error}";

  static String m38(error) => "Kunne ikke søke etter bro: ${error}";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
    "actionCancel": MessageLookupByLibrary.simpleMessage("Avbryt"),
    "actionChange": MessageLookupByLibrary.simpleMessage("Endre"),
    "actionConfirm": MessageLookupByLibrary.simpleMessage("Bekreft"),
    "actionConnect": MessageLookupByLibrary.simpleMessage("Koble til"),
    "actionContinue": MessageLookupByLibrary.simpleMessage("Fortsett"),
    "actionInstall": MessageLookupByLibrary.simpleMessage("Installer"),
    "actionRefresh": MessageLookupByLibrary.simpleMessage("Oppdater"),
    "actionRestartSystem": MessageLookupByLibrary.simpleMessage(
      "Start systemet på nytt",
    ),
    "actionScanAgain": MessageLookupByLibrary.simpleMessage(
      "Skann stasjoner på nytt",
    ),
    "actionSearch": MessageLookupByLibrary.simpleMessage("Søk"),
    "actionSelect": MessageLookupByLibrary.simpleMessage("Velg"),
    "activate": MessageLookupByLibrary.simpleMessage("Aktiver"),
    "activateKms": MessageLookupByLibrary.simpleMessage("Aktiver KMS"),
    "appTitleInstaller": MessageLookupByLibrary.simpleMessage(
      "Requiem Installer",
    ),
    "appTitleTools": MessageLookupByLibrary.simpleMessage("Requiem-verktøy"),
    "app_title_installer": MessageLookupByLibrary.simpleMessage(
      "Requiem Installer",
    ),
    "app_title_tools": MessageLookupByLibrary.simpleMessage("Requiem-verktøy"),
    "applicationStack": MessageLookupByLibrary.simpleMessage("Søknadsstabel"),
    "applicationStackDescription": MessageLookupByLibrary.simpleMessage(
      "Installer og oppdater viktige utviklingsverktøy for Windows ved hjelp av Winget.",
    ),
    "applicationsCount": m0,
    "automaticOffice": MessageLookupByLibrary.simpleMessage(
      "automatisk kontor",
    ),
    "automaticOfficeDescription": MessageLookupByLibrary.simpleMessage(
      "Bruk det allerede installerte volumet GVLK",
    ),
    "automaticRenewal": MessageLookupByLibrary.simpleMessage(
      "Automatisk fornyelse",
    ),
    "automaticWindows": MessageLookupByLibrary.simpleMessage(
      "automatiske vinduer",
    ),
    "automaticWindowsDescription": MessageLookupByLibrary.simpleMessage(
      "Oppdager utgave og kompatibel GVLK",
    ),
    "availableVersion": m1,
    "bootCurrent": m2,
    "bridgeConnectError": m3,
    "bridgeDescription": MessageLookupByLibrary.simpleMessage(
      "Forbered WIM bare én gang og send den direkte til Requiem-klienter på samme nettverk. Klienter lagrer ikke WIM før de installerer den.",
    ),
    "bridgeIp": MessageLookupByLibrary.simpleMessage("Requiem Bridge IP"),
    "bridgePorts": MessageLookupByLibrary.simpleMessage(
      "HTTP-port 40124 · UDP-oppdagelse 40123. Hvis Windows Defender spør, tillat tilgang på private nettverk.",
    ),
    "bridgeSearchError": m4,
    "checkingKms": m5,
    "clearLogs": MessageLookupByLibrary.simpleMessage("Rengjør vedkubber"),
    "common_cancel": MessageLookupByLibrary.simpleMessage("AVBRYT"),
    "common_change": MessageLookupByLibrary.simpleMessage("ENDRING"),
    "common_connect": MessageLookupByLibrary.simpleMessage("KOBLE TIL"),
    "common_continue": MessageLookupByLibrary.simpleMessage("FORTSETT"),
    "common_label_disk": MessageLookupByLibrary.simpleMessage("DISC"),
    "common_label_image": MessageLookupByLibrary.simpleMessage("BILDE"),
    "common_label_mode": MessageLookupByLibrary.simpleMessage("MODUS"),
    "common_refresh": MessageLookupByLibrary.simpleMessage("OPPDATERING"),
    "common_search": MessageLookupByLibrary.simpleMessage("SØK"),
    "common_select": MessageLookupByLibrary.simpleMessage("VELG"),
    "compatibleMode": m6,
    "confirmDataDestruction": MessageLookupByLibrary.simpleMessage(
      "Bekreft ødeleggelse av data",
    ),
    "confirmInstallation": MessageLookupByLibrary.simpleMessage(
      "Bekreft installasjonen",
    ),
    "connectInstallerWifi": MessageLookupByLibrary.simpleMessage(
      "Koble installasjonsprogrammet til Wi-Fi",
    ),
    "connectWifi": MessageLookupByLibrary.simpleMessage("Koble til Wi-Fi"),
    "console_title": MessageLookupByLibrary.simpleMessage("systemkonsollen"),
    "console_tooltip_clear": MessageLookupByLibrary.simpleMessage(
      "Rengjør vedkubber",
    ),
    "console_tooltip_copy": MessageLookupByLibrary.simpleMessage(
      "Kopier poster",
    ),
    "console_waiting_action": MessageLookupByLibrary.simpleMessage(
      "Venter på en handling...",
    ),
    "copyLogs": MessageLookupByLibrary.simpleMessage("Kopier poster"),
    "deploymentInProgress": MessageLookupByLibrary.simpleMessage(
      "Utrulling pågår",
    ),
    "designedBy": MessageLookupByLibrary.simpleMessage("Designet av Joss"),
    "destinationDiskDescription": MessageLookupByLibrary.simpleMessage(
      "Velg den fysiske stasjonen der Windows skal installeres.",
    ),
    "detect": MessageLookupByLibrary.simpleMessage("Oppdag"),
    "diskManagement": MessageLookupByLibrary.simpleMessage("nattklubbledelse"),
    "disk_badge_system": MessageLookupByLibrary.simpleMessage("SYSTEM"),
    "disk_boot_firmware_label": m7,
    "disk_button_confirm_and_install": MessageLookupByLibrary.simpleMessage(
      "BEKREFT OG INSTALLER",
    ),
    "disk_dialog_confirm_destruction_title":
        MessageLookupByLibrary.simpleMessage("BEKREFT DESTRUKSJON AV DATA"),
    "disk_dialog_confirm_install_title": MessageLookupByLibrary.simpleMessage(
      "BEKREFT INSTALLASJON",
    ),
    "disk_dialog_existing_notice": MessageLookupByLibrary.simpleMessage(
      "Windows vil distribuere til W:\\\\ uten formatering.",
    ),
    "disk_dialog_format_warning": MessageLookupByLibrary.simpleMessage(
      "Den valgte disken vil bli fullstendig formatert. Alle data vil gå tapt.",
    ),
    "disk_empty_list": MessageLookupByLibrary.simpleMessage(
      "Ingen fysiske disker oppdaget",
    ),
    "disk_item_header": m8,
    "disk_management_appbar_title": MessageLookupByLibrary.simpleMessage(
      "DISKHÅNDTERING",
    ),
    "disk_partition_gpt_uefi": MessageLookupByLibrary.simpleMessage("GPT/UEFI"),
    "disk_partition_mbr_bios": MessageLookupByLibrary.simpleMessage("MBR/BIOS"),
    "disk_recommended_mode_label": m9,
    "disk_selection_button_start": MessageLookupByLibrary.simpleMessage(
      "START INSTALLASJONEN",
    ),
    "disk_selection_desc": MessageLookupByLibrary.simpleMessage(
      "Velg den fysiske stasjonen der Windows skal installeres.",
    ),
    "disk_selection_title": MessageLookupByLibrary.simpleMessage(
      "Velg Destinasjonsdisk",
    ),
    "disk_size_gb": m10,
    "disk_waiting_wim_hint": MessageLookupByLibrary.simpleMessage(
      "Venter på oppdagelse av install.wim...",
    ),
    "disk_wim_bridge_source": m11,
    "disk_wim_detected": MessageLookupByLibrary.simpleMessage("Bilde oppdaget"),
    "disk_wim_integrated_source": MessageLookupByLibrary.simpleMessage(
      "WIM integrert i ISO",
    ),
    "disk_wim_not_found": MessageLookupByLibrary.simpleMessage(
      "Finner ikke bilde",
    ),
    "doNotDisconnect": MessageLookupByLibrary.simpleMessage(
      "Ikke slå av strømmen eller fjern installasjonsmediet",
    ),
    "downloadAndActivate": MessageLookupByLibrary.simpleMessage(
      "Last ned + aktiver",
    ),
    "downloadInstaller": MessageLookupByLibrary.simpleMessage(
      "Last ned installasjonsprogrammet (.exe)",
    ),
    "downloadPortable": MessageLookupByLibrary.simpleMessage(
      "Last ned bærbar (.zip)",
    ),
    "drives": MessageLookupByLibrary.simpleMessage("Enheter"),
    "editionDetected": m12,
    "emptyFolder": MessageLookupByLibrary.simpleMessage("Denne mappen er tom"),
    "errorGeneric": m13,
    "file_explorer_default_title": MessageLookupByLibrary.simpleMessage(
      "Velg Windows-installasjonsbilde",
    ),
    "file_explorer_drives_header": MessageLookupByLibrary.simpleMessage(
      "ENHETER",
    ),
    "file_explorer_empty_folder": MessageLookupByLibrary.simpleMessage(
      "Denne mappen er tom",
    ),
    "file_explorer_filter_hint": MessageLookupByLibrary.simpleMessage(
      "Filtrer …",
    ),
    "file_explorer_go_up_tooltip": MessageLookupByLibrary.simpleMessage(
      "Gå opp et nivå",
    ),
    "file_explorer_invalid_path_error": m14,
    "file_explorer_read_error": m15,
    "file_explorer_select_file_hint": MessageLookupByLibrary.simpleMessage(
      "Velg en .wim- eller .swm-fil",
    ),
    "file_explorer_selected_file": m16,
    "filter": MessageLookupByLibrary.simpleMessage("Filtrer …"),
    "formatGpt": MessageLookupByLibrary.simpleMessage("Format GPT (anbefalt)"),
    "formatGptDescription": MessageLookupByLibrary.simpleMessage(
      "Rengjør diskoteket og lag UEFI-oppsett\nEFI (S:) + Windows (W:)",
    ),
    "formatMbr": MessageLookupByLibrary.simpleMessage(
      "Formater MBR (legacy BIOS)",
    ),
    "formatMbrDescription": MessageLookupByLibrary.simpleMessage(
      "Tørk av disk og lag et gammelt oppsett\nKun Windows (C:)",
    ),
    "formatWarning": MessageLookupByLibrary.simpleMessage(
      "Den valgte disken vil bli fullstendig formatert. Alle data vil gå tapt.",
    ),
    "generateIso": MessageLookupByLibrary.simpleMessage("Generer ISO"),
    "getInstallOnlyIso": MessageLookupByLibrary.simpleMessage(
      "Få ISO kun for installasjon",
    ),
    "goUpOneLevel": MessageLookupByLibrary.simpleMessage("Gå opp et nivå"),
    "imageDetected": MessageLookupByLibrary.simpleMessage("Bilde oppdaget"),
    "imageFound": MessageLookupByLibrary.simpleMessage("Bilde funnet"),
    "imageNotFound": MessageLookupByLibrary.simpleMessage("Finner ikke bilde"),
    "imageSearching": MessageLookupByLibrary.simpleMessage(
      "Søker etter bilde...",
    ),
    "installAll": MessageLookupByLibrary.simpleMessage("Installer alle"),
    "installOffice": MessageLookupByLibrary.simpleMessage(
      "Installasjonskontor",
    ),
    "installationProgress": MessageLookupByLibrary.simpleMessage(
      "Installasjonsfremdrift",
    ),
    "invalidPath": m17,
    "isoDescription": MessageLookupByLibrary.simpleMessage(
      "Få den grunnleggende ISO for å velge en WIM ved oppstart, eller lag en selvstendig ISO som allerede inkluderer Windows-bildet ditt.",
    ),
    "iso_bridge_clients_count": m18,
    "iso_bridge_desc": MessageLookupByLibrary.simpleMessage(
      "Forbered WIM bare én gang og send den direkte til Requiem-klienter på samme nettverk. Klienter lagrer ikke WIM før de installerer den.",
    ),
    "iso_bridge_generic_error": m19,
    "iso_bridge_list_interfaces_error": m20,
    "iso_bridge_save_simple_iso_dialog": MessageLookupByLibrary.simpleMessage(
      "Lagre Simple Requiem ISO",
    ),
    "iso_bridge_save_wim_iso_dialog": MessageLookupByLibrary.simpleMessage(
      "Lagre Requiem ISO med WIM",
    ),
    "iso_bridge_select_wim_dialog": MessageLookupByLibrary.simpleMessage(
      "Velg Windows WIM-bilde",
    ),
    "iso_bridge_simple_iso_filename": MessageLookupByLibrary.simpleMessage(
      "Requiem-Installer-Simple.iso",
    ),
    "iso_bridge_start_validation_error": MessageLookupByLibrary.simpleMessage(
      "Velg et WIM og et privat IPv4-grensesnitt.",
    ),
    "iso_bridge_wim_selected_log": m21,
    "iso_panel_button_generate_iso": MessageLookupByLibrary.simpleMessage(
      "ISO GENERER",
    ),
    "iso_panel_button_select_wim": MessageLookupByLibrary.simpleMessage(
      "VELG WIM",
    ),
    "iso_panel_button_simple_iso": MessageLookupByLibrary.simpleMessage(
      "FÅ ISO KUN FOR INSTALLASJON",
    ),
    "iso_panel_desc_media": MessageLookupByLibrary.simpleMessage(
      "Få den grunnleggende ISO for å velge en WIM ved oppstart, eller lag en selvstendig ISO som allerede inkluderer Windows-bildet ditt.",
    ),
    "iso_panel_title_bridge": MessageLookupByLibrary.simpleMessage(
      "Installasjon IPv4 Bridge",
    ),
    "iso_panel_title_media": MessageLookupByLibrary.simpleMessage(
      "Installasjonsmedier",
    ),
    "kmsError": m22,
    "kmsHostEmpty": MessageLookupByLibrary.simpleMessage(
      "Feil: KMS-verten er tom.",
    ),
    "kmsServer": MessageLookupByLibrary.simpleMessage("KMS server"),
    "kmsTask160Days": MessageLookupByLibrary.simpleMessage("Oppgave 160 dager"),
    "kmsVolumeActivation": MessageLookupByLibrary.simpleMessage(
      "Volumaktivering (KMS)",
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
          "Windows 10/11 Pro for arbeidsstasjoner",
        ),
    "kms_product_windows_10_11_pro_n": MessageLookupByLibrary.simpleMessage(
      "Windows 10/11 Pro N",
    ),
    "kms_product_windows_10_11_pro_workstations":
        MessageLookupByLibrary.simpleMessage(
          "Windows 10/11 Pro arbeidsstasjoner",
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
        MessageLookupByLibrary.simpleMessage("Windows Server 2019 Datasenter"),
    "kms_product_windows_server_2019_standard":
        MessageLookupByLibrary.simpleMessage("Windows Server Standard 2019"),
    "kms_product_windows_server_2022_datacenter":
        MessageLookupByLibrary.simpleMessage("Windows Server 2022 Datasenter"),
    "kms_product_windows_server_2022_standard":
        MessageLookupByLibrary.simpleMessage("Windows Server 2022 Standard"),
    "kms_product_windows_server_2025_datacenter":
        MessageLookupByLibrary.simpleMessage("Windows Server 2025 Datasenter"),
    "kms_product_windows_server_2025_standard":
        MessageLookupByLibrary.simpleMessage("Windows Server 2025 Standard"),
    "kms_product_windows_subsystem_for_linux":
        MessageLookupByLibrary.simpleMessage("Windows-undersystem for Linux"),
    "kms_product_windows_terminal": MessageLookupByLibrary.simpleMessage(
      "Windows-terminal",
    ),
    "landingDescription": MessageLookupByLibrary.simpleMessage(
      "Høypresisjons Windows-installasjonsprogram for miljøer med høy ytelse. Opplev rask distribusjon med direkte DISM-orkestrering og automatisert systemoptimalisering.",
    ),
    "landing_badge_author": MessageLookupByLibrary.simpleMessage(
      "DESIGNET AV JOSS",
    ),
    "landing_badge_secure_boot": MessageLookupByLibrary.simpleMessage(
      "SIKKER STØVEL KOMPATIBEL",
    ),
    "landing_badge_version": MessageLookupByLibrary.simpleMessage(
      "STABIL VERSJON",
    ),
    "landing_button_logs": MessageLookupByLibrary.simpleMessage("SYSTEMLOGGER"),
    "landing_button_start": MessageLookupByLibrary.simpleMessage("KOM I GANG"),
    "landing_description_part1": MessageLookupByLibrary.simpleMessage(
      "Høypresisjons Windows-installasjonsprogram for miljøer med høy ytelse.",
    ),
    "landing_description_part2": MessageLookupByLibrary.simpleMessage(
      "Opplev rask distribusjon med direkte DISM-orkestrering og automatisert systemoptimalisering.",
    ),
    "landing_subtitle": MessageLookupByLibrary.simpleMessage(
      "NESTE GENERASJON OS INVESTERING",
    ),
    "landing_title_installer": MessageLookupByLibrary.simpleMessage(
      "REQUIEM INSTALLATØR",
    ),
    "landing_title_tools": MessageLookupByLibrary.simpleMessage("KRAV VERKTØY"),
    "licenseActivation": MessageLookupByLibrary.simpleMessage(
      "lisensaktivering",
    ),
    "logsCopied": MessageLookupByLibrary.simpleMessage(
      "Oppføringer kopiert til utklippstavlen.",
    ),
    "mandatoryUpdate": MessageLookupByLibrary.simpleMessage(
      "Denne oppdateringen er obligatorisk og kan ikke hoppes over.",
    ),
    "manualWimHint": MessageLookupByLibrary.simpleMessage(
      "Bruk \"Bla gjennom\" for å finne WIM-filen manuelt.",
    ),
    "mediaInstallation": MessageLookupByLibrary.simpleMessage(
      "Installasjonsmedier",
    ),
    "networkBridge": MessageLookupByLibrary.simpleMessage(
      "Installasjon IPv4 Bridge",
    ),
    "networkInterface": MessageLookupByLibrary.simpleMessage(
      "Wi-Fi/LAN IPv4-grensesnitt",
    ),
    "nextGenerationDeployment": MessageLookupByLibrary.simpleMessage(
      "Neste generasjons OS-distribusjon",
    ),
    "noBridgeFound": MessageLookupByLibrary.simpleMessage(
      "Ingen bro ble funnet. Prøv IP-manualen.",
    ),
    "noFormatWarning": MessageLookupByLibrary.simpleMessage(
      "Windows vil distribuere til W:\\ uten formatering.",
    ),
    "noImageDetected": MessageLookupByLibrary.simpleMessage(
      "Ingen bilde oppdaget",
    ),
    "noKmsProducts": MessageLookupByLibrary.simpleMessage(
      "Det er ingen KMS-produkter valgt.",
    ),
    "noPhysicalDisks": MessageLookupByLibrary.simpleMessage(
      "Ingen fysiske disker oppdaget",
    ),
    "noProgramsSelected": MessageLookupByLibrary.simpleMessage(
      "Det er ingen programmer valgt.",
    ),
    "noWifiNetworks": MessageLookupByLibrary.simpleMessage(
      "Finner ingen tilgjengelige Wi-Fi-nettverk.",
    ),
    "noWingetPackages": MessageLookupByLibrary.simpleMessage(
      "Ingen kjente pakker ble oppdaget med Winget.",
    ),
    "officeInstallDescription": MessageLookupByLibrary.simpleMessage(
      "Distribuer Microsoft Office LTSC eller 365 på en automatisert måte ved hjelp av ODT.",
    ),
    "officeInstaller": MessageLookupByLibrary.simpleMessage(
      "kontorinstallatør",
    ),
    "officeRenewalStatus": m23,
    "officeVersion": MessageLookupByLibrary.simpleMessage("kontorversjon"),
    "office_odt_kms_badge": MessageLookupByLibrary.simpleMessage("ODT + KMS"),
    "office_odt_panel_title": MessageLookupByLibrary.simpleMessage(
      "Office-distribusjonsverktøy",
    ),
    "office_pkg_desc_2019": MessageLookupByLibrary.simpleMessage(
      "Klikk og kjør volumet med kanalen PerpetualVL2019",
    ),
    "office_pkg_desc_2021": MessageLookupByLibrary.simpleMessage(
      "Klikk og kjør volum med kanalen PerpetualVL2021",
    ),
    "office_pkg_desc_2024": MessageLookupByLibrary.simpleMessage(
      "Klikk og kjør volumet med kanalen PerpetualVL2024",
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
      "Denne funksjonen er kun tilgjengelig på Windows.",
    ),
    "packageStack": MessageLookupByLibrary.simpleMessage(
      "Programstabel (Winget)",
    ),
    "packagesDetected": m24,
    "partitionMode": MessageLookupByLibrary.simpleMessage("Partisjonsmodus"),
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
      "kommunikasjon",
    ),
    "pkg_cat_control_de_versiones": MessageLookupByLibrary.simpleMessage(
      "Versjonskontroll",
    ),
    "pkg_cat_desktop": MessageLookupByLibrary.simpleMessage("Skrivebord"),
    "pkg_cat_diagramas": MessageLookupByLibrary.simpleMessage("diagrammer"),
    "pkg_cat_distro_wsl": MessageLookupByLibrary.simpleMessage(
      "WSL distribusjon",
    ),
    "pkg_cat_editor": MessageLookupByLibrary.simpleMessage("Redaktør"),
    "pkg_cat_golang": MessageLookupByLibrary.simpleMessage("golang"),
    "pkg_cat_gpu_compute": MessageLookupByLibrary.simpleMessage(
      "GPU-databehandling",
    ),
    "pkg_cat_grabacion": MessageLookupByLibrary.simpleMessage("Opptak"),
    "pkg_cat_ide_ai": MessageLookupByLibrary.simpleMessage("IDE IA"),
    "pkg_cat_ide_android": MessageLookupByLibrary.simpleMessage("IDAndroid"),
    "pkg_cat_ide_completo": MessageLookupByLibrary.simpleMessage("Fullfør IDE"),
    "pkg_cat_instaladores": MessageLookupByLibrary.simpleMessage(
      "Installatører",
    ),
    "pkg_cat_javascript": MessageLookupByLibrary.simpleMessage("javascript"),
    "pkg_cat_limpieza": MessageLookupByLibrary.simpleMessage("rengjøring"),
    "pkg_cat_modelos_locales": MessageLookupByLibrary.simpleMessage(
      "Lokale modeller",
    ),
    "pkg_cat_navegador": MessageLookupByLibrary.simpleMessage("Nettleser"),
    "pkg_cat_python_3": MessageLookupByLibrary.simpleMessage("Python 3"),
    "pkg_cat_runtime_c": MessageLookupByLibrary.simpleMessage("C++ kjøretid"),
    "pkg_cat_runtime_escritorio": MessageLookupByLibrary.simpleMessage(
      "Runtime Desktop",
    ),
    "pkg_cat_runtime_juegos": MessageLookupByLibrary.simpleMessage(
      "runtime spill",
    ),
    "pkg_cat_runtime_php": MessageLookupByLibrary.simpleMessage(
      "PHP under kjøring",
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
      "Klargjør og start bro",
    ),
    "progress_button_reboot": MessageLookupByLibrary.simpleMessage(
      "SYSTEM TILBAKESTILLING",
    ),
    "progress_footer_warning": MessageLookupByLibrary.simpleMessage(
      "IKKE KOPPE STRØMEN ELLER FJERNE INSTALLASJONSMEDIER",
    ),
    "progress_header_badge": MessageLookupByLibrary.simpleMessage(
      "UTSETTELSE PÅGÅR",
    ),
    "provideWindowsImage": MessageLookupByLibrary.simpleMessage(
      "Gi Windows installasjonsbilde (install.wim eller install.swm)\nfra en USB-stasjon eller et annet montert medium.",
    ),
    "receiveInstallation": MessageLookupByLibrary.simpleMessage(
      "Eller motta den ferdige installasjonen fra Requiem for Windows",
    ),
    "renewalActive": MessageLookupByLibrary.simpleMessage("aktive"),
    "renewalDisabled": MessageLookupByLibrary.simpleMessage("Deaktivert"),
    "searchingImage": MessageLookupByLibrary.simpleMessage(
      "Søker etter bilde …",
    ),
    "secureBootCompatible": MessageLookupByLibrary.simpleMessage(
      "Sikker oppstart støttes",
    ),
    "selectDestinationDisk": MessageLookupByLibrary.simpleMessage(
      "Velg måldisk",
    ),
    "selectFileHint": MessageLookupByLibrary.simpleMessage(
      "Velg en .wim- eller .swm-fil",
    ),
    "selectWim": MessageLookupByLibrary.simpleMessage("Velg WIM"),
    "selectWimFirst": MessageLookupByLibrary.simpleMessage(
      "Velg et WIM og et privat IPv4-grensesnitt.",
    ),
    "selectWindowsImage": MessageLookupByLibrary.simpleMessage(
      "Velg Windows-bilde",
    ),
    "selectWindowsImageFull": MessageLookupByLibrary.simpleMessage(
      "Velg Windows installasjonsbilde",
    ),
    "selectedFile": m25,
    "stableVersion": MessageLookupByLibrary.simpleMessage(
      "Stabil versjon v1.0.0",
    ),
    "start": MessageLookupByLibrary.simpleMessage("Kom i gang"),
    "startInstallation": MessageLookupByLibrary.simpleMessage(
      "Start installasjonen",
    ),
    "stopBridge": MessageLookupByLibrary.simpleMessage("brostopp"),
    "systemConsole": MessageLookupByLibrary.simpleMessage("Systemkonsoll"),
    "systemDisk": MessageLookupByLibrary.simpleMessage("systemet"),
    "systemLogs": MessageLookupByLibrary.simpleMessage("Systemlogger"),
    "tools_badge_iso_compatibility": MessageLookupByLibrary.simpleMessage(
      "BIOS + UEFI-konservative",
    ),
    "tools_badge_kms_pending": MessageLookupByLibrary.simpleMessage(
      "Venter på KMS",
    ),
    "tools_badge_package_count": m26,
    "tools_button_activate_kms": MessageLookupByLibrary.simpleMessage(
      "AKTIVER KMS",
    ),
    "tools_button_install_all_packages": MessageLookupByLibrary.simpleMessage(
      "INSTALLER ALT",
    ),
    "tools_button_install_office": MessageLookupByLibrary.simpleMessage(
      "INSTALLASJONSKONTOR",
    ),
    "tools_header_title": MessageLookupByLibrary.simpleMessage(
      "REQUIEM MIGRASJONSVERKTØY",
    ),
    "tools_kms_checking_connectivity": m27,
    "tools_kms_empty_host_error": MessageLookupByLibrary.simpleMessage(
      "FEIL: KMS-verten er tom.",
    ),
    "tools_kms_error_log": m28,
    "tools_kms_no_products_selected": MessageLookupByLibrary.simpleMessage(
      "Det er ingen KMS-produkter valgt.",
    ),
    "tools_log_format": m29,
    "tools_logs_copied_snackbar": MessageLookupByLibrary.simpleMessage(
      "Oppføringer kopiert til utklippstavlen.",
    ),
    "tools_packages_detected_count": m30,
    "tools_packages_none_detected": MessageLookupByLibrary.simpleMessage(
      "Ingen kjente pakker ble oppdaget med Winget.",
    ),
    "tools_packages_none_selected": MessageLookupByLibrary.simpleMessage(
      "Det er ingen programmer valgt.",
    ),
    "tools_section_activation_desc": MessageLookupByLibrary.simpleMessage(
      "Konfigurer lokal eller ekstern KMS-server for å aktivere Windows og Office.",
    ),
    "tools_section_activation_title": MessageLookupByLibrary.simpleMessage(
      "Lisensaktivering",
    ),
    "tools_section_iso_desc": MessageLookupByLibrary.simpleMessage(
      "Lag frittstående medier med en integrert WIM eller distribuer en installasjon direkte over IPv4.",
    ),
    "tools_section_iso_title": MessageLookupByLibrary.simpleMessage(
      "ISO og rødt display",
    ),
    "tools_section_office_desc": MessageLookupByLibrary.simpleMessage(
      "Distribuer Microsoft Office LTSC eller 365 på en automatisert måte ved hjelp av ODT.",
    ),
    "tools_section_office_title": MessageLookupByLibrary.simpleMessage(
      "kontorinstallatør",
    ),
    "tools_section_packages_desc": MessageLookupByLibrary.simpleMessage(
      "Installer og oppdater viktige utviklingsverktøy for Windows ved hjelp av Winget.",
    ),
    "tools_section_packages_title": MessageLookupByLibrary.simpleMessage(
      "Søknadsstabel",
    ),
    "tools_sidebar_app_name": MessageLookupByLibrary.simpleMessage("REQUIEM"),
    "tools_sidebar_mode_badge": MessageLookupByLibrary.simpleMessage(
      "Lokal verktøymodus",
    ),
    "tools_sidebar_tab_iso": MessageLookupByLibrary.simpleMessage(
      "ISO og Bridge",
    ),
    "tools_sidebar_tab_kms": MessageLookupByLibrary.simpleMessage(
      "KMS-aktivering",
    ),
    "tools_sidebar_tab_office": MessageLookupByLibrary.simpleMessage(
      "Office installasjon",
    ),
    "tools_sidebar_tab_packages": MessageLookupByLibrary.simpleMessage(
      "Stable programmer",
    ),
    "unknown": MessageLookupByLibrary.simpleMessage("Ukjent"),
    "updateDescription": MessageLookupByLibrary.simpleMessage(
      "For å fortsette å bruke Requiem Tools er det nødvendig å oppdatere til den nyeste versjonen.",
    ),
    "updateRequired": MessageLookupByLibrary.simpleMessage(
      "Oppdatering kreves",
    ),
    "useExistingPartitions": MessageLookupByLibrary.simpleMessage(
      "Bruk eksisterende partisjoner",
    ),
    "useExistingPartitionsDescription": MessageLookupByLibrary.simpleMessage(
      "Uformatert — vises i W: som den er\nDu administrerer deltakelser manuelt",
    ),
    "waitingAction": MessageLookupByLibrary.simpleMessage(
      "Venter på en handling...",
    ),
    "waitingForWim": MessageLookupByLibrary.simpleMessage(
      "Venter på oppdagelse av install.wim...",
    ),
    "wifiConnectError": m31,
    "wifiConnected": m32,
    "wifiPassword": MessageLookupByLibrary.simpleMessage("Wi-Fi-passord"),
    "wifi_connect_error": m33,
    "wifi_connected_log": m34,
    "wifi_connected_status": m35,
    "wifi_dialog_title": MessageLookupByLibrary.simpleMessage(
      "Koble installasjonsprogrammet til Wi-Fi",
    ),
    "wifi_item_signal_security": m36,
    "wifi_none_found": MessageLookupByLibrary.simpleMessage(
      "Finner ingen tilgjengelige Wi-Fi-nettverk.",
    ),
    "wifi_password_hint": MessageLookupByLibrary.simpleMessage("Wi-Fi-passord"),
    "wifi_scanning": MessageLookupByLibrary.simpleMessage(
      "Søker etter tilgjengelige Wi-Fi-nettverk...",
    ),
    "wimIntegrated": MessageLookupByLibrary.simpleMessage(
      "WIM integrert i ISO",
    ),
    "wim_bridge_connection_error": m37,
    "wim_bridge_ip_dialog_title": MessageLookupByLibrary.simpleMessage(
      "Requiem Bridge IP",
    ),
    "wim_bridge_ip_placeholder": MessageLookupByLibrary.simpleMessage(
      "192.168.1.20",
    ),
    "wim_bridge_not_found": MessageLookupByLibrary.simpleMessage(
      "Ingen bro ble funnet. Prøv IP-manualen.",
    ),
    "wim_bridge_search_error": m38,
    "wim_bridge_searching": MessageLookupByLibrary.simpleMessage(
      "Søker etter Requiem-broer på det lokale IPv4-nettverket...",
    ),
    "wim_bridge_section_header": MessageLookupByLibrary.simpleMessage(
      "Eller motta den ferdige installasjonen fra Requiem for Windows",
    ),
    "wim_button_change_file": MessageLookupByLibrary.simpleMessage("ENDRE FIL"),
    "wim_button_connect_wifi": MessageLookupByLibrary.simpleMessage(
      "KOBLE TIL WI-FI",
    ),
    "wim_button_manual_ip": MessageLookupByLibrary.simpleMessage(
      "IP BRUKERHÅNDBOK",
    ),
    "wim_button_rescan": MessageLookupByLibrary.simpleMessage(
      "Skann stasjoner på nytt",
    ),
    "wim_button_search_bridge": MessageLookupByLibrary.simpleMessage(
      "SØKE BRO",
    ),
    "wim_manual_search_hint": MessageLookupByLibrary.simpleMessage(
      "Bruk \"Bla gjennom\" for å finne WIM-filen manuelt.",
    ),
    "wim_picker_description": MessageLookupByLibrary.simpleMessage(
      "Oppgi Windows-installasjonsbildet (install.wim eller install.swm)\\n",
    ),
    "wim_picker_title": MessageLookupByLibrary.simpleMessage(
      "Velg Windows Image",
    ),
    "wim_status_found": MessageLookupByLibrary.simpleMessage("Bilde funnet"),
    "wim_status_not_found": MessageLookupByLibrary.simpleMessage(
      "Ingen bilde oppdaget",
    ),
    "wim_status_searching": MessageLookupByLibrary.simpleMessage(
      "Søker etter bilde …",
    ),
    "wim_status_searching_alt": MessageLookupByLibrary.simpleMessage(
      "Søker etter bilde...",
    ),
    "wingetUnavailable": MessageLookupByLibrary.simpleMessage(
      "Winget er ikke installert eller er ikke i PATH.",
    ),
  };
}
