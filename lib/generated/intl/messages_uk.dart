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

  static String m7(name, edition) => "Виявлено видання: ${name} (${edition})";

  static String m8(error) => "Виникла помилка: ${error}";

  static String m9(path) => "Інвалідний маршрут: ${path}";

  static String m10(error) => "Помилка KMS: ${error}";

  static String m11(product, channel, edition, status) =>
      "${product} / ${channel} / ${edition} біт. La renovación queda ${status}.";

  static String m12(count) => "Виявлено пакетів: ${count}.";

  static String m13(file) => "Selectionado: ${file}";

  static String m14(error) => "Не можна підключатися до Wi-Fi: ${error}";

  static String m15(network) => "Підключіться до ${network}.";

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
    "editionDetected": m7,
    "emptyFolder": MessageLookupByLibrary.simpleMessage(
      "Esta carpeta está vacía",
    ),
    "errorGeneric": m8,
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
    "invalidPath": m9,
    "isoDescription": MessageLookupByLibrary.simpleMessage(
      "Отримайте базу ISO для вибору пристрою WIM або створіть автоматичний ISO, який включає зображення Windows.",
    ),
    "kmsError": m10,
    "kmsHostEmpty": MessageLookupByLibrary.simpleMessage(
      "Помилка: el host KMS está vacío.",
    ),
    "kmsServer": MessageLookupByLibrary.simpleMessage("Сервер KMS"),
    "kmsTask160Days": MessageLookupByLibrary.simpleMessage("Тарея 160 днів"),
    "kmsVolumeActivation": MessageLookupByLibrary.simpleMessage(
      "Активація гучності (KMS)",
    ),
    "landingDescription": MessageLookupByLibrary.simpleMessage(
      "Instalador de Windows de alta precisión para entornos de alto rendimiento. Experimente un despliegue rápido conquestación directa de DISM y optimización automatizada del sistema.",
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
    "officeRenewalStatus": m11,
    "officeVersion": MessageLookupByLibrary.simpleMessage("Версія Office"),
    "onlyWindows": MessageLookupByLibrary.simpleMessage(
      "Ця окрема функція доступна в Windows.",
    ),
    "packageStack": MessageLookupByLibrary.simpleMessage(
      "Стек програм (Winget)",
    ),
    "packagesDetected": m12,
    "partitionMode": MessageLookupByLibrary.simpleMessage("Modo de partición"),
    "prepareBridge": MessageLookupByLibrary.simpleMessage(
      "Preparar e iniciar puente",
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
    "selectedFile": m13,
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
    "wifiConnectError": m14,
    "wifiConnected": m15,
    "wifiPassword": MessageLookupByLibrary.simpleMessage("Контрастний Wi-Fi"),
    "wimIntegrated": MessageLookupByLibrary.simpleMessage(
      "WIM інтегрований в ISO",
    ),
    "wingetUnavailable": MessageLookupByLibrary.simpleMessage(
      "winget no está instalado або no está en PATH.",
    ),
  };
}
