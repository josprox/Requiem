// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a bg locale. All the
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
  String get localeName => 'bg';

  static String m0(count) => "${count} програми";

  static String m1(version) => "Налична версия: ${version}";

  static String m2(firmware) => "Актуална аранжировка: ${firmware}";

  static String m3(error) => "No se pudo conectar: ${error}";

  static String m4(error) => "No se pudo buscar el puente: ${error}";

  static String m5(host) => "Comprobando conectividad con ${host}:1688...";

  static String m6(mode) => "Съвместим с Modo: ${mode}";

  static String m7(firmware) => "Актуална аранжировка: ${firmware}";

  static String m8(diskNumber, mediaType, busType) =>
      "ДИСК ${diskNumber} · ${mediaType} · ${busType}";

  static String m9(recommended) => "Съвместим с Modo: ${recommended}";

  static String m10(sizeGB) => "${sizeGB} ГБ";

  static String m11(imageName) =>
      "Пуенте: \${controller.bridgeAnnouncement?.imageName ??";

  static String m12(name, edition) => "Открито издание: ${name} (${edition})";

  static String m13(error) => "Възникна грешка: ${error}";

  static String m14(val) => "Инвалиден път: ${val}";

  static String m15(error) =>
      "No se pudo leer el contenido del directorio.\\n${error}";

  static String m16(path) => "Избор: ${path}";

  static String m17(path) => "Инвалиден път: ${path}";

  static String m18(clients) => "${clients} конексиони";

  static String m19(error) => "ГРЕШКА: ${error}";

  static String m20(error) =>
      "Не можете да изброите IPv4 интерфейсите: ${error}";

  static String m21(path) => "Избран WIM: ${path}";

  static String m22(error) => "Грешка KMS: ${error}";

  static String m23(product, channel, edition, status) =>
      "${product} / ${channel} / ${edition} бита. La renovación queda ${status}.";

  static String m24(count) => "Открити пакети: ${count}.";

  static String m25(file) => "Избор: ${file}";

  static String m26(count) => "${count} програми";

  static String m27(host) => "Comprobando conectividad con ${host}:1688...";

  static String m28(error) => "ГРЕШКА KMS: ${error}";

  static String m29(time, message) => "[${time}] ${message}";

  static String m30(count) => "Открити пакети: ${count}.";

  static String m31(error) => "Не можете да се свържете с Wi-Fi: ${error}";

  static String m32(network) => "Свържете се с ${network}.";

  static String m33(error) => "Не можете да се свържете с Wi-Fi: ${error}";

  static String m34(ssid, result) => "Wi-Fi свързан към ${ssid}. ${result}";

  static String m35(ssid) => "Свържете се с ${ssid}.";

  static String m36(signal, security) => "${signal}% · ${security}";

  static String m37(error) => "No se pudo conectar: ${error}";

  static String m38(error) => "No se pudo buscar el puente: ${error}";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
    "actionCancel": MessageLookupByLibrary.simpleMessage("Отменям"),
    "actionChange": MessageLookupByLibrary.simpleMessage("Камбиар"),
    "actionConfirm": MessageLookupByLibrary.simpleMessage("Потвърдете"),
    "actionConnect": MessageLookupByLibrary.simpleMessage("Conectar"),
    "actionContinue": MessageLookupByLibrary.simpleMessage("Продължи"),
    "actionInstall": MessageLookupByLibrary.simpleMessage("Инсталирайте"),
    "actionRefresh": MessageLookupByLibrary.simpleMessage("Актуализирайте"),
    "actionRestartSystem": MessageLookupByLibrary.simpleMessage(
      "Reiniciar система",
    ),
    "actionScanAgain": MessageLookupByLibrary.simpleMessage(
      "Escanear unidades de nuevo",
    ),
    "actionSearch": MessageLookupByLibrary.simpleMessage("Бускар"),
    "actionSelect": MessageLookupByLibrary.simpleMessage("Selectionar"),
    "activate": MessageLookupByLibrary.simpleMessage("Активар"),
    "activateKms": MessageLookupByLibrary.simpleMessage("Активирайте KMS"),
    "appTitleInstaller": MessageLookupByLibrary.simpleMessage(
      "Инсталатор на Requiem",
    ),
    "appTitleTools": MessageLookupByLibrary.simpleMessage(
      "Инструменти за Реквием",
    ),
    "app_title_installer": MessageLookupByLibrary.simpleMessage(
      "Инсталатор на Requiem",
    ),
    "app_title_tools": MessageLookupByLibrary.simpleMessage(
      "Инструменти за Реквием",
    ),
    "applicationStack": MessageLookupByLibrary.simpleMessage(
      "Стек от приложения",
    ),
    "applicationStackDescription": MessageLookupByLibrary.simpleMessage(
      "Инсталирайте и актуализирайте елементите на esenciales desarrollo за Windows mediante winget.",
    ),
    "applicationsCount": m0,
    "automaticOffice": MessageLookupByLibrary.simpleMessage("Автоматичен офис"),
    "automaticOfficeDescription": MessageLookupByLibrary.simpleMessage(
      "Използване на GVLK за обем за инсталиране",
    ),
    "automaticRenewal": MessageLookupByLibrary.simpleMessage(
      "Автоматично обновяване",
    ),
    "automaticWindows": MessageLookupByLibrary.simpleMessage(
      "Windows автоматично",
    ),
    "automaticWindowsDescription": MessageLookupByLibrary.simpleMessage(
      "Detecta edición y GVLK съвместим",
    ),
    "availableVersion": m1,
    "bootCurrent": m2,
    "bridgeConnectError": m3,
    "bridgeDescription": MessageLookupByLibrary.simpleMessage(
      "Prepara el WIM una sola vez y lo transmite directamente a los clientes Requiem de la misma red. Клиентите не пазят WIM преди инсталирането.",
    ),
    "bridgeIp": MessageLookupByLibrary.simpleMessage("IP del puente Requiem"),
    "bridgePorts": MessageLookupByLibrary.simpleMessage(
      "Пуерто HTTP 40124 · Описание на UDP 40123. Ако Windows Defender е препоръчан, можете да разрешите достъп до поверителност.",
    ),
    "bridgeSearchError": m4,
    "checkingKms": m5,
    "clearLogs": MessageLookupByLibrary.simpleMessage("Лимпиарски трупи"),
    "common_cancel": MessageLookupByLibrary.simpleMessage("ОТМЕНЯ"),
    "common_change": MessageLookupByLibrary.simpleMessage("КАМБИАР"),
    "common_connect": MessageLookupByLibrary.simpleMessage("КОНЕКТАР"),
    "common_continue": MessageLookupByLibrary.simpleMessage("ПРОДЪЛЖАВАНЕ"),
    "common_label_disk": MessageLookupByLibrary.simpleMessage("ДИСК"),
    "common_label_image": MessageLookupByLibrary.simpleMessage("ИЗОБРАЖЕНИЕ"),
    "common_label_mode": MessageLookupByLibrary.simpleMessage("РЕЖИМ"),
    "common_refresh": MessageLookupByLibrary.simpleMessage("АКТУАЛИЗИРАНЕ"),
    "common_search": MessageLookupByLibrary.simpleMessage("БУСКАР"),
    "common_select": MessageLookupByLibrary.simpleMessage("СЕЛЕКЦИОНАР"),
    "compatibleMode": m6,
    "confirmDataDestruction": MessageLookupByLibrary.simpleMessage(
      "Потвърдете унищожаването на данните",
    ),
    "confirmInstallation": MessageLookupByLibrary.simpleMessage(
      "Потвърдете инсталацията",
    ),
    "connectInstallerWifi": MessageLookupByLibrary.simpleMessage(
      "Свържете се с инсталирането на Wi-Fi",
    ),
    "connectWifi": MessageLookupByLibrary.simpleMessage("Свързване с Wi-Fi"),
    "console_title": MessageLookupByLibrary.simpleMessage(
      "Consola del Sistema",
    ),
    "console_tooltip_clear": MessageLookupByLibrary.simpleMessage(
      "Лимпиарски трупи",
    ),
    "console_tooltip_copy": MessageLookupByLibrary.simpleMessage(
      "Copiar регистрационни файлове",
    ),
    "console_waiting_action": MessageLookupByLibrary.simpleMessage(
      "Esperando una ación...",
    ),
    "copyLogs": MessageLookupByLibrary.simpleMessage(
      "Copiar регистрационни файлове",
    ),
    "deploymentInProgress": MessageLookupByLibrary.simpleMessage(
      "Despliegue en curso",
    ),
    "designedBy": MessageLookupByLibrary.simpleMessage("Дизайн на Джос"),
    "destinationDiskDescription": MessageLookupByLibrary.simpleMessage(
      "Elija la unidad física donde se инсталира Windows.",
    ),
    "detect": MessageLookupByLibrary.simpleMessage("Детектор"),
    "diskManagement": MessageLookupByLibrary.simpleMessage(
      "Администрация на дискотеки",
    ),
    "disk_badge_system": MessageLookupByLibrary.simpleMessage("СИСТЕМА"),
    "disk_boot_firmware_label": m7,
    "disk_button_confirm_and_install": MessageLookupByLibrary.simpleMessage(
      "ПОТВЪРДЕТЕ И ИНСТАЛИРАНЕТО",
    ),
    "disk_dialog_confirm_destruction_title":
        MessageLookupByLibrary.simpleMessage(
          "ПОТВЪРЖДЕНИЕ НА УНИЩОЖАВАНЕТО НА ДАННИТЕ",
        ),
    "disk_dialog_confirm_install_title": MessageLookupByLibrary.simpleMessage(
      "ПОТВЪРЖДЕНИЕ НА ИНСТАЛАЦИЯТА",
    ),
    "disk_dialog_existing_notice": MessageLookupByLibrary.simpleMessage(
      "Windows се премахва в W:\\\\ без форматиране.",
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
    "disk_partition_gpt_uefi": MessageLookupByLibrary.simpleMessage(
      "GPT / UEFI",
    ),
    "disk_partition_mbr_bios": MessageLookupByLibrary.simpleMessage(
      "MBR / BIOS",
    ),
    "disk_recommended_mode_label": m9,
    "disk_selection_button_start": MessageLookupByLibrary.simpleMessage(
      "ПЪРВОНАЧАЛЕН ИНСТАЛАЦИОН",
    ),
    "disk_selection_desc": MessageLookupByLibrary.simpleMessage(
      "Elija la unidad física donde se инсталира Windows.",
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
      "Разпознато изображение",
    ),
    "disk_wim_integrated_source": MessageLookupByLibrary.simpleMessage(
      "WIM е интегриран в ISO",
    ),
    "disk_wim_not_found": MessageLookupByLibrary.simpleMessage(
      "Imagen no encontrada",
    ),
    "doNotDisconnect": MessageLookupByLibrary.simpleMessage(
      "No desconecte la energía ni retire el medio de instalación",
    ),
    "downloadAndActivate": MessageLookupByLibrary.simpleMessage(
      "Изтегляне + активиране",
    ),
    "downloadInstaller": MessageLookupByLibrary.simpleMessage(
      "Изтеглете инсталатора (.exe)",
    ),
    "downloadPortable": MessageLookupByLibrary.simpleMessage(
      "Изтеглете преносим (.zip)",
    ),
    "drives": MessageLookupByLibrary.simpleMessage("Unidades"),
    "editionDetected": m12,
    "emptyFolder": MessageLookupByLibrary.simpleMessage(
      "Esta carpeta está vacía",
    ),
    "errorGeneric": m13,
    "file_explorer_default_title": MessageLookupByLibrary.simpleMessage(
      "Избор на изображения за инсталиране на Windows",
    ),
    "file_explorer_drives_header": MessageLookupByLibrary.simpleMessage(
      "UNIDADES",
    ),
    "file_explorer_empty_folder": MessageLookupByLibrary.simpleMessage(
      "Esta carpeta está vacía",
    ),
    "file_explorer_filter_hint": MessageLookupByLibrary.simpleMessage(
      "Филтър…",
    ),
    "file_explorer_go_up_tooltip": MessageLookupByLibrary.simpleMessage(
      "Subir un nivel",
    ),
    "file_explorer_invalid_path_error": m14,
    "file_explorer_read_error": m15,
    "file_explorer_select_file_hint": MessageLookupByLibrary.simpleMessage(
      "Изберете архив .wim или .swm",
    ),
    "file_explorer_selected_file": m16,
    "filter": MessageLookupByLibrary.simpleMessage("Филтър…"),
    "formatGpt": MessageLookupByLibrary.simpleMessage(
      "Форматиране на GPT (препоръчително)",
    ),
    "formatGptDescription": MessageLookupByLibrary.simpleMessage(
      "Лимпия на дискотека и създаване на UEFI дизайн\nEFI (S:) + Windows (W:)",
    ),
    "formatMbr": MessageLookupByLibrary.simpleMessage(
      "Formatear MBR (BIOS heredado)",
    ),
    "formatMbrDescription": MessageLookupByLibrary.simpleMessage(
      "Limpia el Disco y crea diseño heredado\nСамостоятелни Windows (C:)",
    ),
    "formatWarning": MessageLookupByLibrary.simpleMessage(
      "El disco seleccionado se formateará por completo. Se perderán todos los datos.",
    ),
    "generateIso": MessageLookupByLibrary.simpleMessage("Генериран ISO"),
    "getInstallOnlyIso": MessageLookupByLibrary.simpleMessage(
      "Получете ISO за инсталация",
    ),
    "goUpOneLevel": MessageLookupByLibrary.simpleMessage("Subir un nivel"),
    "imageDetected": MessageLookupByLibrary.simpleMessage(
      "Разпознато изображение",
    ),
    "imageFound": MessageLookupByLibrary.simpleMessage("Imagen contrada"),
    "imageNotFound": MessageLookupByLibrary.simpleMessage(
      "Imagen no encontrada",
    ),
    "imageSearching": MessageLookupByLibrary.simpleMessage(
      "Buscando изображение...",
    ),
    "installAll": MessageLookupByLibrary.simpleMessage("Инсталирайте това"),
    "installOffice": MessageLookupByLibrary.simpleMessage(
      "Инсталирайте Office",
    ),
    "installationProgress": MessageLookupByLibrary.simpleMessage(
      "Прогрес на инсталацията",
    ),
    "invalidPath": m17,
    "isoDescription": MessageLookupByLibrary.simpleMessage(
      "Изтеглете ISO базата за избор на WIM като устройство, или създайте един ISO автоном, който включва изображението на Windows.",
    ),
    "iso_bridge_clients_count": m18,
    "iso_bridge_desc": MessageLookupByLibrary.simpleMessage(
      "Prepara el WIM una sola vez y lo transmite directamente a los clientes Requiem de la misma red. Клиентите не пазят WIM преди инсталирането.",
    ),
    "iso_bridge_generic_error": m19,
    "iso_bridge_list_interfaces_error": m20,
    "iso_bridge_save_simple_iso_dialog": MessageLookupByLibrary.simpleMessage(
      "Guardar ISO simple de Requiem",
    ),
    "iso_bridge_save_wim_iso_dialog": MessageLookupByLibrary.simpleMessage(
      "Пазете ISO от Requiem с WIM",
    ),
    "iso_bridge_select_wim_dialog": MessageLookupByLibrary.simpleMessage(
      "Избор на WIM изображение на Windows",
    ),
    "iso_bridge_simple_iso_filename": MessageLookupByLibrary.simpleMessage(
      "Requiem-Installer-Simple.iso",
    ),
    "iso_bridge_start_validation_error": MessageLookupByLibrary.simpleMessage(
      "Изберете WIM и поверителен IPv4 интерфейс.",
    ),
    "iso_bridge_wim_selected_log": m21,
    "iso_panel_button_generate_iso": MessageLookupByLibrary.simpleMessage(
      "GENERAR ISO",
    ),
    "iso_panel_button_select_wim": MessageLookupByLibrary.simpleMessage(
      "СЕЛЕКЦИОНАР WIM",
    ),
    "iso_panel_button_simple_iso": MessageLookupByLibrary.simpleMessage(
      "OBTENER ISO PARA INSTALACIÓN SOLAMENTE",
    ),
    "iso_panel_desc_media": MessageLookupByLibrary.simpleMessage(
      "Изтеглете ISO базата за избор на WIM като устройство, или създайте един ISO автоном, който включва изображението на Windows.",
    ),
    "iso_panel_title_bridge": MessageLookupByLibrary.simpleMessage(
      "Пуенте IPv4 на инсталацията",
    ),
    "iso_panel_title_media": MessageLookupByLibrary.simpleMessage(
      "Медио де инсталация",
    ),
    "kmsError": m22,
    "kmsHostEmpty": MessageLookupByLibrary.simpleMessage(
      "Грешка: хостът KMS е ваканционен.",
    ),
    "kmsServer": MessageLookupByLibrary.simpleMessage("Сървър KMS"),
    "kmsTask160Days": MessageLookupByLibrary.simpleMessage("Тарея 160 дни"),
    "kmsVolumeActivation": MessageLookupByLibrary.simpleMessage(
      "Activación de volume (KMS)",
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
      "Образование за Windows 10/11",
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
          "Windows 10/11 Pro за работни станции",
        ),
    "kms_product_windows_10_11_pro_n": MessageLookupByLibrary.simpleMessage(
      "Windows 10/11 Pro N",
    ),
    "kms_product_windows_10_11_pro_workstations":
        MessageLookupByLibrary.simpleMessage(
          "Работни станции с Windows 10/11 Pro",
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
        MessageLookupByLibrary.simpleMessage(
          "Център за данни на Windows Server 2019",
        ),
    "kms_product_windows_server_2019_standard":
        MessageLookupByLibrary.simpleMessage("Windows Server 2019 Standard"),
    "kms_product_windows_server_2022_datacenter":
        MessageLookupByLibrary.simpleMessage(
          "Център за данни на Windows Server 2022",
        ),
    "kms_product_windows_server_2022_standard":
        MessageLookupByLibrary.simpleMessage("Windows Server 2022 Standard"),
    "kms_product_windows_server_2025_datacenter":
        MessageLookupByLibrary.simpleMessage(
          "Център за данни на Windows Server 2025",
        ),
    "kms_product_windows_server_2025_standard":
        MessageLookupByLibrary.simpleMessage("Windows Server 2025 Standard"),
    "kms_product_windows_subsystem_for_linux":
        MessageLookupByLibrary.simpleMessage("Подсистема Windows за Linux"),
    "kms_product_windows_terminal": MessageLookupByLibrary.simpleMessage(
      "Терминал на Windows",
    ),
    "landingDescription": MessageLookupByLibrary.simpleMessage(
      "Instalador de Windows de alta precisión para entornos de alto rendimiento. Experimente un despliegue rápido with orquestación directa de DISM y optimización automatizada del sistema.",
    ),
    "landing_badge_author": MessageLookupByLibrary.simpleMessage(
      "DISEÑADO POR JOSS",
    ),
    "landing_badge_secure_boot": MessageLookupByLibrary.simpleMessage(
      "СЪВМЕСТИМ CON SECURE BOOT",
    ),
    "landing_badge_version": MessageLookupByLibrary.simpleMessage(
      "УСТАНОВЕНА ВЕРСИЯ",
    ),
    "landing_button_logs": MessageLookupByLibrary.simpleMessage(
      "ЛОГИ ДЕЛ СИСТЕМА",
    ),
    "landing_button_start": MessageLookupByLibrary.simpleMessage("ЕМПЕЗАР"),
    "landing_description_part1": MessageLookupByLibrary.simpleMessage(
      "Instalador de Windows de alta precisión para entornos de alto rendimiento.",
    ),
    "landing_description_part2": MessageLookupByLibrary.simpleMessage(
      "Experimente un despliegue rápido with orquestación directa de DISM y optimización automatizada del sistema.",
    ),
    "landing_subtitle": MessageLookupByLibrary.simpleMessage(
      "DESPLIEGUE DE SO DE PRÓXIMA GENERACIÓN",
    ),
    "landing_title_installer": MessageLookupByLibrary.simpleMessage(
      "ИЗИСКВАН ИНСТАЛАТОР",
    ),
    "landing_title_tools": MessageLookupByLibrary.simpleMessage(
      "REQUIEM ИНСТРУМЕНТИ",
    ),
    "licenseActivation": MessageLookupByLibrary.simpleMessage(
      "Activación de licencias",
    ),
    "logsCopied": MessageLookupByLibrary.simpleMessage(
      "Logs copiados al portapapeles.",
    ),
    "mandatoryUpdate": MessageLookupByLibrary.simpleMessage(
      "Esta actualización es obligatoria y no puede omitirse.",
    ),
    "manualWimHint": MessageLookupByLibrary.simpleMessage(
      "Използвайте \"Buscar\" за локализиране на ръководството за WIM архив.",
    ),
    "mediaInstallation": MessageLookupByLibrary.simpleMessage(
      "Медио де инсталация",
    ),
    "networkBridge": MessageLookupByLibrary.simpleMessage(
      "Пуенте IPv4 на инсталацията",
    ),
    "networkInterface": MessageLookupByLibrary.simpleMessage(
      "Interfaz Wi‑Fi/LAN IPv4",
    ),
    "nextGenerationDeployment": MessageLookupByLibrary.simpleMessage(
      "Despliegue de SO de próxima generación",
    ),
    "noBridgeFound": MessageLookupByLibrary.simpleMessage(
      "No se encontró ningún puente. Прегледайте ръководството за IP.",
    ),
    "noFormatWarning": MessageLookupByLibrary.simpleMessage(
      "Windows се премахва в W:\\ без форматиране.",
    ),
    "noImageDetected": MessageLookupByLibrary.simpleMessage(
      "Не се открива изображение",
    ),
    "noKmsProducts": MessageLookupByLibrary.simpleMessage(
      "Няма избрани продукти за сено KMS.",
    ),
    "noPhysicalDisks": MessageLookupByLibrary.simpleMessage(
      "No se detectaron discos físicos",
    ),
    "noProgramsSelected": MessageLookupByLibrary.simpleMessage(
      "Няма избрани програми.",
    ),
    "noWifiNetworks": MessageLookupByLibrary.simpleMessage(
      "Няма проблеми с наличния Wi-Fi.",
    ),
    "noWingetPackages": MessageLookupByLibrary.simpleMessage(
      "No se detectaron paquetes conocidos con winget.",
    ),
    "officeInstallDescription": MessageLookupByLibrary.simpleMessage(
      "Дезактивиране на Microsoft Office LTSC или 365 автоматизиран начин чрез ODT.",
    ),
    "officeInstaller": MessageLookupByLibrary.simpleMessage(
      "Инсталатор на офис",
    ),
    "officeRenewalStatus": m23,
    "officeVersion": MessageLookupByLibrary.simpleMessage("Версия на Office"),
    "office_odt_kms_badge": MessageLookupByLibrary.simpleMessage("ODT + KMS"),
    "office_odt_panel_title": MessageLookupByLibrary.simpleMessage(
      "Инструмент за внедряване на Office",
    ),
    "office_pkg_desc_2019": MessageLookupByLibrary.simpleMessage(
      "Click-to-Run de volume con canal PerpetualVL2019",
    ),
    "office_pkg_desc_2021": MessageLookupByLibrary.simpleMessage(
      "Click-to-Run за обем с канал PerpetualVL2021",
    ),
    "office_pkg_desc_2024": MessageLookupByLibrary.simpleMessage(
      "Click-to-Run за обем с канал PerpetualVL2024",
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
      "Тази самостоятелна функция е налична в Windows.",
    ),
    "packageStack": MessageLookupByLibrary.simpleMessage(
      "Стек от програми (Winget)",
    ),
    "packagesDetected": m24,
    "partitionMode": MessageLookupByLibrary.simpleMessage("Начин на участие"),
    "pkg_cat_apache_php_mysql": MessageLookupByLibrary.simpleMessage(
      "Apache PHP MySQL",
    ),
    "pkg_cat_bi_desktop": MessageLookupByLibrary.simpleMessage(
      "BI работен плот",
    ),
    "pkg_cat_cliente_api": MessageLookupByLibrary.simpleMessage(
      "Клиентски API",
    ),
    "pkg_cat_cliente_db": MessageLookupByLibrary.simpleMessage(
      "Клиентска база данни",
    ),
    "pkg_cat_compiladores_c": MessageLookupByLibrary.simpleMessage(
      "Компилатори на C++",
    ),
    "pkg_cat_compresor": MessageLookupByLibrary.simpleMessage("Компресор"),
    "pkg_cat_comunicacion": MessageLookupByLibrary.simpleMessage(
      "Comunicacion",
    ),
    "pkg_cat_control_de_versiones": MessageLookupByLibrary.simpleMessage(
      "Контрол на версиите",
    ),
    "pkg_cat_desktop": MessageLookupByLibrary.simpleMessage("Работен плот"),
    "pkg_cat_diagramas": MessageLookupByLibrary.simpleMessage("Диаграми"),
    "pkg_cat_distro_wsl": MessageLookupByLibrary.simpleMessage(
      "Дистрибуция WSL",
    ),
    "pkg_cat_editor": MessageLookupByLibrary.simpleMessage("редактор"),
    "pkg_cat_golang": MessageLookupByLibrary.simpleMessage("Голанг"),
    "pkg_cat_gpu_compute": MessageLookupByLibrary.simpleMessage(
      "GPU изчисление",
    ),
    "pkg_cat_grabacion": MessageLookupByLibrary.simpleMessage("Грабасион"),
    "pkg_cat_ide_ai": MessageLookupByLibrary.simpleMessage("IDE AI"),
    "pkg_cat_ide_android": MessageLookupByLibrary.simpleMessage("IDE Android"),
    "pkg_cat_ide_completo": MessageLookupByLibrary.simpleMessage("Пълен IDE"),
    "pkg_cat_instaladores": MessageLookupByLibrary.simpleMessage(
      "Instaladores",
    ),
    "pkg_cat_javascript": MessageLookupByLibrary.simpleMessage("JavaScript"),
    "pkg_cat_limpieza": MessageLookupByLibrary.simpleMessage("Лимпиеза"),
    "pkg_cat_modelos_locales": MessageLookupByLibrary.simpleMessage(
      "Modelos locales",
    ),
    "pkg_cat_navegador": MessageLookupByLibrary.simpleMessage("Навегадор"),
    "pkg_cat_python_3": MessageLookupByLibrary.simpleMessage("Python 3"),
    "pkg_cat_runtime_c": MessageLookupByLibrary.simpleMessage(
      "Време за изпълнение C++",
    ),
    "pkg_cat_runtime_escritorio": MessageLookupByLibrary.simpleMessage(
      "Ескриторио по време на изпълнение",
    ),
    "pkg_cat_runtime_juegos": MessageLookupByLibrary.simpleMessage(
      "Игра по време на изпълнение",
    ),
    "pkg_cat_runtime_php": MessageLookupByLibrary.simpleMessage(
      "Изпълнение на PHP",
    ),
    "pkg_cat_rustup": MessageLookupByLibrary.simpleMessage("Ръстъп"),
    "pkg_cat_sdk__net": MessageLookupByLibrary.simpleMessage("SDK .NET"),
    "pkg_cat_servidor_db": MessageLookupByLibrary.simpleMessage(
      "DB на сървъра",
    ),
    "pkg_cat_ssh_clasico": MessageLookupByLibrary.simpleMessage("SSH класико"),
    "pkg_cat_ssh_moderno": MessageLookupByLibrary.simpleMessage("Модерен SSH"),
    "pkg_cat_subsistema_linux": MessageLookupByLibrary.simpleMessage(
      "Подсистема Linux",
    ),
    "pkg_cat_temurin_21": MessageLookupByLibrary.simpleMessage("Темурин 21"),
    "pkg_cat_terminal_moderno": MessageLookupByLibrary.simpleMessage(
      "Модерен терминал",
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
      "Пропорция за изображението на инсталацията на Windows (install.wim или install.swm)\ndesde una unidad USB or cualquier medio montado.",
    ),
    "receiveInstallation": MessageLookupByLibrary.simpleMessage(
      "O reciba la instalación parada desde Requiem за Windows",
    ),
    "renewalActive": MessageLookupByLibrary.simpleMessage("Актива"),
    "renewalDisabled": MessageLookupByLibrary.simpleMessage("Деактивиране"),
    "searchingImage": MessageLookupByLibrary.simpleMessage(
      "Buscando изображение…",
    ),
    "secureBootCompatible": MessageLookupByLibrary.simpleMessage(
      "Съвместим с Secure Boot",
    ),
    "selectDestinationDisk": MessageLookupByLibrary.simpleMessage(
      "Selectionar disco de destino",
    ),
    "selectFileHint": MessageLookupByLibrary.simpleMessage(
      "Изберете архив .wim или .swm",
    ),
    "selectWim": MessageLookupByLibrary.simpleMessage("Избор на WIM"),
    "selectWimFirst": MessageLookupByLibrary.simpleMessage(
      "Изберете WIM и поверителен IPv4 интерфейс.",
    ),
    "selectWindowsImage": MessageLookupByLibrary.simpleMessage(
      "Избор на изображение на Windows",
    ),
    "selectWindowsImageFull": MessageLookupByLibrary.simpleMessage(
      "Изберете изображение за инсталация на Windows",
    ),
    "selectedFile": m25,
    "stableVersion": MessageLookupByLibrary.simpleMessage(
      "Стабилна версия v1.0.0",
    ),
    "start": MessageLookupByLibrary.simpleMessage("Емпезар"),
    "startInstallation": MessageLookupByLibrary.simpleMessage(
      "Първоначално инсталиране",
    ),
    "stopBridge": MessageLookupByLibrary.simpleMessage("Detener puente"),
    "systemConsole": MessageLookupByLibrary.simpleMessage(
      "Конзола на системата",
    ),
    "systemDisk": MessageLookupByLibrary.simpleMessage("Система"),
    "systemLogs": MessageLookupByLibrary.simpleMessage("Дневници на системата"),
    "tools_badge_iso_compatibility": MessageLookupByLibrary.simpleMessage(
      "Запазване на BIOS + UEFI",
    ),
    "tools_badge_kms_pending": MessageLookupByLibrary.simpleMessage(
      "KMS висулка",
    ),
    "tools_badge_package_count": m26,
    "tools_button_activate_kms": MessageLookupByLibrary.simpleMessage(
      "АКТИВАР KMS",
    ),
    "tools_button_install_all_packages": MessageLookupByLibrary.simpleMessage(
      "ИНСТАЛИРАНЕ НА ЗАДАЧА",
    ),
    "tools_button_install_office": MessageLookupByLibrary.simpleMessage(
      "ИНСТАЛИРАНЕ НА ОФИС",
    ),
    "tools_header_title": MessageLookupByLibrary.simpleMessage(
      "REQUIEM ИНСТРУМЕНТИ ЗА МИГРАЦИЯ",
    ),
    "tools_kms_checking_connectivity": m27,
    "tools_kms_empty_host_error": MessageLookupByLibrary.simpleMessage(
      "ГРЕШКА: KMS хостът е ваканционен.",
    ),
    "tools_kms_error_log": m28,
    "tools_kms_no_products_selected": MessageLookupByLibrary.simpleMessage(
      "Няма избрани продукти за сено KMS.",
    ),
    "tools_log_format": m29,
    "tools_logs_copied_snackbar": MessageLookupByLibrary.simpleMessage(
      "Logs copiados al portapapeles.",
    ),
    "tools_packages_detected_count": m30,
    "tools_packages_none_detected": MessageLookupByLibrary.simpleMessage(
      "No se detectaron paquetes conocidos con winget.",
    ),
    "tools_packages_none_selected": MessageLookupByLibrary.simpleMessage(
      "Няма избрани програми.",
    ),
    "tools_section_activation_desc": MessageLookupByLibrary.simpleMessage(
      "Конфигурирайте KMS сървър локално или отдалечено за активиране на Windows и Office.",
    ),
    "tools_section_activation_title": MessageLookupByLibrary.simpleMessage(
      "Activación de Licencias",
    ),
    "tools_section_iso_desc": MessageLookupByLibrary.simpleMessage(
      "Cree medios autonomos con un WIM интегриран за разпространение на директна инсталация за IPv4.",
    ),
    "tools_section_iso_title": MessageLookupByLibrary.simpleMessage(
      "ISO y despliegue por red",
    ),
    "tools_section_office_desc": MessageLookupByLibrary.simpleMessage(
      "Дезактивиране на Microsoft Office LTSC или 365 автоматизиран начин чрез ODT.",
    ),
    "tools_section_office_title": MessageLookupByLibrary.simpleMessage(
      "Инсталатор на офис",
    ),
    "tools_section_packages_desc": MessageLookupByLibrary.simpleMessage(
      "Инсталирайте и актуализирайте елементите на esenciales desarrollo за Windows mediante winget.",
    ),
    "tools_section_packages_title": MessageLookupByLibrary.simpleMessage(
      "Стек на приложенията",
    ),
    "tools_sidebar_app_name": MessageLookupByLibrary.simpleMessage("РЕКВИЕМ"),
    "tools_sidebar_mode_badge": MessageLookupByLibrary.simpleMessage(
      "Режим на локални инструменти",
    ),
    "tools_sidebar_tab_iso": MessageLookupByLibrary.simpleMessage(
      "ISO y Puente",
    ),
    "tools_sidebar_tab_kms": MessageLookupByLibrary.simpleMessage(
      "Активиране на KMS",
    ),
    "tools_sidebar_tab_office": MessageLookupByLibrary.simpleMessage(
      "Инсталационен офис",
    ),
    "tools_sidebar_tab_packages": MessageLookupByLibrary.simpleMessage(
      "Стек програми",
    ),
    "unknown": MessageLookupByLibrary.simpleMessage("Десконоцидо"),
    "updateDescription": MessageLookupByLibrary.simpleMessage(
      "За да продължите да използвате Requiem Tools, е необходимо актуализиране на версията, която е научена.",
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
      "Esperando una ación...",
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
      "Свържете се с инсталирането на Wi-Fi",
    ),
    "wifi_item_signal_security": m36,
    "wifi_none_found": MessageLookupByLibrary.simpleMessage(
      "Няма проблеми с наличния Wi-Fi.",
    ),
    "wifi_password_hint": MessageLookupByLibrary.simpleMessage(
      "Contraseña Wi-Fi",
    ),
    "wifi_scanning": MessageLookupByLibrary.simpleMessage(
      "Сканират се налични Wi-Fi мрежи...",
    ),
    "wimIntegrated": MessageLookupByLibrary.simpleMessage(
      "WIM е интегриран в ISO",
    ),
    "wim_bridge_connection_error": m37,
    "wim_bridge_ip_dialog_title": MessageLookupByLibrary.simpleMessage(
      "IP del puente Requiem",
    ),
    "wim_bridge_ip_placeholder": MessageLookupByLibrary.simpleMessage(
      "192.168.1.20",
    ),
    "wim_bridge_not_found": MessageLookupByLibrary.simpleMessage(
      "No se encontró ningún puente. Прегледайте ръководството за IP.",
    ),
    "wim_bridge_search_error": m38,
    "wim_bridge_searching": MessageLookupByLibrary.simpleMessage(
      "Търсене на Requiem мостове в локалната IPv4 мрежа...",
    ),
    "wim_bridge_section_header": MessageLookupByLibrary.simpleMessage(
      "O reciba la instalación parada desde Requiem за Windows",
    ),
    "wim_button_change_file": MessageLookupByLibrary.simpleMessage(
      "CAMBIAR АРХИВ",
    ),
    "wim_button_connect_wifi": MessageLookupByLibrary.simpleMessage(
      "КОНЕКТАР WI-FI",
    ),
    "wim_button_manual_ip": MessageLookupByLibrary.simpleMessage(
      "USAR IP РЪКОВОДСТВО",
    ),
    "wim_button_rescan": MessageLookupByLibrary.simpleMessage(
      "Escanear unidades de nuevo",
    ),
    "wim_button_search_bridge": MessageLookupByLibrary.simpleMessage(
      "БУСКАР ПУЕНТЕ",
    ),
    "wim_manual_search_hint": MessageLookupByLibrary.simpleMessage(
      "Използвайте \"Buscar\" за локализиране на ръководството за WIM архив.",
    ),
    "wim_picker_description": MessageLookupByLibrary.simpleMessage(
      "Пропорционално изображение на инсталацията на Windows (install.wim или install.swm)\\n",
    ),
    "wim_picker_title": MessageLookupByLibrary.simpleMessage(
      "Избор на изображения на Windows",
    ),
    "wim_status_found": MessageLookupByLibrary.simpleMessage("Imagen contrada"),
    "wim_status_not_found": MessageLookupByLibrary.simpleMessage(
      "Не се открива изображение",
    ),
    "wim_status_searching": MessageLookupByLibrary.simpleMessage(
      "Buscando изображение…",
    ),
    "wim_status_searching_alt": MessageLookupByLibrary.simpleMessage(
      "Buscando изображение...",
    ),
    "wingetUnavailable": MessageLookupByLibrary.simpleMessage(
      "winget no está instalado или no está en PATH.",
    ),
  };
}
