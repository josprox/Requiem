// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a nb locale. All the
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
  String get localeName => 'nb';

  static String m0(count) => "${count} programmer";

  static String m1(version) => "Tilgjengelig versjon: ${version}";

  static String m2(firmware) => "Arrangement faktisk: ${firmware}";

  static String m3(error) => "No se pudo conectar: ${error}";

  static String m4(error) => "No se pudo buscar el puente: ${error}";

  static String m5(host) => "Comprobando conectividad con ${host}:1688...";

  static String m6(mode) => "Modo-kompatibel: ${mode}";

  static String m7(name, edition) => "Utgave oppdaget: ${name} (${edition})";

  static String m8(error) => "Det oppstod en feil: ${error}";

  static String m9(path) => "Ruta inválida: ${path}";

  static String m10(error) => "Feil KMS: ${error}";

  static String m11(product, channel, edition, status) =>
      "${product} / ${channel} / ${edition} biter. La renovación queda ${status}.";

  static String m12(count) => "Paquetes detectados: ${count}.";

  static String m13(file) => "Valg: ${file}";

  static String m14(error) => "Ingen tilkobling til Wi-Fi: ${error}";

  static String m15(network) => "Koble til ${network}.";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
    "actionCancel": MessageLookupByLibrary.simpleMessage("Avbryt"),
    "actionChange": MessageLookupByLibrary.simpleMessage("Cambiar"),
    "actionConfirm": MessageLookupByLibrary.simpleMessage("Bekreft"),
    "actionConnect": MessageLookupByLibrary.simpleMessage("Conectar"),
    "actionContinue": MessageLookupByLibrary.simpleMessage("Kontinuerlig"),
    "actionInstall": MessageLookupByLibrary.simpleMessage("Installer"),
    "actionRefresh": MessageLookupByLibrary.simpleMessage("Aktualisering"),
    "actionRestartSystem": MessageLookupByLibrary.simpleMessage(
      "Reiniciar sistema",
    ),
    "actionScanAgain": MessageLookupByLibrary.simpleMessage(
      "Escanear unidades de nuevo",
    ),
    "actionSearch": MessageLookupByLibrary.simpleMessage("Buscar"),
    "actionSelect": MessageLookupByLibrary.simpleMessage("Seleccionar"),
    "activate": MessageLookupByLibrary.simpleMessage("Aktiver"),
    "activateKms": MessageLookupByLibrary.simpleMessage("Aktiver KMS"),
    "appTitleInstaller": MessageLookupByLibrary.simpleMessage(
      "Requiem Installer",
    ),
    "appTitleTools": MessageLookupByLibrary.simpleMessage("Requiem-verktøy"),
    "applicationStack": MessageLookupByLibrary.simpleMessage(
      "Stack de aplicaciones",
    ),
    "applicationStackDescription": MessageLookupByLibrary.simpleMessage(
      "Installer og aktualisere herramientas desarrollo esenciales for Windows mediante winget.",
    ),
    "applicationsCount": m0,
    "automaticOffice": MessageLookupByLibrary.simpleMessage(
      "Automatisk kontor",
    ),
    "automaticOfficeDescription": MessageLookupByLibrary.simpleMessage(
      "Bruk av GVLK for installering",
    ),
    "automaticRenewal": MessageLookupByLibrary.simpleMessage(
      "Renovación automática",
    ),
    "automaticWindows": MessageLookupByLibrary.simpleMessage(
      "Windows automatisk",
    ),
    "automaticWindowsDescription": MessageLookupByLibrary.simpleMessage(
      "Detecta edición og GVLK-kompatibel",
    ),
    "availableVersion": m1,
    "bootCurrent": m2,
    "bridgeConnectError": m3,
    "bridgeDescription": MessageLookupByLibrary.simpleMessage(
      "Forbered WIM for å sende direkte til kunders Requiem de la misma red. Los klienter ingen guardan el WIM ante installasjonen.",
    ),
    "bridgeIp": MessageLookupByLibrary.simpleMessage("IP del puente Requiem"),
    "bridgePorts": MessageLookupByLibrary.simpleMessage(
      "Puerto HTTP 40124 · descubrimiento UDP 40123. Med Windows Defender kan du få tilgang til private.",
    ),
    "bridgeSearchError": m4,
    "checkingKms": m5,
    "clearLogs": MessageLookupByLibrary.simpleMessage("Limpiar logger"),
    "compatibleMode": m6,
    "confirmDataDestruction": MessageLookupByLibrary.simpleMessage(
      "Bekreft destrucción de data",
    ),
    "confirmInstallation": MessageLookupByLibrary.simpleMessage(
      "Bekreft installasjon",
    ),
    "connectInstallerWifi": MessageLookupByLibrary.simpleMessage(
      "Koble til installering av Wi-Fi",
    ),
    "connectWifi": MessageLookupByLibrary.simpleMessage("Conectar Wi-Fi"),
    "copyLogs": MessageLookupByLibrary.simpleMessage("Kopier logger"),
    "deploymentInProgress": MessageLookupByLibrary.simpleMessage(
      "Despliegue en curso",
    ),
    "designedBy": MessageLookupByLibrary.simpleMessage("Diseñado av Joss"),
    "destinationDiskDescription": MessageLookupByLibrary.simpleMessage(
      "Elija la unidad física donde se installer Windows.",
    ),
    "detect": MessageLookupByLibrary.simpleMessage("Detektor"),
    "diskManagement": MessageLookupByLibrary.simpleMessage(
      "Administrasjon av diskoteker",
    ),
    "doNotDisconnect": MessageLookupByLibrary.simpleMessage(
      "Ingen desconecte la energía ni pensjonere el medio de instalación",
    ),
    "downloadAndActivate": MessageLookupByLibrary.simpleMessage(
      "Last ned + aktivator",
    ),
    "downloadInstaller": MessageLookupByLibrary.simpleMessage(
      "Last ned installering (.exe)",
    ),
    "downloadPortable": MessageLookupByLibrary.simpleMessage(
      "Last ned bærbar (.zip)",
    ),
    "drives": MessageLookupByLibrary.simpleMessage("Unidades"),
    "editionDetected": m7,
    "emptyFolder": MessageLookupByLibrary.simpleMessage(
      "Esta carpeta está vacía",
    ),
    "errorGeneric": m8,
    "filter": MessageLookupByLibrary.simpleMessage("Filtrer..."),
    "formatGpt": MessageLookupByLibrary.simpleMessage(
      "Formatear GPT (anbefales)",
    ),
    "formatGptDescription": MessageLookupByLibrary.simpleMessage(
      "Limpia el disco y crea diseño UEFI\nEFI (S:) + Windows (W:)",
    ),
    "formatMbr": MessageLookupByLibrary.simpleMessage(
      "Formatear MBR (BIOS heredado)",
    ),
    "formatMbrDescription": MessageLookupByLibrary.simpleMessage(
      "Limpia el disco y crea diseño heredado\nSolo Windows (C :)",
    ),
    "formatWarning": MessageLookupByLibrary.simpleMessage(
      "El disco seleccionado se formateará por completo. Se perderán todos los data.",
    ),
    "generateIso": MessageLookupByLibrary.simpleMessage("Generell ISO"),
    "getInstallOnlyIso": MessageLookupByLibrary.simpleMessage(
      "Oppnå ISO for solamente",
    ),
    "goUpOneLevel": MessageLookupByLibrary.simpleMessage("Subir un nivel"),
    "imageDetected": MessageLookupByLibrary.simpleMessage("Bilde oppdaget"),
    "imageFound": MessageLookupByLibrary.simpleMessage("Bilde encontrada"),
    "imageNotFound": MessageLookupByLibrary.simpleMessage(
      "Bilde uten encontrada",
    ),
    "imageSearching": MessageLookupByLibrary.simpleMessage("Buscando-bilde..."),
    "installAll": MessageLookupByLibrary.simpleMessage("Installer å gjøre"),
    "installOffice": MessageLookupByLibrary.simpleMessage("Installer Office"),
    "installationProgress": MessageLookupByLibrary.simpleMessage(
      "Progreso de installering",
    ),
    "invalidPath": m9,
    "isoDescription": MessageLookupByLibrary.simpleMessage(
      "Få en ISO-base for å velge WIM for å installere, eller skape en ISO-autonome for å inkludere Windows-bilder.",
    ),
    "kmsError": m10,
    "kmsHostEmpty": MessageLookupByLibrary.simpleMessage(
      "Feil: El host KMS está vacío.",
    ),
    "kmsServer": MessageLookupByLibrary.simpleMessage("Servidor KMS"),
    "kmsTask160Days": MessageLookupByLibrary.simpleMessage("Tarea 160 dager"),
    "kmsVolumeActivation": MessageLookupByLibrary.simpleMessage(
      "Aktivering av volum (KMS)",
    ),
    "landingDescription": MessageLookupByLibrary.simpleMessage(
      "Windows installering for alt rendimiento. Eksperimenter og despliegue rápido med orquestación directa de DISM og optimization automatisada del sistema.",
    ),
    "licenseActivation": MessageLookupByLibrary.simpleMessage(
      "Aktivering av lisenser",
    ),
    "logsCopied": MessageLookupByLibrary.simpleMessage(
      "Logger copiados al portapapeles.",
    ),
    "mandatoryUpdate": MessageLookupByLibrary.simpleMessage(
      "Esta actualización es obligatoria y no puede utelate.",
    ),
    "manualWimHint": MessageLookupByLibrary.simpleMessage(
      "Bruk \"Buscar\" for localizar su archivo WIM manualmente.",
    ),
    "mediaInstallation": MessageLookupByLibrary.simpleMessage(
      "Medio de installering",
    ),
    "networkBridge": MessageLookupByLibrary.simpleMessage(
      "Puente IPv4-installasjon",
    ),
    "networkInterface": MessageLookupByLibrary.simpleMessage(
      "Interfaz Wi-Fi/LAN IPv4",
    ),
    "nextGenerationDeployment": MessageLookupByLibrary.simpleMessage(
      "Despliegue de SO de proxima generación",
    ),
    "noBridgeFound": MessageLookupByLibrary.simpleMessage(
      "No se encontró ningún puente. Bruksanvisning for Pruebe con la IP.",
    ),
    "noFormatWarning": MessageLookupByLibrary.simpleMessage(
      "Windows se desplegará en W:\\ sin formatear.",
    ),
    "noImageDetected": MessageLookupByLibrary.simpleMessage(
      "Ingen se detectó ninguna bilde",
    ),
    "noKmsProducts": MessageLookupByLibrary.simpleMessage(
      "Ingen høyprodukter fra KMS-seleccionados.",
    ),
    "noPhysicalDisks": MessageLookupByLibrary.simpleMessage(
      "Ingen se detectaron discos físicos",
    ),
    "noProgramsSelected": MessageLookupByLibrary.simpleMessage(
      "Ingen høyprogram som utvalgte.",
    ),
    "noWifiNetworks": MessageLookupByLibrary.simpleMessage(
      "Det er ikke mulig å bruke Wi-Fi tilgjengelig.",
    ),
    "noWingetPackages": MessageLookupByLibrary.simpleMessage(
      "No se detectaron paquetes conocidos con winget.",
    ),
    "officeInstallDescription": MessageLookupByLibrary.simpleMessage(
      "Desplie av Microsoft Office LTSC eller 365 automatisert manera med ODT.",
    ),
    "officeInstaller": MessageLookupByLibrary.simpleMessage(
      "Installator av Office",
    ),
    "officeRenewalStatus": m11,
    "officeVersion": MessageLookupByLibrary.simpleMessage("Versjon av Office"),
    "onlyWindows": MessageLookupByLibrary.simpleMessage(
      "Funksjonen alene er tilgjengelig i Windows.",
    ),
    "packageStack": MessageLookupByLibrary.simpleMessage(
      "Stack de programas (Winget)",
    ),
    "packagesDetected": m12,
    "partitionMode": MessageLookupByLibrary.simpleMessage(
      "Modus for deltakelse",
    ),
    "prepareBridge": MessageLookupByLibrary.simpleMessage(
      "Preparar e iniciar puente",
    ),
    "provideWindowsImage": MessageLookupByLibrary.simpleMessage(
      "Proporcione la imagen de installering av Windows (install.wim eller install.swm)\ndesde una unidad USB eller cualquier medio montado.",
    ),
    "receiveInstallation": MessageLookupByLibrary.simpleMessage(
      "O reciba la installación preparada desde Requiem for Windows",
    ),
    "renewalActive": MessageLookupByLibrary.simpleMessage("Activa"),
    "renewalDisabled": MessageLookupByLibrary.simpleMessage("Deaktivering"),
    "searchingImage": MessageLookupByLibrary.simpleMessage("Buscando-bilde..."),
    "secureBootCompatible": MessageLookupByLibrary.simpleMessage(
      "Kompatibel med sikker oppstart",
    ),
    "selectDestinationDisk": MessageLookupByLibrary.simpleMessage(
      "Velg disco destino",
    ),
    "selectFileHint": MessageLookupByLibrary.simpleMessage(
      "Velg et arkiv .wim o .swm",
    ),
    "selectWim": MessageLookupByLibrary.simpleMessage("Velg WIM"),
    "selectWimFirst": MessageLookupByLibrary.simpleMessage(
      "Velg en WIM og en interfaz IPv4 privat.",
    ),
    "selectWindowsImage": MessageLookupByLibrary.simpleMessage(
      "Velg bilde av Windows",
    ),
    "selectWindowsImageFull": MessageLookupByLibrary.simpleMessage(
      "Velg bilde av installasjon av Windows",
    ),
    "selectedFile": m13,
    "stableVersion": MessageLookupByLibrary.simpleMessage(
      "Versjon etablert v1.0.0",
    ),
    "start": MessageLookupByLibrary.simpleMessage("Empezar"),
    "startInstallation": MessageLookupByLibrary.simpleMessage(
      "Start installasjon",
    ),
    "stopBridge": MessageLookupByLibrary.simpleMessage("Detener puente"),
    "systemConsole": MessageLookupByLibrary.simpleMessage("Systemets konsoll"),
    "systemDisk": MessageLookupByLibrary.simpleMessage("Systema"),
    "systemLogs": MessageLookupByLibrary.simpleMessage("Logger av systemet"),
    "unknown": MessageLookupByLibrary.simpleMessage("Desconocido"),
    "updateDescription": MessageLookupByLibrary.simpleMessage(
      "For kontinuerlig bruk av Requiem Tools er nødvendig å aktualisere en ny versjon.",
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
      "Esperando una acción...",
    ),
    "waitingForWim": MessageLookupByLibrary.simpleMessage(
      "Esperando la detección de install.wim...",
    ),
    "wifiConnectError": m14,
    "wifiConnected": m15,
    "wifiPassword": MessageLookupByLibrary.simpleMessage("Contraseña Wi-Fi"),
    "wimIntegrated": MessageLookupByLibrary.simpleMessage(
      "WIM integrert i ISO",
    ),
    "wingetUnavailable": MessageLookupByLibrary.simpleMessage(
      "winget no está instalado o no está en PATH.",
    ),
  };
}
