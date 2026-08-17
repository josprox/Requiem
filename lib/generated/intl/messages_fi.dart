// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a fi locale. All the
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
  String get localeName => 'fi';

  static String m0(count) => "${count}-ohjelmat";

  static String m1(version) => "Saatavilla oleva versio: ${version}";

  static String m2(firmware) => "Todellinen järjestys: ${firmware}";

  static String m3(error) => "Ei pudo conectaria: ${error}";

  static String m4(error) => "No se pudo buscar el puente: ${error}";

  static String m5(host) => "Comprobando conectividad con ${host}:1688...";

  static String m6(mode) => "Modo-yhteensopiva: ${mode}";

  static String m7(name, edition) => "Havaintoversio: ${name} (${edition})";

  static String m8(error) => "Virhetilanne: ${error}";

  static String m9(path) => "Ruta inválida: ${path}";

  static String m10(error) => "Virhe KMS: ${error}";

  static String m11(product, channel, edition, status) =>
      "${product} / ${channel} / ${edition} bittiä. La renovación queda ${status}.";

  static String m12(count) => "Paquetes detectados: ${count}.";

  static String m13(file) => "Valitse: ${file}";

  static String m14(error) => "Ei yhteyttä Wi-Fi-verkkoon: ${error}";

  static String m15(network) => "Yhdistä ${network}.";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
    "actionCancel": MessageLookupByLibrary.simpleMessage("Peruuta"),
    "actionChange": MessageLookupByLibrary.simpleMessage("Cambiar"),
    "actionConfirm": MessageLookupByLibrary.simpleMessage("Vahvistaja"),
    "actionConnect": MessageLookupByLibrary.simpleMessage("Conectar"),
    "actionContinue": MessageLookupByLibrary.simpleMessage("Jatkuva"),
    "actionInstall": MessageLookupByLibrary.simpleMessage("Asenna"),
    "actionRefresh": MessageLookupByLibrary.simpleMessage("Actualizar"),
    "actionRestartSystem": MessageLookupByLibrary.simpleMessage(
      "Reiniciar järjestelmä",
    ),
    "actionScanAgain": MessageLookupByLibrary.simpleMessage(
      "Escanear unidades de nuevo",
    ),
    "actionSearch": MessageLookupByLibrary.simpleMessage("Buscar"),
    "actionSelect": MessageLookupByLibrary.simpleMessage("Selectionar"),
    "activate": MessageLookupByLibrary.simpleMessage("Activar"),
    "activateKms": MessageLookupByLibrary.simpleMessage("Activar KMS"),
    "appTitleInstaller": MessageLookupByLibrary.simpleMessage(
      "Requiemin asennusohjelma",
    ),
    "appTitleTools": MessageLookupByLibrary.simpleMessage("Requiem-työkalut"),
    "applicationStack": MessageLookupByLibrary.simpleMessage(
      "Stack de aplicaciones",
    ),
    "applicationStackDescription": MessageLookupByLibrary.simpleMessage(
      "Asenna y aktualiza herramientas de desarrollo esenciales para Windows mediante winget.",
    ),
    "applicationsCount": m0,
    "automaticOffice": MessageLookupByLibrary.simpleMessage(
      "Toimistoautomaatio",
    ),
    "automaticOfficeDescription": MessageLookupByLibrary.simpleMessage(
      "Usa la GVLK de volumen ya ladada",
    ),
    "automaticRenewal": MessageLookupByLibrary.simpleMessage(
      "Renovación automatica",
    ),
    "automaticWindows": MessageLookupByLibrary.simpleMessage(
      "Windows automaattinen",
    ),
    "automaticWindowsDescription": MessageLookupByLibrary.simpleMessage(
      "Detecta edición ja GVLK -yhteensopiva",
    ),
    "availableVersion": m1,
    "bootCurrent": m2,
    "bridgeConnectError": m3,
    "bridgeDescription": MessageLookupByLibrary.simpleMessage(
      "Prepara el WIM una sola vez y lo transfere directamente a los clientes Requiem de la misma red. Lost asiakkaat eivät voi suojata WIM-asennusta.",
    ),
    "bridgeIp": MessageLookupByLibrary.simpleMessage("IP del puente Requiem"),
    "bridgePorts": MessageLookupByLibrary.simpleMessage(
      "Puerto HTTP 40124 · descubrimiento UDP 40123. Si Windows Defender on ennakkoon, sallii pääsyn ja yksityisyyden.",
    ),
    "bridgeSearchError": m4,
    "checkingKms": m5,
    "clearLogs": MessageLookupByLibrary.simpleMessage("Limpiar lokit"),
    "compatibleMode": m6,
    "confirmDataDestruction": MessageLookupByLibrary.simpleMessage(
      "Confirmar destrucción de datos",
    ),
    "confirmInstallation": MessageLookupByLibrary.simpleMessage(
      "Vahvista asennus",
    ),
    "connectInstallerWifi": MessageLookupByLibrary.simpleMessage(
      "Yhdistä Wi-Fi-yhteys",
    ),
    "connectWifi": MessageLookupByLibrary.simpleMessage("Conectar Wi-Fi"),
    "copyLogs": MessageLookupByLibrary.simpleMessage("Copiar lokit"),
    "deploymentInProgress": MessageLookupByLibrary.simpleMessage(
      "Despiegue en curso",
    ),
    "designedBy": MessageLookupByLibrary.simpleMessage("Diseñado by Joss"),
    "destinationDiskDescription": MessageLookupByLibrary.simpleMessage(
      "Elija la unidad física donde se asenna Windows.",
    ),
    "detect": MessageLookupByLibrary.simpleMessage("Detectar"),
    "diskManagement": MessageLookupByLibrary.simpleMessage(
      "Administración de disco",
    ),
    "doNotDisconnect": MessageLookupByLibrary.simpleMessage(
      "No desconecte la energía ni retere el medio de instalación",
    ),
    "downloadAndActivate": MessageLookupByLibrary.simpleMessage(
      "Lataa + aktivointi",
    ),
    "downloadInstaller": MessageLookupByLibrary.simpleMessage(
      "Lataa asennusohjelma (.exe)",
    ),
    "downloadPortable": MessageLookupByLibrary.simpleMessage(
      "Lataa kannettava (.zip)",
    ),
    "drives": MessageLookupByLibrary.simpleMessage("Unidades"),
    "editionDetected": m7,
    "emptyFolder": MessageLookupByLibrary.simpleMessage(
      "Esta carpeta está vacía",
    ),
    "errorGeneric": m8,
    "filter": MessageLookupByLibrary.simpleMessage("Suodata…"),
    "formatGpt": MessageLookupByLibrary.simpleMessage(
      "Formatear GPT (suositus)",
    ),
    "formatGptDescription": MessageLookupByLibrary.simpleMessage(
      "Limpia el disco ja luonut UEFI:n\nEFI (S:) + Windows (W:)",
    ),
    "formatMbr": MessageLookupByLibrary.simpleMessage(
      "Formatear MBR (BIOS heredado)",
    ),
    "formatMbrDescription": MessageLookupByLibrary.simpleMessage(
      "Limpia el disco y crea diseño heredado\nYksin Windows (C:)",
    ),
    "formatWarning": MessageLookupByLibrary.simpleMessage(
      "El disco seleccionado se formateará por completo. Se perderán todos los datos.",
    ),
    "generateIso": MessageLookupByLibrary.simpleMessage("Yleinen ISO"),
    "getInstallOnlyIso": MessageLookupByLibrary.simpleMessage(
      "Hanki ISO para instalación solamente",
    ),
    "goUpOneLevel": MessageLookupByLibrary.simpleMessage("Subir un nivel"),
    "imageDetected": MessageLookupByLibrary.simpleMessage(
      "Kuvan havaitseminen",
    ),
    "imageFound": MessageLookupByLibrary.simpleMessage("Imagen encontrada"),
    "imageNotFound": MessageLookupByLibrary.simpleMessage(
      "Imagen no encontrada",
    ),
    "imageSearching": MessageLookupByLibrary.simpleMessage("Buscando kuva..."),
    "installAll": MessageLookupByLibrary.simpleMessage("Asenna tehtävä"),
    "installOffice": MessageLookupByLibrary.simpleMessage("Asenna toimisto"),
    "installationProgress": MessageLookupByLibrary.simpleMessage(
      "Asennuksen edistyminen",
    ),
    "invalidPath": m9,
    "isoDescription": MessageLookupByLibrary.simpleMessage(
      "Hanki ISO-perusvalinta ja WIM al arrancar, o cree una ISO autónoma que ya incluya su imagen de Windows.",
    ),
    "kmsError": m10,
    "kmsHostEmpty": MessageLookupByLibrary.simpleMessage(
      "Virhe: el host KMS está vacío.",
    ),
    "kmsServer": MessageLookupByLibrary.simpleMessage("Palvelija KMS"),
    "kmsTask160Days": MessageLookupByLibrary.simpleMessage("Tarea 160 días"),
    "kmsVolumeActivation": MessageLookupByLibrary.simpleMessage(
      "Activación de volumen (KMS)",
    ),
    "landingDescription": MessageLookupByLibrary.simpleMessage(
      "Instalador de Windows de alta precisión para entornos de alto rendimiento. Experimente un despliegue rápido con orquestación directa de DISM y Optimación automatizada del system.",
    ),
    "licenseActivation": MessageLookupByLibrary.simpleMessage(
      "Activación de licencias",
    ),
    "logsCopied": MessageLookupByLibrary.simpleMessage(
      "Lokit copiados al porttapapeles.",
    ),
    "mandatoryUpdate": MessageLookupByLibrary.simpleMessage(
      "Esta aktualización es obligatoria y no puede omitirse.",
    ),
    "manualWimHint": MessageLookupByLibrary.simpleMessage(
      "Käytä \"Buscar\" paikallista WIM-käsikirjaa.",
    ),
    "mediaInstallation": MessageLookupByLibrary.simpleMessage(
      "Medio de instalación",
    ),
    "networkBridge": MessageLookupByLibrary.simpleMessage(
      "Puente IPv4 asennus",
    ),
    "networkInterface": MessageLookupByLibrary.simpleMessage(
      "Interfaz Wi-Fi/LAN IPv4",
    ),
    "nextGenerationDeployment": MessageLookupByLibrary.simpleMessage(
      "Despiegue de SO de próxima generación",
    ),
    "noBridgeFound": MessageLookupByLibrary.simpleMessage(
      "No se encontró ningún puente. Pruebe con la IP käsikirja.",
    ),
    "noFormatWarning": MessageLookupByLibrary.simpleMessage(
      "Windows se desplegará en W:\\ sin formatear.",
    ),
    "noImageDetected": MessageLookupByLibrary.simpleMessage(
      "No se detectó ninguna imagen",
    ),
    "noKmsProducts": MessageLookupByLibrary.simpleMessage(
      "Ei heinätuotteita KMS Selectionados.",
    ),
    "noPhysicalDisks": MessageLookupByLibrary.simpleMessage(
      "Ei se detectaron discos físicos",
    ),
    "noProgramsSelected": MessageLookupByLibrary.simpleMessage(
      "Ei heinää ohjelmat seleccionados.",
    ),
    "noWifiNetworks": MessageLookupByLibrary.simpleMessage(
      "No se encontraron redes Wi-Fi käytettävissä.",
    ),
    "noWingetPackages": MessageLookupByLibrary.simpleMessage(
      "No se detectaron paquetes conocidos con winget.",
    ),
    "officeInstallDescription": MessageLookupByLibrary.simpleMessage(
      "Poista Microsoft Office LTSC tai 365, joka on automatisoitu ODT:lle.",
    ),
    "officeInstaller": MessageLookupByLibrary.simpleMessage(
      "Toimiston asennus",
    ),
    "officeRenewalStatus": m11,
    "officeVersion": MessageLookupByLibrary.simpleMessage("Officen versio"),
    "onlyWindows": MessageLookupByLibrary.simpleMessage(
      "Esta función soolo está disponible en Windows.",
    ),
    "packageStack": MessageLookupByLibrary.simpleMessage(
      "Stack de programs (Winget)",
    ),
    "packagesDetected": m12,
    "partitionMode": MessageLookupByLibrary.simpleMessage("Modo de partición"),
    "prepareBridge": MessageLookupByLibrary.simpleMessage(
      "Preparar e iniciar puente",
    ),
    "provideWindowsImage": MessageLookupByLibrary.simpleMessage(
      "Windows-asennuskuvan mukainen (install.wim tai install.swm)\ndesde una unidad USB tai cualquier medio montado.",
    ),
    "receiveInstallation": MessageLookupByLibrary.simpleMessage(
      "O reciba la instalación preparada desde Requiem para Windows",
    ),
    "renewalActive": MessageLookupByLibrary.simpleMessage("Activa"),
    "renewalDisabled": MessageLookupByLibrary.simpleMessage("Desactivada"),
    "searchingImage": MessageLookupByLibrary.simpleMessage("Buscando kuva…"),
    "secureBootCompatible": MessageLookupByLibrary.simpleMessage(
      "Yhteensopiva Secure Bootin kanssa",
    ),
    "selectDestinationDisk": MessageLookupByLibrary.simpleMessage(
      "Valitse disco de destino",
    ),
    "selectFileHint": MessageLookupByLibrary.simpleMessage(
      "Valitse arkisto .wim tai .swm",
    ),
    "selectWim": MessageLookupByLibrary.simpleMessage("Valitse WIM"),
    "selectWimFirst": MessageLookupByLibrary.simpleMessage(
      "Valitse WIM ja IPv4-yhteysliittymä.",
    ),
    "selectWindowsImage": MessageLookupByLibrary.simpleMessage(
      "Valitse Windows-kuva",
    ),
    "selectWindowsImageFull": MessageLookupByLibrary.simpleMessage(
      "Valitse Windowsin asennuskuva",
    ),
    "selectedFile": m13,
    "stableVersion": MessageLookupByLibrary.simpleMessage(
      "Versio estable v1.0.0",
    ),
    "start": MessageLookupByLibrary.simpleMessage("Empezar"),
    "startInstallation": MessageLookupByLibrary.simpleMessage(
      "Alkuperäinen asennus",
    ),
    "stopBridge": MessageLookupByLibrary.simpleMessage("Detener puente"),
    "systemConsole": MessageLookupByLibrary.simpleMessage("Consola del system"),
    "systemDisk": MessageLookupByLibrary.simpleMessage("Järjestelmä"),
    "systemLogs": MessageLookupByLibrary.simpleMessage("Järjestelmän lokit"),
    "unknown": MessageLookupByLibrary.simpleMessage("Desconocido"),
    "updateDescription": MessageLookupByLibrary.simpleMessage(
      "Jatkuvasti Requiem Tools -työkalujen käyttö on välttämätöntä, jos versio on uusinta.",
    ),
    "updateRequired": MessageLookupByLibrary.simpleMessage(
      "Actualización requerida",
    ),
    "useExistingPartitions": MessageLookupByLibrary.simpleMessage(
      "Usar particiones existentes",
    ),
    "useExistingPartitionsDescription": MessageLookupByLibrary.simpleMessage(
      "Sin formatear — despliega en W: tal cual\nKäytetty gestiona las particiones manualmente",
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
      "WIM-integraatio ISO:lla",
    ),
    "wingetUnavailable": MessageLookupByLibrary.simpleMessage(
      "winget no está instalado o no está en PATH.",
    ),
  };
}
