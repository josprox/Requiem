// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a es locale. All the
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
  String get localeName => 'es';

  static String m0(count) => "${count} programas";

  static String m1(version) => "Versión disponible: ${version}";

  static String m2(firmware) => "Acuerdo actual: ${firmware}";

  static String m3(error) => "No se pudo conectar: ${error}";

  static String m4(error) => "No se pudo buscar el puente: ${error}";

  static String m5(host) => "Comprobando conectividad con ${host}:1688...";

  static String m6(mode) => "Modo compatible: ${mode}";

  static String m7(firmware) => "Acuerdo actual: ${firmware}";

  static String m8(diskNumber, mediaType, busType) =>
      "DISCO ${diskNumber} · ${mediaType} · ${busType}";

  static String m9(recommended) => "Modo compatible: ${recommended}";

  static String m10(sizeGB) => "${sizeGB} ES";

  static String m11(imageName) => "Puente: ${imageName}";

  static String m12(name, edition) => "Edición detectada: ${name} (${edition})";

  static String m13(error) => "Ocurrió un error: ${error}";

  static String m14(val) => "Ruta inválida: ${val}";

  static String m15(error) =>
      "No se pudo leer el contenido del directorio.\\n${error}";

  static String m16(path) => "Seleccionado: ${path}";

  static String m17(path) => "Ruta inválida: ${path}";

  static String m18(clients) => "${clients} conexiones";

  static String m19(error) => "ERROR: ${error}";

  static String m20(error) =>
      "No se pudo enumerar las interfaces IPv4: ${error}";

  static String m21(path) => "WIM seleccionado: ${path}";

  static String m22(error) => "Error KMS: ${error}";

  static String m23(product, channel, edition, status) =>
      "${product} / ${channel} / ${edition} bits. La renovación queda ${status}.";

  static String m24(count) => "Paquetes detectados: ${count}.";

  static String m25(file) => "Seleccionado: ${file}";

  static String m26(count) => "${count} programas";

  static String m27(host) => "Comprobando conectividad con ${host}:1688...";

  static String m28(error) => "ERROR DE KMS: ${error}";

  static String m29(time, message) => "[${time}] ${message}";

  static String m30(count) => "Paquetes detectados: ${count}.";

  static String m31(error) => "No se pudo conectar a Wi-Fi: ${error}";

  static String m32(network) => "Conectado a ${network}.";

  static String m33(error) => "No se pudo conectar a Wi-Fi: ${error}";

  static String m34(ssid, result) => "Wi-Fi conectado a ${ssid}. ${result}";

  static String m35(ssid) => "Conectado a ${ssid}.";

  static String m36(signal, security) => "${signal}% · ${security}";

  static String m37(error) => "No se pudo conectar: ${error}";

  static String m38(error) => "No se pudo buscar el puente: ${error}";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
    "actionCancel": MessageLookupByLibrary.simpleMessage("Cancelar"),
    "actionChange": MessageLookupByLibrary.simpleMessage("Cambiar"),
    "actionConfirm": MessageLookupByLibrary.simpleMessage("Confirmar"),
    "actionConnect": MessageLookupByLibrary.simpleMessage("Conectar"),
    "actionContinue": MessageLookupByLibrary.simpleMessage("Continuar"),
    "actionInstall": MessageLookupByLibrary.simpleMessage("Instalar"),
    "actionRefresh": MessageLookupByLibrary.simpleMessage("Actualizar"),
    "actionRestartSystem": MessageLookupByLibrary.simpleMessage(
      "Reiniciar el sistema",
    ),
    "actionScanAgain": MessageLookupByLibrary.simpleMessage(
      "Escanear unidades de nueva",
    ),
    "actionSearch": MessageLookupByLibrary.simpleMessage("Buscar"),
    "actionSelect": MessageLookupByLibrary.simpleMessage("Seleccionar"),
    "activate": MessageLookupByLibrary.simpleMessage("Activar"),
    "activateKms": MessageLookupByLibrary.simpleMessage("Activar KMS"),
    "appTitleInstaller": MessageLookupByLibrary.simpleMessage(
      "Instalador de Réquiem",
    ),
    "appTitleTools": MessageLookupByLibrary.simpleMessage(
      "Herramientas de Réquiem",
    ),
    "app_title_installer": MessageLookupByLibrary.simpleMessage(
      "Instalador de Réquiem",
    ),
    "app_title_tools": MessageLookupByLibrary.simpleMessage(
      "Herramientas de Réquiem",
    ),
    "applicationStack": MessageLookupByLibrary.simpleMessage(
      "Pila de aplicaciones",
    ),
    "applicationStackDescription": MessageLookupByLibrary.simpleMessage(
      "Instale y actualice herramientas de desarrollo esenciales para Windows mediante Winget.",
    ),
    "applicationsCount": m0,
    "automaticOffice": MessageLookupByLibrary.simpleMessage(
      "oficina automática",
    ),
    "automaticOfficeDescription": MessageLookupByLibrary.simpleMessage(
      "Usa el GVLK de volumen ya instalado",
    ),
    "automaticRenewal": MessageLookupByLibrary.simpleMessage(
      "Renovación automática",
    ),
    "automaticWindows": MessageLookupByLibrary.simpleMessage(
      "ventanas automáticas",
    ),
    "automaticWindowsDescription": MessageLookupByLibrary.simpleMessage(
      "Detecta edición y GVLK compatible",
    ),
    "availableVersion": m1,
    "bootCurrent": m2,
    "bridgeConnectError": m3,
    "bridgeDescription": MessageLookupByLibrary.simpleMessage(
      "Prepare el WIM una sola vez y lo transmita directamente a los clientes Requiem de la misma red. Los clientes no guardan el WIM antes de instalarlo.",
    ),
    "bridgeIp": MessageLookupByLibrary.simpleMessage("IP del puente Réquiem"),
    "bridgePorts": MessageLookupByLibrary.simpleMessage(
      "Puerto HTTP 40124 · descubrimiento UDP 40123. Si pregunta Windows Defender, permita el acceso en redes privadas.",
    ),
    "bridgeSearchError": m4,
    "checkingKms": m5,
    "clearLogs": MessageLookupByLibrary.simpleMessage("Limpiar troncos"),
    "common_cancel": MessageLookupByLibrary.simpleMessage("CANCELAR"),
    "common_change": MessageLookupByLibrary.simpleMessage("CAMBIAR"),
    "common_connect": MessageLookupByLibrary.simpleMessage("CONECTAR"),
    "common_continue": MessageLookupByLibrary.simpleMessage("CONTINUAR"),
    "common_label_disk": MessageLookupByLibrary.simpleMessage("DISCO"),
    "common_label_image": MessageLookupByLibrary.simpleMessage("IMAGEN"),
    "common_label_mode": MessageLookupByLibrary.simpleMessage("MODO"),
    "common_refresh": MessageLookupByLibrary.simpleMessage("ACTUALIZAR"),
    "common_search": MessageLookupByLibrary.simpleMessage("BUSCAR"),
    "common_select": MessageLookupByLibrary.simpleMessage("SELECCIONAR"),
    "compatibleMode": m6,
    "confirmDataDestruction": MessageLookupByLibrary.simpleMessage(
      "Confirmar destrucción de datos",
    ),
    "confirmInstallation": MessageLookupByLibrary.simpleMessage(
      "Confirmar instalación",
    ),
    "connectInstallerWifi": MessageLookupByLibrary.simpleMessage(
      "Conectar el instalador a Wi-Fi",
    ),
    "connectWifi": MessageLookupByLibrary.simpleMessage("Conectar Wi-Fi"),
    "console_title": MessageLookupByLibrary.simpleMessage(
      "consola del sistema",
    ),
    "console_tooltip_clear": MessageLookupByLibrary.simpleMessage(
      "Limpiar troncos",
    ),
    "console_tooltip_copy": MessageLookupByLibrary.simpleMessage(
      "Copiar registros",
    ),
    "console_waiting_action": MessageLookupByLibrary.simpleMessage(
      "Esperando una acción...",
    ),
    "copyLogs": MessageLookupByLibrary.simpleMessage("Copiar registros"),
    "deploymentInProgress": MessageLookupByLibrary.simpleMessage(
      "Despliegue en curso",
    ),
    "designedBy": MessageLookupByLibrary.simpleMessage("Diseñado por Joss"),
    "destinationDiskDescription": MessageLookupByLibrary.simpleMessage(
      "Elija la unidad física donde se instalará Windows.",
    ),
    "detect": MessageLookupByLibrary.simpleMessage("Detectar"),
    "diskManagement": MessageLookupByLibrary.simpleMessage(
      "administracion de discotecas",
    ),
    "disk_badge_system": MessageLookupByLibrary.simpleMessage("SISTEMA"),
    "disk_boot_firmware_label": m7,
    "disk_button_confirm_and_install": MessageLookupByLibrary.simpleMessage(
      "CONFIRMAR E INSTALAR",
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
      "El disco seleccionado se formateará por completo. Se perderán todos los datos.",
    ),
    "disk_empty_list": MessageLookupByLibrary.simpleMessage(
      "No se detectaron discos físicos",
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
      "Seleccionar Disco de Destino",
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
      "WIM integrado en la ISO",
    ),
    "disk_wim_not_found": MessageLookupByLibrary.simpleMessage(
      "Imagen no encontrada",
    ),
    "doNotDisconnect": MessageLookupByLibrary.simpleMessage(
      "No desconecte la energía ni retire el medio de instalación",
    ),
    "downloadAndActivate": MessageLookupByLibrary.simpleMessage(
      "Descargar + activar",
    ),
    "downloadInstaller": MessageLookupByLibrary.simpleMessage(
      "Descargar instalador (.exe)",
    ),
    "downloadPortable": MessageLookupByLibrary.simpleMessage(
      "Descargar portátil (.zip)",
    ),
    "drives": MessageLookupByLibrary.simpleMessage("Unidades"),
    "editionDetected": m12,
    "emptyFolder": MessageLookupByLibrary.simpleMessage(
      "Esta carpeta está vacía",
    ),
    "errorGeneric": m13,
    "file_explorer_default_title": MessageLookupByLibrary.simpleMessage(
      "Seleccionar Imagen de Instalación de Windows",
    ),
    "file_explorer_drives_header": MessageLookupByLibrary.simpleMessage(
      "UNIDADES",
    ),
    "file_explorer_empty_folder": MessageLookupByLibrary.simpleMessage(
      "Esta carpeta está vacía",
    ),
    "file_explorer_filter_hint": MessageLookupByLibrary.simpleMessage(
      "Filtrar…",
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
    "filter": MessageLookupByLibrary.simpleMessage("Filtrar…"),
    "formatGpt": MessageLookupByLibrary.simpleMessage(
      "Formatear GPT (recomendado)",
    ),
    "formatGptDescription": MessageLookupByLibrary.simpleMessage(
      "Limpia la discoteca y crea diseño UEFI\nEFI (S:) + Windows (W:)",
    ),
    "formatMbr": MessageLookupByLibrary.simpleMessage(
      "Formatear MBR (BIOS heredado)",
    ),
    "formatMbrDescription": MessageLookupByLibrary.simpleMessage(
      "Limpia el disco y crea diseño heredado\nSolo ventanas (C:)",
    ),
    "formatWarning": MessageLookupByLibrary.simpleMessage(
      "El disco seleccionado se formateará por completo. Se perderán todos los datos.",
    ),
    "generateIso": MessageLookupByLibrary.simpleMessage("Generar ISO"),
    "getInstallOnlyIso": MessageLookupByLibrary.simpleMessage(
      "Obtener ISO para instalación solamente",
    ),
    "goUpOneLevel": MessageLookupByLibrary.simpleMessage("Subir un nivel"),
    "imageDetected": MessageLookupByLibrary.simpleMessage("Imagen detectada"),
    "imageFound": MessageLookupByLibrary.simpleMessage("Imagen encontrada"),
    "imageNotFound": MessageLookupByLibrary.simpleMessage(
      "Imagen no encontrada",
    ),
    "imageSearching": MessageLookupByLibrary.simpleMessage(
      "Buscando imagen...",
    ),
    "installAll": MessageLookupByLibrary.simpleMessage("Instalar todo"),
    "installOffice": MessageLookupByLibrary.simpleMessage(
      "Oficina de instalación",
    ),
    "installationProgress": MessageLookupByLibrary.simpleMessage(
      "Progreso de instalación",
    ),
    "invalidPath": m17,
    "isoDescription": MessageLookupByLibrary.simpleMessage(
      "Obtenga la base ISO para seleccionar un WIM al arrancar, o cree una ISO autónoma que ya incluya su imagen de Windows.",
    ),
    "iso_bridge_clients_count": m18,
    "iso_bridge_desc": MessageLookupByLibrary.simpleMessage(
      "Prepare el WIM una sola vez y lo transmita directamente a los clientes Requiem de la misma red. Los clientes no guardan el WIM antes de instalarlo.",
    ),
    "iso_bridge_generic_error": m19,
    "iso_bridge_list_interfaces_error": m20,
    "iso_bridge_save_simple_iso_dialog": MessageLookupByLibrary.simpleMessage(
      "Guardar ISO simple de Réquiem",
    ),
    "iso_bridge_save_wim_iso_dialog": MessageLookupByLibrary.simpleMessage(
      "Guardar ISO de Réquiem con WIM",
    ),
    "iso_bridge_select_wim_dialog": MessageLookupByLibrary.simpleMessage(
      "Seleccionar imagen WIM de Windows",
    ),
    "iso_bridge_simple_iso_filename": MessageLookupByLibrary.simpleMessage(
      "Requiem-Instalador-Simple.iso",
    ),
    "iso_bridge_start_validation_error": MessageLookupByLibrary.simpleMessage(
      "Seleccione un WIM y una interfaz IPv4 privada.",
    ),
    "iso_bridge_wim_selected_log": m21,
    "iso_panel_button_generate_iso": MessageLookupByLibrary.simpleMessage(
      "ISO GENERAR",
    ),
    "iso_panel_button_select_wim": MessageLookupByLibrary.simpleMessage(
      "SELECCIONAR WIM",
    ),
    "iso_panel_button_simple_iso": MessageLookupByLibrary.simpleMessage(
      "OBTENER ISO PARA INSTALACIÓN SOLAMENTE",
    ),
    "iso_panel_desc_media": MessageLookupByLibrary.simpleMessage(
      "Obtenga la base ISO para seleccionar un WIM al arrancar, o cree una ISO autónoma que ya incluya su imagen de Windows.",
    ),
    "iso_panel_title_bridge": MessageLookupByLibrary.simpleMessage(
      "Puente IPv4 de instalación",
    ),
    "iso_panel_title_media": MessageLookupByLibrary.simpleMessage(
      "Medio de instalación",
    ),
    "kmsError": m22,
    "kmsHostEmpty": MessageLookupByLibrary.simpleMessage(
      "Error: el host KMS está vacío.",
    ),
    "kmsServer": MessageLookupByLibrary.simpleMessage("Servidor KMS"),
    "kmsTask160Days": MessageLookupByLibrary.simpleMessage("Tarea 160 días"),
    "kmsVolumeActivation": MessageLookupByLibrary.simpleMessage(
      "Activación de volumen (KMS)",
    ),
    "kms_product_office_ltsc_professional_plus_2021":
        MessageLookupByLibrary.simpleMessage(
          "Oficina LTSC Profesional Plus 2021",
        ),
    "kms_product_office_ltsc_professional_plus_2024":
        MessageLookupByLibrary.simpleMessage(
          "Oficina LTSC Profesional Plus 2024",
        ),
    "kms_product_office_professional_plus_2013":
        MessageLookupByLibrary.simpleMessage("Office Profesional Plus 2013"),
    "kms_product_office_professional_plus_2016":
        MessageLookupByLibrary.simpleMessage("Office Profesional Plus 2016"),
    "kms_product_office_professional_plus_2019":
        MessageLookupByLibrary.simpleMessage("Oficina Profesional Plus 2019"),
    "kms_product_office_standard_2013": MessageLookupByLibrary.simpleMessage(
      "Estándar de oficina 2013",
    ),
    "kms_product_windows_10_11_education": MessageLookupByLibrary.simpleMessage(
      "Windows 10/11 Educación",
    ),
    "kms_product_windows_10_11_education_n":
        MessageLookupByLibrary.simpleMessage("Windows 10/11 Educación N"),
    "kms_product_windows_10_11_enterprise":
        MessageLookupByLibrary.simpleMessage("Windows 10/11 empresarial"),
    "kms_product_windows_10_11_enterprise_g":
        MessageLookupByLibrary.simpleMessage("Windows 10/11 Empresa G"),
    "kms_product_windows_10_11_enterprise_g_n":
        MessageLookupByLibrary.simpleMessage("Windows 10/11 Enterprise G N"),
    "kms_product_windows_10_11_enterprise_n":
        MessageLookupByLibrary.simpleMessage("Windows 10/11 Empresa N"),
    "kms_product_windows_10_11_pro": MessageLookupByLibrary.simpleMessage(
      "Windows 10/11 Pro",
    ),
    "kms_product_windows_10_11_pro_education":
        MessageLookupByLibrary.simpleMessage("Windows 10/11 Pro Educación"),
    "kms_product_windows_10_11_pro_for_workstations":
        MessageLookupByLibrary.simpleMessage(
          "Windows 10/11 Pro para estaciones de trabajo",
        ),
    "kms_product_windows_10_11_pro_n": MessageLookupByLibrary.simpleMessage(
      "Windows 10/11 Pro N",
    ),
    "kms_product_windows_10_11_pro_workstations":
        MessageLookupByLibrary.simpleMessage(
          "Estaciones de trabajo Windows 10/11 Pro",
        ),
    "kms_product_windows_8_1_enterprise": MessageLookupByLibrary.simpleMessage(
      "Windows 8.1 Empresa",
    ),
    "kms_product_windows_8_1_pro": MessageLookupByLibrary.simpleMessage(
      "Windows 8.1 Pro",
    ),
    "kms_product_windows_8_enterprise": MessageLookupByLibrary.simpleMessage(
      "Windows 8 Empresa",
    ),
    "kms_product_windows_8_pro": MessageLookupByLibrary.simpleMessage(
      "Windows 8 Pro",
    ),
    "kms_product_windows_server_2019_datacenter":
        MessageLookupByLibrary.simpleMessage(
          "Centro de datos de Windows Server 2019",
        ),
    "kms_product_windows_server_2019_standard":
        MessageLookupByLibrary.simpleMessage(
          "Estándar del servidor de Windows 2019",
        ),
    "kms_product_windows_server_2022_datacenter":
        MessageLookupByLibrary.simpleMessage(
          "Centro de datos de Windows Server 2022",
        ),
    "kms_product_windows_server_2022_standard":
        MessageLookupByLibrary.simpleMessage("Estándar de Windows Server 2022"),
    "kms_product_windows_server_2025_datacenter":
        MessageLookupByLibrary.simpleMessage(
          "Centro de datos de Windows Server 2025",
        ),
    "kms_product_windows_server_2025_standard":
        MessageLookupByLibrary.simpleMessage("Estándar de Windows Server 2025"),
    "kms_product_windows_subsystem_for_linux":
        MessageLookupByLibrary.simpleMessage(
          "Subsistema de Windows para Linux",
        ),
    "kms_product_windows_terminal": MessageLookupByLibrary.simpleMessage(
      "Terminal de Windows",
    ),
    "landingDescription": MessageLookupByLibrary.simpleMessage(
      "Instalador de Windows de alta precisión para entornos de alto rendimiento. Experimente un despliegue rápido con orquestación directa de DISM y optimización automatizada del sistema.",
    ),
    "landing_badge_author": MessageLookupByLibrary.simpleMessage(
      "DISEÑADO POR JOSS",
    ),
    "landing_badge_secure_boot": MessageLookupByLibrary.simpleMessage(
      "COMPATIBLE CON BOTA SEGURA",
    ),
    "landing_badge_version": MessageLookupByLibrary.simpleMessage(
      "VERSIÓN ESTABLE",
    ),
    "landing_button_logs": MessageLookupByLibrary.simpleMessage(
      "REGISTROS DEL SISTEMA",
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
      "INSTALADOR DE REQUIEM",
    ),
    "landing_title_tools": MessageLookupByLibrary.simpleMessage(
      "HERRAMIENTAS DE REQUIEM",
    ),
    "licenseActivation": MessageLookupByLibrary.simpleMessage(
      "activación de licencias",
    ),
    "logsCopied": MessageLookupByLibrary.simpleMessage(
      "Registros copiados al portapapeles.",
    ),
    "mandatoryUpdate": MessageLookupByLibrary.simpleMessage(
      "Esta actualización es obligatoria y no puede omitirse.",
    ),
    "manualWimHint": MessageLookupByLibrary.simpleMessage(
      "Utilice \"Buscar\" para localizar su archivo WIM manualmente.",
    ),
    "mediaInstallation": MessageLookupByLibrary.simpleMessage(
      "Medio de instalación",
    ),
    "networkBridge": MessageLookupByLibrary.simpleMessage(
      "Puente IPv4 de instalación",
    ),
    "networkInterface": MessageLookupByLibrary.simpleMessage(
      "Interfaz Wi‑Fi/LAN IPv4",
    ),
    "nextGenerationDeployment": MessageLookupByLibrary.simpleMessage(
      "Despliegue de SO de próxima generación",
    ),
    "noBridgeFound": MessageLookupByLibrary.simpleMessage(
      "No se encontró ningún puente. Pruebe con el manual de IP.",
    ),
    "noFormatWarning": MessageLookupByLibrary.simpleMessage(
      "Windows se desplegará en W:\\ sin formatear.",
    ),
    "noImageDetected": MessageLookupByLibrary.simpleMessage(
      "No se detectó ninguna imagen",
    ),
    "noKmsProducts": MessageLookupByLibrary.simpleMessage(
      "No hay productos KMS seleccionados.",
    ),
    "noPhysicalDisks": MessageLookupByLibrary.simpleMessage(
      "No se detectaron discos físicos",
    ),
    "noProgramsSelected": MessageLookupByLibrary.simpleMessage(
      "No hay programas seleccionados.",
    ),
    "noWifiNetworks": MessageLookupByLibrary.simpleMessage(
      "No se encontraron redes Wi-Fi disponibles.",
    ),
    "noWingetPackages": MessageLookupByLibrary.simpleMessage(
      "No se detectaron paquetes conocidos con Winget.",
    ),
    "officeInstallDescription": MessageLookupByLibrary.simpleMessage(
      "Despliega Microsoft Office LTSC o 365 de manera automatizada usando ODT.",
    ),
    "officeInstaller": MessageLookupByLibrary.simpleMessage(
      "Instalador de oficina",
    ),
    "officeRenewalStatus": m23,
    "officeVersion": MessageLookupByLibrary.simpleMessage("Versión de oficina"),
    "office_odt_kms_badge": MessageLookupByLibrary.simpleMessage("ODT + KMS"),
    "office_odt_panel_title": MessageLookupByLibrary.simpleMessage(
      "Herramienta de implementación de Office",
    ),
    "office_pkg_desc_2019": MessageLookupByLibrary.simpleMessage(
      "Haga clic y ejecute el volumen con canal PerpetualVL2019",
    ),
    "office_pkg_desc_2021": MessageLookupByLibrary.simpleMessage(
      "Haga clic y ejecute el volumen con canal PerpetualVL2021",
    ),
    "office_pkg_desc_2024": MessageLookupByLibrary.simpleMessage(
      "Haga clic y ejecute el volumen con canal PerpetualVL2024",
    ),
    "office_pkg_name_2019": MessageLookupByLibrary.simpleMessage(
      "Oficina Pro Plus 2019",
    ),
    "office_pkg_name_2021": MessageLookupByLibrary.simpleMessage(
      "Oficina LTSC Pro Plus 2021",
    ),
    "office_pkg_name_2024": MessageLookupByLibrary.simpleMessage(
      "Oficina LTSC Pro Plus 2024",
    ),
    "onlyWindows": MessageLookupByLibrary.simpleMessage(
      "Esta función solo está disponible en Windows.",
    ),
    "packageStack": MessageLookupByLibrary.simpleMessage(
      "Pila de programas (Winget)",
    ),
    "packagesDetected": m24,
    "partitionMode": MessageLookupByLibrary.simpleMessage("Modo de partición"),
    "pkg_cat_apache_php_mysql": MessageLookupByLibrary.simpleMessage(
      "Apache PHP MySQL",
    ),
    "pkg_cat_bi_desktop": MessageLookupByLibrary.simpleMessage(
      "Escritorio de BI",
    ),
    "pkg_cat_cliente_api": MessageLookupByLibrary.simpleMessage(
      "API de cliente",
    ),
    "pkg_cat_cliente_db": MessageLookupByLibrary.simpleMessage(
      "Base de datos del cliente",
    ),
    "pkg_cat_compiladores_c": MessageLookupByLibrary.simpleMessage(
      "Compiladores C++",
    ),
    "pkg_cat_compresor": MessageLookupByLibrary.simpleMessage("compresor"),
    "pkg_cat_comunicacion": MessageLookupByLibrary.simpleMessage(
      "comunicación",
    ),
    "pkg_cat_control_de_versiones": MessageLookupByLibrary.simpleMessage(
      "Control de versiones",
    ),
    "pkg_cat_desktop": MessageLookupByLibrary.simpleMessage("Escritorio"),
    "pkg_cat_diagramas": MessageLookupByLibrary.simpleMessage("diagramas"),
    "pkg_cat_distro_wsl": MessageLookupByLibrary.simpleMessage(
      "Distribución WSL",
    ),
    "pkg_cat_editor": MessageLookupByLibrary.simpleMessage("Redactor"),
    "pkg_cat_golang": MessageLookupByLibrary.simpleMessage("golang"),
    "pkg_cat_gpu_compute": MessageLookupByLibrary.simpleMessage(
      "Computación GPU",
    ),
    "pkg_cat_grabacion": MessageLookupByLibrary.simpleMessage("Grabación"),
    "pkg_cat_ide_ai": MessageLookupByLibrary.simpleMessage("IDE IA"),
    "pkg_cat_ide_android": MessageLookupByLibrary.simpleMessage("IDEAndroid"),
    "pkg_cat_ide_completo": MessageLookupByLibrary.simpleMessage(
      "IDE completo",
    ),
    "pkg_cat_instaladores": MessageLookupByLibrary.simpleMessage(
      "Instaladores",
    ),
    "pkg_cat_javascript": MessageLookupByLibrary.simpleMessage("javascript"),
    "pkg_cat_limpieza": MessageLookupByLibrary.simpleMessage("limpieza"),
    "pkg_cat_modelos_locales": MessageLookupByLibrary.simpleMessage(
      "Modelos locales",
    ),
    "pkg_cat_navegador": MessageLookupByLibrary.simpleMessage("Navegador"),
    "pkg_cat_python_3": MessageLookupByLibrary.simpleMessage("Pitón 3"),
    "pkg_cat_runtime_c": MessageLookupByLibrary.simpleMessage(
      "Tiempo de ejecución C++",
    ),
    "pkg_cat_runtime_escritorio": MessageLookupByLibrary.simpleMessage(
      "Escritorio en tiempo de ejecución",
    ),
    "pkg_cat_runtime_juegos": MessageLookupByLibrary.simpleMessage(
      "juegos en tiempo de ejecución",
    ),
    "pkg_cat_runtime_php": MessageLookupByLibrary.simpleMessage(
      "PHP en tiempo de ejecución",
    ),
    "pkg_cat_rustup": MessageLookupByLibrary.simpleMessage("Oxidado"),
    "pkg_cat_sdk__net": MessageLookupByLibrary.simpleMessage("SDK .NET"),
    "pkg_cat_servidor_db": MessageLookupByLibrary.simpleMessage("Servidor DB"),
    "pkg_cat_ssh_clasico": MessageLookupByLibrary.simpleMessage("SSH clásico"),
    "pkg_cat_ssh_moderno": MessageLookupByLibrary.simpleMessage("SSH moderno"),
    "pkg_cat_subsistema_linux": MessageLookupByLibrary.simpleMessage(
      "subsistema linux",
    ),
    "pkg_cat_temurin_21": MessageLookupByLibrary.simpleMessage("Temurín 21"),
    "pkg_cat_terminal_moderno": MessageLookupByLibrary.simpleMessage(
      "terminal moderna",
    ),
    "prepareBridge": MessageLookupByLibrary.simpleMessage(
      "Preparar e iniciar puente",
    ),
    "progress_button_reboot": MessageLookupByLibrary.simpleMessage(
      "SISTEMA REINICIAR",
    ),
    "progress_footer_warning": MessageLookupByLibrary.simpleMessage(
      "NO DESCONECTE LA ENERGÍA NI RETIRE EL MEDIO DE INSTALACIÓN",
    ),
    "progress_header_badge": MessageLookupByLibrary.simpleMessage(
      "DESPLIEGUE EN CURSO",
    ),
    "provideWindowsImage": MessageLookupByLibrary.simpleMessage(
      "Proporcione la imagen de instalación de Windows (install.wim o install.swm)\ndesde una unidad USB o cualquier medio montado.",
    ),
    "receiveInstallation": MessageLookupByLibrary.simpleMessage(
      "O reciba la instalación preparada desde Requiem para Windows",
    ),
    "renewalActive": MessageLookupByLibrary.simpleMessage("activa"),
    "renewalDisabled": MessageLookupByLibrary.simpleMessage("Desactivada"),
    "searchingImage": MessageLookupByLibrary.simpleMessage("Buscando imagen…"),
    "secureBootCompatible": MessageLookupByLibrary.simpleMessage(
      "Compatible con arranque seguro",
    ),
    "selectDestinationDisk": MessageLookupByLibrary.simpleMessage(
      "Seleccionar disco de destino",
    ),
    "selectFileHint": MessageLookupByLibrary.simpleMessage(
      "Seleccione un archivo .wim o .swm",
    ),
    "selectWim": MessageLookupByLibrary.simpleMessage("Seleccionar WIM"),
    "selectWimFirst": MessageLookupByLibrary.simpleMessage(
      "Seleccione un WIM y una interfaz IPv4 privada.",
    ),
    "selectWindowsImage": MessageLookupByLibrary.simpleMessage(
      "Seleccionar imagen de Windows",
    ),
    "selectWindowsImageFull": MessageLookupByLibrary.simpleMessage(
      "Seleccionar imagen de instalación de Windows",
    ),
    "selectedFile": m25,
    "stableVersion": MessageLookupByLibrary.simpleMessage(
      "Versión estable v1.0.0",
    ),
    "start": MessageLookupByLibrary.simpleMessage("Empezar"),
    "startInstallation": MessageLookupByLibrary.simpleMessage(
      "Iniciar instalación",
    ),
    "stopBridge": MessageLookupByLibrary.simpleMessage("puente detener"),
    "systemConsole": MessageLookupByLibrary.simpleMessage(
      "Consola del sistema",
    ),
    "systemDisk": MessageLookupByLibrary.simpleMessage("sistema"),
    "systemLogs": MessageLookupByLibrary.simpleMessage("Registros del sistema"),
    "tools_badge_iso_compatibility": MessageLookupByLibrary.simpleMessage(
      "Conservadores BIOS + UEFI",
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
      "OFICINA INSTALARIA",
    ),
    "tools_header_title": MessageLookupByLibrary.simpleMessage(
      "HERRAMIENTAS DE MIGRACIÓN DE REQUIEM",
    ),
    "tools_kms_checking_connectivity": m27,
    "tools_kms_empty_host_error": MessageLookupByLibrary.simpleMessage(
      "ERROR: el host KMS está vacío.",
    ),
    "tools_kms_error_log": m28,
    "tools_kms_no_products_selected": MessageLookupByLibrary.simpleMessage(
      "No hay productos KMS seleccionados.",
    ),
    "tools_log_format": m29,
    "tools_logs_copied_snackbar": MessageLookupByLibrary.simpleMessage(
      "Registros copiados al portapapeles.",
    ),
    "tools_packages_detected_count": m30,
    "tools_packages_none_detected": MessageLookupByLibrary.simpleMessage(
      "No se detectaron paquetes conocidos con Winget.",
    ),
    "tools_packages_none_selected": MessageLookupByLibrary.simpleMessage(
      "No hay programas seleccionados.",
    ),
    "tools_section_activation_desc": MessageLookupByLibrary.simpleMessage(
      "Configure el servidor KMS local o remoto para activar Windows y Office.",
    ),
    "tools_section_activation_title": MessageLookupByLibrary.simpleMessage(
      "Activación de Licencias",
    ),
    "tools_section_iso_desc": MessageLookupByLibrary.simpleMessage(
      "Cree medios autónomos con un WIM integrado o distribuya una instalación directamente por IPv4.",
    ),
    "tools_section_iso_title": MessageLookupByLibrary.simpleMessage(
      "ISO y despliegue por rojo",
    ),
    "tools_section_office_desc": MessageLookupByLibrary.simpleMessage(
      "Despliega Microsoft Office LTSC o 365 de manera automatizada usando ODT.",
    ),
    "tools_section_office_title": MessageLookupByLibrary.simpleMessage(
      "Instalador de oficina",
    ),
    "tools_section_packages_desc": MessageLookupByLibrary.simpleMessage(
      "Instale y actualice herramientas de desarrollo esenciales para Windows mediante Winget.",
    ),
    "tools_section_packages_title": MessageLookupByLibrary.simpleMessage(
      "Pila de aplicaciones",
    ),
    "tools_sidebar_app_name": MessageLookupByLibrary.simpleMessage("RÉQUIEM"),
    "tools_sidebar_mode_badge": MessageLookupByLibrary.simpleMessage(
      "Modo de herramientas locales",
    ),
    "tools_sidebar_tab_iso": MessageLookupByLibrary.simpleMessage(
      "ISO y Puente",
    ),
    "tools_sidebar_tab_kms": MessageLookupByLibrary.simpleMessage(
      "Activación KMS",
    ),
    "tools_sidebar_tab_office": MessageLookupByLibrary.simpleMessage(
      "Instalación Oficina",
    ),
    "tools_sidebar_tab_packages": MessageLookupByLibrary.simpleMessage(
      "Programas de pila",
    ),
    "unknown": MessageLookupByLibrary.simpleMessage("Desconocido"),
    "updateDescription": MessageLookupByLibrary.simpleMessage(
      "Para continuar usando Requiem Tools es necesario actualizar a la versión más reciente.",
    ),
    "updateRequired": MessageLookupByLibrary.simpleMessage(
      "Actualización requerida",
    ),
    "useExistingPartitions": MessageLookupByLibrary.simpleMessage(
      "Usar particiones existentes",
    ),
    "useExistingPartitionsDescription": MessageLookupByLibrary.simpleMessage(
      "Sin formatear — despliega en W: tal cual\nUsted gestiona las participaciones manualmente",
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
      "Conectar el instalador a Wi-Fi",
    ),
    "wifi_item_signal_security": m36,
    "wifi_none_found": MessageLookupByLibrary.simpleMessage(
      "No se encontraron redes Wi-Fi disponibles.",
    ),
    "wifi_password_hint": MessageLookupByLibrary.simpleMessage(
      "Contraseña Wi-Fi",
    ),
    "wifi_scanning": MessageLookupByLibrary.simpleMessage(
      "Buscando redes Wi-Fi disponibles...",
    ),
    "wimIntegrated": MessageLookupByLibrary.simpleMessage(
      "WIM integrado en la ISO",
    ),
    "wim_bridge_connection_error": m37,
    "wim_bridge_ip_dialog_title": MessageLookupByLibrary.simpleMessage(
      "IP del puente Réquiem",
    ),
    "wim_bridge_ip_placeholder": MessageLookupByLibrary.simpleMessage(
      "192.168.1.20",
    ),
    "wim_bridge_not_found": MessageLookupByLibrary.simpleMessage(
      "No se encontró ningún puente. Pruebe con el manual de IP.",
    ),
    "wim_bridge_search_error": m38,
    "wim_bridge_searching": MessageLookupByLibrary.simpleMessage(
      "Buscando puentes Requiem en la red IPv4 local...",
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
      "MANUAL IP USAR",
    ),
    "wim_button_rescan": MessageLookupByLibrary.simpleMessage(
      "Escanear unidades de nueva",
    ),
    "wim_button_search_bridge": MessageLookupByLibrary.simpleMessage(
      "BUSCAR PUENTE",
    ),
    "wim_manual_search_hint": MessageLookupByLibrary.simpleMessage(
      "Utilice \"Buscar\" para localizar su archivo WIM manualmente.",
    ),
    "wim_picker_description": MessageLookupByLibrary.simpleMessage(
      "Proporcione la imagen de instalación de Windows (install.wim o install.swm)\\n",
    ),
    "wim_picker_title": MessageLookupByLibrary.simpleMessage(
      "Seleccionar Imagen de Windows",
    ),
    "wim_status_found": MessageLookupByLibrary.simpleMessage(
      "Imagen encontrada",
    ),
    "wim_status_not_found": MessageLookupByLibrary.simpleMessage(
      "No se detectó ninguna imagen",
    ),
    "wim_status_searching": MessageLookupByLibrary.simpleMessage(
      "Buscando imagen…",
    ),
    "wim_status_searching_alt": MessageLookupByLibrary.simpleMessage(
      "Buscando imagen...",
    ),
    "wingetUnavailable": MessageLookupByLibrary.simpleMessage(
      "Winget no está instalado o no está en PATH.",
    ),
  };
}
