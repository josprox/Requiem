// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a cs locale. All the
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
  String get localeName => 'cs';

  static String m0(count) => "${count} programů";

  static String m1(version) => "Dostupná verze: ${version}";

  static String m2(firmware) => "Skutečná objednávka: ${firmware}";

  static String m3(error) => "No se pudo conectar: ${error}";

  static String m4(error) => "No se pudo buscar el puente: ${error}";

  static String m5(host) => "Kombinované připojení s ${host}:1688...";

  static String m6(mode) => "Kompatibilní s režimem: ${mode}";

  static String m7(firmware) => "Skutečná objednávka: ${firmware}";

  static String m8(diskNumber, mediaType, busType) =>
      "DISK ${diskNumber} · ${mediaType} · ${busType}";

  static String m9(recommended) => "Kompatibilní s režimem: ${recommended}";

  static String m10(sizeGB) => "${sizeGB} GB";

  static String m11(imageName) =>
      "Puente: \${controller.bridgeAnnouncement?.imageName ??";

  static String m12(name, edition) => "Detekovaná edice: ${name} (${edition})";

  static String m13(error) => "Vyskytla se chyba: ${error}";

  static String m14(val) => "Ruta inválida: ${val}";

  static String m15(error) => "Žádný seznam není v adresáři.\\n${error}";

  static String m16(path) => "Výběr: ${path}";

  static String m17(path) => "Ruta inválida: ${path}";

  static String m18(clients) => "${clients} připojení";

  static String m19(error) => "CHYBA: ${error}";

  static String m20(error) => "Žádné výčet IPv4 rozhraní: ${error}";

  static String m21(path) => "Výběr WIM: ${path}";

  static String m22(error) => "Chyba KMS: ${error}";

  static String m23(product, channel, edition, status) =>
      "${product} / ${channel} / ${edition} bitů. La renovación queda ${status}.";

  static String m24(count) => "Paquetes detectados: ${count}.";

  static String m25(file) => "Výběr: ${file}";

  static String m26(count) => "${count} programů";

  static String m27(host) => "Kombinované připojení s ${host}:1688...";

  static String m28(error) => "CHYBA KMS: ${error}";

  static String m29(time, message) => "[${time}] ${message}";

  static String m30(count) => "Paquetes detectados: ${count}.";

  static String m31(error) => "Žádné připojení k Wi-Fi: ${error}";

  static String m32(network) => "Připojte se k ${network}.";

  static String m33(error) => "Žádné připojení k Wi-Fi: ${error}";

  static String m34(ssid, result) => "Wi-Fi připojeno k ${ssid}. ${result}";

  static String m35(ssid) => "Připojte se k ${ssid}.";

  static String m36(signal, security) => "${signal}% · ${security}";

  static String m37(error) => "No se pudo conectar: ${error}";

  static String m38(error) => "No se pudo buscar el puente: ${error}";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
    "actionCancel": MessageLookupByLibrary.simpleMessage("Zrušit"),
    "actionChange": MessageLookupByLibrary.simpleMessage("Kambiár"),
    "actionConfirm": MessageLookupByLibrary.simpleMessage("Potvrdit"),
    "actionConnect": MessageLookupByLibrary.simpleMessage("Conectar"),
    "actionContinue": MessageLookupByLibrary.simpleMessage("Kontinuální"),
    "actionInstall": MessageLookupByLibrary.simpleMessage("Instalační"),
    "actionRefresh": MessageLookupByLibrary.simpleMessage("Actualizar"),
    "actionRestartSystem": MessageLookupByLibrary.simpleMessage(
      "Reiniciární systém",
    ),
    "actionScanAgain": MessageLookupByLibrary.simpleMessage(
      "Escanear unidades de nuevo",
    ),
    "actionSearch": MessageLookupByLibrary.simpleMessage("Buscar"),
    "actionSelect": MessageLookupByLibrary.simpleMessage("Selekcionar"),
    "activate": MessageLookupByLibrary.simpleMessage("Aktivar"),
    "activateKms": MessageLookupByLibrary.simpleMessage("Aktivar KMS"),
    "appTitleInstaller": MessageLookupByLibrary.simpleMessage(
      "Instalační program Requiem",
    ),
    "appTitleTools": MessageLookupByLibrary.simpleMessage("Nástroje Requiem"),
    "app_title_installer": MessageLookupByLibrary.simpleMessage(
      "Instalační program Requiem",
    ),
    "app_title_tools": MessageLookupByLibrary.simpleMessage("Nástroje Requiem"),
    "applicationStack": MessageLookupByLibrary.simpleMessage(
      "Zásobník aplikací",
    ),
    "applicationStackDescription": MessageLookupByLibrary.simpleMessage(
      "Nainstalujte a aktualizujte herramentas desarrollo esenciales pro Windows mediante winget.",
    ),
    "applicationsCount": m0,
    "automaticOffice": MessageLookupByLibrary.simpleMessage(
      "Kancelářský automat",
    ),
    "automaticOfficeDescription": MessageLookupByLibrary.simpleMessage(
      "Pomocí GVLK je nainstalován objem",
    ),
    "automaticRenewal": MessageLookupByLibrary.simpleMessage(
      "Renovace automatiky",
    ),
    "automaticWindows": MessageLookupByLibrary.simpleMessage(
      "Automatická Windows",
    ),
    "automaticWindowsDescription": MessageLookupByLibrary.simpleMessage(
      "Kompatibilní s Detecta edición a GVLK",
    ),
    "availableVersion": m1,
    "bootCurrent": m2,
    "bridgeConnectError": m3,
    "bridgeDescription": MessageLookupByLibrary.simpleMessage(
      "Připravte se na WIM tak, abyste předali přímou cestu pro klienty Requiem de la misma red. Klienti nejsou chráněni před instalací WIM.",
    ),
    "bridgeIp": MessageLookupByLibrary.simpleMessage("IP del puente Requiem"),
    "bridgePorts": MessageLookupByLibrary.simpleMessage(
      "Puerto HTTP 40124 · chráněné UDP 40123. Pokud máte Windows Defender povolen, máte povolený přístup k soukromí.",
    ),
    "bridgeSearchError": m4,
    "checkingKms": m5,
    "clearLogs": MessageLookupByLibrary.simpleMessage("Limpiarské kulatiny"),
    "common_cancel": MessageLookupByLibrary.simpleMessage("ZRUŠIT"),
    "common_change": MessageLookupByLibrary.simpleMessage("CAMBIAR"),
    "common_connect": MessageLookupByLibrary.simpleMessage("CONECTAR"),
    "common_continue": MessageLookupByLibrary.simpleMessage("POKRAČOVAT"),
    "common_label_disk": MessageLookupByLibrary.simpleMessage("DISK"),
    "common_label_image": MessageLookupByLibrary.simpleMessage("OBRÁZEK"),
    "common_label_mode": MessageLookupByLibrary.simpleMessage("MODE"),
    "common_refresh": MessageLookupByLibrary.simpleMessage("AKTUALIZÁR"),
    "common_search": MessageLookupByLibrary.simpleMessage("BUSKAR"),
    "common_select": MessageLookupByLibrary.simpleMessage("SELECCIONAR"),
    "compatibleMode": m6,
    "confirmDataDestruction": MessageLookupByLibrary.simpleMessage(
      "Potvrďte destrucción de datos",
    ),
    "confirmInstallation": MessageLookupByLibrary.simpleMessage(
      "Potvrďte instalaci",
    ),
    "connectInstallerWifi": MessageLookupByLibrary.simpleMessage(
      "Připojte se k Wi-Fi",
    ),
    "connectWifi": MessageLookupByLibrary.simpleMessage("Připojte Wi-Fi"),
    "console_title": MessageLookupByLibrary.simpleMessage(
      "Consola del Sistema",
    ),
    "console_tooltip_clear": MessageLookupByLibrary.simpleMessage(
      "Limpiarské kulatiny",
    ),
    "console_tooltip_copy": MessageLookupByLibrary.simpleMessage(
      "Kopie protokoly",
    ),
    "console_waiting_action": MessageLookupByLibrary.simpleMessage(
      "Esperando una acción...",
    ),
    "copyLogs": MessageLookupByLibrary.simpleMessage("Kopie protokoly"),
    "deploymentInProgress": MessageLookupByLibrary.simpleMessage(
      "Despliegue en curso",
    ),
    "designedBy": MessageLookupByLibrary.simpleMessage("Diseñado por Joss"),
    "destinationDiskDescription": MessageLookupByLibrary.simpleMessage(
      "Elija la unidad física donde se instaluje Windows.",
    ),
    "detect": MessageLookupByLibrary.simpleMessage("Detektor"),
    "diskManagement": MessageLookupByLibrary.simpleMessage("Správa diskoték"),
    "disk_badge_system": MessageLookupByLibrary.simpleMessage("SYSTÉM"),
    "disk_boot_firmware_label": m7,
    "disk_button_confirm_and_install": MessageLookupByLibrary.simpleMessage(
      "POTVRĎTE A INSTALACI",
    ),
    "disk_dialog_confirm_destruction_title":
        MessageLookupByLibrary.simpleMessage("POTVRĎTE DESTRUCCIÓN DE DATOS"),
    "disk_dialog_confirm_install_title": MessageLookupByLibrary.simpleMessage(
      "POTVRĎTE INSTALACI",
    ),
    "disk_dialog_existing_notice": MessageLookupByLibrary.simpleMessage(
      "Windows se desplegará en W:\\\\ sin formatear.",
    ),
    "disk_dialog_format_warning": MessageLookupByLibrary.simpleMessage(
      "El disco seleccionado se formateará por completo. Se perderán todos los datos.",
    ),
    "disk_empty_list": MessageLookupByLibrary.simpleMessage(
      "No se detectaron discos fisicos",
    ),
    "disk_item_header": m8,
    "disk_management_appbar_title": MessageLookupByLibrary.simpleMessage(
      "ADMINISTRACIÓN DE DISCOS",
    ),
    "disk_partition_gpt_uefi": MessageLookupByLibrary.simpleMessage(
      "GPT / UEFI",
    ),
    "disk_partition_mbr_bios": MessageLookupByLibrary.simpleMessage(
      "MBR / BIOS",
    ),
    "disk_recommended_mode_label": m9,
    "disk_selection_button_start": MessageLookupByLibrary.simpleMessage(
      "POČÁTEČNÍ INSTALACE",
    ),
    "disk_selection_desc": MessageLookupByLibrary.simpleMessage(
      "Elija la unidad física donde se instaluje Windows.",
    ),
    "disk_selection_title": MessageLookupByLibrary.simpleMessage(
      "Výběr Disco de Destino",
    ),
    "disk_size_gb": m10,
    "disk_waiting_wim_hint": MessageLookupByLibrary.simpleMessage(
      "Esperando la detección de install.wim...",
    ),
    "disk_wim_bridge_source": m11,
    "disk_wim_detected": MessageLookupByLibrary.simpleMessage(
      "Obrazová detekce",
    ),
    "disk_wim_integrated_source": MessageLookupByLibrary.simpleMessage(
      "Integrace WIM do ISO",
    ),
    "disk_wim_not_found": MessageLookupByLibrary.simpleMessage(
      "Imagen no contrada",
    ),
    "doNotDisconnect": MessageLookupByLibrary.simpleMessage(
      "No desconecte la energía ni pension el medio de instalación",
    ),
    "downloadAndActivate": MessageLookupByLibrary.simpleMessage(
      "Ke stažení + aktivar",
    ),
    "downloadInstaller": MessageLookupByLibrary.simpleMessage(
      "Stáhnout instalační program (.exe)",
    ),
    "downloadPortable": MessageLookupByLibrary.simpleMessage(
      "Stáhnout portable (.zip)",
    ),
    "drives": MessageLookupByLibrary.simpleMessage("Unidades"),
    "editionDetected": m12,
    "emptyFolder": MessageLookupByLibrary.simpleMessage(
      "Esta carpeta está vacía",
    ),
    "errorGeneric": m13,
    "file_explorer_default_title": MessageLookupByLibrary.simpleMessage(
      "Vyberte obrázek instalace systému Windows",
    ),
    "file_explorer_drives_header": MessageLookupByLibrary.simpleMessage(
      "UNIDADES",
    ),
    "file_explorer_empty_folder": MessageLookupByLibrary.simpleMessage(
      "Esta carpeta está vacía",
    ),
    "file_explorer_filter_hint": MessageLookupByLibrary.simpleMessage(
      "Filtrační…",
    ),
    "file_explorer_go_up_tooltip": MessageLookupByLibrary.simpleMessage(
      "Subir un nivel",
    ),
    "file_explorer_invalid_path_error": m14,
    "file_explorer_read_error": m15,
    "file_explorer_select_file_hint": MessageLookupByLibrary.simpleMessage(
      "Seleccione un archivo .wim o .swm",
    ),
    "file_explorer_selected_file": m16,
    "filter": MessageLookupByLibrary.simpleMessage("Filtrační…"),
    "formatGpt": MessageLookupByLibrary.simpleMessage(
      "Formát GPT (doporučeno)",
    ),
    "formatGptDescription": MessageLookupByLibrary.simpleMessage(
      "Limpia el disco a crea diseño UEFI\nEFI (S:) + Windows (W:)",
    ),
    "formatMbr": MessageLookupByLibrary.simpleMessage(
      "Formatear MBR (BIOS heredado)",
    ),
    "formatMbrDescription": MessageLookupByLibrary.simpleMessage(
      "Limpia el disco a crea diseño heredado\nSolo Windows (C:)",
    ),
    "formatWarning": MessageLookupByLibrary.simpleMessage(
      "El disco seleccionado se formateará por completo. Se perderán todos los datos.",
    ),
    "generateIso": MessageLookupByLibrary.simpleMessage("Obecné ISO"),
    "getInstallOnlyIso": MessageLookupByLibrary.simpleMessage(
      "Obtener ISO pro instalación solamente",
    ),
    "goUpOneLevel": MessageLookupByLibrary.simpleMessage("Subir un nivel"),
    "imageDetected": MessageLookupByLibrary.simpleMessage("Obrazová detekce"),
    "imageFound": MessageLookupByLibrary.simpleMessage("Imagen encontrada"),
    "imageNotFound": MessageLookupByLibrary.simpleMessage("Imagen no contrada"),
    "imageSearching": MessageLookupByLibrary.simpleMessage(
      "Obrázek Buscando...",
    ),
    "installAll": MessageLookupByLibrary.simpleMessage("Instalovat úkol"),
    "installOffice": MessageLookupByLibrary.simpleMessage(
      "Instalační kancelář",
    ),
    "installationProgress": MessageLookupByLibrary.simpleMessage(
      "Průběh instalace",
    ),
    "invalidPath": m17,
    "isoDescription": MessageLookupByLibrary.simpleMessage(
      "Získání základny ISO pro výběr WIM v systému Windows, který je automatickým systémem ISO, který je součástí obrazu systému Windows.",
    ),
    "iso_bridge_clients_count": m18,
    "iso_bridge_desc": MessageLookupByLibrary.simpleMessage(
      "Připravte se na WIM tak, abyste předali přímou cestu pro klienty Requiem de la misma red. Klienti nejsou chráněni před instalací WIM.",
    ),
    "iso_bridge_generic_error": m19,
    "iso_bridge_list_interfaces_error": m20,
    "iso_bridge_save_simple_iso_dialog": MessageLookupByLibrary.simpleMessage(
      "Guardar ISO simple de Requiem",
    ),
    "iso_bridge_save_wim_iso_dialog": MessageLookupByLibrary.simpleMessage(
      "Strážce ISO de Requiem s WIM",
    ),
    "iso_bridge_select_wim_dialog": MessageLookupByLibrary.simpleMessage(
      "Vyberte obrázek WIM systému Windows",
    ),
    "iso_bridge_simple_iso_filename": MessageLookupByLibrary.simpleMessage(
      "Requiem-Installer-Simple.iso",
    ),
    "iso_bridge_start_validation_error": MessageLookupByLibrary.simpleMessage(
      "Vyberte WIM a rozhraní IPv4.",
    ),
    "iso_bridge_wim_selected_log": m21,
    "iso_panel_button_generate_iso": MessageLookupByLibrary.simpleMessage(
      "GENERÁRNÍ ISO",
    ),
    "iso_panel_button_select_wim": MessageLookupByLibrary.simpleMessage(
      "SELECCIONAR WIM",
    ),
    "iso_panel_button_simple_iso": MessageLookupByLibrary.simpleMessage(
      "OBTENER ISO PARA INSTALACIÓN SOLAMENTE",
    ),
    "iso_panel_desc_media": MessageLookupByLibrary.simpleMessage(
      "Získání základny ISO pro výběr WIM v systému Windows, který je automatickým systémem ISO, který je součástí obrazu systému Windows.",
    ),
    "iso_panel_title_bridge": MessageLookupByLibrary.simpleMessage(
      "Puente IPv4 instalace",
    ),
    "iso_panel_title_media": MessageLookupByLibrary.simpleMessage(
      "Medio de instalace",
    ),
    "kmsError": m22,
    "kmsHostEmpty": MessageLookupByLibrary.simpleMessage(
      "Chyba: el host KMS está vacío.",
    ),
    "kmsServer": MessageLookupByLibrary.simpleMessage("Servider KMS"),
    "kmsTask160Days": MessageLookupByLibrary.simpleMessage("Tarea 160 días"),
    "kmsVolumeActivation": MessageLookupByLibrary.simpleMessage(
      "Aktivace objemu (KMS)",
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
          "Windows 10/11 Pro pro pracovní stanice",
        ),
    "kms_product_windows_10_11_pro_n": MessageLookupByLibrary.simpleMessage(
      "Windows 10/11 Pro N",
    ),
    "kms_product_windows_10_11_pro_workstations":
        MessageLookupByLibrary.simpleMessage(
          "Pracovní stanice Windows 10/11 Pro",
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
        MessageLookupByLibrary.simpleMessage("Windows Server 2019 Datacenter"),
    "kms_product_windows_server_2019_standard":
        MessageLookupByLibrary.simpleMessage("Windows Server 2019 Standard"),
    "kms_product_windows_server_2022_datacenter":
        MessageLookupByLibrary.simpleMessage("Windows Server 2022 Datacenter"),
    "kms_product_windows_server_2022_standard":
        MessageLookupByLibrary.simpleMessage("Windows Server 2022 Standard"),
    "kms_product_windows_server_2025_datacenter":
        MessageLookupByLibrary.simpleMessage("Windows Server 2025 Datacenter"),
    "kms_product_windows_server_2025_standard":
        MessageLookupByLibrary.simpleMessage("Windows Server 2025 Standard"),
    "kms_product_windows_subsystem_for_linux":
        MessageLookupByLibrary.simpleMessage("Subsystém Windows pro Linux"),
    "kms_product_windows_terminal": MessageLookupByLibrary.simpleMessage(
      "Terminál Windows",
    ),
    "landingDescription": MessageLookupByLibrary.simpleMessage(
      "Instalace Windows s vyšší přesností pro vyšší verzi. Experimente un despliegue rápido con orquestación directa de DISM y optimalización automatizada del sistema.",
    ),
    "landing_badge_author": MessageLookupByLibrary.simpleMessage(
      "DISEÑADO POR JOSS",
    ),
    "landing_badge_secure_boot": MessageLookupByLibrary.simpleMessage(
      "KOMPATIBILNÍ ZABEZPEČENÁ BOTA",
    ),
    "landing_badge_version": MessageLookupByLibrary.simpleMessage(
      "STABILNÍ VERZE",
    ),
    "landing_button_logs": MessageLookupByLibrary.simpleMessage(
      "LOGS DEL SISTEMA",
    ),
    "landing_button_start": MessageLookupByLibrary.simpleMessage("EMPEZAR"),
    "landing_description_part1": MessageLookupByLibrary.simpleMessage(
      "Instalace Windows s vyšší přesností pro vyšší verzi.",
    ),
    "landing_description_part2": MessageLookupByLibrary.simpleMessage(
      "Experimente un despliegue rápido con orquestación directa de DISM y optimalización automatizada del sistema.",
    ),
    "landing_subtitle": MessageLookupByLibrary.simpleMessage(
      "DESPLIEGUE DE SO DE PRÓXIMA GENERACIÓN",
    ),
    "landing_title_installer": MessageLookupByLibrary.simpleMessage(
      "VYŽÁDEJTE INSTALATORA",
    ),
    "landing_title_tools": MessageLookupByLibrary.simpleMessage(
      "VYŽADOVAT NÁSTROJE",
    ),
    "licenseActivation": MessageLookupByLibrary.simpleMessage(
      "Aktivace licencí",
    ),
    "logsCopied": MessageLookupByLibrary.simpleMessage(
      "Záznamy kopií al portapapeles.",
    ),
    "mandatoryUpdate": MessageLookupByLibrary.simpleMessage(
      "Esta updatedización es obligatoria y no puede omitirse.",
    ),
    "manualWimHint": MessageLookupByLibrary.simpleMessage(
      "Použijte \"Buscar\" pro lokalizaci a archivaci WIM manuálu.",
    ),
    "mediaInstallation": MessageLookupByLibrary.simpleMessage(
      "Medio de instalace",
    ),
    "networkBridge": MessageLookupByLibrary.simpleMessage(
      "Puente IPv4 instalace",
    ),
    "networkInterface": MessageLookupByLibrary.simpleMessage(
      "Rozhraní Wi-Fi/LAN IPv4",
    ),
    "nextGenerationDeployment": MessageLookupByLibrary.simpleMessage(
      "Despliegue de SO de próxima generaceón",
    ),
    "noBridgeFound": MessageLookupByLibrary.simpleMessage(
      "No se encontró ningún puente. Pruebe con la IP manuál.",
    ),
    "noFormatWarning": MessageLookupByLibrary.simpleMessage(
      "Windows se desplegará en W:\\ sin formatear.",
    ),
    "noImageDetected": MessageLookupByLibrary.simpleMessage(
      "Nebyl nalezen žádný obrázek",
    ),
    "noKmsProducts": MessageLookupByLibrary.simpleMessage(
      "Žádné produkty sena KMS seleccionados.",
    ),
    "noPhysicalDisks": MessageLookupByLibrary.simpleMessage(
      "No se detectaron discos fisicos",
    ),
    "noProgramsSelected": MessageLookupByLibrary.simpleMessage(
      "Žádné seno programy jako seleccionados.",
    ),
    "noWifiNetworks": MessageLookupByLibrary.simpleMessage(
      "Žádné protikladné možnosti Wi-Fi.",
    ),
    "noWingetPackages": MessageLookupByLibrary.simpleMessage(
      "No se detectaron paquetes conocidos con winget.",
    ),
    "officeInstallDescription": MessageLookupByLibrary.simpleMessage(
      "Despliega Microsoft Office LTSC nebo 365 výrobní automatizace pomocí ODT.",
    ),
    "officeInstaller": MessageLookupByLibrary.simpleMessage(
      "Instalatér Office",
    ),
    "officeRenewalStatus": m23,
    "officeVersion": MessageLookupByLibrary.simpleMessage("Verze Office"),
    "office_odt_kms_badge": MessageLookupByLibrary.simpleMessage("ODT + KMS"),
    "office_odt_panel_title": MessageLookupByLibrary.simpleMessage(
      "Nástroj Office Deployment Tool",
    ),
    "office_pkg_desc_2019": MessageLookupByLibrary.simpleMessage(
      "Klikni a spusť objemový kanál PerpetualVL2019",
    ),
    "office_pkg_desc_2021": MessageLookupByLibrary.simpleMessage(
      "Klikni a spusť objemový kanál PerpetualVL2021",
    ),
    "office_pkg_desc_2024": MessageLookupByLibrary.simpleMessage(
      "Klikni a spusť objemový kanál PerpetualVL2024",
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
      "Esta función solo está disponible en Windows.",
    ),
    "packageStack": MessageLookupByLibrary.simpleMessage(
      "Stack de programas (Winget)",
    ),
    "packagesDetected": m24,
    "partitionMode": MessageLookupByLibrary.simpleMessage("Modo de partición"),
    "pkg_cat_apache_php_mysql": MessageLookupByLibrary.simpleMessage(
      "Apache PHP MySQL",
    ),
    "pkg_cat_bi_desktop": MessageLookupByLibrary.simpleMessage("BI Desktop"),
    "pkg_cat_cliente_api": MessageLookupByLibrary.simpleMessage(
      "Klientské rozhraní API",
    ),
    "pkg_cat_cliente_db": MessageLookupByLibrary.simpleMessage("Klientská DB"),
    "pkg_cat_compiladores_c": MessageLookupByLibrary.simpleMessage(
      "Kompilátory C++",
    ),
    "pkg_cat_compresor": MessageLookupByLibrary.simpleMessage("Kompresor"),
    "pkg_cat_comunicacion": MessageLookupByLibrary.simpleMessage("Komunikace"),
    "pkg_cat_control_de_versiones": MessageLookupByLibrary.simpleMessage(
      "Kontrola verzí",
    ),
    "pkg_cat_desktop": MessageLookupByLibrary.simpleMessage("Desktop"),
    "pkg_cat_diagramas": MessageLookupByLibrary.simpleMessage("Diagramy"),
    "pkg_cat_distro_wsl": MessageLookupByLibrary.simpleMessage("Distro WSL"),
    "pkg_cat_editor": MessageLookupByLibrary.simpleMessage("redaktor"),
    "pkg_cat_golang": MessageLookupByLibrary.simpleMessage("Golang"),
    "pkg_cat_gpu_compute": MessageLookupByLibrary.simpleMessage("výpočet GPU"),
    "pkg_cat_grabacion": MessageLookupByLibrary.simpleMessage("Grabacion"),
    "pkg_cat_ide_ai": MessageLookupByLibrary.simpleMessage("IDE AI"),
    "pkg_cat_ide_android": MessageLookupByLibrary.simpleMessage("IDE Android"),
    "pkg_cat_ide_completo": MessageLookupByLibrary.simpleMessage(
      "IDE kompletní",
    ),
    "pkg_cat_instaladores": MessageLookupByLibrary.simpleMessage(
      "Instaladores",
    ),
    "pkg_cat_javascript": MessageLookupByLibrary.simpleMessage("JavaScript"),
    "pkg_cat_limpieza": MessageLookupByLibrary.simpleMessage("Limpieza"),
    "pkg_cat_modelos_locales": MessageLookupByLibrary.simpleMessage(
      "Modelová národní prostředí",
    ),
    "pkg_cat_navegador": MessageLookupByLibrary.simpleMessage("Navegador"),
    "pkg_cat_python_3": MessageLookupByLibrary.simpleMessage("Python 3"),
    "pkg_cat_runtime_c": MessageLookupByLibrary.simpleMessage("Runtime C++"),
    "pkg_cat_runtime_escritorio": MessageLookupByLibrary.simpleMessage(
      "Runtime escritorio",
    ),
    "pkg_cat_runtime_juegos": MessageLookupByLibrary.simpleMessage(
      "Runtime juegos",
    ),
    "pkg_cat_runtime_php": MessageLookupByLibrary.simpleMessage("Runtime PHP"),
    "pkg_cat_rustup": MessageLookupByLibrary.simpleMessage("Rustup"),
    "pkg_cat_sdk__net": MessageLookupByLibrary.simpleMessage("SDK .NET"),
    "pkg_cat_servidor_db": MessageLookupByLibrary.simpleMessage("Servid DB"),
    "pkg_cat_ssh_clasico": MessageLookupByLibrary.simpleMessage("Klasika SSH"),
    "pkg_cat_ssh_moderno": MessageLookupByLibrary.simpleMessage("Moderní SSH"),
    "pkg_cat_subsistema_linux": MessageLookupByLibrary.simpleMessage(
      "Subsystém Linux",
    ),
    "pkg_cat_temurin_21": MessageLookupByLibrary.simpleMessage("Temurin 21"),
    "pkg_cat_terminal_moderno": MessageLookupByLibrary.simpleMessage(
      "Terminál moderno",
    ),
    "prepareBridge": MessageLookupByLibrary.simpleMessage(
      "Připravte se na začátek",
    ),
    "progress_button_reboot": MessageLookupByLibrary.simpleMessage(
      "REINICIÁRNÍ SYSTÉM",
    ),
    "progress_footer_warning": MessageLookupByLibrary.simpleMessage(
      "NO DESCONECTE LA ENERGÍA NI RETIRE EL MEDIO DE INSTALACIÓN",
    ),
    "progress_header_badge": MessageLookupByLibrary.simpleMessage(
      "DESPLIEGUE EN CURSO",
    ),
    "provideWindowsImage": MessageLookupByLibrary.simpleMessage(
      "Proporcione la imagen de instalación Windows (install.wim nebo install.swm)\nod una unidad USB nebo coalquier medium montado.",
    ),
    "receiveInstallation": MessageLookupByLibrary.simpleMessage(
      "O reciba la instalación preparada desde Requiem para Windows",
    ),
    "renewalActive": MessageLookupByLibrary.simpleMessage("Aktivní"),
    "renewalDisabled": MessageLookupByLibrary.simpleMessage("Deaktivace"),
    "searchingImage": MessageLookupByLibrary.simpleMessage("Obrázek Buscando…"),
    "secureBootCompatible": MessageLookupByLibrary.simpleMessage(
      "Kompatibilní s Secure Boot",
    ),
    "selectDestinationDisk": MessageLookupByLibrary.simpleMessage(
      "Výběrová diskotéka de destino",
    ),
    "selectFileHint": MessageLookupByLibrary.simpleMessage(
      "Seleccione un archivo .wim o .swm",
    ),
    "selectWim": MessageLookupByLibrary.simpleMessage("Výběr WIM"),
    "selectWimFirst": MessageLookupByLibrary.simpleMessage(
      "Vyberte WIM a rozhraní IPv4.",
    ),
    "selectWindowsImage": MessageLookupByLibrary.simpleMessage(
      "Výběr obrázku systému Windows",
    ),
    "selectWindowsImageFull": MessageLookupByLibrary.simpleMessage(
      "Výběr obrázku instalace systému Windows",
    ),
    "selectedFile": m25,
    "stableVersion": MessageLookupByLibrary.simpleMessage(
      "Verze etable v1.0.0",
    ),
    "start": MessageLookupByLibrary.simpleMessage("Empezar"),
    "startInstallation": MessageLookupByLibrary.simpleMessage(
      "Úvodní instalace",
    ),
    "stopBridge": MessageLookupByLibrary.simpleMessage("Detener puente"),
    "systemConsole": MessageLookupByLibrary.simpleMessage(
      "Consola del systema",
    ),
    "systemDisk": MessageLookupByLibrary.simpleMessage("Systém"),
    "systemLogs": MessageLookupByLibrary.simpleMessage("Logs del systema"),
    "tools_badge_iso_compatibility": MessageLookupByLibrary.simpleMessage(
      "BIOS + ochrana UEFI",
    ),
    "tools_badge_kms_pending": MessageLookupByLibrary.simpleMessage(
      "KMS pendiente",
    ),
    "tools_badge_package_count": m26,
    "tools_button_activate_kms": MessageLookupByLibrary.simpleMessage(
      "ACTIVAR KMS",
    ),
    "tools_button_install_all_packages": MessageLookupByLibrary.simpleMessage(
      "INSTALOVAT TODO",
    ),
    "tools_button_install_office": MessageLookupByLibrary.simpleMessage(
      "INSTALAČNÍ KANCELÁŘ",
    ),
    "tools_header_title": MessageLookupByLibrary.simpleMessage(
      "VYŽADOVAT NÁSTROJE PRO MIGRACI",
    ),
    "tools_kms_checking_connectivity": m27,
    "tools_kms_empty_host_error": MessageLookupByLibrary.simpleMessage(
      "CHYBA: el host KMS esta vacio.",
    ),
    "tools_kms_error_log": m28,
    "tools_kms_no_products_selected": MessageLookupByLibrary.simpleMessage(
      "Žádné produkty sena KMS seleccionados.",
    ),
    "tools_log_format": m29,
    "tools_logs_copied_snackbar": MessageLookupByLibrary.simpleMessage(
      "Záznamy kopií al portapapeles.",
    ),
    "tools_packages_detected_count": m30,
    "tools_packages_none_detected": MessageLookupByLibrary.simpleMessage(
      "No se detectaron paquetes conocidos con winget.",
    ),
    "tools_packages_none_selected": MessageLookupByLibrary.simpleMessage(
      "Žádné seno programy jako seleccionados.",
    ),
    "tools_section_activation_desc": MessageLookupByLibrary.simpleMessage(
      "Konfigurace místního nebo vzdáleného serveru KMS pro Windows a Office.",
    ),
    "tools_section_activation_title": MessageLookupByLibrary.simpleMessage(
      "Activación de Licencias",
    ),
    "tools_section_iso_desc": MessageLookupByLibrary.simpleMessage(
      "Cree medios autonomos con un WIM integrado nebo distribuy a instalaceón directamente por IPv4.",
    ),
    "tools_section_iso_title": MessageLookupByLibrary.simpleMessage(
      "ISO y despliegue por red",
    ),
    "tools_section_office_desc": MessageLookupByLibrary.simpleMessage(
      "Despliega Microsoft Office LTSC nebo 365 výrobní automatizace pomocí ODT.",
    ),
    "tools_section_office_title": MessageLookupByLibrary.simpleMessage(
      "Instalatér Office",
    ),
    "tools_section_packages_desc": MessageLookupByLibrary.simpleMessage(
      "Nainstalujte a aktualizujte herramentas desarrollo esenciales pro Windows mediante winget.",
    ),
    "tools_section_packages_title": MessageLookupByLibrary.simpleMessage(
      "Stack de Aplicaciones",
    ),
    "tools_sidebar_app_name": MessageLookupByLibrary.simpleMessage("REQUIEM"),
    "tools_sidebar_mode_badge": MessageLookupByLibrary.simpleMessage(
      "Režim místních nástrojů",
    ),
    "tools_sidebar_tab_iso": MessageLookupByLibrary.simpleMessage(
      "ISO a Puente",
    ),
    "tools_sidebar_tab_kms": MessageLookupByLibrary.simpleMessage(
      "Aktivace KMS",
    ),
    "tools_sidebar_tab_office": MessageLookupByLibrary.simpleMessage(
      "Kancelář instalace",
    ),
    "tools_sidebar_tab_packages": MessageLookupByLibrary.simpleMessage(
      "Zásobník programů",
    ),
    "unknown": MessageLookupByLibrary.simpleMessage("Desconocido"),
    "updateDescription": MessageLookupByLibrary.simpleMessage(
      "Pokračovat v používání nástrojů Requiem je nutné aktualizovat a aktualizovat verzi, která je k dispozici.",
    ),
    "updateRequired": MessageLookupByLibrary.simpleMessage(
      "Aktualizace požadavku",
    ),
    "useExistingPartitions": MessageLookupByLibrary.simpleMessage(
      "Usar particiones existentes",
    ),
    "useExistingPartitionsDescription": MessageLookupByLibrary.simpleMessage(
      "Sin formatear — despliega en W: tal cual\nPoužité gesto las particiones manualmente",
    ),
    "waitingAction": MessageLookupByLibrary.simpleMessage(
      "Esperando una acción...",
    ),
    "waitingForWim": MessageLookupByLibrary.simpleMessage(
      "Esperando la detección de install.wim...",
    ),
    "wifiConnectError": m31,
    "wifiConnected": m32,
    "wifiPassword": MessageLookupByLibrary.simpleMessage("Kontraseña Wi-Fi"),
    "wifi_connect_error": m33,
    "wifi_connected_log": m34,
    "wifi_connected_status": m35,
    "wifi_dialog_title": MessageLookupByLibrary.simpleMessage(
      "Připojte se k Wi-Fi",
    ),
    "wifi_item_signal_security": m36,
    "wifi_none_found": MessageLookupByLibrary.simpleMessage(
      "Žádné protikladné možnosti Wi-Fi.",
    ),
    "wifi_password_hint": MessageLookupByLibrary.simpleMessage(
      "Kontraseña Wi-Fi",
    ),
    "wifi_scanning": MessageLookupByLibrary.simpleMessage(
      "Prohledávání dostupných sítí Wi-Fi...",
    ),
    "wimIntegrated": MessageLookupByLibrary.simpleMessage(
      "Integrace WIM do ISO",
    ),
    "wim_bridge_connection_error": m37,
    "wim_bridge_ip_dialog_title": MessageLookupByLibrary.simpleMessage(
      "IP del puente Requiem",
    ),
    "wim_bridge_ip_placeholder": MessageLookupByLibrary.simpleMessage(
      "192.168.1.20",
    ),
    "wim_bridge_not_found": MessageLookupByLibrary.simpleMessage(
      "No se encontró ningún puente. Pruebe con la IP manuál.",
    ),
    "wim_bridge_search_error": m38,
    "wim_bridge_searching": MessageLookupByLibrary.simpleMessage(
      "Vyhledávání mostů Requiem v místní síti IPv4...",
    ),
    "wim_bridge_section_header": MessageLookupByLibrary.simpleMessage(
      "O reciba la instalación preparada desde Requiem para Windows",
    ),
    "wim_button_change_file": MessageLookupByLibrary.simpleMessage(
      "CAMBIAR ARCHIVO",
    ),
    "wim_button_connect_wifi": MessageLookupByLibrary.simpleMessage(
      "CONECTAR WI-FI",
    ),
    "wim_button_manual_ip": MessageLookupByLibrary.simpleMessage(
      "USAR IP MANUÁL",
    ),
    "wim_button_rescan": MessageLookupByLibrary.simpleMessage(
      "Escanear unidades de nuevo",
    ),
    "wim_button_search_bridge": MessageLookupByLibrary.simpleMessage(
      "BUSCAR PUENTE",
    ),
    "wim_manual_search_hint": MessageLookupByLibrary.simpleMessage(
      "Použijte \"Buscar\" pro lokalizaci a archivaci WIM manuálu.",
    ),
    "wim_picker_description": MessageLookupByLibrary.simpleMessage(
      "Proporcione la imagen de instalación Windows (install.wim or install.swm)\\n",
    ),
    "wim_picker_title": MessageLookupByLibrary.simpleMessage(
      "Výběr obrázku systému Windows",
    ),
    "wim_status_found": MessageLookupByLibrary.simpleMessage(
      "Imagen encontrada",
    ),
    "wim_status_not_found": MessageLookupByLibrary.simpleMessage(
      "Nebyl nalezen žádný obrázek",
    ),
    "wim_status_searching": MessageLookupByLibrary.simpleMessage(
      "Obrázek Buscando…",
    ),
    "wim_status_searching_alt": MessageLookupByLibrary.simpleMessage(
      "Obrázek Buscando...",
    ),
    "wingetUnavailable": MessageLookupByLibrary.simpleMessage(
      "winget no está instalado o no está en PATH.",
    ),
  };
}
