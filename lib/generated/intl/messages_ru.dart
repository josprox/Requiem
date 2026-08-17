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

  static String m7(name, edition) =>
      "Обнаруженное образование: ${name} (${edition})";

  static String m8(error) => "Произошла ошибка: ${error}";

  static String m9(path) => "Недействительный статус: ${path}";

  static String m10(error) => "Ошибка KMS: ${error}";

  static String m11(product, channel, edition, status) =>
      "${product} / ${channel} / ${edition} бит. La renovación queda ${status}.";

  static String m12(count) => "Обнаруженные пакеты: ${count}.";

  static String m13(file) => "Выбрано: ${file}";

  static String m14(error) => "Невозможно подключиться к Wi-Fi: ${error}";

  static String m15(network) => "Подключитесь к ${network}.";

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
    "editionDetected": m7,
    "emptyFolder": MessageLookupByLibrary.simpleMessage(
      "Эта ковровая дорожка está vacía",
    ),
    "errorGeneric": m8,
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
    "invalidPath": m9,
    "isoDescription": MessageLookupByLibrary.simpleMessage(
      "Получите базу ISO для выбора WIM-файла или создайте автономный ISO-образ, который включается в образ Windows.",
    ),
    "kmsError": m10,
    "kmsHostEmpty": MessageLookupByLibrary.simpleMessage(
      "Ошибка: хост KMS удален.",
    ),
    "kmsServer": MessageLookupByLibrary.simpleMessage("Сервисор КМС"),
    "kmsTask160Days": MessageLookupByLibrary.simpleMessage("Тарея 160 дней"),
    "kmsVolumeActivation": MessageLookupByLibrary.simpleMessage(
      "Активация громкости (KMS)",
    ),
    "landingDescription": MessageLookupByLibrary.simpleMessage(
      "Высокоточная установка окон для высокого уровня отображения. Поэкспериментируйте с быстрым выполнением прямого запроса DISM и автоматической оптимизацией системы.",
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
    "officeRenewalStatus": m11,
    "officeVersion": MessageLookupByLibrary.simpleMessage("Версия Office"),
    "onlyWindows": MessageLookupByLibrary.simpleMessage(
      "Эта функция доступна только в Windows.",
    ),
    "packageStack": MessageLookupByLibrary.simpleMessage(
      "Стек программ (Winget)",
    ),
    "packagesDetected": m12,
    "partitionMode": MessageLookupByLibrary.simpleMessage("Режим участия"),
    "prepareBridge": MessageLookupByLibrary.simpleMessage(
      "Подготовьтесь к началу работы",
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
    "selectedFile": m13,
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
    "wifiConnectError": m14,
    "wifiConnected": m15,
    "wifiPassword": MessageLookupByLibrary.simpleMessage("Контрасенья Wi-Fi"),
    "wimIntegrated": MessageLookupByLibrary.simpleMessage(
      "Интеграция WIM в ISO",
    ),
    "wingetUnavailable": MessageLookupByLibrary.simpleMessage(
      "Winget не установлен или не установлен в PATH.",
    ),
  };
}
