// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a ru locale. All the
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
  String get localeName => 'ru';

  static String m0(count) => "${count} программ";

  static String m1(version) => "Доступная версия: ${version}";

  static String m2(firmware) => "Фактическая дата: ${firmware}";

  static String m3(error) => "Не могу подключиться: ${error}";

  static String m4(error) => "Я не могу ехать в пуэнте: ${error}";

  static String m5(host) => "Comprobando conectividad con ${host}:1688...";

  static String m6(mode) => "Совместимость с модом: ${mode}";

  static String m7(firmware) => "Фактическая дата: ${firmware}";

  static String m8(diskNumber, mediaType, busType) =>
      "ДИСК ${diskNumber} · ${mediaType} · ${busType}";

  static String m9(recommended) => "Совместимость с модом: ${recommended}";

  static String m10(sizeGB) => "${sizeGB} ГБ";

  static String m11(imageName) =>
      "Пуэнте: \${controller.bridgeAnnouncement?.imageName ??";

  static String m12(name, edition) =>
      "Обнаруженное образование: ${name} (${edition})";

  static String m13(error) => "Произошла ошибка: ${error}";

  static String m14(val) => "Недействительный статус: ${val}";

  static String m15(error) =>
      "Я не могу смотреть на содержание директории.\\n${error}";

  static String m16(path) => "Выбрано: ${path}";

  static String m17(path) => "Недействительный статус: ${path}";

  static String m18(clients) => "${clients} связи";

  static String m19(error) => "ОШИБКА: ${error}";

  static String m20(error) =>
      "Невозможно перечислить интерфейсы IPv4: ${error}";

  static String m21(path) => "Выбранный WIM: ${path}";

  static String m22(error) => "Ошибка KMS: ${error}";

  static String m23(product, channel, edition, status) =>
      "${product} / ${channel} / ${edition} бит. La renovación queda ${status}.";

  static String m24(count) => "Обнаруженные пакеты: ${count}.";

  static String m25(file) => "Выбрано: ${file}";

  static String m26(count) => "${count} программ";

  static String m27(host) => "Comprobando conectividad con ${host}:1688...";

  static String m28(error) => "ОШИБКА KMS: ${error}";

  static String m29(time, message) => "[${time}] ${message}";

  static String m30(count) => "Обнаруженные пакеты: ${count}.";

  static String m31(error) => "Невозможно подключиться к Wi-Fi: ${error}";

  static String m32(network) => "Подключитесь к ${network}.";

  static String m33(error) => "Невозможно подключиться к Wi-Fi: ${error}";

  static String m34(ssid, result) => "Wi-Fi подключен к ${ssid}. ${result}";

  static String m35(ssid) => "Подключитесь к ${ssid}.";

  static String m36(signal, security) => "${signal}% · ${security}";

  static String m37(error) => "Не могу подключиться: ${error}";

  static String m38(error) => "Я не могу ехать в пуэнте: ${error}";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
    "actionCancel": MessageLookupByLibrary.simpleMessage("Отмена"),
    "actionChange": MessageLookupByLibrary.simpleMessage("Камбьяр"),
    "actionConfirm": MessageLookupByLibrary.simpleMessage("Подтвердить"),
    "actionConnect": MessageLookupByLibrary.simpleMessage("Конектар"),
    "actionContinue": MessageLookupByLibrary.simpleMessage("Продолжить"),
    "actionInstall": MessageLookupByLibrary.simpleMessage("Инсталар"),
    "actionRefresh": MessageLookupByLibrary.simpleMessage("Актуализар"),
    "actionRestartSystem": MessageLookupByLibrary.simpleMessage(
      "Рейничная система",
    ),
    "actionScanAgain": MessageLookupByLibrary.simpleMessage(
      "Escanear unidades de nuevo",
    ),
    "actionSearch": MessageLookupByLibrary.simpleMessage("Бускар"),
    "actionSelect": MessageLookupByLibrary.simpleMessage("Выбор"),
    "activate": MessageLookupByLibrary.simpleMessage("Активар"),
    "activateKms": MessageLookupByLibrary.simpleMessage("Активар КМС"),
    "appTitleInstaller": MessageLookupByLibrary.simpleMessage(
      "Установщик Реквиема",
    ),
    "appTitleTools": MessageLookupByLibrary.simpleMessage(
      "Инструменты Реквиема",
    ),
    "app_title_installer": MessageLookupByLibrary.simpleMessage(
      "Установщик Реквиема",
    ),
    "app_title_tools": MessageLookupByLibrary.simpleMessage(
      "Инструменты Реквиема",
    ),
    "applicationStack": MessageLookupByLibrary.simpleMessage("Стек приложений"),
    "applicationStackDescription": MessageLookupByLibrary.simpleMessage(
      "Установите и актуализируйте специальные элементы для Windows на среднем крыле.",
    ),
    "applicationsCount": m0,
    "automaticOffice": MessageLookupByLibrary.simpleMessage(
      "Автоматический офис",
    ),
    "automaticOfficeDescription": MessageLookupByLibrary.simpleMessage(
      "Используйте GVLK для установки",
    ),
    "automaticRenewal": MessageLookupByLibrary.simpleMessage(
      "Автоматический ремонт",
    ),
    "automaticWindows": MessageLookupByLibrary.simpleMessage(
      "Windows автоматически",
    ),
    "automaticWindowsDescription": MessageLookupByLibrary.simpleMessage(
      "Совместимость с Detecta edición и GVLK",
    ),
    "availableVersion": m1,
    "bootCurrent": m2,
    "bridgeConnectError": m3,
    "bridgeDescription": MessageLookupByLibrary.simpleMessage(
      "Подготовьте WIM для одного и передайте прямо клиентам Requiem de la misma red. Клиенты не охраняют WIM перед установкой.",
    ),
    "bridgeIp": MessageLookupByLibrary.simpleMessage("ИП дель Пуэнте Реквием"),
    "bridgePorts": MessageLookupByLibrary.simpleMessage(
      "Путь HTTP 40124 · Описан UDP 40123. Если в Защитнике Windows есть доступ, разрешите доступ к личным данным.",
    ),
    "bridgeSearchError": m4,
    "checkingKms": m5,
    "clearLogs": MessageLookupByLibrary.simpleMessage("Прозрачные бревна"),
    "common_cancel": MessageLookupByLibrary.simpleMessage("ОТМЕНИТЬ"),
    "common_change": MessageLookupByLibrary.simpleMessage("КАМБЬЯР"),
    "common_connect": MessageLookupByLibrary.simpleMessage("КОНЕКТАР"),
    "common_continue": MessageLookupByLibrary.simpleMessage("ПРОДОЛЖИТЬ"),
    "common_label_disk": MessageLookupByLibrary.simpleMessage("ДИСК"),
    "common_label_image": MessageLookupByLibrary.simpleMessage("ИЗОБРАЖЕНИЕ"),
    "common_label_mode": MessageLookupByLibrary.simpleMessage("РЕЖИМ"),
    "common_refresh": MessageLookupByLibrary.simpleMessage("АКТУАЛИЗАР"),
    "common_search": MessageLookupByLibrary.simpleMessage("БУСКАР"),
    "common_select": MessageLookupByLibrary.simpleMessage("ВЫБОР"),
    "compatibleMode": m6,
    "confirmDataDestruction": MessageLookupByLibrary.simpleMessage(
      "Подтвердить уничтожение данных",
    ),
    "confirmInstallation": MessageLookupByLibrary.simpleMessage(
      "Подтвердите установку",
    ),
    "connectInstallerWifi": MessageLookupByLibrary.simpleMessage(
      "Подключитесь к установщику Wi-Fi",
    ),
    "connectWifi": MessageLookupByLibrary.simpleMessage("Конектар Wi-Fi"),
    "console_title": MessageLookupByLibrary.simpleMessage(
      "Консола дель Система",
    ),
    "console_tooltip_clear": MessageLookupByLibrary.simpleMessage(
      "Прозрачные бревна",
    ),
    "console_tooltip_copy": MessageLookupByLibrary.simpleMessage(
      "Копирование журналов",
    ),
    "console_waiting_action": MessageLookupByLibrary.simpleMessage(
      "Эсперандо за действие...",
    ),
    "copyLogs": MessageLookupByLibrary.simpleMessage("Копирование журналов"),
    "deploymentInProgress": MessageLookupByLibrary.simpleMessage(
      "Десплиг в курсе",
    ),
    "designedBy": MessageLookupByLibrary.simpleMessage("Дизайн от Джосса"),
    "destinationDiskDescription": MessageLookupByLibrary.simpleMessage(
      "Элия имеет физическое единство, когда устанавливает Windows.",
    ),
    "detect": MessageLookupByLibrary.simpleMessage("Детектор"),
    "diskManagement": MessageLookupByLibrary.simpleMessage(
      "Администрация дискотек",
    ),
    "disk_badge_system": MessageLookupByLibrary.simpleMessage("СИСТЕМА"),
    "disk_boot_firmware_label": m7,
    "disk_button_confirm_and_install": MessageLookupByLibrary.simpleMessage(
      "ПОДТВЕРДИТЬ УСТАНОВКУ",
    ),
    "disk_dialog_confirm_destruction_title":
        MessageLookupByLibrary.simpleMessage(
          "ПОДТВЕРЖДЕНИЕ УНИЧТОЖЕНИЯ ДАННЫХ",
        ),
    "disk_dialog_confirm_install_title": MessageLookupByLibrary.simpleMessage(
      "ПОДТВЕРДИТЬ УСТАНОВКУ",
    ),
    "disk_dialog_existing_notice": MessageLookupByLibrary.simpleMessage(
      "Windows отключается в W:\\\\ sin formatear.",
    ),
    "disk_dialog_format_warning": MessageLookupByLibrary.simpleMessage(
      "Выбранная дискотека полностью отформатирована. Если вы потеряли все данные.",
    ),
    "disk_empty_list": MessageLookupByLibrary.simpleMessage(
      "Нет обнаружения физических дискотек",
    ),
    "disk_item_header": m8,
    "disk_management_appbar_title": MessageLookupByLibrary.simpleMessage(
      "АДМИНИСТРАЦИЯ ДИСКОТОВ",
    ),
    "disk_partition_gpt_uefi": MessageLookupByLibrary.simpleMessage("ГПТ/УЕФИ"),
    "disk_partition_mbr_bios": MessageLookupByLibrary.simpleMessage("МБР/БИОС"),
    "disk_recommended_mode_label": m9,
    "disk_selection_button_start": MessageLookupByLibrary.simpleMessage(
      "НАЧАЛЬНАЯ УСТАНОВКА",
    ),
    "disk_selection_desc": MessageLookupByLibrary.simpleMessage(
      "Элия имеет физическое единство, когда устанавливает Windows.",
    ),
    "disk_selection_title": MessageLookupByLibrary.simpleMessage(
      "Выбор Disco de Destino",
    ),
    "disk_size_gb": m10,
    "disk_waiting_wim_hint": MessageLookupByLibrary.simpleMessage(
      "Эсперандо обнаружения install.wim...",
    ),
    "disk_wim_bridge_source": m11,
    "disk_wim_detected": MessageLookupByLibrary.simpleMessage(
      "Изображение обнаружено",
    ),
    "disk_wim_integrated_source": MessageLookupByLibrary.simpleMessage(
      "Интеграция WIM в ISO",
    ),
    "disk_wim_not_found": MessageLookupByLibrary.simpleMessage(
      "Imagen no encontrada",
    ),
    "doNotDisconnect": MessageLookupByLibrary.simpleMessage(
      "Не отключайте питание и не вынимайте средство установки.",
    ),
    "downloadAndActivate": MessageLookupByLibrary.simpleMessage(
      "Декаргар + активар",
    ),
    "downloadInstaller": MessageLookupByLibrary.simpleMessage(
      "Скачать программу установки (.exe)",
    ),
    "downloadPortable": MessageLookupByLibrary.simpleMessage(
      "Скачать портативную версию (.zip)",
    ),
    "drives": MessageLookupByLibrary.simpleMessage("Юнидадес"),
    "editionDetected": m12,
    "emptyFolder": MessageLookupByLibrary.simpleMessage(
      "Эта ковровая дорожка está vacía",
    ),
    "errorGeneric": m13,
    "file_explorer_default_title": MessageLookupByLibrary.simpleMessage(
      "Выбор образа для установки Windows",
    ),
    "file_explorer_drives_header": MessageLookupByLibrary.simpleMessage(
      "ЮНИДАДЫ",
    ),
    "file_explorer_empty_folder": MessageLookupByLibrary.simpleMessage(
      "Эта ковровая дорожка está vacía",
    ),
    "file_explorer_filter_hint": MessageLookupByLibrary.simpleMessage(
      "Фильтрар…",
    ),
    "file_explorer_go_up_tooltip": MessageLookupByLibrary.simpleMessage(
      "Subir un nivel",
    ),
    "file_explorer_invalid_path_error": m14,
    "file_explorer_read_error": m15,
    "file_explorer_select_file_hint": MessageLookupByLibrary.simpleMessage(
      "Выбор архива .wim или .swm",
    ),
    "file_explorer_selected_file": m16,
    "filter": MessageLookupByLibrary.simpleMessage("Фильтрар…"),
    "formatGpt": MessageLookupByLibrary.simpleMessage(
      "Форматировать GPT (рекомендуется)",
    ),
    "formatGptDescription": MessageLookupByLibrary.simpleMessage(
      "Освободите дискотеку и создайте дизайн UEFI\nEFI (S:) + Windows (W:)",
    ),
    "formatMbr": MessageLookupByLibrary.simpleMessage(
      "Формирование MBR (наследственный BIOS)",
    ),
    "formatMbrDescription": MessageLookupByLibrary.simpleMessage(
      "Освободите дискотеку и создайте дизайн по наследству\nИндивидуальные окна (C:)",
    ),
    "formatWarning": MessageLookupByLibrary.simpleMessage(
      "Выбранная дискотека полностью отформатирована. Если вы потеряли все данные.",
    ),
    "generateIso": MessageLookupByLibrary.simpleMessage("Общий ISO"),
    "getInstallOnlyIso": MessageLookupByLibrary.simpleMessage(
      "Получить ISO для одиночной установки",
    ),
    "goUpOneLevel": MessageLookupByLibrary.simpleMessage("Subir un nivel"),
    "imageDetected": MessageLookupByLibrary.simpleMessage(
      "Изображение обнаружено",
    ),
    "imageFound": MessageLookupByLibrary.simpleMessage(
      "Изображение Encontrada",
    ),
    "imageNotFound": MessageLookupByLibrary.simpleMessage(
      "Imagen no encontrada",
    ),
    "imageSearching": MessageLookupByLibrary.simpleMessage(
      "Бускандо изображение...",
    ),
    "installAll": MessageLookupByLibrary.simpleMessage("Установить задачу"),
    "installOffice": MessageLookupByLibrary.simpleMessage("Офис установки"),
    "installationProgress": MessageLookupByLibrary.simpleMessage(
      "Ход установки",
    ),
    "invalidPath": m17,
    "isoDescription": MessageLookupByLibrary.simpleMessage(
      "Получите базу ISO для выбора WIM-файла или создайте автономный ISO-образ, который включается в образ Windows.",
    ),
    "iso_bridge_clients_count": m18,
    "iso_bridge_desc": MessageLookupByLibrary.simpleMessage(
      "Подготовьте WIM для одного и передайте прямо клиентам Requiem de la misma red. Клиенты не охраняют WIM перед установкой.",
    ),
    "iso_bridge_generic_error": m19,
    "iso_bridge_list_interfaces_error": m20,
    "iso_bridge_save_simple_iso_dialog": MessageLookupByLibrary.simpleMessage(
      "Guardar ISO Simple de Requiem",
    ),
    "iso_bridge_save_wim_iso_dialog": MessageLookupByLibrary.simpleMessage(
      "Guardar ISO de Requiem с WIM",
    ),
    "iso_bridge_select_wim_dialog": MessageLookupByLibrary.simpleMessage(
      "Выбор образа WIM для Windows",
    ),
    "iso_bridge_simple_iso_filename": MessageLookupByLibrary.simpleMessage(
      "Реквием-Установщик-Simple.iso",
    ),
    "iso_bridge_start_validation_error": MessageLookupByLibrary.simpleMessage(
      "Выберите WIM и частный интерфейс IPv4.",
    ),
    "iso_bridge_wim_selected_log": m21,
    "iso_panel_button_generate_iso": MessageLookupByLibrary.simpleMessage(
      "ГЕНЕРАР ИСО",
    ),
    "iso_panel_button_select_wim": MessageLookupByLibrary.simpleMessage(
      "ВЫБОР WIM",
    ),
    "iso_panel_button_simple_iso": MessageLookupByLibrary.simpleMessage(
      "ПОЛУЧЕНИЕ ISO ДЛЯ ТОЧНОЙ УСТАНОВКИ",
    ),
    "iso_panel_desc_media": MessageLookupByLibrary.simpleMessage(
      "Получите базу ISO для выбора WIM-файла или создайте автономный ISO-образ, который включается в образ Windows.",
    ),
    "iso_panel_title_bridge": MessageLookupByLibrary.simpleMessage(
      "Возможность установки IPv4",
    ),
    "iso_panel_title_media": MessageLookupByLibrary.simpleMessage(
      "Средство установки",
    ),
    "kmsError": m22,
    "kmsHostEmpty": MessageLookupByLibrary.simpleMessage(
      "Ошибка: хост KMS удален.",
    ),
    "kmsServer": MessageLookupByLibrary.simpleMessage("Сервисор КМС"),
    "kmsTask160Days": MessageLookupByLibrary.simpleMessage("Тарея 160 дней"),
    "kmsVolumeActivation": MessageLookupByLibrary.simpleMessage(
      "Активация громкости (KMS)",
    ),
    "kms_product_office_ltsc_professional_plus_2021":
        MessageLookupByLibrary.simpleMessage(
          "Офис LTSC Профессиональный Плюс 2021",
        ),
    "kms_product_office_ltsc_professional_plus_2024":
        MessageLookupByLibrary.simpleMessage(
          "Офис LTSC Профессиональный Плюс 2024",
        ),
    "kms_product_office_professional_plus_2013":
        MessageLookupByLibrary.simpleMessage("Офис профессиональный плюс 2013"),
    "kms_product_office_professional_plus_2016":
        MessageLookupByLibrary.simpleMessage("Офис профессиональный плюс 2016"),
    "kms_product_office_professional_plus_2019":
        MessageLookupByLibrary.simpleMessage("Офис профессиональный плюс 2019"),
    "kms_product_office_standard_2013": MessageLookupByLibrary.simpleMessage(
      "Офис Стандарт 2013",
    ),
    "kms_product_windows_10_11_education": MessageLookupByLibrary.simpleMessage(
      "Windows 10/11 для образовательных учреждений",
    ),
    "kms_product_windows_10_11_education_n":
        MessageLookupByLibrary.simpleMessage(
          "Windows 10/11 для образовательных учреждений N",
        ),
    "kms_product_windows_10_11_enterprise":
        MessageLookupByLibrary.simpleMessage("Windows 10/11 Корпоративная"),
    "kms_product_windows_10_11_enterprise_g":
        MessageLookupByLibrary.simpleMessage("Windows 10/11 Корпоративная G"),
    "kms_product_windows_10_11_enterprise_g_n":
        MessageLookupByLibrary.simpleMessage("Windows 10/11 Корпоративная G N"),
    "kms_product_windows_10_11_enterprise_n":
        MessageLookupByLibrary.simpleMessage("Windows 10/11 Корпоративная Н"),
    "kms_product_windows_10_11_pro": MessageLookupByLibrary.simpleMessage(
      "Windows 10/11 Про",
    ),
    "kms_product_windows_10_11_pro_education":
        MessageLookupByLibrary.simpleMessage(
          "Windows 10/11 Pro для образовательных учреждений",
        ),
    "kms_product_windows_10_11_pro_for_workstations":
        MessageLookupByLibrary.simpleMessage(
          "Windows 10/11 Pro для рабочих станций",
        ),
    "kms_product_windows_10_11_pro_n": MessageLookupByLibrary.simpleMessage(
      "Windows 10/11 Про Н",
    ),
    "kms_product_windows_10_11_pro_workstations":
        MessageLookupByLibrary.simpleMessage(
          "Рабочие станции Windows 10/11 Pro",
        ),
    "kms_product_windows_8_1_enterprise": MessageLookupByLibrary.simpleMessage(
      "Windows 8.1 Корпоративная",
    ),
    "kms_product_windows_8_1_pro": MessageLookupByLibrary.simpleMessage(
      "Windows 8.1 Профессиональная",
    ),
    "kms_product_windows_8_enterprise": MessageLookupByLibrary.simpleMessage(
      "Windows 8 Корпоративная",
    ),
    "kms_product_windows_8_pro": MessageLookupByLibrary.simpleMessage(
      "Windows 8 Профессиональная",
    ),
    "kms_product_windows_server_2019_datacenter":
        MessageLookupByLibrary.simpleMessage(
          "Центр обработки данных Windows Server 2019",
        ),
    "kms_product_windows_server_2019_standard":
        MessageLookupByLibrary.simpleMessage("Windows Сервер 2019 Стандарт"),
    "kms_product_windows_server_2022_datacenter":
        MessageLookupByLibrary.simpleMessage(
          "Центр обработки данных Windows Server 2022",
        ),
    "kms_product_windows_server_2022_standard":
        MessageLookupByLibrary.simpleMessage("Windows Сервер 2022 Стандарт"),
    "kms_product_windows_server_2025_datacenter":
        MessageLookupByLibrary.simpleMessage(
          "Центр обработки данных Windows Server 2025",
        ),
    "kms_product_windows_server_2025_standard":
        MessageLookupByLibrary.simpleMessage("Windows Сервер 2025 Стандарт"),
    "kms_product_windows_subsystem_for_linux":
        MessageLookupByLibrary.simpleMessage("Подсистема Windows для Linux"),
    "kms_product_windows_terminal": MessageLookupByLibrary.simpleMessage(
      "Терминал Windows",
    ),
    "landingDescription": MessageLookupByLibrary.simpleMessage(
      "Высокоточная установка окон для высокого уровня отображения. Поэкспериментируйте с быстрым выполнением прямого запроса DISM и автоматической оптимизацией системы.",
    ),
    "landing_badge_author": MessageLookupByLibrary.simpleMessage(
      "ИЗОБРАЗОВАНИЕ ДЛЯ ЖОССА",
    ),
    "landing_badge_secure_boot": MessageLookupByLibrary.simpleMessage(
      "СОВМЕСТИМАЯ ЗАЩИТНАЯ ЗАГРУЗКА CON SECURE",
    ),
    "landing_badge_version": MessageLookupByLibrary.simpleMessage(
      "СТАБИЛЬНАЯ ВЕРСИЯ",
    ),
    "landing_button_logs": MessageLookupByLibrary.simpleMessage(
      "ЖУРНАЛЫ ДЕЛЬ СИСТЕМА",
    ),
    "landing_button_start": MessageLookupByLibrary.simpleMessage("ЭМПЕЗАР"),
    "landing_description_part1": MessageLookupByLibrary.simpleMessage(
      "Высокоточная установка окон для высокого уровня отображения.",
    ),
    "landing_description_part2": MessageLookupByLibrary.simpleMessage(
      "Поэкспериментируйте с быстрым выполнением прямого запроса DISM и автоматической оптимизацией системы.",
    ),
    "landing_subtitle": MessageLookupByLibrary.simpleMessage(
      "ОПИСАНИЕ ПРОКСИМАЛЬНОГО ГЕНЕРАЦИОНА",
    ),
    "landing_title_installer": MessageLookupByLibrary.simpleMessage(
      "РЕКВИЕМ УСТАНОВЧИК",
    ),
    "landing_title_tools": MessageLookupByLibrary.simpleMessage(
      "РЕКВИЕМ ИНСТРУМЕНТЫ",
    ),
    "licenseActivation": MessageLookupByLibrary.simpleMessage(
      "Активация лицензий",
    ),
    "logsCopied": MessageLookupByLibrary.simpleMessage(
      "Журналы копируются в портативные устройства.",
    ),
    "mandatoryUpdate": MessageLookupByLibrary.simpleMessage(
      "Эта актуализация обязательна и не может быть пропущена.",
    ),
    "manualWimHint": MessageLookupByLibrary.simpleMessage(
      "Используйте «Buscar» для ручной локализации архива WIM.",
    ),
    "mediaInstallation": MessageLookupByLibrary.simpleMessage(
      "Средство установки",
    ),
    "networkBridge": MessageLookupByLibrary.simpleMessage(
      "Возможность установки IPv4",
    ),
    "networkInterface": MessageLookupByLibrary.simpleMessage(
      "Интерфаз Wi‑Fi/LAN IPv4",
    ),
    "nextGenerationDeployment": MessageLookupByLibrary.simpleMessage(
      "Описание SO ближайшего поколения",
    ),
    "noBridgeFound": MessageLookupByLibrary.simpleMessage(
      "Ничего не встретишь. Пруэбе с руководством по IP.",
    ),
    "noFormatWarning": MessageLookupByLibrary.simpleMessage(
      "Windows удаляется из W:\\ sin formatear.",
    ),
    "noImageDetected": MessageLookupByLibrary.simpleMessage(
      "Изображение не обнаружено",
    ),
    "noKmsProducts": MessageLookupByLibrary.simpleMessage(
      "Нет выбранных продуктов KMS.",
    ),
    "noPhysicalDisks": MessageLookupByLibrary.simpleMessage(
      "Нет обнаружения физических дискотек",
    ),
    "noProgramsSelected": MessageLookupByLibrary.simpleMessage(
      "Никаких выбранных программ.",
    ),
    "noWifiNetworks": MessageLookupByLibrary.simpleMessage(
      "Не используйте доступный Wi-Fi.",
    ),
    "noWingetPackages": MessageLookupByLibrary.simpleMessage(
      "Не обнаруживайте пакеты с крылышками.",
    ),
    "officeInstallDescription": MessageLookupByLibrary.simpleMessage(
      "Использование Microsoft Office LTSC или 365 способов автоматизации с использованием ODT.",
    ),
    "officeInstaller": MessageLookupByLibrary.simpleMessage("Монтажник офиса"),
    "officeRenewalStatus": m23,
    "officeVersion": MessageLookupByLibrary.simpleMessage("Версия Office"),
    "office_odt_kms_badge": MessageLookupByLibrary.simpleMessage("ОДТ + КМС"),
    "office_odt_panel_title": MessageLookupByLibrary.simpleMessage(
      "Инструмент развертывания Office",
    ),
    "office_pkg_desc_2019": MessageLookupByLibrary.simpleMessage(
      "Объем с каналом «нажми и работай» PerpetualVL2019",
    ),
    "office_pkg_desc_2021": MessageLookupByLibrary.simpleMessage(
      "Объем с каналом «нажми и работай» PerpetualVL2021",
    ),
    "office_pkg_desc_2024": MessageLookupByLibrary.simpleMessage(
      "Объем с каналом «нажми и работай» PerpetualVL2024",
    ),
    "office_pkg_name_2019": MessageLookupByLibrary.simpleMessage(
      "Офис Про Плюс 2019",
    ),
    "office_pkg_name_2021": MessageLookupByLibrary.simpleMessage(
      "Офис LTSC Про Плюс 2021",
    ),
    "office_pkg_name_2024": MessageLookupByLibrary.simpleMessage(
      "Офис ЛТСК Про Плюс 2024",
    ),
    "onlyWindows": MessageLookupByLibrary.simpleMessage(
      "Эта функция доступна только в Windows.",
    ),
    "packageStack": MessageLookupByLibrary.simpleMessage(
      "Стек программ (Winget)",
    ),
    "packagesDetected": m24,
    "partitionMode": MessageLookupByLibrary.simpleMessage("Режим участия"),
    "pkg_cat_apache_php_mysql": MessageLookupByLibrary.simpleMessage(
      "Апач PHP MySQL",
    ),
    "pkg_cat_bi_desktop": MessageLookupByLibrary.simpleMessage(
      "Рабочий стол BI",
    ),
    "pkg_cat_cliente_api": MessageLookupByLibrary.simpleMessage(
      "Клиентский API",
    ),
    "pkg_cat_cliente_db": MessageLookupByLibrary.simpleMessage("Клиентская БД"),
    "pkg_cat_compiladores_c": MessageLookupByLibrary.simpleMessage(
      "Компиляторы C++",
    ),
    "pkg_cat_compresor": MessageLookupByLibrary.simpleMessage("Компрессор"),
    "pkg_cat_comunicacion": MessageLookupByLibrary.simpleMessage("Связь"),
    "pkg_cat_control_de_versiones": MessageLookupByLibrary.simpleMessage(
      "Контроль версий",
    ),
    "pkg_cat_desktop": MessageLookupByLibrary.simpleMessage("Рабочий стол"),
    "pkg_cat_diagramas": MessageLookupByLibrary.simpleMessage("Диаграммы"),
    "pkg_cat_distro_wsl": MessageLookupByLibrary.simpleMessage(
      "Дистрибутив WSL",
    ),
    "pkg_cat_editor": MessageLookupByLibrary.simpleMessage("Редактор"),
    "pkg_cat_golang": MessageLookupByLibrary.simpleMessage("Голанг"),
    "pkg_cat_gpu_compute": MessageLookupByLibrary.simpleMessage(
      "Вычисление на графическом процессоре",
    ),
    "pkg_cat_grabacion": MessageLookupByLibrary.simpleMessage("Грабасьон"),
    "pkg_cat_ide_ai": MessageLookupByLibrary.simpleMessage("IDE ИИ"),
    "pkg_cat_ide_android": MessageLookupByLibrary.simpleMessage(
      "IDE для Android",
    ),
    "pkg_cat_ide_completo": MessageLookupByLibrary.simpleMessage(
      "Полная версия IDE",
    ),
    "pkg_cat_instaladores": MessageLookupByLibrary.simpleMessage(
      "Инсталадорес",
    ),
    "pkg_cat_javascript": MessageLookupByLibrary.simpleMessage("JavaScript"),
    "pkg_cat_limpieza": MessageLookupByLibrary.simpleMessage("Лимпьеза"),
    "pkg_cat_modelos_locales": MessageLookupByLibrary.simpleMessage(
      "Региональные модели",
    ),
    "pkg_cat_navegador": MessageLookupByLibrary.simpleMessage("Навегадор"),
    "pkg_cat_python_3": MessageLookupByLibrary.simpleMessage("Питон 3"),
    "pkg_cat_runtime_c": MessageLookupByLibrary.simpleMessage(
      "Среда выполнения C++",
    ),
    "pkg_cat_runtime_escritorio": MessageLookupByLibrary.simpleMessage(
      "Сценарий выполнения",
    ),
    "pkg_cat_runtime_juegos": MessageLookupByLibrary.simpleMessage(
      "Игры во время выполнения",
    ),
    "pkg_cat_runtime_php": MessageLookupByLibrary.simpleMessage(
      "PHP во время выполнения",
    ),
    "pkg_cat_rustup": MessageLookupByLibrary.simpleMessage("Ржавчина"),
    "pkg_cat_sdk__net": MessageLookupByLibrary.simpleMessage("SDK .NET"),
    "pkg_cat_servidor_db": MessageLookupByLibrary.simpleMessage("Серверная БД"),
    "pkg_cat_ssh_clasico": MessageLookupByLibrary.simpleMessage("SSH классико"),
    "pkg_cat_ssh_moderno": MessageLookupByLibrary.simpleMessage("SSH модерно"),
    "pkg_cat_subsistema_linux": MessageLookupByLibrary.simpleMessage(
      "Подсистема Linux",
    ),
    "pkg_cat_temurin_21": MessageLookupByLibrary.simpleMessage("Темурин 21"),
    "pkg_cat_terminal_moderno": MessageLookupByLibrary.simpleMessage(
      "Терминал модерн",
    ),
    "prepareBridge": MessageLookupByLibrary.simpleMessage(
      "Подготовьтесь к началу работы",
    ),
    "progress_button_reboot": MessageLookupByLibrary.simpleMessage(
      "РЕЙНИЦИАР СИСТЕМА",
    ),
    "progress_footer_warning": MessageLookupByLibrary.simpleMessage(
      "НЕ ОТКЛЮЧАЙТЕ ЭНЕРГИИ И НЕ ОТКЛЮЧАЙТЕ СРЕДСТВО УСТАНОВКИ.",
    ),
    "progress_header_badge": MessageLookupByLibrary.simpleMessage(
      "ДЕСПЛИГ НА КУРСО",
    ),
    "provideWindowsImage": MessageLookupByLibrary.simpleMessage(
      "Пропорция образа установки Windows (install.wim или install.swm)\nот универсального USB-устройства или другого устройства Medio Montado.",
    ),
    "receiveInstallation": MessageLookupByLibrary.simpleMessage(
      "Получите подготовку к установке Desde Requiem для Windows",
    ),
    "renewalActive": MessageLookupByLibrary.simpleMessage("Актива"),
    "renewalDisabled": MessageLookupByLibrary.simpleMessage("Деактивация"),
    "searchingImage": MessageLookupByLibrary.simpleMessage(
      "Изображение Бускандо…",
    ),
    "secureBootCompatible": MessageLookupByLibrary.simpleMessage(
      "Совместимость с безопасной загрузкой",
    ),
    "selectDestinationDisk": MessageLookupByLibrary.simpleMessage(
      "Выбор дискотеки судьбы",
    ),
    "selectFileHint": MessageLookupByLibrary.simpleMessage(
      "Выбор архива .wim или .swm",
    ),
    "selectWim": MessageLookupByLibrary.simpleMessage("Выбор WIM"),
    "selectWimFirst": MessageLookupByLibrary.simpleMessage(
      "Выберите WIM и частный интерфейс IPv4.",
    ),
    "selectWindowsImage": MessageLookupByLibrary.simpleMessage(
      "Выбор изображения Windows",
    ),
    "selectWindowsImageFull": MessageLookupByLibrary.simpleMessage(
      "Выбор образа установки Windows",
    ),
    "selectedFile": m25,
    "stableVersion": MessageLookupByLibrary.simpleMessage(
      "Установленная версия v1.0.0",
    ),
    "start": MessageLookupByLibrary.simpleMessage("Эмпезар"),
    "startInstallation": MessageLookupByLibrary.simpleMessage(
      "Начальная установка",
    ),
    "stopBridge": MessageLookupByLibrary.simpleMessage("Детенер пуэнте"),
    "systemConsole": MessageLookupByLibrary.simpleMessage("Консоль системы"),
    "systemDisk": MessageLookupByLibrary.simpleMessage("АФК «Система»"),
    "systemLogs": MessageLookupByLibrary.simpleMessage("Журналы системы"),
    "tools_badge_iso_compatibility": MessageLookupByLibrary.simpleMessage(
      "Сохранения BIOS + UEFI",
    ),
    "tools_badge_kms_pending": MessageLookupByLibrary.simpleMessage(
      "KMS в ожидании",
    ),
    "tools_badge_package_count": m26,
    "tools_button_activate_kms": MessageLookupByLibrary.simpleMessage(
      "АКТИВАР КМС",
    ),
    "tools_button_install_all_packages": MessageLookupByLibrary.simpleMessage(
      "УСТАНОВИТЬ ТОДО",
    ),
    "tools_button_install_office": MessageLookupByLibrary.simpleMessage(
      "ОФИС УСТАНОВКИ",
    ),
    "tools_header_title": MessageLookupByLibrary.simpleMessage(
      "СРЕДСТВА МИГРАЦИИ РЕКВИЕМА",
    ),
    "tools_kms_checking_connectivity": m27,
    "tools_kms_empty_host_error": MessageLookupByLibrary.simpleMessage(
      "ОШИБКА: хост KMS удален.",
    ),
    "tools_kms_error_log": m28,
    "tools_kms_no_products_selected": MessageLookupByLibrary.simpleMessage(
      "Нет выбранных продуктов KMS.",
    ),
    "tools_log_format": m29,
    "tools_logs_copied_snackbar": MessageLookupByLibrary.simpleMessage(
      "Журналы копируются в портативные устройства.",
    ),
    "tools_packages_detected_count": m30,
    "tools_packages_none_detected": MessageLookupByLibrary.simpleMessage(
      "Не обнаруживайте пакеты с крылышками.",
    ),
    "tools_packages_none_selected": MessageLookupByLibrary.simpleMessage(
      "Никаких выбранных программ.",
    ),
    "tools_section_activation_desc": MessageLookupByLibrary.simpleMessage(
      "Настройте локальный или удаленный сервер KMS для активации Windows и Office.",
    ),
    "tools_section_activation_title": MessageLookupByLibrary.simpleMessage(
      "Активация лицензий",
    ),
    "tools_section_iso_desc": MessageLookupByLibrary.simpleMessage(
      "Создайте автономные средства с интеграцией WIM или прямой установкой через IPv4.",
    ),
    "tools_section_iso_title": MessageLookupByLibrary.simpleMessage(
      "ISO и despliegue por red",
    ),
    "tools_section_office_desc": MessageLookupByLibrary.simpleMessage(
      "Использование Microsoft Office LTSC или 365 способов автоматизации с использованием ODT.",
    ),
    "tools_section_office_title": MessageLookupByLibrary.simpleMessage(
      "Монтажник офиса",
    ),
    "tools_section_packages_desc": MessageLookupByLibrary.simpleMessage(
      "Установите и актуализируйте специальные элементы для Windows на среднем крыле.",
    ),
    "tools_section_packages_title": MessageLookupByLibrary.simpleMessage(
      "Стек приложений",
    ),
    "tools_sidebar_app_name": MessageLookupByLibrary.simpleMessage("РЕКВИЕМ"),
    "tools_sidebar_mode_badge": MessageLookupByLibrary.simpleMessage(
      "Режим локальных инструментов",
    ),
    "tools_sidebar_tab_iso": MessageLookupByLibrary.simpleMessage(
      "ISO и Пуэнте",
    ),
    "tools_sidebar_tab_kms": MessageLookupByLibrary.simpleMessage(
      "Активация KMS",
    ),
    "tools_sidebar_tab_office": MessageLookupByLibrary.simpleMessage(
      "Монтажный офис",
    ),
    "tools_sidebar_tab_packages": MessageLookupByLibrary.simpleMessage(
      "Стек программ",
    ),
    "unknown": MessageLookupByLibrary.simpleMessage("Десконосидо"),
    "updateDescription": MessageLookupByLibrary.simpleMessage(
      "Чтобы продолжить использование Requiem Tools, необходимо актуализировать более свежую версию.",
    ),
    "updateRequired": MessageLookupByLibrary.simpleMessage(
      "Требуемая актуализация",
    ),
    "useExistingPartitions": MessageLookupByLibrary.simpleMessage(
      "Использование существующих разделов",
    ),
    "useExistingPartitionsDescription": MessageLookupByLibrary.simpleMessage(
      "Sin formatear — despliega en W: tal cual\nИспользуйте руководство по управлению участниками",
    ),
    "waitingAction": MessageLookupByLibrary.simpleMessage(
      "Эсперандо за действие...",
    ),
    "waitingForWim": MessageLookupByLibrary.simpleMessage(
      "Эсперандо обнаружения install.wim...",
    ),
    "wifiConnectError": m31,
    "wifiConnected": m32,
    "wifiPassword": MessageLookupByLibrary.simpleMessage("Контрасенья Wi-Fi"),
    "wifi_connect_error": m33,
    "wifi_connected_log": m34,
    "wifi_connected_status": m35,
    "wifi_dialog_title": MessageLookupByLibrary.simpleMessage(
      "Подключитесь к установщику Wi-Fi",
    ),
    "wifi_item_signal_security": m36,
    "wifi_none_found": MessageLookupByLibrary.simpleMessage(
      "Не используйте доступный Wi-Fi.",
    ),
    "wifi_password_hint": MessageLookupByLibrary.simpleMessage(
      "Контрасенья Wi-Fi",
    ),
    "wifi_scanning": MessageLookupByLibrary.simpleMessage(
      "Сканирование доступных сетей Wi-Fi...",
    ),
    "wimIntegrated": MessageLookupByLibrary.simpleMessage(
      "Интеграция WIM в ISO",
    ),
    "wim_bridge_connection_error": m37,
    "wim_bridge_ip_dialog_title": MessageLookupByLibrary.simpleMessage(
      "ИП дель Пуэнте Реквием",
    ),
    "wim_bridge_ip_placeholder": MessageLookupByLibrary.simpleMessage(
      "192.168.1.20",
    ),
    "wim_bridge_not_found": MessageLookupByLibrary.simpleMessage(
      "Ничего не встретишь. Пруэбе с руководством по IP.",
    ),
    "wim_bridge_search_error": m38,
    "wim_bridge_searching": MessageLookupByLibrary.simpleMessage(
      "Поиск мостов Requiem в локальной сети IPv4...",
    ),
    "wim_bridge_section_header": MessageLookupByLibrary.simpleMessage(
      "Получите подготовку к установке Desde Requiem для Windows",
    ),
    "wim_button_change_file": MessageLookupByLibrary.simpleMessage(
      "КАМБЬЯРНЫЙ АРХИВ",
    ),
    "wim_button_connect_wifi": MessageLookupByLibrary.simpleMessage(
      "КОНЕКТАР WI-FI",
    ),
    "wim_button_manual_ip": MessageLookupByLibrary.simpleMessage(
      "РУКОВОДСТВО ПСО IP",
    ),
    "wim_button_rescan": MessageLookupByLibrary.simpleMessage(
      "Escanear unidades de nuevo",
    ),
    "wim_button_search_bridge": MessageLookupByLibrary.simpleMessage(
      "БУСКАР ПУЭНТЕ",
    ),
    "wim_manual_search_hint": MessageLookupByLibrary.simpleMessage(
      "Используйте «Buscar» для ручной локализации архива WIM.",
    ),
    "wim_picker_description": MessageLookupByLibrary.simpleMessage(
      "Пропорция образа установки Windows (install.wim или install.swm)\\n",
    ),
    "wim_picker_title": MessageLookupByLibrary.simpleMessage(
      "Выбор изображения Windows",
    ),
    "wim_status_found": MessageLookupByLibrary.simpleMessage(
      "Изображение Encontrada",
    ),
    "wim_status_not_found": MessageLookupByLibrary.simpleMessage(
      "Изображение не обнаружено",
    ),
    "wim_status_searching": MessageLookupByLibrary.simpleMessage(
      "Изображение Бускандо…",
    ),
    "wim_status_searching_alt": MessageLookupByLibrary.simpleMessage(
      "Бускандо изображение...",
    ),
    "wingetUnavailable": MessageLookupByLibrary.simpleMessage(
      "Winget не установлен или не установлен в PATH.",
    ),
  };
}
