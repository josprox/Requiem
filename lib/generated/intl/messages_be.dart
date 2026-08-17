// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a be locale. All the
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
  String get localeName => 'be';

  static String m0(count) => "${count} праграм";

  static String m1(version) => "Даступная версія: ${version}";

  static String m2(firmware) => "Фактычнае размяшчэнне: ${firmware}";

  static String m3(error) => "Няма сувязі: ${error}";

  static String m4(error) => "No se pudo buscar el puente: ${error}";

  static String m5(host) => "Comprobando conectividad con ${host}:1688...";

  static String m6(mode) => "Сумяшчальны з Modo: ${mode}";

  static String m7(firmware) => "Фактычнае размяшчэнне: ${firmware}";

  static String m8(diskNumber, mediaType, busType) =>
      "ДЫСК ${diskNumber} · ${mediaType} · ${busType}";

  static String m9(recommended) => "Сумяшчальны з Modo: ${recommended}";

  static String m10(sizeGB) => "${sizeGB} ГБ";

  static String m11(imageName) =>
      "Пуэнтэ: \${controller.bridgeAnnouncement?.imageName ??";

  static String m12(name, edition) => "Выяўленае выданне: ${name} (${edition})";

  static String m13(error) => "Узнікла памылка: ${error}";

  static String m14(val) => "Рута несапраўдная: ${val}";

  static String m15(error) =>
      "No se pudo leer el contenido del directorio.\\n${error}";

  static String m16(path) => "Selectionado: ${path}";

  static String m17(path) => "Рута несапраўдная: ${path}";

  static String m18(clients) => "${clients} канекцый";

  static String m19(error) => "ПАМЫЛКА: ${error}";

  static String m20(error) => "Не трэба пералічваць інтэрфейсы IPv4: ${error}";

  static String m21(path) => "Выбар WIM: ${path}";

  static String m22(error) => "Памылка KMS: ${error}";

  static String m23(product, channel, edition, status) =>
      "${product} / ${channel} / ${edition} біт. La renovación queda ${status}.";

  static String m24(count) => "Выяўленыя пакеты: ${count}.";

  static String m25(file) => "Selectionado: ${file}";

  static String m26(count) => "${count} праграм";

  static String m27(host) => "Comprobando conectividad con ${host}:1688...";

  static String m28(error) => "ПАМЫЛКА KMS: ${error}";

  static String m29(time, message) => "[${time}] ${message}";

  static String m30(count) => "Выяўленыя пакеты: ${count}.";

  static String m31(error) => "Няма магчымасці падлучыцца да Wi-Fi: ${error}";

  static String m32(network) => "Падключыцеся да ${network}.";

  static String m33(error) => "Няма магчымасці падлучыцца да Wi-Fi: ${error}";

  static String m34(ssid, result) => "Wi-Fi падключаны да ${ssid}. ${result}";

  static String m35(ssid) => "Падключыцеся да ${ssid}.";

  static String m36(signal, security) => "${signal}% · ${security}";

  static String m37(error) => "Няма сувязі: ${error}";

  static String m38(error) => "No se pudo buscar el puente: ${error}";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
    "actionCancel": MessageLookupByLibrary.simpleMessage("Адмяніць"),
    "actionChange": MessageLookupByLibrary.simpleMessage("Камбіяр"),
    "actionConfirm": MessageLookupByLibrary.simpleMessage("Пацвердзіць"),
    "actionConnect": MessageLookupByLibrary.simpleMessage("Conectar"),
    "actionContinue": MessageLookupByLibrary.simpleMessage("Працягнуць"),
    "actionInstall": MessageLookupByLibrary.simpleMessage("Усталяваць"),
    "actionRefresh": MessageLookupByLibrary.simpleMessage("Актуалізаваць"),
    "actionRestartSystem": MessageLookupByLibrary.simpleMessage(
      "Reiniciar сістэма",
    ),
    "actionScanAgain": MessageLookupByLibrary.simpleMessage(
      "Escanear unidades de nuevo",
    ),
    "actionSearch": MessageLookupByLibrary.simpleMessage("Бускар"),
    "actionSelect": MessageLookupByLibrary.simpleMessage("Selectionar"),
    "activate": MessageLookupByLibrary.simpleMessage("Актыватар"),
    "activateKms": MessageLookupByLibrary.simpleMessage("Актыватар KMS"),
    "appTitleInstaller": MessageLookupByLibrary.simpleMessage(
      "Ўсталёўшчык Requiem",
    ),
    "appTitleTools": MessageLookupByLibrary.simpleMessage(
      "Інструменты Requiem",
    ),
    "app_title_installer": MessageLookupByLibrary.simpleMessage(
      "Ўсталёўшчык Requiem",
    ),
    "app_title_tools": MessageLookupByLibrary.simpleMessage(
      "Інструменты Requiem",
    ),
    "applicationStack": MessageLookupByLibrary.simpleMessage(
      "Стэк прыкладанняў",
    ),
    "applicationStackDescription": MessageLookupByLibrary.simpleMessage(
      "Instala y actualiza herramientas de desarrollo esenciales para Windows mediante winget.",
    ),
    "applicationsCount": m0,
    "automaticOffice": MessageLookupByLibrary.simpleMessage("Аўтаматычны офіс"),
    "automaticOfficeDescription": MessageLookupByLibrary.simpleMessage(
      "Выкарыстоўвайце аб\'ём GVLK для ўстаноўкі",
    ),
    "automaticRenewal": MessageLookupByLibrary.simpleMessage(
      "Аўтаматычная рэканструкцыя",
    ),
    "automaticWindows": MessageLookupByLibrary.simpleMessage(
      "Windows аўтаматычна",
    ),
    "automaticWindowsDescription": MessageLookupByLibrary.simpleMessage(
      "Сумяшчальны з Detecta edición і GVLK",
    ),
    "availableVersion": m1,
    "bootCurrent": m2,
    "bridgeConnectError": m3,
    "bridgeDescription": MessageLookupByLibrary.simpleMessage(
      "Prepara el WIM una sola vez y lo transmite directamente a los clientes Requiem de la misma red. Los clientes no guardan el WIM antes de instalar.",
    ),
    "bridgeIp": MessageLookupByLibrary.simpleMessage("IP del puente Requiem"),
    "bridgePorts": MessageLookupByLibrary.simpleMessage(
      "Пункт HTTP 40124 · Апісанне UDP 40123. Калі Windows Defender усталяваны, дазволены доступ і аднаўленне прыватных правоў.",
    ),
    "bridgeSearchError": m4,
    "checkingKms": m5,
    "clearLogs": MessageLookupByLibrary.simpleMessage("Лімпіярскія бярвёны"),
    "common_cancel": MessageLookupByLibrary.simpleMessage("АДМЕНАВАЦЬ"),
    "common_change": MessageLookupByLibrary.simpleMessage("КАМБІЯР"),
    "common_connect": MessageLookupByLibrary.simpleMessage("КАНЕКТАР"),
    "common_continue": MessageLookupByLibrary.simpleMessage("ПРАЦЯГ"),
    "common_label_disk": MessageLookupByLibrary.simpleMessage("ДЫСК"),
    "common_label_image": MessageLookupByLibrary.simpleMessage("ВЫЯВА"),
    "common_label_mode": MessageLookupByLibrary.simpleMessage("РЭЖЫМ"),
    "common_refresh": MessageLookupByLibrary.simpleMessage("АКТУАЛІЗАР"),
    "common_search": MessageLookupByLibrary.simpleMessage("БУСКАР"),
    "common_select": MessageLookupByLibrary.simpleMessage("СЕЛЕКЦЫЯНАР"),
    "compatibleMode": m6,
    "confirmDataDestruction": MessageLookupByLibrary.simpleMessage(
      "Пацвердзіце знішчэнне даных",
    ),
    "confirmInstallation": MessageLookupByLibrary.simpleMessage(
      "Пацвердзіце ўстаноўку",
    ),
    "connectInstallerWifi": MessageLookupByLibrary.simpleMessage(
      "Падключыцеся да Wi-Fi",
    ),
    "connectWifi": MessageLookupByLibrary.simpleMessage("Падключэнне Wi-Fi"),
    "console_title": MessageLookupByLibrary.simpleMessage("Кансоль сістэмы"),
    "console_tooltip_clear": MessageLookupByLibrary.simpleMessage(
      "Лімпіярскія бярвёны",
    ),
    "console_tooltip_copy": MessageLookupByLibrary.simpleMessage(
      "Капіраваць часопісы",
    ),
    "console_waiting_action": MessageLookupByLibrary.simpleMessage(
      "Esperando una ación...",
    ),
    "copyLogs": MessageLookupByLibrary.simpleMessage("Капіраваць часопісы"),
    "deploymentInProgress": MessageLookupByLibrary.simpleMessage(
      "Despliegue en curso",
    ),
    "designedBy": MessageLookupByLibrary.simpleMessage("Дызайн Джоса"),
    "destinationDiskDescription": MessageLookupByLibrary.simpleMessage(
      "Elija la unidad física donde se instalará Windows.",
    ),
    "detect": MessageLookupByLibrary.simpleMessage("Дэтэктар"),
    "diskManagement": MessageLookupByLibrary.simpleMessage(
      "Адміністрацыя дыскатэк",
    ),
    "disk_badge_system": MessageLookupByLibrary.simpleMessage("СІСТЭМА"),
    "disk_boot_firmware_label": m7,
    "disk_button_confirm_and_install": MessageLookupByLibrary.simpleMessage(
      "ПАТВЕРДЗІЦЬ УСТАНОВКУ",
    ),
    "disk_dialog_confirm_destruction_title":
        MessageLookupByLibrary.simpleMessage("ПАЦВЕРДЗІЦЬ ЗНІШЧЭННЕ ДАННЫХ"),
    "disk_dialog_confirm_install_title": MessageLookupByLibrary.simpleMessage(
      "ПАЦВЕРДЗІЦЬ УСТАНОВКУ",
    ),
    "disk_dialog_existing_notice": MessageLookupByLibrary.simpleMessage(
      "Windows адключаецца ў фармаце W:\\\\.",
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
      "INICIAR INSTALACIÓN",
    ),
    "disk_selection_desc": MessageLookupByLibrary.simpleMessage(
      "Elija la unidad física donde se instalará Windows.",
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
      "Выяўленая выява",
    ),
    "disk_wim_integrated_source": MessageLookupByLibrary.simpleMessage(
      "WIM інтэграваны ў ISO",
    ),
    "disk_wim_not_found": MessageLookupByLibrary.simpleMessage(
      "Выява без канфлікту",
    ),
    "doNotDisconnect": MessageLookupByLibrary.simpleMessage(
      "No desconecte la energía ni retire el medio de instalación",
    ),
    "downloadAndActivate": MessageLookupByLibrary.simpleMessage(
      "Спампаваць + актыватар",
    ),
    "downloadInstaller": MessageLookupByLibrary.simpleMessage(
      "Спампаваць праграму ўстаноўкі (.exe)",
    ),
    "downloadPortable": MessageLookupByLibrary.simpleMessage(
      "Спампаваць portable (.zip)",
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
      "ЮНІДАДЫ",
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
      "Выберыце архіў .wim або .swm",
    ),
    "file_explorer_selected_file": m16,
    "filter": MessageLookupByLibrary.simpleMessage("Фільтр…"),
    "formatGpt": MessageLookupByLibrary.simpleMessage(
      "Фарматаванне GPT (рэкамендавана)",
    ),
    "formatGptDescription": MessageLookupByLibrary.simpleMessage(
      "Дыскатэка Limpia y crea diseño UEFI\nEFI (S:) + Windows (W:)",
    ),
    "formatMbr": MessageLookupByLibrary.simpleMessage(
      "Фарматаванне MBR (наступны BIOS)",
    ),
    "formatMbrDescription": MessageLookupByLibrary.simpleMessage(
      "Limpia el Disco y crea diseño heredado\nІндывідуальныя Windows (C:)",
    ),
    "formatWarning": MessageLookupByLibrary.simpleMessage(
      "El disco seleccionado se formateará por completo. Se perderán todos los datos.",
    ),
    "generateIso": MessageLookupByLibrary.simpleMessage("Стварэнне ISO"),
    "getInstallOnlyIso": MessageLookupByLibrary.simpleMessage(
      "Атрымаць ISO для ўстаноўкі Solamente",
    ),
    "goUpOneLevel": MessageLookupByLibrary.simpleMessage("Subir un nivel"),
    "imageDetected": MessageLookupByLibrary.simpleMessage("Выяўленая выява"),
    "imageFound": MessageLookupByLibrary.simpleMessage("Выява кантрады"),
    "imageNotFound": MessageLookupByLibrary.simpleMessage(
      "Выява без канфлікту",
    ),
    "imageSearching": MessageLookupByLibrary.simpleMessage("Выява Buscando..."),
    "installAll": MessageLookupByLibrary.simpleMessage("Усталяваць усё"),
    "installOffice": MessageLookupByLibrary.simpleMessage("Ўсталяваць офіс"),
    "installationProgress": MessageLookupByLibrary.simpleMessage(
      "Прагрэс дэ інсталяцыі",
    ),
    "invalidPath": m17,
    "isoDescription": MessageLookupByLibrary.simpleMessage(
      "Атрымайце базу ISO для выбару WIM у праграме, або стварыце аўтаномную ISO, якая ўключае выяву Windows.",
    ),
    "iso_bridge_clients_count": m18,
    "iso_bridge_desc": MessageLookupByLibrary.simpleMessage(
      "Prepara el WIM una sola vez y lo transmite directamente a los clientes Requiem de la misma red. Los clientes no guardan el WIM antes de instalar.",
    ),
    "iso_bridge_generic_error": m19,
    "iso_bridge_list_interfaces_error": m20,
    "iso_bridge_save_simple_iso_dialog": MessageLookupByLibrary.simpleMessage(
      "Guardar ISO simple de Requiem",
    ),
    "iso_bridge_save_wim_iso_dialog": MessageLookupByLibrary.simpleMessage(
      "Захоўвайце ISO дэ Requiem з WIM",
    ),
    "iso_bridge_select_wim_dialog": MessageLookupByLibrary.simpleMessage(
      "Выберыце выяву WIM для Windows",
    ),
    "iso_bridge_simple_iso_filename": MessageLookupByLibrary.simpleMessage(
      "Requiem-Installer-Simple.iso",
    ),
    "iso_bridge_start_validation_error": MessageLookupByLibrary.simpleMessage(
      "Выберыце WIM і прыватны інтэрфейс IPv4.",
    ),
    "iso_bridge_wim_selected_log": m21,
    "iso_panel_button_generate_iso": MessageLookupByLibrary.simpleMessage(
      "GENERAR ISO",
    ),
    "iso_panel_button_select_wim": MessageLookupByLibrary.simpleMessage(
      "СЕЛЕКЦЫЯНАР WIM",
    ),
    "iso_panel_button_simple_iso": MessageLookupByLibrary.simpleMessage(
      "OBTENER ISO PARA INSTALACIÓN SOLAMENTE",
    ),
    "iso_panel_desc_media": MessageLookupByLibrary.simpleMessage(
      "Атрымайце базу ISO для выбару WIM у праграме, або стварыце аўтаномную ISO, якая ўключае выяву Windows.",
    ),
    "iso_panel_title_bridge": MessageLookupByLibrary.simpleMessage(
      "Пункт усталявання IPv4",
    ),
    "iso_panel_title_media": MessageLookupByLibrary.simpleMessage(
      "Медыя інсталяцыі",
    ),
    "kmsError": m22,
    "kmsHostEmpty": MessageLookupByLibrary.simpleMessage(
      "Памылка: el host KMS está vacío.",
    ),
    "kmsServer": MessageLookupByLibrary.simpleMessage("Сервер KMS"),
    "kmsTask160Days": MessageLookupByLibrary.simpleMessage("Тэрэя 160 дзён"),
    "kmsVolumeActivation": MessageLookupByLibrary.simpleMessage(
      "Activación de Volume (KMS)",
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
        MessageLookupByLibrary.simpleMessage("Офіс прафесійны плюс 2013"),
    "kms_product_office_professional_plus_2016":
        MessageLookupByLibrary.simpleMessage("Офіс прафесійны плюс 2016"),
    "kms_product_office_professional_plus_2019":
        MessageLookupByLibrary.simpleMessage("Office Professional Plus 2019"),
    "kms_product_office_standard_2013": MessageLookupByLibrary.simpleMessage(
      "Офіс стандарт 2013",
    ),
    "kms_product_windows_10_11_education": MessageLookupByLibrary.simpleMessage(
      "Windows 10/11 Адукацыя",
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
          "Windows 10/11 Pro для працоўных станцый",
        ),
    "kms_product_windows_10_11_pro_n": MessageLookupByLibrary.simpleMessage(
      "Windows 10/11 Pro N",
    ),
    "kms_product_windows_10_11_pro_workstations":
        MessageLookupByLibrary.simpleMessage(
          "Працоўныя станцыі Windows 10/11 Pro",
        ),
    "kms_product_windows_8_1_enterprise": MessageLookupByLibrary.simpleMessage(
      "Windows 8.1 Enterprise",
    ),
    "kms_product_windows_8_1_pro": MessageLookupByLibrary.simpleMessage(
      "Windows 8.1 Pro",
    ),
    "kms_product_windows_8_enterprise": MessageLookupByLibrary.simpleMessage(
      "Windows 8 карпаратыўная",
    ),
    "kms_product_windows_8_pro": MessageLookupByLibrary.simpleMessage(
      "Windows 8 Pro",
    ),
    "kms_product_windows_server_2019_datacenter":
        MessageLookupByLibrary.simpleMessage(
          "Цэнтр апрацоўкі дадзеных Windows Server 2019",
        ),
    "kms_product_windows_server_2019_standard":
        MessageLookupByLibrary.simpleMessage("Windows Server 2019 Standard"),
    "kms_product_windows_server_2022_datacenter":
        MessageLookupByLibrary.simpleMessage(
          "Цэнтр апрацоўкі дадзеных Windows Server 2022",
        ),
    "kms_product_windows_server_2022_standard":
        MessageLookupByLibrary.simpleMessage("Windows Server 2022 Standard"),
    "kms_product_windows_server_2025_datacenter":
        MessageLookupByLibrary.simpleMessage(
          "Цэнтр апрацоўкі дадзеных Windows Server 2025",
        ),
    "kms_product_windows_server_2025_standard":
        MessageLookupByLibrary.simpleMessage("Windows Server 2025 Standard"),
    "kms_product_windows_subsystem_for_linux":
        MessageLookupByLibrary.simpleMessage("Падсістэма Windows для Linux"),
    "kms_product_windows_terminal": MessageLookupByLibrary.simpleMessage(
      "Тэрмінал Windows",
    ),
    "landingDescription": MessageLookupByLibrary.simpleMessage(
      "Instalador de Windows de alta precisión para entornos de alto rendimiento. Experimente un despliegue rápido con orquestación directa de DISM y optimización automatizada del system.",
    ),
    "landing_badge_author": MessageLookupByLibrary.simpleMessage(
      "DISEÑADO POR JOSS",
    ),
    "landing_badge_secure_boot": MessageLookupByLibrary.simpleMessage(
      "СУМЕШЧАЛЬНАЯ CON БЯСПЕЧНАЯ ЗАГРУЗКА",
    ),
    "landing_badge_version": MessageLookupByLibrary.simpleMessage(
      "УСТАНОВЛЕННАЯ ВЕРСІЯ",
    ),
    "landing_button_logs": MessageLookupByLibrary.simpleMessage(
      "ЛОГЫ ДЭЛЬ СІСТЭМА",
    ),
    "landing_button_start": MessageLookupByLibrary.simpleMessage("ЭМПЕЗАР"),
    "landing_description_part1": MessageLookupByLibrary.simpleMessage(
      "Instalador de Windows de alta precisión para entornos de alto rendimiento.",
    ),
    "landing_description_part2": MessageLookupByLibrary.simpleMessage(
      "Experimente un despliegue rápido con orquestación directa de DISM y optimización automatizada del system.",
    ),
    "landing_subtitle": MessageLookupByLibrary.simpleMessage(
      "DESPLIEGUE DE SO DE PRÓXIMA GENERACIÓN",
    ),
    "landing_title_installer": MessageLookupByLibrary.simpleMessage(
      "РЭКВІЕМ УСТАЛЯВАЛЬНІК",
    ),
    "landing_title_tools": MessageLookupByLibrary.simpleMessage(
      "РЭКВІЕМ ІНСТРУМЕНТЫ",
    ),
    "licenseActivation": MessageLookupByLibrary.simpleMessage(
      "Актывацыя ліцэнзій",
    ),
    "logsCopied": MessageLookupByLibrary.simpleMessage(
      "Logs copiados al portapapeles.",
    ),
    "mandatoryUpdate": MessageLookupByLibrary.simpleMessage(
      "Esta actualización es obligatoria y no puede omitirse.",
    ),
    "manualWimHint": MessageLookupByLibrary.simpleMessage(
      "Выкарыстоўвайце \"Пошук\" для лакалізацыі ў архіве WIM.",
    ),
    "mediaInstallation": MessageLookupByLibrary.simpleMessage(
      "Медыя інсталяцыі",
    ),
    "networkBridge": MessageLookupByLibrary.simpleMessage(
      "Пункт усталявання IPv4",
    ),
    "networkInterface": MessageLookupByLibrary.simpleMessage(
      "Інтэрфаз Wi‑Fi/LAN IPv4",
    ),
    "nextGenerationDeployment": MessageLookupByLibrary.simpleMessage(
      "Despliegue de SO de próxima generación",
    ),
    "noBridgeFound": MessageLookupByLibrary.simpleMessage(
      "No se encontró ningún puente. Дапаможнік Pruebe con la IP.",
    ),
    "noFormatWarning": MessageLookupByLibrary.simpleMessage(
      "Windows адключаецца ў фармаце W:\\.",
    ),
    "noImageDetected": MessageLookupByLibrary.simpleMessage(
      "Нічога не выяўлена",
    ),
    "noKmsProducts": MessageLookupByLibrary.simpleMessage(
      "Няма выбару прадуктаў сена KMS.",
    ),
    "noPhysicalDisks": MessageLookupByLibrary.simpleMessage(
      "No se detectaron discos físicos",
    ),
    "noProgramsSelected": MessageLookupByLibrary.simpleMessage(
      "Няма выбраных праграм.",
    ),
    "noWifiNetworks": MessageLookupByLibrary.simpleMessage("Wi-Fi не працуе."),
    "noWingetPackages": MessageLookupByLibrary.simpleMessage(
      "No se detectaron paquetes conocidos con winget.",
    ),
    "officeInstallDescription": MessageLookupByLibrary.simpleMessage(
      "Апісанне Microsoft Office LTSC або аўтаматызаванага спосабу 365 з дапамогай ODT.",
    ),
    "officeInstaller": MessageLookupByLibrary.simpleMessage("Інсталятар офіса"),
    "officeRenewalStatus": m23,
    "officeVersion": MessageLookupByLibrary.simpleMessage("Версія офіса"),
    "office_odt_kms_badge": MessageLookupByLibrary.simpleMessage("ODT + KMS"),
    "office_odt_panel_title": MessageLookupByLibrary.simpleMessage(
      "Інструмент разгортвання Office",
    ),
    "office_pkg_desc_2019": MessageLookupByLibrary.simpleMessage(
      "Click-to-Run de volumen con канал PerpetualVL2019",
    ),
    "office_pkg_desc_2021": MessageLookupByLibrary.simpleMessage(
      "Volume Click-to-Run з каналам PerpetualVL2021",
    ),
    "office_pkg_desc_2024": MessageLookupByLibrary.simpleMessage(
      "Volume Click-to-Run з каналам PerpetualVL2024",
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
      "Гэтая функцыя даступная ў Windows.",
    ),
    "packageStack": MessageLookupByLibrary.simpleMessage(
      "Стэк праграм (Winget)",
    ),
    "packagesDetected": m24,
    "partitionMode": MessageLookupByLibrary.simpleMessage("Modo de partición"),
    "pkg_cat_apache_php_mysql": MessageLookupByLibrary.simpleMessage(
      "Apache PHP MySQL",
    ),
    "pkg_cat_bi_desktop": MessageLookupByLibrary.simpleMessage(
      "Працоўны стол BI",
    ),
    "pkg_cat_cliente_api": MessageLookupByLibrary.simpleMessage("API кліента"),
    "pkg_cat_cliente_db": MessageLookupByLibrary.simpleMessage("БД кліента"),
    "pkg_cat_compiladores_c": MessageLookupByLibrary.simpleMessage(
      "Кампілятары C++",
    ),
    "pkg_cat_compresor": MessageLookupByLibrary.simpleMessage("Кампрэсар"),
    "pkg_cat_comunicacion": MessageLookupByLibrary.simpleMessage(
      "Камунікацыён",
    ),
    "pkg_cat_control_de_versiones": MessageLookupByLibrary.simpleMessage(
      "Кантроль версій",
    ),
    "pkg_cat_desktop": MessageLookupByLibrary.simpleMessage("Працоўны стол"),
    "pkg_cat_diagramas": MessageLookupByLibrary.simpleMessage("Дыяграмы"),
    "pkg_cat_distro_wsl": MessageLookupByLibrary.simpleMessage(
      "Дыстрыбутыў WSL",
    ),
    "pkg_cat_editor": MessageLookupByLibrary.simpleMessage("Рэдактар"),
    "pkg_cat_golang": MessageLookupByLibrary.simpleMessage("Голанг"),
    "pkg_cat_gpu_compute": MessageLookupByLibrary.simpleMessage(
      "Вылічэнне GPU",
    ),
    "pkg_cat_grabacion": MessageLookupByLibrary.simpleMessage("Грабасьён"),
    "pkg_cat_ide_ai": MessageLookupByLibrary.simpleMessage("IDE AI"),
    "pkg_cat_ide_android": MessageLookupByLibrary.simpleMessage("IDE Android"),
    "pkg_cat_ide_completo": MessageLookupByLibrary.simpleMessage("Поўная IDE"),
    "pkg_cat_instaladores": MessageLookupByLibrary.simpleMessage("Інсталядоры"),
    "pkg_cat_javascript": MessageLookupByLibrary.simpleMessage("JavaScript"),
    "pkg_cat_limpieza": MessageLookupByLibrary.simpleMessage("Лімп\'еза"),
    "pkg_cat_modelos_locales": MessageLookupByLibrary.simpleMessage(
      "Лакальныя мадэлі",
    ),
    "pkg_cat_navegador": MessageLookupByLibrary.simpleMessage("Навегадор"),
    "pkg_cat_python_3": MessageLookupByLibrary.simpleMessage("Python 3"),
    "pkg_cat_runtime_c": MessageLookupByLibrary.simpleMessage(
      "Асяроддзе выканання C++",
    ),
    "pkg_cat_runtime_escritorio": MessageLookupByLibrary.simpleMessage(
      "Напісанне часу выканання",
    ),
    "pkg_cat_runtime_juegos": MessageLookupByLibrary.simpleMessage(
      "Гульні для выканання",
    ),
    "pkg_cat_runtime_php": MessageLookupByLibrary.simpleMessage(
      "Час выканання PHP",
    ),
    "pkg_cat_rustup": MessageLookupByLibrary.simpleMessage("Руступ"),
    "pkg_cat_sdk__net": MessageLookupByLibrary.simpleMessage("SDK .NET"),
    "pkg_cat_servidor_db": MessageLookupByLibrary.simpleMessage("БД сервера"),
    "pkg_cat_ssh_clasico": MessageLookupByLibrary.simpleMessage("SSH класіка"),
    "pkg_cat_ssh_moderno": MessageLookupByLibrary.simpleMessage("Сучасны SSH"),
    "pkg_cat_subsistema_linux": MessageLookupByLibrary.simpleMessage(
      "Падсістэма Linux",
    ),
    "pkg_cat_temurin_21": MessageLookupByLibrary.simpleMessage("Цемурын 21"),
    "pkg_cat_terminal_moderno": MessageLookupByLibrary.simpleMessage(
      "Сучасны тэрмінал",
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
      "ДЭСПЛІЕГ НА КУРСО",
    ),
    "provideWindowsImage": MessageLookupByLibrary.simpleMessage(
      "Параметр выявы ўстаноўкі Windows (install.wim або install.swm)\ndesde una unidad USB o cualquier medio montado.",
    ),
    "receiveInstallation": MessageLookupByLibrary.simpleMessage(
      "O reciba la installón preparada desde Requiem для Windows",
    ),
    "renewalActive": MessageLookupByLibrary.simpleMessage("Актываваць"),
    "renewalDisabled": MessageLookupByLibrary.simpleMessage("Дэзактывацыя"),
    "searchingImage": MessageLookupByLibrary.simpleMessage("Выява Buscando…"),
    "secureBootCompatible": MessageLookupByLibrary.simpleMessage(
      "Сумяшчальны з бяспечнай загрузкай",
    ),
    "selectDestinationDisk": MessageLookupByLibrary.simpleMessage(
      "Selectionar Disco de Destino",
    ),
    "selectFileHint": MessageLookupByLibrary.simpleMessage(
      "Выберыце архіў .wim або .swm",
    ),
    "selectWim": MessageLookupByLibrary.simpleMessage("Выберыце WIM"),
    "selectWimFirst": MessageLookupByLibrary.simpleMessage(
      "Выберыце WIM і прыватны інтэрфейс IPv4.",
    ),
    "selectWindowsImage": MessageLookupByLibrary.simpleMessage(
      "Выбар малюнкаў Windows",
    ),
    "selectWindowsImageFull": MessageLookupByLibrary.simpleMessage(
      "Выберыце малюнак для ўстаноўкі Windows",
    ),
    "selectedFile": m25,
    "stableVersion": MessageLookupByLibrary.simpleMessage(
      "Усталяваная версія v1.0.0",
    ),
    "start": MessageLookupByLibrary.simpleMessage("Эмпезар"),
    "startInstallation": MessageLookupByLibrary.simpleMessage(
      "Пачаць усталяванне",
    ),
    "stopBridge": MessageLookupByLibrary.simpleMessage("Detener puente"),
    "systemConsole": MessageLookupByLibrary.simpleMessage("Кансоль сістэмы"),
    "systemDisk": MessageLookupByLibrary.simpleMessage("сістэма"),
    "systemLogs": MessageLookupByLibrary.simpleMessage("Журналы сістэмы"),
    "tools_badge_iso_compatibility": MessageLookupByLibrary.simpleMessage(
      "Захаванне BIOS + UEFI",
    ),
    "tools_badge_kms_pending": MessageLookupByLibrary.simpleMessage(
      "Кулон KMS",
    ),
    "tools_badge_package_count": m26,
    "tools_button_activate_kms": MessageLookupByLibrary.simpleMessage(
      "АКТЫВАР KMS",
    ),
    "tools_button_install_all_packages": MessageLookupByLibrary.simpleMessage(
      "УСТАНОВІЦЬ ЗАДАЧУ",
    ),
    "tools_button_install_office": MessageLookupByLibrary.simpleMessage(
      "УСТАНОВІЦЬ ОФІС",
    ),
    "tools_header_title": MessageLookupByLibrary.simpleMessage(
      "ІНСТРУМЕНТЫ МІГРАЦЫІ REQUIEM",
    ),
    "tools_kms_checking_connectivity": m27,
    "tools_kms_empty_host_error": MessageLookupByLibrary.simpleMessage(
      "ПАМЫЛКА: хост KMS не працуе.",
    ),
    "tools_kms_error_log": m28,
    "tools_kms_no_products_selected": MessageLookupByLibrary.simpleMessage(
      "Няма выбару прадуктаў сена KMS.",
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
      "Няма выбраных праграм.",
    ),
    "tools_section_activation_desc": MessageLookupByLibrary.simpleMessage(
      "Наладзьце лакальны або дыстанцыйны сервер KMS для актывацыі Windows і Office.",
    ),
    "tools_section_activation_title": MessageLookupByLibrary.simpleMessage(
      "Activación de Licencias",
    ),
    "tools_section_iso_desc": MessageLookupByLibrary.simpleMessage(
      "Cree medios autonomos con un WIM integrado or distribuya un instalation directamente por IPv4.",
    ),
    "tools_section_iso_title": MessageLookupByLibrary.simpleMessage(
      "ISO y despliegue por red",
    ),
    "tools_section_office_desc": MessageLookupByLibrary.simpleMessage(
      "Апісанне Microsoft Office LTSC або аўтаматызаванага спосабу 365 з дапамогай ODT.",
    ),
    "tools_section_office_title": MessageLookupByLibrary.simpleMessage(
      "Інсталятар офіса",
    ),
    "tools_section_packages_desc": MessageLookupByLibrary.simpleMessage(
      "Instala y actualiza herramientas de desarrollo esenciales para Windows mediante winget.",
    ),
    "tools_section_packages_title": MessageLookupByLibrary.simpleMessage(
      "Стэк прыкладанняў",
    ),
    "tools_sidebar_app_name": MessageLookupByLibrary.simpleMessage("РЭКВІЕМ"),
    "tools_sidebar_mode_badge": MessageLookupByLibrary.simpleMessage(
      "Рэжым лакальных інструментаў",
    ),
    "tools_sidebar_tab_iso": MessageLookupByLibrary.simpleMessage(
      "ISO і Пуэнтэ",
    ),
    "tools_sidebar_tab_kms": MessageLookupByLibrary.simpleMessage(
      "Актывацыя KMS",
    ),
    "tools_sidebar_tab_office": MessageLookupByLibrary.simpleMessage(
      "Інсталяцыйны офіс",
    ),
    "tools_sidebar_tab_packages": MessageLookupByLibrary.simpleMessage(
      "Стэкавыя праграмы",
    ),
    "unknown": MessageLookupByLibrary.simpleMessage("Дэсканацыда"),
    "updateDescription": MessageLookupByLibrary.simpleMessage(
      "Для далейшага выкарыстання Requiem Tools неабходна актуалізаваць іншую версію.",
    ),
    "updateRequired": MessageLookupByLibrary.simpleMessage(
      "Actualización requerida",
    ),
    "useExistingPartitions": MessageLookupByLibrary.simpleMessage(
      "Карыстайцеся існуючымі раздзеламі",
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
      "Падключыцеся да Wi-Fi",
    ),
    "wifi_item_signal_security": m36,
    "wifi_none_found": MessageLookupByLibrary.simpleMessage("Wi-Fi не працуе."),
    "wifi_password_hint": MessageLookupByLibrary.simpleMessage(
      "Contraseña Wi-Fi",
    ),
    "wifi_scanning": MessageLookupByLibrary.simpleMessage(
      "Сканаванне даступных сетак Wi-Fi...",
    ),
    "wimIntegrated": MessageLookupByLibrary.simpleMessage(
      "WIM інтэграваны ў ISO",
    ),
    "wim_bridge_connection_error": m37,
    "wim_bridge_ip_dialog_title": MessageLookupByLibrary.simpleMessage(
      "IP del puente Requiem",
    ),
    "wim_bridge_ip_placeholder": MessageLookupByLibrary.simpleMessage(
      "192.168.1.20",
    ),
    "wim_bridge_not_found": MessageLookupByLibrary.simpleMessage(
      "No se encontró ningún puente. Дапаможнік Pruebe con la IP.",
    ),
    "wim_bridge_search_error": m38,
    "wim_bridge_searching": MessageLookupByLibrary.simpleMessage(
      "Пошук мастоў Requiem у лакальнай сетцы IPv4...",
    ),
    "wim_bridge_section_header": MessageLookupByLibrary.simpleMessage(
      "O reciba la installón preparada desde Requiem для Windows",
    ),
    "wim_button_change_file": MessageLookupByLibrary.simpleMessage(
      "КАМБЯРСКІ АРХІЎ",
    ),
    "wim_button_connect_wifi": MessageLookupByLibrary.simpleMessage(
      "CONECTAR WI-FI",
    ),
    "wim_button_manual_ip": MessageLookupByLibrary.simpleMessage(
      "КІРАЎНІЦТВА USAR IP",
    ),
    "wim_button_rescan": MessageLookupByLibrary.simpleMessage(
      "Escanear unidades de nuevo",
    ),
    "wim_button_search_bridge": MessageLookupByLibrary.simpleMessage(
      "БУСКАР ПУЭНТЕ",
    ),
    "wim_manual_search_hint": MessageLookupByLibrary.simpleMessage(
      "Выкарыстоўвайце \"Пошук\" для лакалізацыі ў архіве WIM.",
    ),
    "wim_picker_description": MessageLookupByLibrary.simpleMessage(
      "Прапорцыя выявы ўстаноўкі Windows (install.wim або install.swm)\\n",
    ),
    "wim_picker_title": MessageLookupByLibrary.simpleMessage(
      "Выбар малюнкаў для Windows",
    ),
    "wim_status_found": MessageLookupByLibrary.simpleMessage("Выява кантрады"),
    "wim_status_not_found": MessageLookupByLibrary.simpleMessage(
      "Нічога не выяўлена",
    ),
    "wim_status_searching": MessageLookupByLibrary.simpleMessage(
      "Выява Buscando…",
    ),
    "wim_status_searching_alt": MessageLookupByLibrary.simpleMessage(
      "Выява Buscando...",
    ),
    "wingetUnavailable": MessageLookupByLibrary.simpleMessage(
      "winget no está instalado o no está en PATH.",
    ),
  };
}
