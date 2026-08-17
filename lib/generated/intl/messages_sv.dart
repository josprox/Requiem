// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a sv locale. All the
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
  String get localeName => 'sv';

  static String m0(count) => "${count} program";

  static String m1(version) => "Tillgänglig version: ${version}";

  static String m2(firmware) => "Arrangera faktiskt: ${firmware}";

  static String m3(error) => "No se pudo conectar: ${error}";

  static String m4(error) => "No se pudo buscar el puente: ${error}";

  static String m5(host) => "Comprobando conectividad con ${host}:1688...";

  static String m6(mode) => "Modo-kompatibel: ${mode}";

  static String m7(name, edition) => "Upptäckt utgåva: ${name} (${edition})";

  static String m8(error) => "Uppstod ett fel: ${error}";

  static String m9(path) => "Ruta inválida: ${path}";

  static String m10(error) => "Fel KMS: ${error}";

  static String m11(product, channel, edition, status) =>
      "${product} / ${channel} / ${edition} bitar. La renovation queda ${status}.";

  static String m12(count) => "Paquetes detectados: ${count}.";

  static String m13(file) => "Val: ${file}";

  static String m14(error) => "Det finns ingen tillgång till Wi-Fi: ${error}";

  static String m15(network) => "Anslut till ${network}.";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
    "actionCancel": MessageLookupByLibrary.simpleMessage("Avbryt"),
    "actionChange": MessageLookupByLibrary.simpleMessage("Cambiar"),
    "actionConfirm": MessageLookupByLibrary.simpleMessage("Bekräfta"),
    "actionConnect": MessageLookupByLibrary.simpleMessage("Conectar"),
    "actionContinue": MessageLookupByLibrary.simpleMessage("Kontinuerlig"),
    "actionInstall": MessageLookupByLibrary.simpleMessage("Installera"),
    "actionRefresh": MessageLookupByLibrary.simpleMessage("Aktualizar"),
    "actionRestartSystem": MessageLookupByLibrary.simpleMessage(
      "Reiniciar system",
    ),
    "actionScanAgain": MessageLookupByLibrary.simpleMessage(
      "Escanear unidades de nuevo",
    ),
    "actionSearch": MessageLookupByLibrary.simpleMessage("Buscar"),
    "actionSelect": MessageLookupByLibrary.simpleMessage("Seleccionar"),
    "activate": MessageLookupByLibrary.simpleMessage("Aktivar"),
    "activateKms": MessageLookupByLibrary.simpleMessage("Aktivera KMS"),
    "appTitleInstaller": MessageLookupByLibrary.simpleMessage(
      "Requiem Installer",
    ),
    "appTitleTools": MessageLookupByLibrary.simpleMessage("Requiem verktyg"),
    "applicationStack": MessageLookupByLibrary.simpleMessage(
      "Stack de aplicaciones",
    ),
    "applicationStackDescription": MessageLookupByLibrary.simpleMessage(
      "Instala y actualiza herramientas de desarrollo esenciales för Windows mediante winget.",
    ),
    "applicationsCount": m0,
    "automaticOffice": MessageLookupByLibrary.simpleMessage(
      "Automatisk kontor",
    ),
    "automaticOfficeDescription": MessageLookupByLibrary.simpleMessage(
      "Usa la GVLK de volymen ya instalada",
    ),
    "automaticRenewal": MessageLookupByLibrary.simpleMessage(
      "Renovación automática",
    ),
    "automaticWindows": MessageLookupByLibrary.simpleMessage(
      "Windows automatiskt",
    ),
    "automaticWindowsDescription": MessageLookupByLibrary.simpleMessage(
      "Detecta edición och GVLK-kompatibel",
    ),
    "availableVersion": m1,
    "bootCurrent": m2,
    "bridgeConnectError": m3,
    "bridgeDescription": MessageLookupByLibrary.simpleMessage(
      "Prepara el WIM är en sola vez y lo transmite directamente a los clientes Requiem de la misma red. Los klienter ingen väktare el WIM antes de installation.",
    ),
    "bridgeIp": MessageLookupByLibrary.simpleMessage("IP del puente Requiem"),
    "bridgePorts": MessageLookupByLibrary.simpleMessage(
      "Puerto HTTP 40124 · descubrimiento UDP 40123. Med Windows Defender kan du få tillgång till privata enheter.",
    ),
    "bridgeSearchError": m4,
    "checkingKms": m5,
    "clearLogs": MessageLookupByLibrary.simpleMessage("Limpiar stockar"),
    "compatibleMode": m6,
    "confirmDataDestruction": MessageLookupByLibrary.simpleMessage(
      "Bekräfta destrucción de data",
    ),
    "confirmInstallation": MessageLookupByLibrary.simpleMessage(
      "Bekräfta installationen",
    ),
    "connectInstallerWifi": MessageLookupByLibrary.simpleMessage(
      "Anslut till Wi-Fi",
    ),
    "connectWifi": MessageLookupByLibrary.simpleMessage("Conectar Wi-Fi"),
    "copyLogs": MessageLookupByLibrary.simpleMessage("Kopiera loggar"),
    "deploymentInProgress": MessageLookupByLibrary.simpleMessage(
      "Despliegue en curso",
    ),
    "designedBy": MessageLookupByLibrary.simpleMessage("Diseñado av Joss"),
    "destinationDiskDescription": MessageLookupByLibrary.simpleMessage(
      "Elija la unidad física donde se instalará Windows.",
    ),
    "detect": MessageLookupByLibrary.simpleMessage("Detektor"),
    "diskManagement": MessageLookupByLibrary.simpleMessage(
      "Administración de diskotek",
    ),
    "doNotDisconnect": MessageLookupByLibrary.simpleMessage(
      "No desconecte la energía ni retire el medio de instalación",
    ),
    "downloadAndActivate": MessageLookupByLibrary.simpleMessage(
      "Ladda ner + aktivering",
    ),
    "downloadInstaller": MessageLookupByLibrary.simpleMessage(
      "Ladda ner instalador (.exe)",
    ),
    "downloadPortable": MessageLookupByLibrary.simpleMessage(
      "Ladda ner bärbar (.zip)",
    ),
    "drives": MessageLookupByLibrary.simpleMessage("Unidades"),
    "editionDetected": m7,
    "emptyFolder": MessageLookupByLibrary.simpleMessage(
      "Esta carpeta está vacía",
    ),
    "errorGeneric": m8,
    "filter": MessageLookupByLibrary.simpleMessage("Filtrera..."),
    "formatGpt": MessageLookupByLibrary.simpleMessage(
      "Formatear GPT (rekommenderas)",
    ),
    "formatGptDescription": MessageLookupByLibrary.simpleMessage(
      "Limpia el disco y crea diseño UEFI\nEFI (S:) + Windows (W:)",
    ),
    "formatMbr": MessageLookupByLibrary.simpleMessage(
      "Formatear MBR (BIOS heredado)",
    ),
    "formatMbrDescription": MessageLookupByLibrary.simpleMessage(
      "Limpia el disco y crea diseño heredado\nSolo Windows (C:)",
    ),
    "formatWarning": MessageLookupByLibrary.simpleMessage(
      "El disco seleccionado se formateará por completo. Se perderán todos los data.",
    ),
    "generateIso": MessageLookupByLibrary.simpleMessage("Generell ISO"),
    "getInstallOnlyIso": MessageLookupByLibrary.simpleMessage(
      "Erhåller ISO för solamente",
    ),
    "goUpOneLevel": MessageLookupByLibrary.simpleMessage("Subir un nivel"),
    "imageDetected": MessageLookupByLibrary.simpleMessage("Imagen detectada"),
    "imageFound": MessageLookupByLibrary.simpleMessage("Imagen encontrada"),
    "imageNotFound": MessageLookupByLibrary.simpleMessage(
      "Imagen no encontrada",
    ),
    "imageSearching": MessageLookupByLibrary.simpleMessage("Buscando bild..."),
    "installAll": MessageLookupByLibrary.simpleMessage("Installera att göra"),
    "installOffice": MessageLookupByLibrary.simpleMessage("Installera Office"),
    "installationProgress": MessageLookupByLibrary.simpleMessage(
      "Installationsförlopp",
    ),
    "invalidPath": m9,
    "isoDescription": MessageLookupByLibrary.simpleMessage(
      "Få en ISO-bas för att välja ett WIM-program, eller skapa ett ISO-autonoma för att inkludera en bild på Windows.",
    ),
    "kmsError": m10,
    "kmsHostEmpty": MessageLookupByLibrary.simpleMessage(
      "Fel: el värd KMS está vacío.",
    ),
    "kmsServer": MessageLookupByLibrary.simpleMessage("Servidor KMS"),
    "kmsTask160Days": MessageLookupByLibrary.simpleMessage("Tarea 160 dagar"),
    "kmsVolumeActivation": MessageLookupByLibrary.simpleMessage(
      "Aktivering av volym (KMS)",
    ),
    "landingDescription": MessageLookupByLibrary.simpleMessage(
      "Installation av Windows alta precision för entornos de alt rendimiento. Experimentera och despliegue rápido con orquestación directa de DISM y optimización automatizada del system.",
    ),
    "licenseActivation": MessageLookupByLibrary.simpleMessage(
      "Aktivering av licenser",
    ),
    "logsCopied": MessageLookupByLibrary.simpleMessage(
      "Loggar copiados al portapapeles.",
    ),
    "mandatoryUpdate": MessageLookupByLibrary.simpleMessage(
      "Esta actualización es obligatoria y no puede utelämna.",
    ),
    "manualWimHint": MessageLookupByLibrary.simpleMessage(
      "Använd \"Buscar\" för att lokalisera WIM-arkivets manual.",
    ),
    "mediaInstallation": MessageLookupByLibrary.simpleMessage(
      "Medio de installation",
    ),
    "networkBridge": MessageLookupByLibrary.simpleMessage(
      "Puente IPv4-installation",
    ),
    "networkInterface": MessageLookupByLibrary.simpleMessage(
      "Interfaz Wi-Fi/LAN IPv4",
    ),
    "nextGenerationDeployment": MessageLookupByLibrary.simpleMessage(
      "Despliegue de SO de proxima generación",
    ),
    "noBridgeFound": MessageLookupByLibrary.simpleMessage(
      "No se encontró ningún puente. Handbok för Pruebe con la IP.",
    ),
    "noFormatWarning": MessageLookupByLibrary.simpleMessage(
      "Windows se desplegará en W:\\ sin formatear.",
    ),
    "noImageDetected": MessageLookupByLibrary.simpleMessage(
      "Ingen se detectó ninguna bild",
    ),
    "noKmsProducts": MessageLookupByLibrary.simpleMessage(
      "Inga höprodukter KMS seleccionados.",
    ),
    "noPhysicalDisks": MessageLookupByLibrary.simpleMessage(
      "Inga se detectaron discos físicos",
    ),
    "noProgramsSelected": MessageLookupByLibrary.simpleMessage(
      "Inga hö programas seleccionados.",
    ),
    "noWifiNetworks": MessageLookupByLibrary.simpleMessage(
      "Det finns inga möjligheter att använda Wi-Fi.",
    ),
    "noWingetPackages": MessageLookupByLibrary.simpleMessage(
      "No se detectaron paquetes conocidos con winget.",
    ),
    "officeInstallDescription": MessageLookupByLibrary.simpleMessage(
      "Despliega Microsoft Office LTSC eller 365 manera automatizada usando ODT.",
    ),
    "officeInstaller": MessageLookupByLibrary.simpleMessage(
      "Installatör av Office",
    ),
    "officeRenewalStatus": m11,
    "officeVersion": MessageLookupByLibrary.simpleMessage("Office-version"),
    "onlyWindows": MessageLookupByLibrary.simpleMessage(
      "Function solo är tillgänglig i Windows.",
    ),
    "packageStack": MessageLookupByLibrary.simpleMessage(
      "Stack de programas (Winget)",
    ),
    "packagesDetected": m12,
    "partitionMode": MessageLookupByLibrary.simpleMessage("Modo de partición"),
    "prepareBridge": MessageLookupByLibrary.simpleMessage(
      "Preparar e iniciar puente",
    ),
    "provideWindowsImage": MessageLookupByLibrary.simpleMessage(
      "Proporcione la imagen de installation de Windows (install.wim eller install.swm)\nDesde una unidad USB eller cualquier medio montado.",
    ),
    "receiveInstallation": MessageLookupByLibrary.simpleMessage(
      "O reciba la instalación preparada desde Requiem para Windows",
    ),
    "renewalActive": MessageLookupByLibrary.simpleMessage("Activa"),
    "renewalDisabled": MessageLookupByLibrary.simpleMessage("Desactivada"),
    "searchingImage": MessageLookupByLibrary.simpleMessage("Buscando bild..."),
    "secureBootCompatible": MessageLookupByLibrary.simpleMessage(
      "Kompatibel med Secure Boot",
    ),
    "selectDestinationDisk": MessageLookupByLibrary.simpleMessage(
      "Välj disco destino",
    ),
    "selectFileHint": MessageLookupByLibrary.simpleMessage(
      "Välj ett arkiv .wim o .swm",
    ),
    "selectWim": MessageLookupByLibrary.simpleMessage("Välj WIM"),
    "selectWimFirst": MessageLookupByLibrary.simpleMessage(
      "Välj ett WIM och ett privat IPv4-interfat.",
    ),
    "selectWindowsImage": MessageLookupByLibrary.simpleMessage(
      "Välj Windows-bild",
    ),
    "selectWindowsImageFull": MessageLookupByLibrary.simpleMessage(
      "Välj bild för installation av Windows",
    ),
    "selectedFile": m13,
    "stableVersion": MessageLookupByLibrary.simpleMessage(
      "Version stabil v1.0.0",
    ),
    "start": MessageLookupByLibrary.simpleMessage("Empezar"),
    "startInstallation": MessageLookupByLibrary.simpleMessage(
      "Initiar installation",
    ),
    "stopBridge": MessageLookupByLibrary.simpleMessage("Detener puente"),
    "systemConsole": MessageLookupByLibrary.simpleMessage("Systemets konsol"),
    "systemDisk": MessageLookupByLibrary.simpleMessage("Systema"),
    "systemLogs": MessageLookupByLibrary.simpleMessage("Loggar av systemet"),
    "unknown": MessageLookupByLibrary.simpleMessage("Desconocido"),
    "updateDescription": MessageLookupByLibrary.simpleMessage(
      "För att fortsätta använda Requiem Tools krävs det att aktualiseras i en version som är mer reciente.",
    ),
    "updateRequired": MessageLookupByLibrary.simpleMessage(
      "Aktualización requerida",
    ),
    "useExistingPartitions": MessageLookupByLibrary.simpleMessage(
      "Usar particiones existentes",
    ),
    "useExistingPartitionsDescription": MessageLookupByLibrary.simpleMessage(
      "Sin formatear — despliega en W: tal cual\nUsted gestiona las particiones manualmente",
    ),
    "waitingAction": MessageLookupByLibrary.simpleMessage(
      "Esperando una acción...",
    ),
    "waitingForWim": MessageLookupByLibrary.simpleMessage(
      "Esperando la detección de install.wim...",
    ),
    "wifiConnectError": m14,
    "wifiConnected": m15,
    "wifiPassword": MessageLookupByLibrary.simpleMessage("Contraseña Wi-Fi"),
    "wimIntegrated": MessageLookupByLibrary.simpleMessage(
      "WIM integrerad med ISO",
    ),
    "wingetUnavailable": MessageLookupByLibrary.simpleMessage(
      "winget no está instalado o no está en PATH.",
    ),
  };
}
