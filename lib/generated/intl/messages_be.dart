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

  static String m7(name, edition) => "Выяўленае выданне: ${name} (${edition})";

  static String m8(error) => "Узнікла памылка: ${error}";

  static String m9(path) => "Рута несапраўдная: ${path}";

  static String m10(error) => "Памылка KMS: ${error}";

  static String m11(product, channel, edition, status) =>
      "${product} / ${channel} / ${edition} біт. La renovación queda ${status}.";

  static String m12(count) => "Выяўленыя пакеты: ${count}.";

  static String m13(file) => "Selectionado: ${file}";

  static String m14(error) => "Няма магчымасці падлучыцца да Wi-Fi: ${error}";

  static String m15(network) => "Падключыцеся да ${network}.";

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
    "editionDetected": m7,
    "emptyFolder": MessageLookupByLibrary.simpleMessage(
      "Esta carpeta está vacía",
    ),
    "errorGeneric": m8,
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
    "invalidPath": m9,
    "isoDescription": MessageLookupByLibrary.simpleMessage(
      "Атрымайце базу ISO для выбару WIM у праграме, або стварыце аўтаномную ISO, якая ўключае выяву Windows.",
    ),
    "kmsError": m10,
    "kmsHostEmpty": MessageLookupByLibrary.simpleMessage(
      "Памылка: el host KMS está vacío.",
    ),
    "kmsServer": MessageLookupByLibrary.simpleMessage("Сервер KMS"),
    "kmsTask160Days": MessageLookupByLibrary.simpleMessage("Тэрэя 160 дзён"),
    "kmsVolumeActivation": MessageLookupByLibrary.simpleMessage(
      "Activación de Volume (KMS)",
    ),
    "landingDescription": MessageLookupByLibrary.simpleMessage(
      "Instalador de Windows de alta precisión para entornos de alto rendimiento. Experimente un despliegue rápido con orquestación directa de DISM y optimización automatizada del system.",
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
    "officeRenewalStatus": m11,
    "officeVersion": MessageLookupByLibrary.simpleMessage("Версія офіса"),
    "onlyWindows": MessageLookupByLibrary.simpleMessage(
      "Гэтая функцыя даступная ў Windows.",
    ),
    "packageStack": MessageLookupByLibrary.simpleMessage(
      "Стэк праграм (Winget)",
    ),
    "packagesDetected": m12,
    "partitionMode": MessageLookupByLibrary.simpleMessage("Modo de partición"),
    "prepareBridge": MessageLookupByLibrary.simpleMessage(
      "Preparar e iniciar puente",
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
    "selectedFile": m13,
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
    "wifiConnectError": m14,
    "wifiConnected": m15,
    "wifiPassword": MessageLookupByLibrary.simpleMessage("Contraseña Wi-Fi"),
    "wimIntegrated": MessageLookupByLibrary.simpleMessage(
      "WIM інтэграваны ў ISO",
    ),
    "wingetUnavailable": MessageLookupByLibrary.simpleMessage(
      "winget no está instalado o no está en PATH.",
    ),
  };
}
