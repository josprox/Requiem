// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a uk locale. All the
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
  String get localeName => 'uk';

  static String m0(count) => "${count} програм";

  static String m1(version) => "Доступна версія: ${version}";

  static String m2(firmware) => "Фактична домовленість: ${firmware}";

  static String m3(error) => "No se pudo conectar: ${error}";

  static String m4(error) => "No se pudo buscar el puente: ${error}";

  static String m5(host) => "Comprobando conectividad con ${host}:1688...";

  static String m6(mode) => "Сумісність з Modo: ${mode}";

  static String m7(firmware) => "Фактична домовленість: ${firmware}";

  static String m8(diskNumber, mediaType, busType) =>
      "ДИСК ${diskNumber} · ${mediaType} · ${busType}";

  static String m9(recommended) => "Сумісність з Modo: ${recommended}";

  static String m10(sizeGB) => "${sizeGB} Гб";

  static String m11(imageName) =>
      "Puente: \${controller.bridgeAnnouncement?.imageName ??";

  static String m12(name, edition) => "Виявлено видання: ${name} (${edition})";

  static String m13(error) => "Виникла помилка: ${error}";

  static String m14(val) => "Інвалідний маршрут: ${val}";

  static String m15(error) =>
      "No se pudo leer el contenido del directorio.\\n${error}";

  static String m16(path) => "Selectionado: ${path}";

  static String m17(path) => "Інвалідний маршрут: ${path}";

  static String m18(clients) => "${clients} конексіонів";

  static String m19(error) => "ПОМИЛКА: ${error}";

  static String m20(error) =>
      "Не можна перераховувати інтерфейси IPv4: ${error}";

  static String m21(path) => "Вибір WIM: ${path}";

  static String m22(error) => "Помилка KMS: ${error}";

  static String m23(product, channel, edition, status) =>
      "${product} / ${channel} / ${edition} біт. La renovación queda ${status}.";

  static String m24(count) => "Виявлено пакетів: ${count}.";

  static String m25(file) => "Selectionado: ${file}";

  static String m26(count) => "${count} програм";

  static String m27(host) => "Comprobando conectividad con ${host}:1688...";

  static String m28(error) => "ПОМИЛКА KMS: ${error}";

  static String m29(time, message) => "[${time}] ${message}";

  static String m30(count) => "Виявлено пакетів: ${count}.";

  static String m31(error) => "Не можна підключатися до Wi-Fi: ${error}";

  static String m32(network) => "Підключіться до ${network}.";

  static String m33(error) => "Не можна підключатися до Wi-Fi: ${error}";

  static String m34(ssid, result) => "Wi-Fi підключено до ${ssid}. ${result}";

  static String m35(ssid) => "Підключіться до ${ssid}.";

  static String m36(signal, security) => "${signal}% · ${security}";

  static String m37(error) => "No se pudo conectar: ${error}";

  static String m38(error) => "No se pudo buscar el puente: ${error}";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
    "actionCancel": MessageLookupByLibrary.simpleMessage("Скасувати"),
    "actionChange": MessageLookupByLibrary.simpleMessage("Камбіар"),
    "actionConfirm": MessageLookupByLibrary.simpleMessage("Підтвердити"),
    "actionConnect": MessageLookupByLibrary.simpleMessage("Conectar"),
    "actionContinue": MessageLookupByLibrary.simpleMessage("Продовжити"),
    "actionInstall": MessageLookupByLibrary.simpleMessage("Встановити"),
    "actionRefresh": MessageLookupByLibrary.simpleMessage("Actualizar"),
    "actionRestartSystem": MessageLookupByLibrary.simpleMessage(
      "Reiniciar sistema",
    ),
    "actionScanAgain": MessageLookupByLibrary.simpleMessage(
      "Escanear unidades de nuevo",
    ),
    "actionSearch": MessageLookupByLibrary.simpleMessage("Buscar"),
    "actionSelect": MessageLookupByLibrary.simpleMessage("Selectionar"),
    "activate": MessageLookupByLibrary.simpleMessage("Активар"),
    "activateKms": MessageLookupByLibrary.simpleMessage("Активація KMS"),
    "appTitleInstaller": MessageLookupByLibrary.simpleMessage(
      "Інсталятор Requiem",
    ),
    "appTitleTools": MessageLookupByLibrary.simpleMessage(
      "Інструменти Requiem",
    ),
    "app_title_installer": MessageLookupByLibrary.simpleMessage(
      "Інсталятор Requiem",
    ),
    "app_title_tools": MessageLookupByLibrary.simpleMessage(
      "Інструменти Requiem",
    ),
    "applicationStack": MessageLookupByLibrary.simpleMessage("Стек додатків"),
    "applicationStackDescription": MessageLookupByLibrary.simpleMessage(
      "Інсталюйте й актуалізуйте герраміенти де десарролло esenciales для Windows mediante winget.",
    ),
    "applicationsCount": m0,
    "automaticOffice": MessageLookupByLibrary.simpleMessage(
      "Автоматичний офіс",
    ),
    "automaticOfficeDescription": MessageLookupByLibrary.simpleMessage(
      "Використовуйте GVLK для встановлення об’єму",
    ),
    "automaticRenewal": MessageLookupByLibrary.simpleMessage(
      "Renovación Automatica",
    ),
    "automaticWindows": MessageLookupByLibrary.simpleMessage(
      "Windows автоматично",
    ),
    "automaticWindowsDescription": MessageLookupByLibrary.simpleMessage(
      "Сумісний із Detecta edición і GVLK",
    ),
    "availableVersion": m1,
    "bootCurrent": m2,
    "bridgeConnectError": m3,
    "bridgeDescription": MessageLookupByLibrary.simpleMessage(
      "Prepara el WIM una sola vez y lo transmite directamente a los clientes Requiem de la misma red. Клієнти не захищають WIM до встановлення.",
    ),
    "bridgeIp": MessageLookupByLibrary.simpleMessage("IP del puente Requiem"),
    "bridgePorts": MessageLookupByLibrary.simpleMessage(
      "Пункт HTTP 40124 · Опис UDP 40123. Якщо Windows Defender встановлено, дозволено доступ до конфіденційних даних.",
    ),
    "bridgeSearchError": m4,
    "checkingKms": m5,
    "clearLogs": MessageLookupByLibrary.simpleMessage("Лімпіарні колоди"),
    "common_cancel": MessageLookupByLibrary.simpleMessage("СКАСУВАТИ"),
    "common_change": MessageLookupByLibrary.simpleMessage("КАМБІАР"),
    "common_connect": MessageLookupByLibrary.simpleMessage("КОНЕКТАР"),
    "common_continue": MessageLookupByLibrary.simpleMessage("ПРОДОВЖУЙТЕ"),
    "common_label_disk": MessageLookupByLibrary.simpleMessage("ДИСК"),
    "common_label_image": MessageLookupByLibrary.simpleMessage("ЗОБРАЖЕННЯ"),
    "common_label_mode": MessageLookupByLibrary.simpleMessage("РЕЖИМ"),
    "common_refresh": MessageLookupByLibrary.simpleMessage("АКТУАЛІЗАР"),
    "common_search": MessageLookupByLibrary.simpleMessage("БУСКАР"),
    "common_select": MessageLookupByLibrary.simpleMessage("СЕЛЕКЦІОНАР"),
    "compatibleMode": m6,
    "confirmDataDestruction": MessageLookupByLibrary.simpleMessage(
      "Підтвердити знищення даних",
    ),
    "confirmInstallation": MessageLookupByLibrary.simpleMessage(
      "Підтвердити інсталяцію",
    ),
    "connectInstallerWifi": MessageLookupByLibrary.simpleMessage(
      "Підключіться до Wi-Fi",
    ),
    "connectWifi": MessageLookupByLibrary.simpleMessage("Підключити Wi-Fi"),
    "console_title": MessageLookupByLibrary.simpleMessage(
      "Consola del Sistema",
    ),
    "console_tooltip_clear": MessageLookupByLibrary.simpleMessage(
      "Лімпіарні колоди",
    ),
    "console_tooltip_copy": MessageLookupByLibrary.simpleMessage(
      "Журнали копіювання",
    ),
    "console_waiting_action": MessageLookupByLibrary.simpleMessage(
      "Esperando una ación...",
    ),
    "copyLogs": MessageLookupByLibrary.simpleMessage("Журнали копіювання"),
    "deploymentInProgress": MessageLookupByLibrary.simpleMessage(
      "Despliegue en curso",
    ),
    "designedBy": MessageLookupByLibrary.simpleMessage("Розробка Джосса"),
    "destinationDiskDescription": MessageLookupByLibrary.simpleMessage(
      "Elija la unidad física donde se installará Windows.",
    ),
    "detect": MessageLookupByLibrary.simpleMessage("Детектор"),
    "diskManagement": MessageLookupByLibrary.simpleMessage(
      "Адміністрація дискотек",
    ),
    "disk_badge_system": MessageLookupByLibrary.simpleMessage("СИСТЕМА"),
    "disk_boot_firmware_label": m7,
    "disk_button_confirm_and_install": MessageLookupByLibrary.simpleMessage(
      "ПІДТВЕРДИТИ ВСТАНОВЛЕННЯ",
    ),
    "disk_dialog_confirm_destruction_title":
        MessageLookupByLibrary.simpleMessage("ПІДТВЕРДИТИ ЗНИЩЕННЯ ДАНИХ"),
    "disk_dialog_confirm_install_title": MessageLookupByLibrary.simpleMessage(
      "ПІДТВЕРДИТИ ВСТАНОВЛЕННЯ",
    ),
    "disk_dialog_existing_notice": MessageLookupByLibrary.simpleMessage(
      "Windows вимкнено у W:\\\\ без форматування.",
    ),
    "disk_dialog_format_warning": MessageLookupByLibrary.simpleMessage(
      "El disco seleccionado se formateará por completo. Se perderán todos los datos.",
    ),
    "disk_empty_list": MessageLookupByLibrary.simpleMessage(
      "No se detectaron discos físicos",
    ),
    "disk_item_header": m8,
    "disk_management_appbar_title": MessageLookupByLibrary.simpleMessage(
      "АДМІНІСТРАЦІЯ ДИСКОТЕК",
    ),
    "disk_partition_gpt_uefi": MessageLookupByLibrary.simpleMessage(
      "GPT / UEFI",
    ),
    "disk_partition_mbr_bios": MessageLookupByLibrary.simpleMessage(
      "MBR / BIOS",
    ),
    "disk_recommended_mode_label": m9,
    "disk_selection_button_start": MessageLookupByLibrary.simpleMessage(
      "ПОЧАТКОВА ІНСТАЛАЦІЯ",
    ),
    "disk_selection_desc": MessageLookupByLibrary.simpleMessage(
      "Elija la unidad física donde se installará Windows.",
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
      "Виявлене зображення",
    ),
    "disk_wim_integrated_source": MessageLookupByLibrary.simpleMessage(
      "WIM інтегрований в ISO",
    ),
    "disk_wim_not_found": MessageLookupByLibrary.simpleMessage(
      "Imagen no encontrada",
    ),
    "doNotDisconnect": MessageLookupByLibrary.simpleMessage(
      "No desconecte la energía ni retire el medio de instalación",
    ),
    "downloadAndActivate": MessageLookupByLibrary.simpleMessage(
      "Завантажити + активатор",
    ),
    "downloadInstaller": MessageLookupByLibrary.simpleMessage(
      "Завантажити установку (.exe)",
    ),
    "downloadPortable": MessageLookupByLibrary.simpleMessage(
      "Завантажити портативний (.zip)",
    ),
    "drives": MessageLookupByLibrary.simpleMessage("Unidades"),
    "editionDetected": m12,
    "emptyFolder": MessageLookupByLibrary.simpleMessage(
      "Esta carpeta está vacía",
    ),
    "errorGeneric": m13,
    "file_explorer_default_title": MessageLookupByLibrary.simpleMessage(
      "Selectionar Imagen de Instalación de Windows",
    ),
    "file_explorer_drives_header": MessageLookupByLibrary.simpleMessage(
      "UNIDADES",
    ),
    "file_explorer_empty_folder": MessageLookupByLibrary.simpleMessage(
      "Esta carpeta está vacía",
    ),
    "file_explorer_filter_hint": MessageLookupByLibrary.simpleMessage(
      "Фільтр…",
    ),
    "file_explorer_go_up_tooltip": MessageLookupByLibrary.simpleMessage(
      "Subir un nivel",
    ),
    "file_explorer_invalid_path_error": m14,
    "file_explorer_read_error": m15,
    "file_explorer_select_file_hint": MessageLookupByLibrary.simpleMessage(
      "Виберіть архів .wim або .swm",
    ),
    "file_explorer_selected_file": m16,
    "filter": MessageLookupByLibrary.simpleMessage("Фільтр…"),
    "formatGpt": MessageLookupByLibrary.simpleMessage(
      "Формат GPT (рекомендовано)",
    ),
    "formatGptDescription": MessageLookupByLibrary.simpleMessage(
      "Limpia el Disco y crea diseño UEFI\nEFI (S:) + Windows (W:)",
    ),
    "formatMbr": MessageLookupByLibrary.simpleMessage(
      "Форматування MBR (залишається BIOS)",
    ),
    "formatMbrDescription": MessageLookupByLibrary.simpleMessage(
      "Limpia el Disco y crea diseño heredado\nОкремі вікна (C:)",
    ),
    "formatWarning": MessageLookupByLibrary.simpleMessage(
      "El disco seleccionado se formateará por completo. Se perderán todos los datos.",
    ),
    "generateIso": MessageLookupByLibrary.simpleMessage("Генерація ISO"),
    "getInstallOnlyIso": MessageLookupByLibrary.simpleMessage(
      "Отримайте ISO для інсталяції Solamente",
    ),
    "goUpOneLevel": MessageLookupByLibrary.simpleMessage("Subir un nivel"),
    "imageDetected": MessageLookupByLibrary.simpleMessage(
      "Виявлене зображення",
    ),
    "imageFound": MessageLookupByLibrary.simpleMessage("Imagen encontrada"),
    "imageNotFound": MessageLookupByLibrary.simpleMessage(
      "Imagen no encontrada",
    ),
    "imageSearching": MessageLookupByLibrary.simpleMessage(
      "Buscando imagen...",
    ),
    "installAll": MessageLookupByLibrary.simpleMessage("Встановити завдання"),
    "installOffice": MessageLookupByLibrary.simpleMessage("Встановити Office"),
    "installationProgress": MessageLookupByLibrary.simpleMessage(
      "Прогресо де інсталяція",
    ),
    "invalidPath": m17,
    "isoDescription": MessageLookupByLibrary.simpleMessage(
      "Отримайте базу ISO для вибору пристрою WIM або створіть автоматичний ISO, який включає зображення Windows.",
    ),
    "iso_bridge_clients_count": m18,
    "iso_bridge_desc": MessageLookupByLibrary.simpleMessage(
      "Prepara el WIM una sola vez y lo transmite directamente a los clientes Requiem de la misma red. Клієнти не захищають WIM до встановлення.",
    ),
    "iso_bridge_generic_error": m19,
    "iso_bridge_list_interfaces_error": m20,
    "iso_bridge_save_simple_iso_dialog": MessageLookupByLibrary.simpleMessage(
      "Охоронець ISO простий де Реквієм",
    ),
    "iso_bridge_save_wim_iso_dialog": MessageLookupByLibrary.simpleMessage(
      "Захист ISO від Requiem con WIM",
    ),
    "iso_bridge_select_wim_dialog": MessageLookupByLibrary.simpleMessage(
      "Виберіть зображення WIM для Windows",
    ),
    "iso_bridge_simple_iso_filename": MessageLookupByLibrary.simpleMessage(
      "Requiem-Installer-Simple.iso",
    ),
    "iso_bridge_start_validation_error": MessageLookupByLibrary.simpleMessage(
      "Виберіть WIM і приватний інтерфейс IPv4.",
    ),
    "iso_bridge_wim_selected_log": m21,
    "iso_panel_button_generate_iso": MessageLookupByLibrary.simpleMessage(
      "GENERAR ISO",
    ),
    "iso_panel_button_select_wim": MessageLookupByLibrary.simpleMessage(
      "СЕЛЕКЦІОНАР WIM",
    ),
    "iso_panel_button_simple_iso": MessageLookupByLibrary.simpleMessage(
      "OBTENER ISO PARA INSTALACIÓN SOLAMENTE",
    ),
    "iso_panel_desc_media": MessageLookupByLibrary.simpleMessage(
      "Отримайте базу ISO для вибору пристрою WIM або створіть автоматичний ISO, який включає зображення Windows.",
    ),
    "iso_panel_title_bridge": MessageLookupByLibrary.simpleMessage(
      "Puente IPv4 de installón",
    ),
    "iso_panel_title_media": MessageLookupByLibrary.simpleMessage(
      "Medio de instalación",
    ),
    "kmsError": m22,
    "kmsHostEmpty": MessageLookupByLibrary.simpleMessage(
      "Помилка: el host KMS está vacío.",
    ),
    "kmsServer": MessageLookupByLibrary.simpleMessage("Сервер KMS"),
    "kmsTask160Days": MessageLookupByLibrary.simpleMessage("Тарея 160 днів"),
    "kmsVolumeActivation": MessageLookupByLibrary.simpleMessage(
      "Активація гучності (KMS)",
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
      "Стандарт Office 2013",
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
          "Windows 10/11 Pro для робочих станцій",
        ),
    "kms_product_windows_10_11_pro_n": MessageLookupByLibrary.simpleMessage(
      "Windows 10/11 Pro N",
    ),
    "kms_product_windows_10_11_pro_workstations":
        MessageLookupByLibrary.simpleMessage(
          "Робочі станції Windows 10/11 Pro",
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
          "Центр обробки даних Windows Server 2019",
        ),
    "kms_product_windows_server_2019_standard":
        MessageLookupByLibrary.simpleMessage("Windows Server 2019 Standard"),
    "kms_product_windows_server_2022_datacenter":
        MessageLookupByLibrary.simpleMessage(
          "Центр обробки даних Windows Server 2022",
        ),
    "kms_product_windows_server_2022_standard":
        MessageLookupByLibrary.simpleMessage("Windows Server 2022 Standard"),
    "kms_product_windows_server_2025_datacenter":
        MessageLookupByLibrary.simpleMessage(
          "Центр обробки даних Windows Server 2025",
        ),
    "kms_product_windows_server_2025_standard":
        MessageLookupByLibrary.simpleMessage("Windows Server 2025 Standard"),
    "kms_product_windows_subsystem_for_linux":
        MessageLookupByLibrary.simpleMessage("Підсистема Windows для Linux"),
    "kms_product_windows_terminal": MessageLookupByLibrary.simpleMessage(
      "Термінал Windows",
    ),
    "landingDescription": MessageLookupByLibrary.simpleMessage(
      "Instalador de Windows de alta precisión para entornos de alto rendimiento. Experimente un despliegue rápido conquestación directa de DISM y optimización automatizada del sistema.",
    ),
    "landing_badge_author": MessageLookupByLibrary.simpleMessage(
      "DISEÑADO POR JOSS",
    ),
    "landing_badge_secure_boot": MessageLookupByLibrary.simpleMessage(
      "СУМІСНИЙ CON SECURE BOOT",
    ),
    "landing_badge_version": MessageLookupByLibrary.simpleMessage(
      "ВСТАНОВЛЕНА ВЕРСІЯ",
    ),
    "landing_button_logs": MessageLookupByLibrary.simpleMessage("ЛОГИ СИСТЕМИ"),
    "landing_button_start": MessageLookupByLibrary.simpleMessage("ЕМПЕЗАР"),
    "landing_description_part1": MessageLookupByLibrary.simpleMessage(
      "Instalador de Windows de alta precisión para entornos de alto rendimiento.",
    ),
    "landing_description_part2": MessageLookupByLibrary.simpleMessage(
      "Experimente un despliegue rápido conquestación directa de DISM y optimización automatizada del sistema.",
    ),
    "landing_subtitle": MessageLookupByLibrary.simpleMessage(
      "DESPLIEGUE DE SO DE PRÓXIMA GENERACIÓN",
    ),
    "landing_title_installer": MessageLookupByLibrary.simpleMessage(
      "ПОТРІБНИЙ ІНСТАЛЯТОР",
    ),
    "landing_title_tools": MessageLookupByLibrary.simpleMessage(
      "ІНСТРУМЕНТИ РЕКВІЄМ",
    ),
    "licenseActivation": MessageLookupByLibrary.simpleMessage(
      "Activación de licencias",
    ),
    "logsCopied": MessageLookupByLibrary.simpleMessage(
      "Журнали copiados al portapapeles.",
    ),
    "mandatoryUpdate": MessageLookupByLibrary.simpleMessage(
      "Esta actualización es obligatoria y no puede omitirse.",
    ),
    "manualWimHint": MessageLookupByLibrary.simpleMessage(
      "Використовуйте «Пошук» для локалізації в посібнику з архіву WIM.",
    ),
    "mediaInstallation": MessageLookupByLibrary.simpleMessage(
      "Medio de instalación",
    ),
    "networkBridge": MessageLookupByLibrary.simpleMessage(
      "Puente IPv4 de installón",
    ),
    "networkInterface": MessageLookupByLibrary.simpleMessage(
      "Інтерфейс Wi‑Fi/LAN IPv4",
    ),
    "nextGenerationDeployment": MessageLookupByLibrary.simpleMessage(
      "Despliegue de SO de próxima generación",
    ),
    "noBridgeFound": MessageLookupByLibrary.simpleMessage(
      "No se encontró ningún puente. Посібник з IP-адреси.",
    ),
    "noFormatWarning": MessageLookupByLibrary.simpleMessage(
      "Windows вимкнено у W:\\ без форматування.",
    ),
    "noImageDetected": MessageLookupByLibrary.simpleMessage(
      "Не виявлено жодного зображення",
    ),
    "noKmsProducts": MessageLookupByLibrary.simpleMessage(
      "Немає продуктів сіна KMS seleccionados.",
    ),
    "noPhysicalDisks": MessageLookupByLibrary.simpleMessage(
      "No se detectaron discos físicos",
    ),
    "noProgramsSelected": MessageLookupByLibrary.simpleMessage(
      "Немає вибраних програм.",
    ),
    "noWifiNetworks": MessageLookupByLibrary.simpleMessage(
      "Wi-Fi недоступний.",
    ),
    "noWingetPackages": MessageLookupByLibrary.simpleMessage(
      "No se detectaron paquetes conocidos con winget.",
    ),
    "officeInstallDescription": MessageLookupByLibrary.simpleMessage(
      "Опис Microsoft Office LTSC або 365 автоматизованого способу використання ODT.",
    ),
    "officeInstaller": MessageLookupByLibrary.simpleMessage(
      "Instalador de Office",
    ),
    "officeRenewalStatus": m23,
    "officeVersion": MessageLookupByLibrary.simpleMessage("Версія Office"),
    "office_odt_kms_badge": MessageLookupByLibrary.simpleMessage("ODT + KMS"),
    "office_odt_panel_title": MessageLookupByLibrary.simpleMessage(
      "Інструмент розгортання Office",
    ),
    "office_pkg_desc_2019": MessageLookupByLibrary.simpleMessage(
      "Click-to-Run для обсягу з каналом PerpetualVL2019",
    ),
    "office_pkg_desc_2021": MessageLookupByLibrary.simpleMessage(
      "Click-to-Run для обсягу з каналом PerpetualVL2021",
    ),
    "office_pkg_desc_2024": MessageLookupByLibrary.simpleMessage(
      "Click-to-Run обсягу з каналом PerpetualVL2024",
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
      "Ця окрема функція доступна в Windows.",
    ),
    "packageStack": MessageLookupByLibrary.simpleMessage(
      "Стек програм (Winget)",
    ),
    "packagesDetected": m24,
    "partitionMode": MessageLookupByLibrary.simpleMessage("Modo de partición"),
    "pkg_cat_apache_php_mysql": MessageLookupByLibrary.simpleMessage(
      "Apache PHP MySQL",
    ),
    "pkg_cat_bi_desktop": MessageLookupByLibrary.simpleMessage(
      "Робочий стіл BI",
    ),
    "pkg_cat_cliente_api": MessageLookupByLibrary.simpleMessage("API клієнта"),
    "pkg_cat_cliente_db": MessageLookupByLibrary.simpleMessage("Клієнтська БД"),
    "pkg_cat_compiladores_c": MessageLookupByLibrary.simpleMessage(
      "Компілятори C++",
    ),
    "pkg_cat_compresor": MessageLookupByLibrary.simpleMessage("Компресор"),
    "pkg_cat_comunicacion": MessageLookupByLibrary.simpleMessage(
      "Comunicacion",
    ),
    "pkg_cat_control_de_versiones": MessageLookupByLibrary.simpleMessage(
      "Контроль версій",
    ),
    "pkg_cat_desktop": MessageLookupByLibrary.simpleMessage("Робочий стіл"),
    "pkg_cat_diagramas": MessageLookupByLibrary.simpleMessage("Діаграми"),
    "pkg_cat_distro_wsl": MessageLookupByLibrary.simpleMessage(
      "Дистрибутив WSL",
    ),
    "pkg_cat_editor": MessageLookupByLibrary.simpleMessage("редактор"),
    "pkg_cat_golang": MessageLookupByLibrary.simpleMessage("Голанг"),
    "pkg_cat_gpu_compute": MessageLookupByLibrary.simpleMessage(
      "Обчислення GPU",
    ),
    "pkg_cat_grabacion": MessageLookupByLibrary.simpleMessage("Грабаціон"),
    "pkg_cat_ide_ai": MessageLookupByLibrary.simpleMessage("IDE AI"),
    "pkg_cat_ide_android": MessageLookupByLibrary.simpleMessage("IDE Android"),
    "pkg_cat_ide_completo": MessageLookupByLibrary.simpleMessage("Повне IDE"),
    "pkg_cat_instaladores": MessageLookupByLibrary.simpleMessage(
      "Instaladores",
    ),
    "pkg_cat_javascript": MessageLookupByLibrary.simpleMessage("JavaScript"),
    "pkg_cat_limpieza": MessageLookupByLibrary.simpleMessage("Лімпієза"),
    "pkg_cat_modelos_locales": MessageLookupByLibrary.simpleMessage(
      "Modelos locales",
    ),
    "pkg_cat_navegador": MessageLookupByLibrary.simpleMessage("Навегадор"),
    "pkg_cat_python_3": MessageLookupByLibrary.simpleMessage("Python 3"),
    "pkg_cat_runtime_c": MessageLookupByLibrary.simpleMessage("Середовище C++"),
    "pkg_cat_runtime_escritorio": MessageLookupByLibrary.simpleMessage(
      "Ескриторіо часу виконання",
    ),
    "pkg_cat_runtime_juegos": MessageLookupByLibrary.simpleMessage(
      "Ігри для виконання",
    ),
    "pkg_cat_runtime_php": MessageLookupByLibrary.simpleMessage(
      "Виконання PHP",
    ),
    "pkg_cat_rustup": MessageLookupByLibrary.simpleMessage("Руступ"),
    "pkg_cat_sdk__net": MessageLookupByLibrary.simpleMessage("SDK .NET"),
    "pkg_cat_servidor_db": MessageLookupByLibrary.simpleMessage("БД сервера"),
    "pkg_cat_ssh_clasico": MessageLookupByLibrary.simpleMessage("SSH класико"),
    "pkg_cat_ssh_moderno": MessageLookupByLibrary.simpleMessage("Сучасний SSH"),
    "pkg_cat_subsistema_linux": MessageLookupByLibrary.simpleMessage(
      "Підсистема Linux",
    ),
    "pkg_cat_temurin_21": MessageLookupByLibrary.simpleMessage("Темурін 21"),
    "pkg_cat_terminal_moderno": MessageLookupByLibrary.simpleMessage(
      "Сучасний термінал",
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
      "Пропорція зображення інсталяції Windows (install.wim або install.swm)\ndesde una unidad USB або cualquier medio montado.",
    ),
    "receiveInstallation": MessageLookupByLibrary.simpleMessage(
      "O reciba la installón preparada desde Requiem для Windows",
    ),
    "renewalActive": MessageLookupByLibrary.simpleMessage("Актива"),
    "renewalDisabled": MessageLookupByLibrary.simpleMessage("Дезактивація"),
    "searchingImage": MessageLookupByLibrary.simpleMessage("Buscando imagen…"),
    "secureBootCompatible": MessageLookupByLibrary.simpleMessage(
      "Сумісність з Secure Boot",
    ),
    "selectDestinationDisk": MessageLookupByLibrary.simpleMessage(
      "Selectionar disco de destino",
    ),
    "selectFileHint": MessageLookupByLibrary.simpleMessage(
      "Виберіть архів .wim або .swm",
    ),
    "selectWim": MessageLookupByLibrary.simpleMessage("Виберіть WIM"),
    "selectWimFirst": MessageLookupByLibrary.simpleMessage(
      "Виберіть WIM і приватний інтерфейс IPv4.",
    ),
    "selectWindowsImage": MessageLookupByLibrary.simpleMessage(
      "Виберіть зображення Windows",
    ),
    "selectWindowsImageFull": MessageLookupByLibrary.simpleMessage(
      "Виберіть зображення інсталяції Windows",
    ),
    "selectedFile": m25,
    "stableVersion": MessageLookupByLibrary.simpleMessage(
      "Стабільна версія v1.0.0",
    ),
    "start": MessageLookupByLibrary.simpleMessage("Емпезар"),
    "startInstallation": MessageLookupByLibrary.simpleMessage(
      "Початок інсталяції",
    ),
    "stopBridge": MessageLookupByLibrary.simpleMessage("Detener puente"),
    "systemConsole": MessageLookupByLibrary.simpleMessage("Консоль системи"),
    "systemDisk": MessageLookupByLibrary.simpleMessage("Система"),
    "systemLogs": MessageLookupByLibrary.simpleMessage("Журнали системи"),
    "tools_badge_iso_compatibility": MessageLookupByLibrary.simpleMessage(
      "Збереження BIOS + UEFI",
    ),
    "tools_badge_kms_pending": MessageLookupByLibrary.simpleMessage(
      "KMS pendiente",
    ),
    "tools_badge_package_count": m26,
    "tools_button_activate_kms": MessageLookupByLibrary.simpleMessage(
      "АКТИВАР KMS",
    ),
    "tools_button_install_all_packages": MessageLookupByLibrary.simpleMessage(
      "ВСТАНОВИТИ ЗАВДАННЯ",
    ),
    "tools_button_install_office": MessageLookupByLibrary.simpleMessage(
      "ВСТАНОВЛЕННЯ ОФІСУ",
    ),
    "tools_header_title": MessageLookupByLibrary.simpleMessage(
      "ПОТРІБНІ ІНСТРУМЕНТИ МІГРАЦІЇ",
    ),
    "tools_kms_checking_connectivity": m27,
    "tools_kms_empty_host_error": MessageLookupByLibrary.simpleMessage(
      "ПОМИЛКА: el host KMS esta vacio.",
    ),
    "tools_kms_error_log": m28,
    "tools_kms_no_products_selected": MessageLookupByLibrary.simpleMessage(
      "Немає продуктів сіна KMS seleccionados.",
    ),
    "tools_log_format": m29,
    "tools_logs_copied_snackbar": MessageLookupByLibrary.simpleMessage(
      "Журнали copiados al portapapeles.",
    ),
    "tools_packages_detected_count": m30,
    "tools_packages_none_detected": MessageLookupByLibrary.simpleMessage(
      "No se detectaron paquetes conocidos con winget.",
    ),
    "tools_packages_none_selected": MessageLookupByLibrary.simpleMessage(
      "Немає вибраних програм.",
    ),
    "tools_section_activation_desc": MessageLookupByLibrary.simpleMessage(
      "Налаштуйте локальний або дистанційний сервер KMS для активації Windows і Office.",
    ),
    "tools_section_activation_title": MessageLookupByLibrary.simpleMessage(
      "Activación de Licencias",
    ),
    "tools_section_iso_desc": MessageLookupByLibrary.simpleMessage(
      "Cree medios autonomos con un WIM integrado or distribuya un installón directamente por IPv4.",
    ),
    "tools_section_iso_title": MessageLookupByLibrary.simpleMessage(
      "ISO y despliegue por red",
    ),
    "tools_section_office_desc": MessageLookupByLibrary.simpleMessage(
      "Опис Microsoft Office LTSC або 365 автоматизованого способу використання ODT.",
    ),
    "tools_section_office_title": MessageLookupByLibrary.simpleMessage(
      "Instalador de Office",
    ),
    "tools_section_packages_desc": MessageLookupByLibrary.simpleMessage(
      "Інсталюйте й актуалізуйте герраміенти де десарролло esenciales для Windows mediante winget.",
    ),
    "tools_section_packages_title": MessageLookupByLibrary.simpleMessage(
      "Стек додатків",
    ),
    "tools_sidebar_app_name": MessageLookupByLibrary.simpleMessage("РЕКВІЄМ"),
    "tools_sidebar_mode_badge": MessageLookupByLibrary.simpleMessage(
      "Режим локальних інструментів",
    ),
    "tools_sidebar_tab_iso": MessageLookupByLibrary.simpleMessage(
      "ISO y Puente",
    ),
    "tools_sidebar_tab_kms": MessageLookupByLibrary.simpleMessage(
      "Активація KMS",
    ),
    "tools_sidebar_tab_office": MessageLookupByLibrary.simpleMessage(
      "Інсталяційний офіс",
    ),
    "tools_sidebar_tab_packages": MessageLookupByLibrary.simpleMessage(
      "Стекові програми",
    ),
    "unknown": MessageLookupByLibrary.simpleMessage("Десконоцідо"),
    "updateDescription": MessageLookupByLibrary.simpleMessage(
      "Для продовження використання Requiem Tools потрібно актуалізувати іншу версію.",
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
    "wifiPassword": MessageLookupByLibrary.simpleMessage("Контрастний Wi-Fi"),
    "wifi_connect_error": m33,
    "wifi_connected_log": m34,
    "wifi_connected_status": m35,
    "wifi_dialog_title": MessageLookupByLibrary.simpleMessage(
      "Підключіться до Wi-Fi",
    ),
    "wifi_item_signal_security": m36,
    "wifi_none_found": MessageLookupByLibrary.simpleMessage(
      "Wi-Fi недоступний.",
    ),
    "wifi_password_hint": MessageLookupByLibrary.simpleMessage(
      "Контрастний Wi-Fi",
    ),
    "wifi_scanning": MessageLookupByLibrary.simpleMessage(
      "Сканування доступних мереж Wi-Fi...",
    ),
    "wimIntegrated": MessageLookupByLibrary.simpleMessage(
      "WIM інтегрований в ISO",
    ),
    "wim_bridge_connection_error": m37,
    "wim_bridge_ip_dialog_title": MessageLookupByLibrary.simpleMessage(
      "IP del puente Requiem",
    ),
    "wim_bridge_ip_placeholder": MessageLookupByLibrary.simpleMessage(
      "192.168.1.20",
    ),
    "wim_bridge_not_found": MessageLookupByLibrary.simpleMessage(
      "No se encontró ningún puente. Посібник з IP-адреси.",
    ),
    "wim_bridge_search_error": m38,
    "wim_bridge_searching": MessageLookupByLibrary.simpleMessage(
      "Пошук мостів Requiem у локальній мережі IPv4...",
    ),
    "wim_bridge_section_header": MessageLookupByLibrary.simpleMessage(
      "O reciba la installón preparada desde Requiem для Windows",
    ),
    "wim_button_change_file": MessageLookupByLibrary.simpleMessage(
      "CAMBIAR ARCHIV",
    ),
    "wim_button_connect_wifi": MessageLookupByLibrary.simpleMessage(
      "ПІДКЛЮЧЕННЯ WI-FI",
    ),
    "wim_button_manual_ip": MessageLookupByLibrary.simpleMessage(
      "ПОСІБНИК USAR IP",
    ),
    "wim_button_rescan": MessageLookupByLibrary.simpleMessage(
      "Escanear unidades de nuevo",
    ),
    "wim_button_search_bridge": MessageLookupByLibrary.simpleMessage(
      "БУСКАР ПУЕНТЕ",
    ),
    "wim_manual_search_hint": MessageLookupByLibrary.simpleMessage(
      "Використовуйте «Пошук» для локалізації в посібнику з архіву WIM.",
    ),
    "wim_picker_description": MessageLookupByLibrary.simpleMessage(
      "Пропорція зображення інсталяції Windows (install.wim або install.swm)\\n",
    ),
    "wim_picker_title": MessageLookupByLibrary.simpleMessage(
      "Selectionar Imagen de Windows",
    ),
    "wim_status_found": MessageLookupByLibrary.simpleMessage(
      "Imagen encontrada",
    ),
    "wim_status_not_found": MessageLookupByLibrary.simpleMessage(
      "Не виявлено жодного зображення",
    ),
    "wim_status_searching": MessageLookupByLibrary.simpleMessage(
      "Buscando imagen…",
    ),
    "wim_status_searching_alt": MessageLookupByLibrary.simpleMessage(
      "Buscando imagen...",
    ),
    "wingetUnavailable": MessageLookupByLibrary.simpleMessage(
      "winget no está instalado або no está en PATH.",
    ),
  };
}
