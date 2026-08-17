// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a nb locale. All the
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
  String get localeName => 'nb';

  static String m0(count) => "${count} programmer";

  static String m1(version) => "Tilgjengelig versjon: ${version}";

  static String m2(firmware) => "Arrangement faktisk: ${firmware}";

  static String m3(error) => "No se pudo conectar: ${error}";

  static String m4(error) => "No se pudo buscar el puente: ${error}";

  static String m5(host) => "Comprobando conectividad con ${host}:1688...";

  static String m6(mode) => "Modo-kompatibel: ${mode}";

  static String m7(firmware) => "Arrangement faktisk: ${firmware}";

  static String m8(diskNumber, mediaType, busType) =>
      "DISK ${diskNumber} · ${mediaType} · ${busType}";

  static String m9(recommended) => "Modo-kompatibel: ${recommended}";

  static String m10(sizeGB) => "${sizeGB} GB";

  static String m11(imageName) =>
      "Puente: \${controller.bridgeAnnouncement?.imageName ??";

  static String m12(name, edition) => "Utgave oppdaget: ${name} (${edition})";

  static String m13(error) => "Det oppstod en feil: ${error}";

  static String m14(val) => "Ruta inválida: ${val}";

  static String m15(error) =>
      "No se pudo leer el contenido del directorio.\\n${error}";

  static String m16(path) => "Valg: ${path}";

  static String m17(path) => "Ruta inválida: ${path}";

  static String m18(clients) => "${clients}-forbindelser";

  static String m19(error) => "FEIL: ${error}";

  static String m20(error) =>
      "Ingen se pudieron enumerar las grensesnitt IPv4: ${error}";

  static String m21(path) => "WIM-valg: ${path}";

  static String m22(error) => "Feil KMS: ${error}";

  static String m23(product, channel, edition, status) =>
      "${product} / ${channel} / ${edition} biter. La renovación queda ${status}.";

  static String m24(count) => "Paquetes detectados: ${count}.";

  static String m25(file) => "Valg: ${file}";

  static String m26(count) => "${count} programmer";

  static String m27(host) => "Comprobando conectividad con ${host}:1688...";

  static String m28(error) => "FEIL KMS: ${error}";

  static String m29(time, message) => "[${time}] ${message}";

  static String m30(count) => "Paquetes detectados: ${count}.";

  static String m31(error) => "Ingen tilkobling til Wi-Fi: ${error}";

  static String m32(network) => "Koble til ${network}.";

  static String m33(error) => "Ingen tilkobling til Wi-Fi: ${error}";

  static String m34(ssid, result) => "Wi-Fi koblet til ${ssid}. ${result}";

  static String m35(ssid) => "Koble til ${ssid}.";

  static String m36(signal, security) => "${signal}% · ${security}";

  static String m37(error) => "No se pudo conectar: ${error}";

  static String m38(error) => "No se pudo buscar el puente: ${error}";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
    "actionCancel": MessageLookupByLibrary.simpleMessage("Avbryt"),
    "actionChange": MessageLookupByLibrary.simpleMessage("Cambiar"),
    "actionConfirm": MessageLookupByLibrary.simpleMessage("Bekreft"),
    "actionConnect": MessageLookupByLibrary.simpleMessage("Conectar"),
    "actionContinue": MessageLookupByLibrary.simpleMessage("Kontinuerlig"),
    "actionInstall": MessageLookupByLibrary.simpleMessage("Installer"),
    "actionRefresh": MessageLookupByLibrary.simpleMessage("Aktualisering"),
    "actionRestartSystem": MessageLookupByLibrary.simpleMessage(
      "Reiniciar sistema",
    ),
    "actionScanAgain": MessageLookupByLibrary.simpleMessage(
      "Escanear unidades de nuevo",
    ),
    "actionSearch": MessageLookupByLibrary.simpleMessage("Buscar"),
    "actionSelect": MessageLookupByLibrary.simpleMessage("Seleccionar"),
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
    "applicationStack": MessageLookupByLibrary.simpleMessage(
      "Stack de aplicaciones",
    ),
    "applicationStackDescription": MessageLookupByLibrary.simpleMessage(
      "Installer og aktualisere herramientas desarrollo esenciales for Windows mediante winget.",
    ),
    "applicationsCount": m0,
    "automaticOffice": MessageLookupByLibrary.simpleMessage(
      "Automatisk kontor",
    ),
    "automaticOfficeDescription": MessageLookupByLibrary.simpleMessage(
      "Bruk av GVLK for installering",
    ),
    "automaticRenewal": MessageLookupByLibrary.simpleMessage(
      "Renovación automática",
    ),
    "automaticWindows": MessageLookupByLibrary.simpleMessage(
      "Windows automatisk",
    ),
    "automaticWindowsDescription": MessageLookupByLibrary.simpleMessage(
      "Detecta edición og GVLK-kompatibel",
    ),
    "availableVersion": m1,
    "bootCurrent": m2,
    "bridgeConnectError": m3,
    "bridgeDescription": MessageLookupByLibrary.simpleMessage(
      "Forbered WIM for å sende direkte til kunders Requiem de la misma red. Los klienter ingen guardan el WIM ante installasjonen.",
    ),
    "bridgeIp": MessageLookupByLibrary.simpleMessage("IP del puente Requiem"),
    "bridgePorts": MessageLookupByLibrary.simpleMessage(
      "Puerto HTTP 40124 · descubrimiento UDP 40123. Med Windows Defender kan du få tilgang til private.",
    ),
    "bridgeSearchError": m4,
    "checkingKms": m5,
    "clearLogs": MessageLookupByLibrary.simpleMessage("Limpiar logger"),
    "common_cancel": MessageLookupByLibrary.simpleMessage("AVBRYT"),
    "common_change": MessageLookupByLibrary.simpleMessage("KAMBIAR"),
    "common_connect": MessageLookupByLibrary.simpleMessage("CONECTAR"),
    "common_continue": MessageLookupByLibrary.simpleMessage("FORTSATT"),
    "common_label_disk": MessageLookupByLibrary.simpleMessage("DISK"),
    "common_label_image": MessageLookupByLibrary.simpleMessage("BILDE"),
    "common_label_mode": MessageLookupByLibrary.simpleMessage("MODUS"),
    "common_refresh": MessageLookupByLibrary.simpleMessage("AKTUALISER"),
    "common_search": MessageLookupByLibrary.simpleMessage("BUSCAR"),
    "common_select": MessageLookupByLibrary.simpleMessage("SELECTIONAR"),
    "compatibleMode": m6,
    "confirmDataDestruction": MessageLookupByLibrary.simpleMessage(
      "Bekreft destrucción de data",
    ),
    "confirmInstallation": MessageLookupByLibrary.simpleMessage(
      "Bekreft installasjon",
    ),
    "connectInstallerWifi": MessageLookupByLibrary.simpleMessage(
      "Koble til installering av Wi-Fi",
    ),
    "connectWifi": MessageLookupByLibrary.simpleMessage("Conectar Wi-Fi"),
    "console_title": MessageLookupByLibrary.simpleMessage(
      "Consola del Systema",
    ),
    "console_tooltip_clear": MessageLookupByLibrary.simpleMessage(
      "Limpiar logger",
    ),
    "console_tooltip_copy": MessageLookupByLibrary.simpleMessage(
      "Kopier logger",
    ),
    "console_waiting_action": MessageLookupByLibrary.simpleMessage(
      "Esperando una acción...",
    ),
    "copyLogs": MessageLookupByLibrary.simpleMessage("Kopier logger"),
    "deploymentInProgress": MessageLookupByLibrary.simpleMessage(
      "Despliegue en curso",
    ),
    "designedBy": MessageLookupByLibrary.simpleMessage("Diseñado av Joss"),
    "destinationDiskDescription": MessageLookupByLibrary.simpleMessage(
      "Elija la unidad física donde se installer Windows.",
    ),
    "detect": MessageLookupByLibrary.simpleMessage("Detektor"),
    "diskManagement": MessageLookupByLibrary.simpleMessage(
      "Administrasjon av diskoteker",
    ),
    "disk_badge_system": MessageLookupByLibrary.simpleMessage("SISTEMA"),
    "disk_boot_firmware_label": m7,
    "disk_button_confirm_and_install": MessageLookupByLibrary.simpleMessage(
      "BEKREFT E INSTALAR",
    ),
    "disk_dialog_confirm_destruction_title":
        MessageLookupByLibrary.simpleMessage("BEKREFT DESTRUCCIÓN DE DATOS"),
    "disk_dialog_confirm_install_title": MessageLookupByLibrary.simpleMessage(
      "BEKREFT INSTALACIÓN",
    ),
    "disk_dialog_existing_notice": MessageLookupByLibrary.simpleMessage(
      "Windows se desplegará en W:\\\\ sin formatear.",
    ),
    "disk_dialog_format_warning": MessageLookupByLibrary.simpleMessage(
      "El disco seleccionado se formateará por completo. Se perderán todos los data.",
    ),
    "disk_empty_list": MessageLookupByLibrary.simpleMessage(
      "Ingen se detectaron discos físicos",
    ),
    "disk_item_header": m8,
    "disk_management_appbar_title": MessageLookupByLibrary.simpleMessage(
      "ADMINISTRASIÓN DE DISCOS",
    ),
    "disk_partition_gpt_uefi": MessageLookupByLibrary.simpleMessage(
      "GPT / UEFI",
    ),
    "disk_partition_mbr_bios": MessageLookupByLibrary.simpleMessage(
      "MBR / BIOS",
    ),
    "disk_recommended_mode_label": m9,
    "disk_selection_button_start": MessageLookupByLibrary.simpleMessage(
      "INICIAR INSTALACIÓN",
    ),
    "disk_selection_desc": MessageLookupByLibrary.simpleMessage(
      "Elija la unidad física donde se installer Windows.",
    ),
    "disk_selection_title": MessageLookupByLibrary.simpleMessage(
      "Seleccionar Disco de Destino",
    ),
    "disk_size_gb": m10,
    "disk_waiting_wim_hint": MessageLookupByLibrary.simpleMessage(
      "Esperando la detección de install.wim...",
    ),
    "disk_wim_bridge_source": m11,
    "disk_wim_detected": MessageLookupByLibrary.simpleMessage("Bilde oppdaget"),
    "disk_wim_integrated_source": MessageLookupByLibrary.simpleMessage(
      "WIM integrert i ISO",
    ),
    "disk_wim_not_found": MessageLookupByLibrary.simpleMessage(
      "Bilde uten encontrada",
    ),
    "doNotDisconnect": MessageLookupByLibrary.simpleMessage(
      "Ingen desconecte la energía ni pensjonere el medio de instalación",
    ),
    "downloadAndActivate": MessageLookupByLibrary.simpleMessage(
      "Last ned + aktivator",
    ),
    "downloadInstaller": MessageLookupByLibrary.simpleMessage(
      "Last ned installering (.exe)",
    ),
    "downloadPortable": MessageLookupByLibrary.simpleMessage(
      "Last ned bærbar (.zip)",
    ),
    "drives": MessageLookupByLibrary.simpleMessage("Unidades"),
    "editionDetected": m12,
    "emptyFolder": MessageLookupByLibrary.simpleMessage(
      "Esta carpeta está vacía",
    ),
    "errorGeneric": m13,
    "file_explorer_default_title": MessageLookupByLibrary.simpleMessage(
      "Velg bilde av installasjon av Windows",
    ),
    "file_explorer_drives_header": MessageLookupByLibrary.simpleMessage(
      "UNIDADES",
    ),
    "file_explorer_empty_folder": MessageLookupByLibrary.simpleMessage(
      "Esta carpeta está vacía",
    ),
    "file_explorer_filter_hint": MessageLookupByLibrary.simpleMessage(
      "Filtrer...",
    ),
    "file_explorer_go_up_tooltip": MessageLookupByLibrary.simpleMessage(
      "Subir un nivel",
    ),
    "file_explorer_invalid_path_error": m14,
    "file_explorer_read_error": m15,
    "file_explorer_select_file_hint": MessageLookupByLibrary.simpleMessage(
      "Velg et arkiv .wim o .swm",
    ),
    "file_explorer_selected_file": m16,
    "filter": MessageLookupByLibrary.simpleMessage("Filtrer..."),
    "formatGpt": MessageLookupByLibrary.simpleMessage(
      "Formatear GPT (anbefales)",
    ),
    "formatGptDescription": MessageLookupByLibrary.simpleMessage(
      "Limpia el disco y crea diseño UEFI\nEFI (S:) + Windows (W:)",
    ),
    "formatMbr": MessageLookupByLibrary.simpleMessage(
      "Formatear MBR (BIOS heredado)",
    ),
    "formatMbrDescription": MessageLookupByLibrary.simpleMessage(
      "Limpia el disco y crea diseño heredado\nSolo Windows (C :)",
    ),
    "formatWarning": MessageLookupByLibrary.simpleMessage(
      "El disco seleccionado se formateará por completo. Se perderán todos los data.",
    ),
    "generateIso": MessageLookupByLibrary.simpleMessage("Generell ISO"),
    "getInstallOnlyIso": MessageLookupByLibrary.simpleMessage(
      "Oppnå ISO for solamente",
    ),
    "goUpOneLevel": MessageLookupByLibrary.simpleMessage("Subir un nivel"),
    "imageDetected": MessageLookupByLibrary.simpleMessage("Bilde oppdaget"),
    "imageFound": MessageLookupByLibrary.simpleMessage("Bilde encontrada"),
    "imageNotFound": MessageLookupByLibrary.simpleMessage(
      "Bilde uten encontrada",
    ),
    "imageSearching": MessageLookupByLibrary.simpleMessage("Buscando-bilde..."),
    "installAll": MessageLookupByLibrary.simpleMessage("Installer å gjøre"),
    "installOffice": MessageLookupByLibrary.simpleMessage("Installer Office"),
    "installationProgress": MessageLookupByLibrary.simpleMessage(
      "Progreso de installering",
    ),
    "invalidPath": m17,
    "isoDescription": MessageLookupByLibrary.simpleMessage(
      "Få en ISO-base for å velge WIM for å installere, eller skape en ISO-autonome for å inkludere Windows-bilder.",
    ),
    "iso_bridge_clients_count": m18,
    "iso_bridge_desc": MessageLookupByLibrary.simpleMessage(
      "Forbered WIM for å sende direkte til kunders Requiem de la misma red. Los klienter ingen guardan el WIM ante installasjonen.",
    ),
    "iso_bridge_generic_error": m19,
    "iso_bridge_list_interfaces_error": m20,
    "iso_bridge_save_simple_iso_dialog": MessageLookupByLibrary.simpleMessage(
      "Guardar ISO simple de Requiem",
    ),
    "iso_bridge_save_wim_iso_dialog": MessageLookupByLibrary.simpleMessage(
      "Beskytter ISO de Requiem med WIM",
    ),
    "iso_bridge_select_wim_dialog": MessageLookupByLibrary.simpleMessage(
      "Velg bilde av WIM fra Windows",
    ),
    "iso_bridge_simple_iso_filename": MessageLookupByLibrary.simpleMessage(
      "Requiem-Installer-Simple.iso",
    ),
    "iso_bridge_start_validation_error": MessageLookupByLibrary.simpleMessage(
      "Velg en WIM og en interfaz IPv4 privat.",
    ),
    "iso_bridge_wim_selected_log": m21,
    "iso_panel_button_generate_iso": MessageLookupByLibrary.simpleMessage(
      "GENERAR ISO",
    ),
    "iso_panel_button_select_wim": MessageLookupByLibrary.simpleMessage(
      "SELECTIONAR WIM",
    ),
    "iso_panel_button_simple_iso": MessageLookupByLibrary.simpleMessage(
      "OBTENER ISO PARA INSTALACIÓN SOLAMENTE",
    ),
    "iso_panel_desc_media": MessageLookupByLibrary.simpleMessage(
      "Få en ISO-base for å velge WIM for å installere, eller skape en ISO-autonome for å inkludere Windows-bilder.",
    ),
    "iso_panel_title_bridge": MessageLookupByLibrary.simpleMessage(
      "Puente IPv4-installasjon",
    ),
    "iso_panel_title_media": MessageLookupByLibrary.simpleMessage(
      "Medio de installering",
    ),
    "kmsError": m22,
    "kmsHostEmpty": MessageLookupByLibrary.simpleMessage(
      "Feil: El host KMS está vacío.",
    ),
    "kmsServer": MessageLookupByLibrary.simpleMessage("Servidor KMS"),
    "kmsTask160Days": MessageLookupByLibrary.simpleMessage("Tarea 160 dager"),
    "kmsVolumeActivation": MessageLookupByLibrary.simpleMessage(
      "Aktivering av volum (KMS)",
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
      "Office Standard 2013",
    ),
    "kms_product_windows_10_11_education": MessageLookupByLibrary.simpleMessage(
      "Windows 10/11 Education",
    ),
    "kms_product_windows_10_11_education_n":
        MessageLookupByLibrary.simpleMessage("Windows 10/11 Education N"),
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
      "Windows 8 Enterprise",
    ),
    "kms_product_windows_8_pro": MessageLookupByLibrary.simpleMessage(
      "Windows 8 Pro",
    ),
    "kms_product_windows_server_2019_datacenter":
        MessageLookupByLibrary.simpleMessage("Windows Server 2019 Datasenter"),
    "kms_product_windows_server_2019_standard":
        MessageLookupByLibrary.simpleMessage("Windows Server 2019 Standard"),
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
      "Windows installering for alt rendimiento. Eksperimenter og despliegue rápido med orquestación directa de DISM og optimization automatisada del sistema.",
    ),
    "landing_badge_author": MessageLookupByLibrary.simpleMessage(
      "DISEÑADO POR JOSS",
    ),
    "landing_badge_secure_boot": MessageLookupByLibrary.simpleMessage(
      "KOMPATIBEL CON SECURE STØVEL",
    ),
    "landing_badge_version": MessageLookupByLibrary.simpleMessage(
      "VERSJON ETABLERT",
    ),
    "landing_button_logs": MessageLookupByLibrary.simpleMessage(
      "LOGGER DEL SISTEMA",
    ),
    "landing_button_start": MessageLookupByLibrary.simpleMessage("EMPEZAR"),
    "landing_description_part1": MessageLookupByLibrary.simpleMessage(
      "Windows installering for alt rendimiento.",
    ),
    "landing_description_part2": MessageLookupByLibrary.simpleMessage(
      "Eksperimenter og despliegue rápido med orquestación directa de DISM og optimization automatisada del sistema.",
    ),
    "landing_subtitle": MessageLookupByLibrary.simpleMessage(
      "DESPLIEGUE DE SO DE PRÓXIMA GENERACIÓN",
    ),
    "landing_title_installer": MessageLookupByLibrary.simpleMessage(
      "REQUIEM INSTALLATØR",
    ),
    "landing_title_tools": MessageLookupByLibrary.simpleMessage("KRAV VERKTØY"),
    "licenseActivation": MessageLookupByLibrary.simpleMessage(
      "Aktivering av lisenser",
    ),
    "logsCopied": MessageLookupByLibrary.simpleMessage(
      "Logger copiados al portapapeles.",
    ),
    "mandatoryUpdate": MessageLookupByLibrary.simpleMessage(
      "Esta actualización es obligatoria y no puede utelate.",
    ),
    "manualWimHint": MessageLookupByLibrary.simpleMessage(
      "Bruk \"Buscar\" for localizar su archivo WIM manualmente.",
    ),
    "mediaInstallation": MessageLookupByLibrary.simpleMessage(
      "Medio de installering",
    ),
    "networkBridge": MessageLookupByLibrary.simpleMessage(
      "Puente IPv4-installasjon",
    ),
    "networkInterface": MessageLookupByLibrary.simpleMessage(
      "Interfaz Wi-Fi/LAN IPv4",
    ),
    "nextGenerationDeployment": MessageLookupByLibrary.simpleMessage(
      "Despliegue de SO de proxima generación",
    ),
    "noBridgeFound": MessageLookupByLibrary.simpleMessage(
      "No se encontró ningún puente. Bruksanvisning for Pruebe con la IP.",
    ),
    "noFormatWarning": MessageLookupByLibrary.simpleMessage(
      "Windows se desplegará en W:\\ sin formatear.",
    ),
    "noImageDetected": MessageLookupByLibrary.simpleMessage(
      "Ingen se detectó ninguna bilde",
    ),
    "noKmsProducts": MessageLookupByLibrary.simpleMessage(
      "Ingen høyprodukter fra KMS-seleccionados.",
    ),
    "noPhysicalDisks": MessageLookupByLibrary.simpleMessage(
      "Ingen se detectaron discos físicos",
    ),
    "noProgramsSelected": MessageLookupByLibrary.simpleMessage(
      "Ingen høyprogram som utvalgte.",
    ),
    "noWifiNetworks": MessageLookupByLibrary.simpleMessage(
      "Det er ikke mulig å bruke Wi-Fi tilgjengelig.",
    ),
    "noWingetPackages": MessageLookupByLibrary.simpleMessage(
      "No se detectaron paquetes conocidos con winget.",
    ),
    "officeInstallDescription": MessageLookupByLibrary.simpleMessage(
      "Desplie av Microsoft Office LTSC eller 365 automatisert manera med ODT.",
    ),
    "officeInstaller": MessageLookupByLibrary.simpleMessage(
      "Installator av Office",
    ),
    "officeRenewalStatus": m23,
    "officeVersion": MessageLookupByLibrary.simpleMessage("Versjon av Office"),
    "office_odt_kms_badge": MessageLookupByLibrary.simpleMessage("ODT + KMS"),
    "office_odt_panel_title": MessageLookupByLibrary.simpleMessage(
      "Office-distribusjonsverktøy",
    ),
    "office_pkg_desc_2019": MessageLookupByLibrary.simpleMessage(
      "Click-to-Run de volumen con canal PerpetualVL2019",
    ),
    "office_pkg_desc_2021": MessageLookupByLibrary.simpleMessage(
      "Click-to-Run de volumen con canal PerpetualVL2021",
    ),
    "office_pkg_desc_2024": MessageLookupByLibrary.simpleMessage(
      "Click-to-Run de volumen con canal PerpetualVL2024",
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
      "Funksjonen alene er tilgjengelig i Windows.",
    ),
    "packageStack": MessageLookupByLibrary.simpleMessage(
      "Stack de programas (Winget)",
    ),
    "packagesDetected": m24,
    "partitionMode": MessageLookupByLibrary.simpleMessage(
      "Modus for deltakelse",
    ),
    "pkg_cat_apache_php_mysql": MessageLookupByLibrary.simpleMessage(
      "Apache PHP MySQL",
    ),
    "pkg_cat_bi_desktop": MessageLookupByLibrary.simpleMessage("BI Desktop"),
    "pkg_cat_cliente_api": MessageLookupByLibrary.simpleMessage("Cliente API"),
    "pkg_cat_cliente_db": MessageLookupByLibrary.simpleMessage("Kunde DB"),
    "pkg_cat_compiladores_c": MessageLookupByLibrary.simpleMessage(
      "Kompilatorer for C++",
    ),
    "pkg_cat_compresor": MessageLookupByLibrary.simpleMessage("Compresor"),
    "pkg_cat_comunicacion": MessageLookupByLibrary.simpleMessage(
      "Kommunikasjon",
    ),
    "pkg_cat_control_de_versiones": MessageLookupByLibrary.simpleMessage(
      "Kontroll av versjoner",
    ),
    "pkg_cat_desktop": MessageLookupByLibrary.simpleMessage("Skrivebord"),
    "pkg_cat_diagramas": MessageLookupByLibrary.simpleMessage("Diagrammer"),
    "pkg_cat_distro_wsl": MessageLookupByLibrary.simpleMessage("Distro WSL"),
    "pkg_cat_editor": MessageLookupByLibrary.simpleMessage("Redaktør"),
    "pkg_cat_golang": MessageLookupByLibrary.simpleMessage("Golang"),
    "pkg_cat_gpu_compute": MessageLookupByLibrary.simpleMessage(
      "GPU-datamaskin",
    ),
    "pkg_cat_grabacion": MessageLookupByLibrary.simpleMessage("Grabacion"),
    "pkg_cat_ide_ai": MessageLookupByLibrary.simpleMessage("IDE AI"),
    "pkg_cat_ide_android": MessageLookupByLibrary.simpleMessage("IDE Android"),
    "pkg_cat_ide_completo": MessageLookupByLibrary.simpleMessage(
      "IDE komplett",
    ),
    "pkg_cat_instaladores": MessageLookupByLibrary.simpleMessage("Installerer"),
    "pkg_cat_javascript": MessageLookupByLibrary.simpleMessage("JavaScript"),
    "pkg_cat_limpieza": MessageLookupByLibrary.simpleMessage("Limpieza"),
    "pkg_cat_modelos_locales": MessageLookupByLibrary.simpleMessage(
      "Språkmodeller",
    ),
    "pkg_cat_navegador": MessageLookupByLibrary.simpleMessage("Navegador"),
    "pkg_cat_python_3": MessageLookupByLibrary.simpleMessage("Python 3"),
    "pkg_cat_runtime_c": MessageLookupByLibrary.simpleMessage("Kjøretid C++"),
    "pkg_cat_runtime_escritorio": MessageLookupByLibrary.simpleMessage(
      "Kjøretidsskrift",
    ),
    "pkg_cat_runtime_juegos": MessageLookupByLibrary.simpleMessage(
      "Runtime-spill",
    ),
    "pkg_cat_runtime_php": MessageLookupByLibrary.simpleMessage("Runtime PHP"),
    "pkg_cat_rustup": MessageLookupByLibrary.simpleMessage("Rustup"),
    "pkg_cat_sdk__net": MessageLookupByLibrary.simpleMessage("SDK .NET"),
    "pkg_cat_servidor_db": MessageLookupByLibrary.simpleMessage("Servidor DB"),
    "pkg_cat_ssh_clasico": MessageLookupByLibrary.simpleMessage("SSH klassisk"),
    "pkg_cat_ssh_moderno": MessageLookupByLibrary.simpleMessage("SSH moderne"),
    "pkg_cat_subsistema_linux": MessageLookupByLibrary.simpleMessage(
      "Subsistema Linux",
    ),
    "pkg_cat_temurin_21": MessageLookupByLibrary.simpleMessage("Temurin 21"),
    "pkg_cat_terminal_moderno": MessageLookupByLibrary.simpleMessage(
      "Moderne terminal",
    ),
    "prepareBridge": MessageLookupByLibrary.simpleMessage(
      "Preparar e iniciar puente",
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
      "Proporcione la imagen de installering av Windows (install.wim eller install.swm)\ndesde una unidad USB eller cualquier medio montado.",
    ),
    "receiveInstallation": MessageLookupByLibrary.simpleMessage(
      "O reciba la installación preparada desde Requiem for Windows",
    ),
    "renewalActive": MessageLookupByLibrary.simpleMessage("Activa"),
    "renewalDisabled": MessageLookupByLibrary.simpleMessage("Deaktivering"),
    "searchingImage": MessageLookupByLibrary.simpleMessage("Buscando-bilde..."),
    "secureBootCompatible": MessageLookupByLibrary.simpleMessage(
      "Kompatibel med sikker oppstart",
    ),
    "selectDestinationDisk": MessageLookupByLibrary.simpleMessage(
      "Velg disco destino",
    ),
    "selectFileHint": MessageLookupByLibrary.simpleMessage(
      "Velg et arkiv .wim o .swm",
    ),
    "selectWim": MessageLookupByLibrary.simpleMessage("Velg WIM"),
    "selectWimFirst": MessageLookupByLibrary.simpleMessage(
      "Velg en WIM og en interfaz IPv4 privat.",
    ),
    "selectWindowsImage": MessageLookupByLibrary.simpleMessage(
      "Velg bilde av Windows",
    ),
    "selectWindowsImageFull": MessageLookupByLibrary.simpleMessage(
      "Velg bilde av installasjon av Windows",
    ),
    "selectedFile": m25,
    "stableVersion": MessageLookupByLibrary.simpleMessage(
      "Versjon etablert v1.0.0",
    ),
    "start": MessageLookupByLibrary.simpleMessage("Empezar"),
    "startInstallation": MessageLookupByLibrary.simpleMessage(
      "Start installasjon",
    ),
    "stopBridge": MessageLookupByLibrary.simpleMessage("Detener puente"),
    "systemConsole": MessageLookupByLibrary.simpleMessage("Systemets konsoll"),
    "systemDisk": MessageLookupByLibrary.simpleMessage("Systema"),
    "systemLogs": MessageLookupByLibrary.simpleMessage("Logger av systemet"),
    "tools_badge_iso_compatibility": MessageLookupByLibrary.simpleMessage(
      "BIOS + UEFI-konserver",
    ),
    "tools_badge_kms_pending": MessageLookupByLibrary.simpleMessage(
      "KMS pendiente",
    ),
    "tools_badge_package_count": m26,
    "tools_button_activate_kms": MessageLookupByLibrary.simpleMessage(
      "ACTIVAR KMS",
    ),
    "tools_button_install_all_packages": MessageLookupByLibrary.simpleMessage(
      "INSTALAR TODO",
    ),
    "tools_button_install_office": MessageLookupByLibrary.simpleMessage(
      "INSTALAR KONTOR",
    ),
    "tools_header_title": MessageLookupByLibrary.simpleMessage(
      "REQUIEM MIGRASJONSVERKTØY",
    ),
    "tools_kms_checking_connectivity": m27,
    "tools_kms_empty_host_error": MessageLookupByLibrary.simpleMessage(
      "FEIL: el vert KMS esta vacio.",
    ),
    "tools_kms_error_log": m28,
    "tools_kms_no_products_selected": MessageLookupByLibrary.simpleMessage(
      "Ingen høyprodukter fra KMS-seleccionados.",
    ),
    "tools_log_format": m29,
    "tools_logs_copied_snackbar": MessageLookupByLibrary.simpleMessage(
      "Logger copiados al portapapeles.",
    ),
    "tools_packages_detected_count": m30,
    "tools_packages_none_detected": MessageLookupByLibrary.simpleMessage(
      "No se detectaron paquetes conocidos con winget.",
    ),
    "tools_packages_none_selected": MessageLookupByLibrary.simpleMessage(
      "Ingen høyprogram som utvalgte.",
    ),
    "tools_section_activation_desc": MessageLookupByLibrary.simpleMessage(
      "Konfigurer tjenesten KMS lokal eller fjernkontroll for aktivering av Windows og Office.",
    ),
    "tools_section_activation_title": MessageLookupByLibrary.simpleMessage(
      "Aktivering av lisenser",
    ),
    "tools_section_iso_desc": MessageLookupByLibrary.simpleMessage(
      "Cree medios autonomos med en WIM-integrering eller distribusjon av en installasjonsdirektorat for IPv4.",
    ),
    "tools_section_iso_title": MessageLookupByLibrary.simpleMessage(
      "ISO y despliegue por red",
    ),
    "tools_section_office_desc": MessageLookupByLibrary.simpleMessage(
      "Desplie av Microsoft Office LTSC eller 365 automatisert manera med ODT.",
    ),
    "tools_section_office_title": MessageLookupByLibrary.simpleMessage(
      "Installator av Office",
    ),
    "tools_section_packages_desc": MessageLookupByLibrary.simpleMessage(
      "Installer og aktualisere herramientas desarrollo esenciales for Windows mediante winget.",
    ),
    "tools_section_packages_title": MessageLookupByLibrary.simpleMessage(
      "Stack de Applicaciones",
    ),
    "tools_sidebar_app_name": MessageLookupByLibrary.simpleMessage("REQUIEM"),
    "tools_sidebar_mode_badge": MessageLookupByLibrary.simpleMessage(
      "Lokal verktøymodus",
    ),
    "tools_sidebar_tab_iso": MessageLookupByLibrary.simpleMessage(
      "ISO og Puente",
    ),
    "tools_sidebar_tab_kms": MessageLookupByLibrary.simpleMessage(
      "Aktivering KMS",
    ),
    "tools_sidebar_tab_office": MessageLookupByLibrary.simpleMessage(
      "Installasjonskontor",
    ),
    "tools_sidebar_tab_packages": MessageLookupByLibrary.simpleMessage(
      "Stable programmer",
    ),
    "unknown": MessageLookupByLibrary.simpleMessage("Desconocido"),
    "updateDescription": MessageLookupByLibrary.simpleMessage(
      "For kontinuerlig bruk av Requiem Tools er nødvendig å aktualisere en ny versjon.",
    ),
    "updateRequired": MessageLookupByLibrary.simpleMessage(
      "Actualización requerida",
    ),
    "useExistingPartitions": MessageLookupByLibrary.simpleMessage(
      "Usar particiones existentes",
    ),
    "useExistingPartitionsDescription": MessageLookupByLibrary.simpleMessage(
      "Sin formatear — despliega en W: tal cual\nUsted gestiona las particiones manualmente",
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
      "Koble til installering av Wi-Fi",
    ),
    "wifi_item_signal_security": m36,
    "wifi_none_found": MessageLookupByLibrary.simpleMessage(
      "Det er ikke mulig å bruke Wi-Fi tilgjengelig.",
    ),
    "wifi_password_hint": MessageLookupByLibrary.simpleMessage(
      "Contraseña Wi-Fi",
    ),
    "wifi_scanning": MessageLookupByLibrary.simpleMessage(
      "Skanner tilgjengelige Wi-Fi-nettverk...",
    ),
    "wimIntegrated": MessageLookupByLibrary.simpleMessage(
      "WIM integrert i ISO",
    ),
    "wim_bridge_connection_error": m37,
    "wim_bridge_ip_dialog_title": MessageLookupByLibrary.simpleMessage(
      "IP del puente Requiem",
    ),
    "wim_bridge_ip_placeholder": MessageLookupByLibrary.simpleMessage(
      "192.168.1.20",
    ),
    "wim_bridge_not_found": MessageLookupByLibrary.simpleMessage(
      "No se encontró ningún puente. Bruksanvisning for Pruebe con la IP.",
    ),
    "wim_bridge_search_error": m38,
    "wim_bridge_searching": MessageLookupByLibrary.simpleMessage(
      "Søker etter Requiem-broer på det lokale IPv4-nettverket...",
    ),
    "wim_bridge_section_header": MessageLookupByLibrary.simpleMessage(
      "O reciba la installación preparada desde Requiem for Windows",
    ),
    "wim_button_change_file": MessageLookupByLibrary.simpleMessage(
      "CAMBIAR ARCHIVO",
    ),
    "wim_button_connect_wifi": MessageLookupByLibrary.simpleMessage(
      "CONECTAR WI-FI",
    ),
    "wim_button_manual_ip": MessageLookupByLibrary.simpleMessage(
      "USAR IP MANUAL",
    ),
    "wim_button_rescan": MessageLookupByLibrary.simpleMessage(
      "Escanear unidades de nuevo",
    ),
    "wim_button_search_bridge": MessageLookupByLibrary.simpleMessage(
      "BUSCAR PUENTE",
    ),
    "wim_manual_search_hint": MessageLookupByLibrary.simpleMessage(
      "Bruk \"Buscar\" for localizar su archivo WIM manualmente.",
    ),
    "wim_picker_description": MessageLookupByLibrary.simpleMessage(
      "Proporcione la imagen de installation de Windows (install.wim eller install.swm)\\n",
    ),
    "wim_picker_title": MessageLookupByLibrary.simpleMessage(
      "Velg Windows-bilder",
    ),
    "wim_status_found": MessageLookupByLibrary.simpleMessage(
      "Bilde encontrada",
    ),
    "wim_status_not_found": MessageLookupByLibrary.simpleMessage(
      "Ingen se detectó ninguna bilde",
    ),
    "wim_status_searching": MessageLookupByLibrary.simpleMessage(
      "Buscando-bilde...",
    ),
    "wim_status_searching_alt": MessageLookupByLibrary.simpleMessage(
      "Buscando-bilde...",
    ),
    "wingetUnavailable": MessageLookupByLibrary.simpleMessage(
      "winget no está instalado o no está en PATH.",
    ),
  };
}
