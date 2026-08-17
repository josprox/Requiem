// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a fi locale. All the
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
  String get localeName => 'fi';

  static String m0(count) => "${count}-ohjelmat";

  static String m1(version) => "Saatavilla oleva versio: ${version}";

  static String m2(firmware) => "Todellinen järjestys: ${firmware}";

  static String m3(error) => "Ei pudo conectaria: ${error}";

  static String m4(error) => "No se pudo buscar el puente: ${error}";

  static String m5(host) => "Comprobando conectividad con ${host}:1688...";

  static String m6(mode) => "Modo-yhteensopiva: ${mode}";

  static String m7(firmware) => "Todellinen järjestys: ${firmware}";

  static String m8(diskNumber, mediaType, busType) =>
      "LEVY ${diskNumber} · ${mediaType} · ${busType}";

  static String m9(recommended) => "Modo-yhteensopiva: ${recommended}";

  static String m10(sizeGB) => "${sizeGB} Gt";

  static String m11(imageName) =>
      "Puente: \${controller.bridgeAnnouncement?.imageName ??";

  static String m12(name, edition) => "Havaintoversio: ${name} (${edition})";

  static String m13(error) => "Virhetilanne: ${error}";

  static String m14(val) => "Ruta inválida: ${val}";

  static String m15(error) =>
      "No se pudo leer el contenido del directorio.\\n${error}";

  static String m16(path) => "Valitse: ${path}";

  static String m17(path) => "Ruta inválida: ${path}";

  static String m18(clients) => "${clients} conexiones";

  static String m19(error) => "VIRHE: ${error}";

  static String m20(error) =>
      "Ei pudieron enumerar las rajapintoja IPv4: ${error}";

  static String m21(path) => "WIM-valinta: ${path}";

  static String m22(error) => "Virhe KMS: ${error}";

  static String m23(product, channel, edition, status) =>
      "${product} / ${channel} / ${edition} bittiä. La renovación queda ${status}.";

  static String m24(count) => "Paquetes detectados: ${count}.";

  static String m25(file) => "Valitse: ${file}";

  static String m26(count) => "${count}-ohjelmat";

  static String m27(host) => "Comprobando conectividad con ${host}:1688...";

  static String m28(error) => "VIRHE KMS: ${error}";

  static String m29(time, message) => "[${time}] ${message}";

  static String m30(count) => "Paquetes detectados: ${count}.";

  static String m31(error) => "Ei yhteyttä Wi-Fi-verkkoon: ${error}";

  static String m32(network) => "Yhdistä ${network}.";

  static String m33(error) => "Ei yhteyttä Wi-Fi-verkkoon: ${error}";

  static String m34(ssid, result) =>
      "Wi-Fi yhdistetty verkkoon ${ssid}. ${result}";

  static String m35(ssid) => "Yhdistä ${ssid}.";

  static String m36(signal, security) => "${signal}% · ${security}";

  static String m37(error) => "Ei pudo conectaria: ${error}";

  static String m38(error) => "No se pudo buscar el puente: ${error}";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
    "actionCancel": MessageLookupByLibrary.simpleMessage("Peruuta"),
    "actionChange": MessageLookupByLibrary.simpleMessage("Cambiar"),
    "actionConfirm": MessageLookupByLibrary.simpleMessage("Vahvistaja"),
    "actionConnect": MessageLookupByLibrary.simpleMessage("Conectar"),
    "actionContinue": MessageLookupByLibrary.simpleMessage("Jatkuva"),
    "actionInstall": MessageLookupByLibrary.simpleMessage("Asenna"),
    "actionRefresh": MessageLookupByLibrary.simpleMessage("Actualizar"),
    "actionRestartSystem": MessageLookupByLibrary.simpleMessage(
      "Reiniciar järjestelmä",
    ),
    "actionScanAgain": MessageLookupByLibrary.simpleMessage(
      "Escanear unidades de nuevo",
    ),
    "actionSearch": MessageLookupByLibrary.simpleMessage("Buscar"),
    "actionSelect": MessageLookupByLibrary.simpleMessage("Selectionar"),
    "activate": MessageLookupByLibrary.simpleMessage("Activar"),
    "activateKms": MessageLookupByLibrary.simpleMessage("Activar KMS"),
    "appTitleInstaller": MessageLookupByLibrary.simpleMessage(
      "Requiemin asennusohjelma",
    ),
    "appTitleTools": MessageLookupByLibrary.simpleMessage("Requiem-työkalut"),
    "app_title_installer": MessageLookupByLibrary.simpleMessage(
      "Requiemin asennusohjelma",
    ),
    "app_title_tools": MessageLookupByLibrary.simpleMessage("Requiem-työkalut"),
    "applicationStack": MessageLookupByLibrary.simpleMessage(
      "Stack de aplicaciones",
    ),
    "applicationStackDescription": MessageLookupByLibrary.simpleMessage(
      "Asenna y aktualiza herramientas de desarrollo esenciales para Windows mediante winget.",
    ),
    "applicationsCount": m0,
    "automaticOffice": MessageLookupByLibrary.simpleMessage(
      "Toimistoautomaatio",
    ),
    "automaticOfficeDescription": MessageLookupByLibrary.simpleMessage(
      "Usa la GVLK de volumen ya ladada",
    ),
    "automaticRenewal": MessageLookupByLibrary.simpleMessage(
      "Renovación automatica",
    ),
    "automaticWindows": MessageLookupByLibrary.simpleMessage(
      "Windows automaattinen",
    ),
    "automaticWindowsDescription": MessageLookupByLibrary.simpleMessage(
      "Detecta edición ja GVLK -yhteensopiva",
    ),
    "availableVersion": m1,
    "bootCurrent": m2,
    "bridgeConnectError": m3,
    "bridgeDescription": MessageLookupByLibrary.simpleMessage(
      "Prepara el WIM una sola vez y lo transfere directamente a los clientes Requiem de la misma red. Lost asiakkaat eivät voi suojata WIM-asennusta.",
    ),
    "bridgeIp": MessageLookupByLibrary.simpleMessage("IP del puente Requiem"),
    "bridgePorts": MessageLookupByLibrary.simpleMessage(
      "Puerto HTTP 40124 · descubrimiento UDP 40123. Si Windows Defender on ennakkoon, sallii pääsyn ja yksityisyyden.",
    ),
    "bridgeSearchError": m4,
    "checkingKms": m5,
    "clearLogs": MessageLookupByLibrary.simpleMessage("Limpiar lokit"),
    "common_cancel": MessageLookupByLibrary.simpleMessage("PERUUTA"),
    "common_change": MessageLookupByLibrary.simpleMessage("CAMBIAR"),
    "common_connect": MessageLookupByLibrary.simpleMessage("CONECTAR"),
    "common_continue": MessageLookupByLibrary.simpleMessage("JATKUVA"),
    "common_label_disk": MessageLookupByLibrary.simpleMessage("LEVY"),
    "common_label_image": MessageLookupByLibrary.simpleMessage("KUVA"),
    "common_label_mode": MessageLookupByLibrary.simpleMessage("MODE"),
    "common_refresh": MessageLookupByLibrary.simpleMessage("ACTUALISAR"),
    "common_search": MessageLookupByLibrary.simpleMessage("BUSCAR"),
    "common_select": MessageLookupByLibrary.simpleMessage("VALITTU"),
    "compatibleMode": m6,
    "confirmDataDestruction": MessageLookupByLibrary.simpleMessage(
      "Confirmar destrucción de datos",
    ),
    "confirmInstallation": MessageLookupByLibrary.simpleMessage(
      "Vahvista asennus",
    ),
    "connectInstallerWifi": MessageLookupByLibrary.simpleMessage(
      "Yhdistä Wi-Fi-yhteys",
    ),
    "connectWifi": MessageLookupByLibrary.simpleMessage("Conectar Wi-Fi"),
    "console_title": MessageLookupByLibrary.simpleMessage(
      "Consola del Sistema",
    ),
    "console_tooltip_clear": MessageLookupByLibrary.simpleMessage(
      "Limpiar lokit",
    ),
    "console_tooltip_copy": MessageLookupByLibrary.simpleMessage(
      "Copiar lokit",
    ),
    "console_waiting_action": MessageLookupByLibrary.simpleMessage(
      "Esperando una acción...",
    ),
    "copyLogs": MessageLookupByLibrary.simpleMessage("Copiar lokit"),
    "deploymentInProgress": MessageLookupByLibrary.simpleMessage(
      "Despiegue en curso",
    ),
    "designedBy": MessageLookupByLibrary.simpleMessage("Diseñado by Joss"),
    "destinationDiskDescription": MessageLookupByLibrary.simpleMessage(
      "Elija la unidad física donde se asenna Windows.",
    ),
    "detect": MessageLookupByLibrary.simpleMessage("Detectar"),
    "diskManagement": MessageLookupByLibrary.simpleMessage(
      "Administración de disco",
    ),
    "disk_badge_system": MessageLookupByLibrary.simpleMessage("SISTEMA"),
    "disk_boot_firmware_label": m7,
    "disk_button_confirm_and_install": MessageLookupByLibrary.simpleMessage(
      "VAHVISTA E ASENNUS",
    ),
    "disk_dialog_confirm_destruction_title":
        MessageLookupByLibrary.simpleMessage("VAHVISTA DESTRUCCIÓN DE DATOS"),
    "disk_dialog_confirm_install_title": MessageLookupByLibrary.simpleMessage(
      "VAHVISTA ASENNUS",
    ),
    "disk_dialog_existing_notice": MessageLookupByLibrary.simpleMessage(
      "Windows se desplegará en W:\\\\ sin formatear.",
    ),
    "disk_dialog_format_warning": MessageLookupByLibrary.simpleMessage(
      "El disco seleccionado se formateará por completo. Se perderán todos los datos.",
    ),
    "disk_empty_list": MessageLookupByLibrary.simpleMessage(
      "Ei se detectaron discos físicos",
    ),
    "disk_item_header": m8,
    "disk_management_appbar_title": MessageLookupByLibrary.simpleMessage(
      "DISKOJEN HALLINNOINTI",
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
      "Elija la unidad física donde se asenna Windows.",
    ),
    "disk_selection_title": MessageLookupByLibrary.simpleMessage(
      "Valitse Disco de Destino",
    ),
    "disk_size_gb": m10,
    "disk_waiting_wim_hint": MessageLookupByLibrary.simpleMessage(
      "Esperando la detección de install.wim...",
    ),
    "disk_wim_bridge_source": m11,
    "disk_wim_detected": MessageLookupByLibrary.simpleMessage(
      "Kuvan havaitseminen",
    ),
    "disk_wim_integrated_source": MessageLookupByLibrary.simpleMessage(
      "WIM-integraatio ISO:lla",
    ),
    "disk_wim_not_found": MessageLookupByLibrary.simpleMessage(
      "Imagen no encontrada",
    ),
    "doNotDisconnect": MessageLookupByLibrary.simpleMessage(
      "No desconecte la energía ni retere el medio de instalación",
    ),
    "downloadAndActivate": MessageLookupByLibrary.simpleMessage(
      "Lataa + aktivointi",
    ),
    "downloadInstaller": MessageLookupByLibrary.simpleMessage(
      "Lataa asennusohjelma (.exe)",
    ),
    "downloadPortable": MessageLookupByLibrary.simpleMessage(
      "Lataa kannettava (.zip)",
    ),
    "drives": MessageLookupByLibrary.simpleMessage("Unidades"),
    "editionDetected": m12,
    "emptyFolder": MessageLookupByLibrary.simpleMessage(
      "Esta carpeta está vacía",
    ),
    "errorGeneric": m13,
    "file_explorer_default_title": MessageLookupByLibrary.simpleMessage(
      "Valitse Windows-asennuskuva",
    ),
    "file_explorer_drives_header": MessageLookupByLibrary.simpleMessage(
      "UNIDADES",
    ),
    "file_explorer_empty_folder": MessageLookupByLibrary.simpleMessage(
      "Esta carpeta está vacía",
    ),
    "file_explorer_filter_hint": MessageLookupByLibrary.simpleMessage(
      "Suodata…",
    ),
    "file_explorer_go_up_tooltip": MessageLookupByLibrary.simpleMessage(
      "Subir un nivel",
    ),
    "file_explorer_invalid_path_error": m14,
    "file_explorer_read_error": m15,
    "file_explorer_select_file_hint": MessageLookupByLibrary.simpleMessage(
      "Valitse arkisto .wim tai .swm",
    ),
    "file_explorer_selected_file": m16,
    "filter": MessageLookupByLibrary.simpleMessage("Suodata…"),
    "formatGpt": MessageLookupByLibrary.simpleMessage(
      "Formatear GPT (suositus)",
    ),
    "formatGptDescription": MessageLookupByLibrary.simpleMessage(
      "Limpia el disco ja luonut UEFI:n\nEFI (S:) + Windows (W:)",
    ),
    "formatMbr": MessageLookupByLibrary.simpleMessage(
      "Formatear MBR (BIOS heredado)",
    ),
    "formatMbrDescription": MessageLookupByLibrary.simpleMessage(
      "Limpia el disco y crea diseño heredado\nYksin Windows (C:)",
    ),
    "formatWarning": MessageLookupByLibrary.simpleMessage(
      "El disco seleccionado se formateará por completo. Se perderán todos los datos.",
    ),
    "generateIso": MessageLookupByLibrary.simpleMessage("Yleinen ISO"),
    "getInstallOnlyIso": MessageLookupByLibrary.simpleMessage(
      "Hanki ISO para instalación solamente",
    ),
    "goUpOneLevel": MessageLookupByLibrary.simpleMessage("Subir un nivel"),
    "imageDetected": MessageLookupByLibrary.simpleMessage(
      "Kuvan havaitseminen",
    ),
    "imageFound": MessageLookupByLibrary.simpleMessage("Imagen encontrada"),
    "imageNotFound": MessageLookupByLibrary.simpleMessage(
      "Imagen no encontrada",
    ),
    "imageSearching": MessageLookupByLibrary.simpleMessage("Buscando kuva..."),
    "installAll": MessageLookupByLibrary.simpleMessage("Asenna tehtävä"),
    "installOffice": MessageLookupByLibrary.simpleMessage("Asenna toimisto"),
    "installationProgress": MessageLookupByLibrary.simpleMessage(
      "Asennuksen edistyminen",
    ),
    "invalidPath": m17,
    "isoDescription": MessageLookupByLibrary.simpleMessage(
      "Hanki ISO-perusvalinta ja WIM al arrancar, o cree una ISO autónoma que ya incluya su imagen de Windows.",
    ),
    "iso_bridge_clients_count": m18,
    "iso_bridge_desc": MessageLookupByLibrary.simpleMessage(
      "Prepara el WIM una sola vez y lo transfere directamente a los clientes Requiem de la misma red. Lost asiakkaat eivät voi suojata WIM-asennusta.",
    ),
    "iso_bridge_generic_error": m19,
    "iso_bridge_list_interfaces_error": m20,
    "iso_bridge_save_simple_iso_dialog": MessageLookupByLibrary.simpleMessage(
      "Guardar ISO simple de Requiem",
    ),
    "iso_bridge_save_wim_iso_dialog": MessageLookupByLibrary.simpleMessage(
      "Guardar ISO de Requiem kanssa WIM",
    ),
    "iso_bridge_select_wim_dialog": MessageLookupByLibrary.simpleMessage(
      "Valitse WIM-kuva Windowsista",
    ),
    "iso_bridge_simple_iso_filename": MessageLookupByLibrary.simpleMessage(
      "Requiem-Installer-Simple.iso",
    ),
    "iso_bridge_start_validation_error": MessageLookupByLibrary.simpleMessage(
      "Valitse WIM ja IPv4-yhteysliittymä.",
    ),
    "iso_bridge_wim_selected_log": m21,
    "iso_panel_button_generate_iso": MessageLookupByLibrary.simpleMessage(
      "YLEINEN ISO",
    ),
    "iso_panel_button_select_wim": MessageLookupByLibrary.simpleMessage(
      "VALITKOINEN WIM",
    ),
    "iso_panel_button_simple_iso": MessageLookupByLibrary.simpleMessage(
      "OBTENER ISO PARA INSTALACIÓN SOLAMENTE",
    ),
    "iso_panel_desc_media": MessageLookupByLibrary.simpleMessage(
      "Hanki ISO-perusvalinta ja WIM al arrancar, o cree una ISO autónoma que ya incluya su imagen de Windows.",
    ),
    "iso_panel_title_bridge": MessageLookupByLibrary.simpleMessage(
      "Puente IPv4 asennus",
    ),
    "iso_panel_title_media": MessageLookupByLibrary.simpleMessage(
      "Medio de instalación",
    ),
    "kmsError": m22,
    "kmsHostEmpty": MessageLookupByLibrary.simpleMessage(
      "Virhe: el host KMS está vacío.",
    ),
    "kmsServer": MessageLookupByLibrary.simpleMessage("Palvelija KMS"),
    "kmsTask160Days": MessageLookupByLibrary.simpleMessage("Tarea 160 días"),
    "kmsVolumeActivation": MessageLookupByLibrary.simpleMessage(
      "Activación de volumen (KMS)",
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
        MessageLookupByLibrary.simpleMessage("Windows 10/11 Pro työasemille"),
    "kms_product_windows_10_11_pro_n": MessageLookupByLibrary.simpleMessage(
      "Windows 10/11 Pro N",
    ),
    "kms_product_windows_10_11_pro_workstations":
        MessageLookupByLibrary.simpleMessage("Windows 10/11 Pro -työasemat"),
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
        MessageLookupByLibrary.simpleMessage(
          "Windows-alijärjestelmä Linuxille",
        ),
    "kms_product_windows_terminal": MessageLookupByLibrary.simpleMessage(
      "Windows-pääte",
    ),
    "landingDescription": MessageLookupByLibrary.simpleMessage(
      "Instalador de Windows de alta precisión para entornos de alto rendimiento. Experimente un despliegue rápido con orquestación directa de DISM y Optimación automatizada del system.",
    ),
    "landing_badge_author": MessageLookupByLibrary.simpleMessage(
      "DISEÑADO POR JOSS",
    ),
    "landing_badge_secure_boot": MessageLookupByLibrary.simpleMessage(
      "YHTEENSOPIVA CON SECURE BOOT",
    ),
    "landing_badge_version": MessageLookupByLibrary.simpleMessage(
      "VERSIÓN ESTABLE",
    ),
    "landing_button_logs": MessageLookupByLibrary.simpleMessage(
      "LOKIT DEL SISTEMA",
    ),
    "landing_button_start": MessageLookupByLibrary.simpleMessage("EMPEZAR"),
    "landing_description_part1": MessageLookupByLibrary.simpleMessage(
      "Instalador de Windows de alta precisión para entornos de alto rendimiento.",
    ),
    "landing_description_part2": MessageLookupByLibrary.simpleMessage(
      "Experimente un despliegue rápido con orquestación directa de DISM y Optimación automatizada del system.",
    ),
    "landing_subtitle": MessageLookupByLibrary.simpleMessage(
      "DESPLIEGUE DE SO DE PRÓXIMA GENERACIÓN",
    ),
    "landing_title_installer": MessageLookupByLibrary.simpleMessage(
      "REQUIEM INSTALLER",
    ),
    "landing_title_tools": MessageLookupByLibrary.simpleMessage(
      "REQUIEM TOOLS",
    ),
    "licenseActivation": MessageLookupByLibrary.simpleMessage(
      "Activación de licencias",
    ),
    "logsCopied": MessageLookupByLibrary.simpleMessage(
      "Lokit copiados al porttapapeles.",
    ),
    "mandatoryUpdate": MessageLookupByLibrary.simpleMessage(
      "Esta aktualización es obligatoria y no puede omitirse.",
    ),
    "manualWimHint": MessageLookupByLibrary.simpleMessage(
      "Käytä \"Buscar\" paikallista WIM-käsikirjaa.",
    ),
    "mediaInstallation": MessageLookupByLibrary.simpleMessage(
      "Medio de instalación",
    ),
    "networkBridge": MessageLookupByLibrary.simpleMessage(
      "Puente IPv4 asennus",
    ),
    "networkInterface": MessageLookupByLibrary.simpleMessage(
      "Interfaz Wi-Fi/LAN IPv4",
    ),
    "nextGenerationDeployment": MessageLookupByLibrary.simpleMessage(
      "Despiegue de SO de próxima generación",
    ),
    "noBridgeFound": MessageLookupByLibrary.simpleMessage(
      "No se encontró ningún puente. Pruebe con la IP käsikirja.",
    ),
    "noFormatWarning": MessageLookupByLibrary.simpleMessage(
      "Windows se desplegará en W:\\ sin formatear.",
    ),
    "noImageDetected": MessageLookupByLibrary.simpleMessage(
      "No se detectó ninguna imagen",
    ),
    "noKmsProducts": MessageLookupByLibrary.simpleMessage(
      "Ei heinätuotteita KMS Selectionados.",
    ),
    "noPhysicalDisks": MessageLookupByLibrary.simpleMessage(
      "Ei se detectaron discos físicos",
    ),
    "noProgramsSelected": MessageLookupByLibrary.simpleMessage(
      "Ei heinää ohjelmat seleccionados.",
    ),
    "noWifiNetworks": MessageLookupByLibrary.simpleMessage(
      "No se encontraron redes Wi-Fi käytettävissä.",
    ),
    "noWingetPackages": MessageLookupByLibrary.simpleMessage(
      "No se detectaron paquetes conocidos con winget.",
    ),
    "officeInstallDescription": MessageLookupByLibrary.simpleMessage(
      "Poista Microsoft Office LTSC tai 365, joka on automatisoitu ODT:lle.",
    ),
    "officeInstaller": MessageLookupByLibrary.simpleMessage(
      "Toimiston asennus",
    ),
    "officeRenewalStatus": m23,
    "officeVersion": MessageLookupByLibrary.simpleMessage("Officen versio"),
    "office_odt_kms_badge": MessageLookupByLibrary.simpleMessage("ODT + KMS"),
    "office_odt_panel_title": MessageLookupByLibrary.simpleMessage(
      "Officen käyttöönottotyökalu",
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
      "Esta función soolo está disponible en Windows.",
    ),
    "packageStack": MessageLookupByLibrary.simpleMessage(
      "Stack de programs (Winget)",
    ),
    "packagesDetected": m24,
    "partitionMode": MessageLookupByLibrary.simpleMessage("Modo de partición"),
    "pkg_cat_apache_php_mysql": MessageLookupByLibrary.simpleMessage(
      "Apache PHP MySQL",
    ),
    "pkg_cat_bi_desktop": MessageLookupByLibrary.simpleMessage("BI Desktop"),
    "pkg_cat_cliente_api": MessageLookupByLibrary.simpleMessage(
      "Asiakassovellusliittymä",
    ),
    "pkg_cat_cliente_db": MessageLookupByLibrary.simpleMessage("Asiakas DB"),
    "pkg_cat_compiladores_c": MessageLookupByLibrary.simpleMessage(
      "Kääntää C++",
    ),
    "pkg_cat_compresor": MessageLookupByLibrary.simpleMessage("Kompressori"),
    "pkg_cat_comunicacion": MessageLookupByLibrary.simpleMessage(
      "Comunicacion",
    ),
    "pkg_cat_control_de_versiones": MessageLookupByLibrary.simpleMessage(
      "Versioiden hallinta",
    ),
    "pkg_cat_desktop": MessageLookupByLibrary.simpleMessage("Työpöytä"),
    "pkg_cat_diagramas": MessageLookupByLibrary.simpleMessage("Kaaviot"),
    "pkg_cat_distro_wsl": MessageLookupByLibrary.simpleMessage("Distro WSL"),
    "pkg_cat_editor": MessageLookupByLibrary.simpleMessage("Toimittaja"),
    "pkg_cat_golang": MessageLookupByLibrary.simpleMessage("Golang"),
    "pkg_cat_gpu_compute": MessageLookupByLibrary.simpleMessage("GPU-laskenta"),
    "pkg_cat_grabacion": MessageLookupByLibrary.simpleMessage("Grabacion"),
    "pkg_cat_ide_ai": MessageLookupByLibrary.simpleMessage("IDE AI"),
    "pkg_cat_ide_android": MessageLookupByLibrary.simpleMessage("IDE Android"),
    "pkg_cat_ide_completo": MessageLookupByLibrary.simpleMessage(
      "IDE täydellinen",
    ),
    "pkg_cat_instaladores": MessageLookupByLibrary.simpleMessage(
      "Instaladores",
    ),
    "pkg_cat_javascript": MessageLookupByLibrary.simpleMessage("JavaScript"),
    "pkg_cat_limpieza": MessageLookupByLibrary.simpleMessage("Limpieza"),
    "pkg_cat_modelos_locales": MessageLookupByLibrary.simpleMessage(
      "Mallin paikat",
    ),
    "pkg_cat_navegador": MessageLookupByLibrary.simpleMessage("Navegador"),
    "pkg_cat_python_3": MessageLookupByLibrary.simpleMessage("Python 3"),
    "pkg_cat_runtime_c": MessageLookupByLibrary.simpleMessage(
      "Suoritusaika C++",
    ),
    "pkg_cat_runtime_escritorio": MessageLookupByLibrary.simpleMessage(
      "Ajonaikainen escritorio",
    ),
    "pkg_cat_runtime_juegos": MessageLookupByLibrary.simpleMessage(
      "Runtime juegot",
    ),
    "pkg_cat_runtime_php": MessageLookupByLibrary.simpleMessage(
      "Ajonaikainen PHP",
    ),
    "pkg_cat_rustup": MessageLookupByLibrary.simpleMessage("Rustup"),
    "pkg_cat_sdk__net": MessageLookupByLibrary.simpleMessage("SDK .NET"),
    "pkg_cat_servidor_db": MessageLookupByLibrary.simpleMessage("Palvelija DB"),
    "pkg_cat_ssh_clasico": MessageLookupByLibrary.simpleMessage("SSH classic"),
    "pkg_cat_ssh_moderno": MessageLookupByLibrary.simpleMessage("SSH moderni"),
    "pkg_cat_subsistema_linux": MessageLookupByLibrary.simpleMessage(
      "Linux-alijärjestelmä",
    ),
    "pkg_cat_temurin_21": MessageLookupByLibrary.simpleMessage("Temurin 21"),
    "pkg_cat_terminal_moderno": MessageLookupByLibrary.simpleMessage(
      "Moderni terminaali",
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
      "DESPLIEGUE FI CURSO",
    ),
    "provideWindowsImage": MessageLookupByLibrary.simpleMessage(
      "Windows-asennuskuvan mukainen (install.wim tai install.swm)\ndesde una unidad USB tai cualquier medio montado.",
    ),
    "receiveInstallation": MessageLookupByLibrary.simpleMessage(
      "O reciba la instalación preparada desde Requiem para Windows",
    ),
    "renewalActive": MessageLookupByLibrary.simpleMessage("Activa"),
    "renewalDisabled": MessageLookupByLibrary.simpleMessage("Desactivada"),
    "searchingImage": MessageLookupByLibrary.simpleMessage("Buscando kuva…"),
    "secureBootCompatible": MessageLookupByLibrary.simpleMessage(
      "Yhteensopiva Secure Bootin kanssa",
    ),
    "selectDestinationDisk": MessageLookupByLibrary.simpleMessage(
      "Valitse disco de destino",
    ),
    "selectFileHint": MessageLookupByLibrary.simpleMessage(
      "Valitse arkisto .wim tai .swm",
    ),
    "selectWim": MessageLookupByLibrary.simpleMessage("Valitse WIM"),
    "selectWimFirst": MessageLookupByLibrary.simpleMessage(
      "Valitse WIM ja IPv4-yhteysliittymä.",
    ),
    "selectWindowsImage": MessageLookupByLibrary.simpleMessage(
      "Valitse Windows-kuva",
    ),
    "selectWindowsImageFull": MessageLookupByLibrary.simpleMessage(
      "Valitse Windowsin asennuskuva",
    ),
    "selectedFile": m25,
    "stableVersion": MessageLookupByLibrary.simpleMessage(
      "Versio estable v1.0.0",
    ),
    "start": MessageLookupByLibrary.simpleMessage("Empezar"),
    "startInstallation": MessageLookupByLibrary.simpleMessage(
      "Alkuperäinen asennus",
    ),
    "stopBridge": MessageLookupByLibrary.simpleMessage("Detener puente"),
    "systemConsole": MessageLookupByLibrary.simpleMessage("Consola del system"),
    "systemDisk": MessageLookupByLibrary.simpleMessage("Järjestelmä"),
    "systemLogs": MessageLookupByLibrary.simpleMessage("Järjestelmän lokit"),
    "tools_badge_iso_compatibility": MessageLookupByLibrary.simpleMessage(
      "BIOS + UEFI-suojaukset",
    ),
    "tools_badge_kms_pending": MessageLookupByLibrary.simpleMessage(
      "KMS pendiente",
    ),
    "tools_badge_package_count": m26,
    "tools_button_activate_kms": MessageLookupByLibrary.simpleMessage(
      "ACTIVAR KMS",
    ),
    "tools_button_install_all_packages": MessageLookupByLibrary.simpleMessage(
      "ASENNA TODO",
    ),
    "tools_button_install_office": MessageLookupByLibrary.simpleMessage(
      "ASENNUS TOIMISTO",
    ),
    "tools_header_title": MessageLookupByLibrary.simpleMessage(
      "REQUIEM MIGRATION TOOLS",
    ),
    "tools_kms_checking_connectivity": m27,
    "tools_kms_empty_host_error": MessageLookupByLibrary.simpleMessage(
      "VIRHE: isäntä KMS esta vacio.",
    ),
    "tools_kms_error_log": m28,
    "tools_kms_no_products_selected": MessageLookupByLibrary.simpleMessage(
      "Ei heinätuotteita KMS Selectionados.",
    ),
    "tools_log_format": m29,
    "tools_logs_copied_snackbar": MessageLookupByLibrary.simpleMessage(
      "Lokit copiados al porttapapeles.",
    ),
    "tools_packages_detected_count": m30,
    "tools_packages_none_detected": MessageLookupByLibrary.simpleMessage(
      "No se detectaron paquetes conocidos con winget.",
    ),
    "tools_packages_none_selected": MessageLookupByLibrary.simpleMessage(
      "Ei heinää ohjelmat seleccionados.",
    ),
    "tools_section_activation_desc": MessageLookupByLibrary.simpleMessage(
      "Määritä paikallinen KMS-palvelin tai etäkäyttö Windows y Office -käyttöjärjestelmässä.",
    ),
    "tools_section_activation_title": MessageLookupByLibrary.simpleMessage(
      "Activación de Licencias",
    ),
    "tools_section_iso_desc": MessageLookupByLibrary.simpleMessage(
      "Cree medios autónomos ja WIM-integraatio tai jakelu, joka on asennettu suoraan IPv4:ään.",
    ),
    "tools_section_iso_title": MessageLookupByLibrary.simpleMessage(
      "ISO y despliegue por red",
    ),
    "tools_section_office_desc": MessageLookupByLibrary.simpleMessage(
      "Poista Microsoft Office LTSC tai 365, joka on automatisoitu ODT:lle.",
    ),
    "tools_section_office_title": MessageLookupByLibrary.simpleMessage(
      "Toimiston asennus",
    ),
    "tools_section_packages_desc": MessageLookupByLibrary.simpleMessage(
      "Asenna y aktualiza herramientas de desarrollo esenciales para Windows mediante winget.",
    ),
    "tools_section_packages_title": MessageLookupByLibrary.simpleMessage(
      "Stack de Aplicaciones",
    ),
    "tools_sidebar_app_name": MessageLookupByLibrary.simpleMessage("REQUIEM"),
    "tools_sidebar_mode_badge": MessageLookupByLibrary.simpleMessage(
      "Paikalliset työkalut -tila",
    ),
    "tools_sidebar_tab_iso": MessageLookupByLibrary.simpleMessage(
      "ISO ja Puente",
    ),
    "tools_sidebar_tab_kms": MessageLookupByLibrary.simpleMessage(
      "Aktivoi KMS",
    ),
    "tools_sidebar_tab_office": MessageLookupByLibrary.simpleMessage(
      "Asennustoimisto",
    ),
    "tools_sidebar_tab_packages": MessageLookupByLibrary.simpleMessage(
      "Pinoa ohjelmia",
    ),
    "unknown": MessageLookupByLibrary.simpleMessage("Desconocido"),
    "updateDescription": MessageLookupByLibrary.simpleMessage(
      "Jatkuvasti Requiem Tools -työkalujen käyttö on välttämätöntä, jos versio on uusinta.",
    ),
    "updateRequired": MessageLookupByLibrary.simpleMessage(
      "Actualización requerida",
    ),
    "useExistingPartitions": MessageLookupByLibrary.simpleMessage(
      "Usar particiones existentes",
    ),
    "useExistingPartitionsDescription": MessageLookupByLibrary.simpleMessage(
      "Sin formatear — despliega en W: tal cual\nKäytetty gestiona las particiones manualmente",
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
      "Yhdistä Wi-Fi-yhteys",
    ),
    "wifi_item_signal_security": m36,
    "wifi_none_found": MessageLookupByLibrary.simpleMessage(
      "No se encontraron redes Wi-Fi käytettävissä.",
    ),
    "wifi_password_hint": MessageLookupByLibrary.simpleMessage(
      "Contraseña Wi-Fi",
    ),
    "wifi_scanning": MessageLookupByLibrary.simpleMessage(
      "Haetaan käytettävissä olevia Wi-Fi-verkkoja...",
    ),
    "wimIntegrated": MessageLookupByLibrary.simpleMessage(
      "WIM-integraatio ISO:lla",
    ),
    "wim_bridge_connection_error": m37,
    "wim_bridge_ip_dialog_title": MessageLookupByLibrary.simpleMessage(
      "IP del puente Requiem",
    ),
    "wim_bridge_ip_placeholder": MessageLookupByLibrary.simpleMessage(
      "192.168.1.20",
    ),
    "wim_bridge_not_found": MessageLookupByLibrary.simpleMessage(
      "No se encontró ningún puente. Pruebe con la IP käsikirja.",
    ),
    "wim_bridge_search_error": m38,
    "wim_bridge_searching": MessageLookupByLibrary.simpleMessage(
      "Etsitään Requiem-siltoja paikallisesta IPv4-verkosta...",
    ),
    "wim_bridge_section_header": MessageLookupByLibrary.simpleMessage(
      "O reciba la instalación preparada desde Requiem para Windows",
    ),
    "wim_button_change_file": MessageLookupByLibrary.simpleMessage(
      "CAMBIAR ARKIVO",
    ),
    "wim_button_connect_wifi": MessageLookupByLibrary.simpleMessage(
      "CONECTAR WI-FI",
    ),
    "wim_button_manual_ip": MessageLookupByLibrary.simpleMessage(
      "USAR IP-OPAS",
    ),
    "wim_button_rescan": MessageLookupByLibrary.simpleMessage(
      "Escanear unidades de nuevo",
    ),
    "wim_button_search_bridge": MessageLookupByLibrary.simpleMessage(
      "BUSCAR PUENTE",
    ),
    "wim_manual_search_hint": MessageLookupByLibrary.simpleMessage(
      "Käytä \"Buscar\" paikallista WIM-käsikirjaa.",
    ),
    "wim_picker_description": MessageLookupByLibrary.simpleMessage(
      "Windowsin asennuskuvan mukainen (install.wim tai install.swm)\\n",
    ),
    "wim_picker_title": MessageLookupByLibrary.simpleMessage(
      "Valitse Windows-kuva",
    ),
    "wim_status_found": MessageLookupByLibrary.simpleMessage(
      "Imagen encontrada",
    ),
    "wim_status_not_found": MessageLookupByLibrary.simpleMessage(
      "No se detectó ninguna imagen",
    ),
    "wim_status_searching": MessageLookupByLibrary.simpleMessage(
      "Buscando kuva…",
    ),
    "wim_status_searching_alt": MessageLookupByLibrary.simpleMessage(
      "Buscando kuva...",
    ),
    "wingetUnavailable": MessageLookupByLibrary.simpleMessage(
      "winget no está instalado o no está en PATH.",
    ),
  };
}
