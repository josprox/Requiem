// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a hu locale. All the
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
  String get localeName => 'hu';

  static String m0(count) => "${count} programok";

  static String m1(version) => "Elérhető verzió: ${version}";

  static String m2(firmware) => "Tényleges sorrend: ${firmware}";

  static String m3(error) => "Nincs pudo conectar: ${error}";

  static String m4(error) => "No se pudo buscar el puente: ${error}";

  static String m5(host) => "Comprobando conectividad con ${host}:1688...";

  static String m6(mode) => "Modo kompatibilis: ${mode}";

  static String m7(firmware) => "Tényleges sorrend: ${firmware}";

  static String m8(diskNumber, mediaType, busType) =>
      "LEMEZ ${diskNumber} · ${mediaType} · ${busType}";

  static String m9(recommended) => "Modo kompatibilis: ${recommended}";

  static String m10(sizeGB) => "${sizeGB} GB";

  static String m11(imageName) =>
      "Puente: \${controller.bridgeAnnouncement?.imageName ??";

  static String m12(name, edition) => "Edition detectada: ${name} (${edition})";

  static String m13(error) => "Hiba előfordulása: ${error}";

  static String m14(val) => "Ruta inválida: ${val}";

  static String m15(error) =>
      "No se pudo leer el contenido del directorio.\\n${error}";

  static String m16(path) => "Kiválasztás: ${path}";

  static String m17(path) => "Ruta inválida: ${path}";

  static String m18(clients) => "${clients} conexiones";

  static String m19(error) => "HIBA: ${error}";

  static String m20(error) =>
      "Nincsenek pudieron enumerar las interfészek IPv4: ${error}";

  static String m21(path) => "WIM-választás: ${path}";

  static String m22(error) => "Hiba KMS: ${error}";

  static String m23(product, channel, edition, status) =>
      "${product} / ${channel} / ${edition} bit. La renovación queda ${status}.";

  static String m24(count) => "Paquetes detectados: ${count}.";

  static String m25(file) => "Kiválasztás: ${file}";

  static String m26(count) => "${count} programok";

  static String m27(host) => "Comprobando conectividad con ${host}:1688...";

  static String m28(error) => "HIBA KMS: ${error}";

  static String m29(time, message) => "[${time}] ${message}";

  static String m30(count) => "Paquetes detectados: ${count}.";

  static String m31(error) => "Nem lehet Wi-Fi-t csatlakoztatni: ${error}";

  static String m32(network) => "Csatlakoztassa a ${network}.";

  static String m33(error) => "Nem lehet Wi-Fi-t csatlakoztatni: ${error}";

  static String m34(ssid, result) =>
      "Wi-Fi csatlakoztatva a következőhöz: ${ssid}. ${result}";

  static String m35(ssid) => "Csatlakoztassa a ${ssid}.";

  static String m36(signal, security) => "${signal}% · ${security}";

  static String m37(error) => "Nincs pudo conectar: ${error}";

  static String m38(error) => "No se pudo buscar el puente: ${error}";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
    "actionCancel": MessageLookupByLibrary.simpleMessage("Mégse"),
    "actionChange": MessageLookupByLibrary.simpleMessage("Cambiar"),
    "actionConfirm": MessageLookupByLibrary.simpleMessage("Megerősítő"),
    "actionConnect": MessageLookupByLibrary.simpleMessage("Conectar"),
    "actionContinue": MessageLookupByLibrary.simpleMessage("Folyamatos"),
    "actionInstall": MessageLookupByLibrary.simpleMessage("Telepítés"),
    "actionRefresh": MessageLookupByLibrary.simpleMessage("Actualizar"),
    "actionRestartSystem": MessageLookupByLibrary.simpleMessage(
      "Reiniciar rendszer",
    ),
    "actionScanAgain": MessageLookupByLibrary.simpleMessage(
      "Escanear unidades de nuevo",
    ),
    "actionSearch": MessageLookupByLibrary.simpleMessage("Buscar"),
    "actionSelect": MessageLookupByLibrary.simpleMessage("Selectionar"),
    "activate": MessageLookupByLibrary.simpleMessage("Activar"),
    "activateKms": MessageLookupByLibrary.simpleMessage("Activar KMS"),
    "appTitleInstaller": MessageLookupByLibrary.simpleMessage(
      "Requiem telepítő",
    ),
    "appTitleTools": MessageLookupByLibrary.simpleMessage("Requiem Tools"),
    "app_title_installer": MessageLookupByLibrary.simpleMessage(
      "Requiem telepítő",
    ),
    "app_title_tools": MessageLookupByLibrary.simpleMessage("Requiem Tools"),
    "applicationStack": MessageLookupByLibrary.simpleMessage(
      "Stack de aplicaciones",
    ),
    "applicationStackDescription": MessageLookupByLibrary.simpleMessage(
      "Instala y aktualiza herramientas de desarrollo esenciales para Windows mediante winget.",
    ),
    "applicationsCount": m0,
    "automaticOffice": MessageLookupByLibrary.simpleMessage(
      "Irodai automatika",
    ),
    "automaticOfficeDescription": MessageLookupByLibrary.simpleMessage(
      "Usa la GVLK de volumen ya instalada",
    ),
    "automaticRenewal": MessageLookupByLibrary.simpleMessage(
      "Renovación automatica",
    ),
    "automaticWindows": MessageLookupByLibrary.simpleMessage(
      "Windows automatika",
    ),
    "automaticWindowsDescription": MessageLookupByLibrary.simpleMessage(
      "Detecta Edition és GVLK kompatibilis",
    ),
    "availableVersion": m1,
    "bootCurrent": m2,
    "bridgeConnectError": m3,
    "bridgeDescription": MessageLookupByLibrary.simpleMessage(
      "Prepara el WIM una sola vez y lo transfere directamente a los clientes Requiem de la misma red. Az ügyfelek nem védik a WIM-et a telepítés előtt.",
    ),
    "bridgeIp": MessageLookupByLibrary.simpleMessage("IP del Puente Requiem"),
    "bridgePorts": MessageLookupByLibrary.simpleMessage(
      "Puerto HTTP 40124 · UDP 40123 leállítása. A Windows Defender előzetesen engedélyezve van a hozzáféréshez és a titkosításhoz.",
    ),
    "bridgeSearchError": m4,
    "checkingKms": m5,
    "clearLogs": MessageLookupByLibrary.simpleMessage("Limpiar rönkök"),
    "common_cancel": MessageLookupByLibrary.simpleMessage("MÉGSEM"),
    "common_change": MessageLookupByLibrary.simpleMessage("CAMBIAR"),
    "common_connect": MessageLookupByLibrary.simpleMessage("CONECTAR"),
    "common_continue": MessageLookupByLibrary.simpleMessage("FOLYAMATOS"),
    "common_label_disk": MessageLookupByLibrary.simpleMessage("LEMEZ"),
    "common_label_image": MessageLookupByLibrary.simpleMessage("KÉP"),
    "common_label_mode": MessageLookupByLibrary.simpleMessage("MÓD"),
    "common_refresh": MessageLookupByLibrary.simpleMessage("ACTUALIZAR"),
    "common_search": MessageLookupByLibrary.simpleMessage("BUSCAR"),
    "common_select": MessageLookupByLibrary.simpleMessage("SELECCIONAR"),
    "compatibleMode": m6,
    "confirmDataDestruction": MessageLookupByLibrary.simpleMessage(
      "Confirmar destrucción de datos",
    ),
    "confirmInstallation": MessageLookupByLibrary.simpleMessage(
      "Confirmar installación",
    ),
    "connectInstallerWifi": MessageLookupByLibrary.simpleMessage(
      "Csatlakoztassa a Wi-Fi-t",
    ),
    "connectWifi": MessageLookupByLibrary.simpleMessage("Conectar Wi-Fi"),
    "console_title": MessageLookupByLibrary.simpleMessage(
      "Consola del Sistema",
    ),
    "console_tooltip_clear": MessageLookupByLibrary.simpleMessage(
      "Limpiar rönkök",
    ),
    "console_tooltip_copy": MessageLookupByLibrary.simpleMessage(
      "Copiar naplók",
    ),
    "console_waiting_action": MessageLookupByLibrary.simpleMessage(
      "Esperando una acción...",
    ),
    "copyLogs": MessageLookupByLibrary.simpleMessage("Copiar naplók"),
    "deploymentInProgress": MessageLookupByLibrary.simpleMessage(
      "Despiegue en curso",
    ),
    "designedBy": MessageLookupByLibrary.simpleMessage("Diseñado por Joss"),
    "destinationDiskDescription": MessageLookupByLibrary.simpleMessage(
      "Elija la unidad física donde a Windows telepítéséhez.",
    ),
    "detect": MessageLookupByLibrary.simpleMessage("Detectar"),
    "diskManagement": MessageLookupByLibrary.simpleMessage(
      "Administración de discos",
    ),
    "disk_badge_system": MessageLookupByLibrary.simpleMessage("SISTEMA"),
    "disk_boot_firmware_label": m7,
    "disk_button_confirm_and_install": MessageLookupByLibrary.simpleMessage(
      "ERŐSÍTÉS ÉS TELEPÍTÉS",
    ),
    "disk_dialog_confirm_destruction_title":
        MessageLookupByLibrary.simpleMessage("CONFIRMAR DESTRUCCIÓN DE DATOS"),
    "disk_dialog_confirm_install_title": MessageLookupByLibrary.simpleMessage(
      "CONFIRMAR INSTALACIÓN",
    ),
    "disk_dialog_existing_notice": MessageLookupByLibrary.simpleMessage(
      "Windows se desplegará en W:\\\\ sin formatear.",
    ),
    "disk_dialog_format_warning": MessageLookupByLibrary.simpleMessage(
      "El disco seleccionado se formateará por Completo. Se perderán todos los datos.",
    ),
    "disk_empty_list": MessageLookupByLibrary.simpleMessage(
      "No se detectaron discos físicos",
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
      "INICIAR INSTALACIÓN",
    ),
    "disk_selection_desc": MessageLookupByLibrary.simpleMessage(
      "Elija la unidad física donde a Windows telepítéséhez.",
    ),
    "disk_selection_title": MessageLookupByLibrary.simpleMessage(
      "Selectionar Disco de Destino",
    ),
    "disk_size_gb": m10,
    "disk_waiting_wim_hint": MessageLookupByLibrary.simpleMessage(
      "Esperando la detección de install.wim...",
    ),
    "disk_wim_bridge_source": m11,
    "disk_wim_detected": MessageLookupByLibrary.simpleMessage(
      "Imagen detectada",
    ),
    "disk_wim_integrated_source": MessageLookupByLibrary.simpleMessage(
      "WIM integráció az ISO-ba",
    ),
    "disk_wim_not_found": MessageLookupByLibrary.simpleMessage(
      "Imagen no encontrada",
    ),
    "doNotDisconnect": MessageLookupByLibrary.simpleMessage(
      "No desconecte la energía ni retire el medio de instalación",
    ),
    "downloadAndActivate": MessageLookupByLibrary.simpleMessage(
      "Letöltés + aktiválás",
    ),
    "downloadInstaller": MessageLookupByLibrary.simpleMessage(
      "Telepítő (.exe) letöltése",
    ),
    "downloadPortable": MessageLookupByLibrary.simpleMessage(
      "Hordozható (.zip) letöltés",
    ),
    "drives": MessageLookupByLibrary.simpleMessage("Unidades"),
    "editionDetected": m12,
    "emptyFolder": MessageLookupByLibrary.simpleMessage(
      "Esta carpeta está vacía",
    ),
    "errorGeneric": m13,
    "file_explorer_default_title": MessageLookupByLibrary.simpleMessage(
      "Válassza ki a Windows telepítési képeit",
    ),
    "file_explorer_drives_header": MessageLookupByLibrary.simpleMessage(
      "UNIDADES",
    ),
    "file_explorer_empty_folder": MessageLookupByLibrary.simpleMessage(
      "Esta carpeta está vacía",
    ),
    "file_explorer_filter_hint": MessageLookupByLibrary.simpleMessage("Szűrő…"),
    "file_explorer_go_up_tooltip": MessageLookupByLibrary.simpleMessage(
      "Subir un nivel",
    ),
    "file_explorer_invalid_path_error": m14,
    "file_explorer_read_error": m15,
    "file_explorer_select_file_hint": MessageLookupByLibrary.simpleMessage(
      "Selectione un archivo .wim o .swm",
    ),
    "file_explorer_selected_file": m16,
    "filter": MessageLookupByLibrary.simpleMessage("Szűrő…"),
    "formatGpt": MessageLookupByLibrary.simpleMessage(
      "Formatear GPT (ajánlott)",
    ),
    "formatGptDescription": MessageLookupByLibrary.simpleMessage(
      "Limpia el disco és létrehozta az UEFI-t\nEFI (S:) + Windows (W:)",
    ),
    "formatMbr": MessageLookupByLibrary.simpleMessage(
      "Formatear MBR (BIOS heredado)",
    ),
    "formatMbrDescription": MessageLookupByLibrary.simpleMessage(
      "Limpia el disco y crea diseño heredado\nEgyedülálló Windows (C:)",
    ),
    "formatWarning": MessageLookupByLibrary.simpleMessage(
      "El disco seleccionado se formateará por Completo. Se perderán todos los datos.",
    ),
    "generateIso": MessageLookupByLibrary.simpleMessage("Általános ISO"),
    "getInstallOnlyIso": MessageLookupByLibrary.simpleMessage(
      "Megszerző ISO para instalación solamente",
    ),
    "goUpOneLevel": MessageLookupByLibrary.simpleMessage("Subir un nivel"),
    "imageDetected": MessageLookupByLibrary.simpleMessage("Imagen detectada"),
    "imageFound": MessageLookupByLibrary.simpleMessage("Imagen encontrada"),
    "imageNotFound": MessageLookupByLibrary.simpleMessage(
      "Imagen no encontrada",
    ),
    "imageSearching": MessageLookupByLibrary.simpleMessage("Buscando kép..."),
    "installAll": MessageLookupByLibrary.simpleMessage("Teendők telepítése"),
    "installOffice": MessageLookupByLibrary.simpleMessage("Iroda telepítése"),
    "installationProgress": MessageLookupByLibrary.simpleMessage(
      "Progreso de instalación",
    ),
    "invalidPath": m17,
    "isoDescription": MessageLookupByLibrary.simpleMessage(
      "Válassza az ISO-alapot a WIM al arrancar, o cree una ISO autónoma que ya incluya su Windows képpel.",
    ),
    "iso_bridge_clients_count": m18,
    "iso_bridge_desc": MessageLookupByLibrary.simpleMessage(
      "Prepara el WIM una sola vez y lo transfere directamente a los clientes Requiem de la misma red. Az ügyfelek nem védik a WIM-et a telepítés előtt.",
    ),
    "iso_bridge_generic_error": m19,
    "iso_bridge_list_interfaces_error": m20,
    "iso_bridge_save_simple_iso_dialog": MessageLookupByLibrary.simpleMessage(
      "Guardar ISO simple de Requiem",
    ),
    "iso_bridge_save_wim_iso_dialog": MessageLookupByLibrary.simpleMessage(
      "Requiem ISO védelme WIM-mel",
    ),
    "iso_bridge_select_wim_dialog": MessageLookupByLibrary.simpleMessage(
      "Válassza ki a Windows WIM képét",
    ),
    "iso_bridge_simple_iso_filename": MessageLookupByLibrary.simpleMessage(
      "Requiem-Installer-Simple.iso",
    ),
    "iso_bridge_start_validation_error": MessageLookupByLibrary.simpleMessage(
      "Válassza ki a WIM-et és az IPv4 privát interfészét.",
    ),
    "iso_bridge_wim_selected_log": m21,
    "iso_panel_button_generate_iso": MessageLookupByLibrary.simpleMessage(
      "ÁLTALÁNOS ISO",
    ),
    "iso_panel_button_select_wim": MessageLookupByLibrary.simpleMessage(
      "VÁLASZTOTT WIM",
    ),
    "iso_panel_button_simple_iso": MessageLookupByLibrary.simpleMessage(
      "OBTENER ISO PARA INSTALACIÓN SOLAMENTE",
    ),
    "iso_panel_desc_media": MessageLookupByLibrary.simpleMessage(
      "Válassza az ISO-alapot a WIM al arrancar, o cree una ISO autónoma que ya incluya su Windows képpel.",
    ),
    "iso_panel_title_bridge": MessageLookupByLibrary.simpleMessage(
      "Puente IPv4 telepítés",
    ),
    "iso_panel_title_media": MessageLookupByLibrary.simpleMessage(
      "Medio de instalación",
    ),
    "kmsError": m22,
    "kmsHostEmpty": MessageLookupByLibrary.simpleMessage(
      "Hiba: el host KMS está vacío.",
    ),
    "kmsServer": MessageLookupByLibrary.simpleMessage("Servidor KMS"),
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
      "Windows 10/11 oktatás",
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
          "Windows 10/11 Pro munkaállomásokhoz",
        ),
    "kms_product_windows_10_11_pro_n": MessageLookupByLibrary.simpleMessage(
      "Windows 10/11 Pro N",
    ),
    "kms_product_windows_10_11_pro_workstations":
        MessageLookupByLibrary.simpleMessage(
          "Windows 10/11 Pro munkaállomások",
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
        MessageLookupByLibrary.simpleMessage("Windows Server 2019 adatközpont"),
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
        MessageLookupByLibrary.simpleMessage("Windows alrendszer Linuxhoz"),
    "kms_product_windows_terminal": MessageLookupByLibrary.simpleMessage(
      "Windows terminál",
    ),
    "landingDescription": MessageLookupByLibrary.simpleMessage(
      "Instalador de Windows de alta precisión para entornos de alto rendimiento. Experimente un despliegue rápido con orquestación directa de DISM y optimación automatizada del system.",
    ),
    "landing_badge_author": MessageLookupByLibrary.simpleMessage(
      "DISEÑADO POR JOSS",
    ),
    "landing_badge_secure_boot": MessageLookupByLibrary.simpleMessage(
      "KOMPATIBILIS CON SECURE BOOT",
    ),
    "landing_badge_version": MessageLookupByLibrary.simpleMessage(
      "VERSIÓN ESTABLE",
    ),
    "landing_button_logs": MessageLookupByLibrary.simpleMessage(
      "NAPLÓK DEL SISTEMA",
    ),
    "landing_button_start": MessageLookupByLibrary.simpleMessage("EMPEZAR"),
    "landing_description_part1": MessageLookupByLibrary.simpleMessage(
      "Instalador de Windows de alta precisión para entornos de alto rendimiento.",
    ),
    "landing_description_part2": MessageLookupByLibrary.simpleMessage(
      "Experimente un despliegue rápido con orquestación directa de DISM y optimación automatizada del system.",
    ),
    "landing_subtitle": MessageLookupByLibrary.simpleMessage(
      "DESPLIEGUE DE SO DE PRÓXIMA GENERACIÓN",
    ),
    "landing_title_installer": MessageLookupByLibrary.simpleMessage(
      "REQUIEM TELEPÍTŐ",
    ),
    "landing_title_tools": MessageLookupByLibrary.simpleMessage(
      "REQUIEM ESZKÖZÖK",
    ),
    "licenseActivation": MessageLookupByLibrary.simpleMessage(
      "Activación de licencias",
    ),
    "logsCopied": MessageLookupByLibrary.simpleMessage(
      "Logs copiados al porttapapeles.",
    ),
    "mandatoryUpdate": MessageLookupByLibrary.simpleMessage(
      "Esta aktualización es obligatoria y no puede omitirse.",
    ),
    "manualWimHint": MessageLookupByLibrary.simpleMessage(
      "Használja a „Buscar”-t a WIM-kézikönyvtárban.",
    ),
    "mediaInstallation": MessageLookupByLibrary.simpleMessage(
      "Medio de instalación",
    ),
    "networkBridge": MessageLookupByLibrary.simpleMessage(
      "Puente IPv4 telepítés",
    ),
    "networkInterface": MessageLookupByLibrary.simpleMessage(
      "Interfaz Wi-Fi/LAN IPv4",
    ),
    "nextGenerationDeployment": MessageLookupByLibrary.simpleMessage(
      "Despiegue de SO de próxima generación",
    ),
    "noBridgeFound": MessageLookupByLibrary.simpleMessage(
      "No se encontró ningún puente. Pruebe con la IP kézikönyv.",
    ),
    "noFormatWarning": MessageLookupByLibrary.simpleMessage(
      "Windows se desplegará en W:\\ sin formatear.",
    ),
    "noImageDetected": MessageLookupByLibrary.simpleMessage(
      "No se detectó ninguna imagen",
    ),
    "noKmsProducts": MessageLookupByLibrary.simpleMessage(
      "Nem szénatermékek KMS Selectionados.",
    ),
    "noPhysicalDisks": MessageLookupByLibrary.simpleMessage(
      "No se detectaron discos físicos",
    ),
    "noProgramsSelected": MessageLookupByLibrary.simpleMessage(
      "Nincs széna programs seleccionados.",
    ),
    "noWifiNetworks": MessageLookupByLibrary.simpleMessage(
      "No se encontraron redes Wi-Fi elérhető.",
    ),
    "noWingetPackages": MessageLookupByLibrary.simpleMessage(
      "No se detectaron paquetes conocidos con winget.",
    ),
    "officeInstallDescription": MessageLookupByLibrary.simpleMessage(
      "Távolítsa el a Microsoft Office LTSC-t vagy 365-öt, amely automatizálja az ODT-t.",
    ),
    "officeInstaller": MessageLookupByLibrary.simpleMessage("Iroda telepítése"),
    "officeRenewalStatus": m23,
    "officeVersion": MessageLookupByLibrary.simpleMessage("Versión de Office"),
    "office_odt_kms_badge": MessageLookupByLibrary.simpleMessage("ODT + KMS"),
    "office_odt_panel_title": MessageLookupByLibrary.simpleMessage(
      "Office telepítési eszköz",
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
      "Ez a funkció egyedül elérhető Windowson.",
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
    "pkg_cat_cliente_api": MessageLookupByLibrary.simpleMessage("Kliens API"),
    "pkg_cat_cliente_db": MessageLookupByLibrary.simpleMessage("Ügyfél DB"),
    "pkg_cat_compiladores_c": MessageLookupByLibrary.simpleMessage(
      "Összeállítja a C++-t",
    ),
    "pkg_cat_compresor": MessageLookupByLibrary.simpleMessage("Kompresszor"),
    "pkg_cat_comunicacion": MessageLookupByLibrary.simpleMessage(
      "Comunicacion",
    ),
    "pkg_cat_control_de_versiones": MessageLookupByLibrary.simpleMessage(
      "Verziók vezérlése",
    ),
    "pkg_cat_desktop": MessageLookupByLibrary.simpleMessage("Asztali"),
    "pkg_cat_diagramas": MessageLookupByLibrary.simpleMessage("Diagramok"),
    "pkg_cat_distro_wsl": MessageLookupByLibrary.simpleMessage(
      "WSL disztribúció",
    ),
    "pkg_cat_editor": MessageLookupByLibrary.simpleMessage("Szerkesztő"),
    "pkg_cat_golang": MessageLookupByLibrary.simpleMessage("Golang"),
    "pkg_cat_gpu_compute": MessageLookupByLibrary.simpleMessage("GPU számítás"),
    "pkg_cat_grabacion": MessageLookupByLibrary.simpleMessage("Grabacion"),
    "pkg_cat_ide_ai": MessageLookupByLibrary.simpleMessage("IDE AI"),
    "pkg_cat_ide_android": MessageLookupByLibrary.simpleMessage("IDE Android"),
    "pkg_cat_ide_completo": MessageLookupByLibrary.simpleMessage("IDE teljes"),
    "pkg_cat_instaladores": MessageLookupByLibrary.simpleMessage(
      "Instaladores",
    ),
    "pkg_cat_javascript": MessageLookupByLibrary.simpleMessage("JavaScript"),
    "pkg_cat_limpieza": MessageLookupByLibrary.simpleMessage("Limpieza"),
    "pkg_cat_modelos_locales": MessageLookupByLibrary.simpleMessage(
      "Modelos locales",
    ),
    "pkg_cat_navegador": MessageLookupByLibrary.simpleMessage("Navegador"),
    "pkg_cat_python_3": MessageLookupByLibrary.simpleMessage("Python 3"),
    "pkg_cat_runtime_c": MessageLookupByLibrary.simpleMessage("Futásidejű C++"),
    "pkg_cat_runtime_escritorio": MessageLookupByLibrary.simpleMessage(
      "Futásidejű leírás",
    ),
    "pkg_cat_runtime_juegos": MessageLookupByLibrary.simpleMessage(
      "Runtime juegos",
    ),
    "pkg_cat_runtime_php": MessageLookupByLibrary.simpleMessage(
      "Futóidejű PHP",
    ),
    "pkg_cat_rustup": MessageLookupByLibrary.simpleMessage("Rustup"),
    "pkg_cat_sdk__net": MessageLookupByLibrary.simpleMessage("SDK .NET"),
    "pkg_cat_servidor_db": MessageLookupByLibrary.simpleMessage(
      "DB kiszolgáló",
    ),
    "pkg_cat_ssh_clasico": MessageLookupByLibrary.simpleMessage("SSH clasico"),
    "pkg_cat_ssh_moderno": MessageLookupByLibrary.simpleMessage("SSH modern"),
    "pkg_cat_subsistema_linux": MessageLookupByLibrary.simpleMessage(
      "Linux alrendszer",
    ),
    "pkg_cat_temurin_21": MessageLookupByLibrary.simpleMessage("Temurin 21"),
    "pkg_cat_terminal_moderno": MessageLookupByLibrary.simpleMessage(
      "Modern terminál",
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
      "A Windows telepítési képének aránya (install.wim vagy install.swm)\ndesde una unidad USB vagy cualquier medio montado.",
    ),
    "receiveInstallation": MessageLookupByLibrary.simpleMessage(
      "O reciba la instalación preparada desde Requiem para Windows",
    ),
    "renewalActive": MessageLookupByLibrary.simpleMessage("Activa"),
    "renewalDisabled": MessageLookupByLibrary.simpleMessage("Desactivada"),
    "searchingImage": MessageLookupByLibrary.simpleMessage("Buscando kép…"),
    "secureBootCompatible": MessageLookupByLibrary.simpleMessage(
      "Biztonságos rendszerindítással kompatibilis",
    ),
    "selectDestinationDisk": MessageLookupByLibrary.simpleMessage(
      "Selectionar disco de destino",
    ),
    "selectFileHint": MessageLookupByLibrary.simpleMessage(
      "Selectione un archivo .wim o .swm",
    ),
    "selectWim": MessageLookupByLibrary.simpleMessage("Válassza ki a WIM-et"),
    "selectWimFirst": MessageLookupByLibrary.simpleMessage(
      "Válassza ki a WIM-et és az IPv4 privát interfészét.",
    ),
    "selectWindowsImage": MessageLookupByLibrary.simpleMessage(
      "Válassza ki a Windows képeit",
    ),
    "selectWindowsImageFull": MessageLookupByLibrary.simpleMessage(
      "Válassza ki a Windows telepítési képét",
    ),
    "selectedFile": m25,
    "stableVersion": MessageLookupByLibrary.simpleMessage(
      "Version estabil v1.0.0",
    ),
    "start": MessageLookupByLibrary.simpleMessage("Empezar"),
    "startInstallation": MessageLookupByLibrary.simpleMessage(
      "Kezdeti telepítés",
    ),
    "stopBridge": MessageLookupByLibrary.simpleMessage("Detener puente"),
    "systemConsole": MessageLookupByLibrary.simpleMessage("Consola del system"),
    "systemDisk": MessageLookupByLibrary.simpleMessage("Rendszer"),
    "systemLogs": MessageLookupByLibrary.simpleMessage("Rendszernaplók"),
    "tools_badge_iso_compatibility": MessageLookupByLibrary.simpleMessage(
      "BIOS + UEFI védelem",
    ),
    "tools_badge_kms_pending": MessageLookupByLibrary.simpleMessage(
      "KMS pendiente",
    ),
    "tools_badge_package_count": m26,
    "tools_button_activate_kms": MessageLookupByLibrary.simpleMessage(
      "ACTIVAR KMS",
    ),
    "tools_button_install_all_packages": MessageLookupByLibrary.simpleMessage(
      "TODO TELEPÍTÉSE",
    ),
    "tools_button_install_office": MessageLookupByLibrary.simpleMessage(
      "TELEPÍTÉSI IRODA",
    ),
    "tools_header_title": MessageLookupByLibrary.simpleMessage(
      "REQUIEM MIGRÁCIÓS ESZKÖZÖK",
    ),
    "tools_kms_checking_connectivity": m27,
    "tools_kms_empty_host_error": MessageLookupByLibrary.simpleMessage(
      "HIBA: el a host KMS esta vacio.",
    ),
    "tools_kms_error_log": m28,
    "tools_kms_no_products_selected": MessageLookupByLibrary.simpleMessage(
      "Nem szénatermékek KMS Selectionados.",
    ),
    "tools_log_format": m29,
    "tools_logs_copied_snackbar": MessageLookupByLibrary.simpleMessage(
      "Logs copiados al porttapapeles.",
    ),
    "tools_packages_detected_count": m30,
    "tools_packages_none_detected": MessageLookupByLibrary.simpleMessage(
      "No se detectaron paquetes conocidos con winget.",
    ),
    "tools_packages_none_selected": MessageLookupByLibrary.simpleMessage(
      "Nincs széna programs seleccionados.",
    ),
    "tools_section_activation_desc": MessageLookupByLibrary.simpleMessage(
      "Konfigurálja a KMS helyi vagy távoli kiszolgálóját a Windows és az Office aktiválásához.",
    ),
    "tools_section_activation_title": MessageLookupByLibrary.simpleMessage(
      "Activación de Licencias",
    ),
    "tools_section_iso_desc": MessageLookupByLibrary.simpleMessage(
      "Cree medios autónomos egy WIM-integrációval, vagy terjeszthető közvetlenül IPv4-re telepítve.",
    ),
    "tools_section_iso_title": MessageLookupByLibrary.simpleMessage(
      "ISO y despliegue por red",
    ),
    "tools_section_office_desc": MessageLookupByLibrary.simpleMessage(
      "Távolítsa el a Microsoft Office LTSC-t vagy 365-öt, amely automatizálja az ODT-t.",
    ),
    "tools_section_office_title": MessageLookupByLibrary.simpleMessage(
      "Iroda telepítése",
    ),
    "tools_section_packages_desc": MessageLookupByLibrary.simpleMessage(
      "Instala y aktualiza herramientas de desarrollo esenciales para Windows mediante winget.",
    ),
    "tools_section_packages_title": MessageLookupByLibrary.simpleMessage(
      "Stack de Aplicaciones",
    ),
    "tools_sidebar_app_name": MessageLookupByLibrary.simpleMessage("REQUIEM"),
    "tools_sidebar_mode_badge": MessageLookupByLibrary.simpleMessage(
      "Helyi eszközök mód",
    ),
    "tools_sidebar_tab_iso": MessageLookupByLibrary.simpleMessage(
      "ISO y Puente",
    ),
    "tools_sidebar_tab_kms": MessageLookupByLibrary.simpleMessage(
      "KMS aktiválása",
    ),
    "tools_sidebar_tab_office": MessageLookupByLibrary.simpleMessage(
      "Telepítési Iroda",
    ),
    "tools_sidebar_tab_packages": MessageLookupByLibrary.simpleMessage(
      "Stack programok",
    ),
    "unknown": MessageLookupByLibrary.simpleMessage("Desconocido"),
    "updateDescription": MessageLookupByLibrary.simpleMessage(
      "Folyamatosan használja a Requiem Tools-t, és aktualizálni kell a reciente verziót.",
    ),
    "updateRequired": MessageLookupByLibrary.simpleMessage(
      "Actualización requerida",
    ),
    "useExistingPartitions": MessageLookupByLibrary.simpleMessage(
      "Usar particiones existentes",
    ),
    "useExistingPartitionsDescription": MessageLookupByLibrary.simpleMessage(
      "Sin formatear — despliega en W: tal cual\nHasznált gestiona las particiones manualmente",
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
      "Csatlakoztassa a Wi-Fi-t",
    ),
    "wifi_item_signal_security": m36,
    "wifi_none_found": MessageLookupByLibrary.simpleMessage(
      "No se encontraron redes Wi-Fi elérhető.",
    ),
    "wifi_password_hint": MessageLookupByLibrary.simpleMessage(
      "Contraseña Wi-Fi",
    ),
    "wifi_scanning": MessageLookupByLibrary.simpleMessage(
      "Elérhető Wi-Fi hálózatok keresése...",
    ),
    "wimIntegrated": MessageLookupByLibrary.simpleMessage(
      "WIM integráció az ISO-ba",
    ),
    "wim_bridge_connection_error": m37,
    "wim_bridge_ip_dialog_title": MessageLookupByLibrary.simpleMessage(
      "IP del Puente Requiem",
    ),
    "wim_bridge_ip_placeholder": MessageLookupByLibrary.simpleMessage(
      "192.168.1.20",
    ),
    "wim_bridge_not_found": MessageLookupByLibrary.simpleMessage(
      "No se encontró ningún puente. Pruebe con la IP kézikönyv.",
    ),
    "wim_bridge_search_error": m38,
    "wim_bridge_searching": MessageLookupByLibrary.simpleMessage(
      "Requiem hidak keresése a helyi IPv4 hálózaton...",
    ),
    "wim_bridge_section_header": MessageLookupByLibrary.simpleMessage(
      "O reciba la instalación preparada desde Requiem para Windows",
    ),
    "wim_button_change_file": MessageLookupByLibrary.simpleMessage(
      "CAMBIAR ARCHIVÓ",
    ),
    "wim_button_connect_wifi": MessageLookupByLibrary.simpleMessage(
      "CONECTAR WI-FI",
    ),
    "wim_button_manual_ip": MessageLookupByLibrary.simpleMessage(
      "USAR IP KÉZIKÖNYV",
    ),
    "wim_button_rescan": MessageLookupByLibrary.simpleMessage(
      "Escanear unidades de nuevo",
    ),
    "wim_button_search_bridge": MessageLookupByLibrary.simpleMessage(
      "BUSCAR PUENTE",
    ),
    "wim_manual_search_hint": MessageLookupByLibrary.simpleMessage(
      "Használja a „Buscar”-t a WIM-kézikönyvtárban.",
    ),
    "wim_picker_description": MessageLookupByLibrary.simpleMessage(
      "A Windows telepítési képének aránya (install.wim vagy install.swm)\\n",
    ),
    "wim_picker_title": MessageLookupByLibrary.simpleMessage(
      "Válassza ki a Windows képeket",
    ),
    "wim_status_found": MessageLookupByLibrary.simpleMessage(
      "Imagen encontrada",
    ),
    "wim_status_not_found": MessageLookupByLibrary.simpleMessage(
      "No se detectó ninguna imagen",
    ),
    "wim_status_searching": MessageLookupByLibrary.simpleMessage(
      "Buscando kép…",
    ),
    "wim_status_searching_alt": MessageLookupByLibrary.simpleMessage(
      "Buscando kép...",
    ),
    "wingetUnavailable": MessageLookupByLibrary.simpleMessage(
      "winget no está instalado o no está en PATH.",
    ),
  };
}
