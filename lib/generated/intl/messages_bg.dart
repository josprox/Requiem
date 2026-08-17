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

  static String m7(name, edition) => "Открито издание: ${name} (${edition})";

  static String m8(error) => "Възникна грешка: ${error}";

  static String m9(path) => "Инвалиден път: ${path}";

  static String m10(error) => "Грешка KMS: ${error}";

  static String m11(product, channel, edition, status) =>
      "${product} / ${channel} / ${edition} бита. La renovación queda ${status}.";

  static String m12(count) => "Открити пакети: ${count}.";

  static String m13(file) => "Избор: ${file}";

  static String m14(error) => "Не можете да се свържете с Wi-Fi: ${error}";

  static String m15(network) => "Свържете се с ${network}.";

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
    "editionDetected": m7,
    "emptyFolder": MessageLookupByLibrary.simpleMessage(
      "Esta carpeta está vacía",
    ),
    "errorGeneric": m8,
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
    "invalidPath": m9,
    "isoDescription": MessageLookupByLibrary.simpleMessage(
      "Изтеглете ISO базата за избор на WIM като устройство, или създайте един ISO автоном, който включва изображението на Windows.",
    ),
    "kmsError": m10,
    "kmsHostEmpty": MessageLookupByLibrary.simpleMessage(
      "Грешка: хостът KMS е ваканционен.",
    ),
    "kmsServer": MessageLookupByLibrary.simpleMessage("Сървър KMS"),
    "kmsTask160Days": MessageLookupByLibrary.simpleMessage("Тарея 160 дни"),
    "kmsVolumeActivation": MessageLookupByLibrary.simpleMessage(
      "Activación de volume (KMS)",
    ),
    "landingDescription": MessageLookupByLibrary.simpleMessage(
      "Instalador de Windows de alta precisión para entornos de alto rendimiento. Experimente un despliegue rápido with orquestación directa de DISM y optimización automatizada del sistema.",
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
    "officeRenewalStatus": m11,
    "officeVersion": MessageLookupByLibrary.simpleMessage("Версия на Office"),
    "onlyWindows": MessageLookupByLibrary.simpleMessage(
      "Тази самостоятелна функция е налична в Windows.",
    ),
    "packageStack": MessageLookupByLibrary.simpleMessage(
      "Стек от програми (Winget)",
    ),
    "packagesDetected": m12,
    "partitionMode": MessageLookupByLibrary.simpleMessage("Начин на участие"),
    "prepareBridge": MessageLookupByLibrary.simpleMessage(
      "Preparar e iniciar puente",
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
    "selectedFile": m13,
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
    "wifiConnectError": m14,
    "wifiConnected": m15,
    "wifiPassword": MessageLookupByLibrary.simpleMessage("Contraseña Wi-Fi"),
    "wimIntegrated": MessageLookupByLibrary.simpleMessage(
      "WIM е интегриран в ISO",
    ),
    "wingetUnavailable": MessageLookupByLibrary.simpleMessage(
      "winget no está instalado или no está en PATH.",
    ),
  };
}
