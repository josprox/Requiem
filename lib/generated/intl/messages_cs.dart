// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a cs locale. All the
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
  String get localeName => 'cs';

  static String m0(count) => "${count} programů";

  static String m1(version) => "Dostupná verze: ${version}";

  static String m2(firmware) => "Skutečná objednávka: ${firmware}";

  static String m3(error) => "No se pudo conectar: ${error}";

  static String m4(error) => "No se pudo buscar el puente: ${error}";

  static String m5(host) => "Kombinované připojení s ${host}:1688...";

  static String m6(mode) => "Kompatibilní s režimem: ${mode}";

  static String m7(name, edition) => "Detekovaná edice: ${name} (${edition})";

  static String m8(error) => "Vyskytla se chyba: ${error}";

  static String m9(path) => "Ruta inválida: ${path}";

  static String m10(error) => "Chyba KMS: ${error}";

  static String m11(product, channel, edition, status) =>
      "${product} / ${channel} / ${edition} bitů. La renovación queda ${status}.";

  static String m12(count) => "Paquetes detectados: ${count}.";

  static String m13(file) => "Výběr: ${file}";

  static String m14(error) => "Žádné připojení k Wi-Fi: ${error}";

  static String m15(network) => "Připojte se k ${network}.";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
    "actionCancel": MessageLookupByLibrary.simpleMessage("Zrušit"),
    "actionChange": MessageLookupByLibrary.simpleMessage("Kambiár"),
    "actionConfirm": MessageLookupByLibrary.simpleMessage("Potvrdit"),
    "actionConnect": MessageLookupByLibrary.simpleMessage("Conectar"),
    "actionContinue": MessageLookupByLibrary.simpleMessage("Kontinuální"),
    "actionInstall": MessageLookupByLibrary.simpleMessage("Instalační"),
    "actionRefresh": MessageLookupByLibrary.simpleMessage("Actualizar"),
    "actionRestartSystem": MessageLookupByLibrary.simpleMessage(
      "Reiniciární systém",
    ),
    "actionScanAgain": MessageLookupByLibrary.simpleMessage(
      "Escanear unidades de nuevo",
    ),
    "actionSearch": MessageLookupByLibrary.simpleMessage("Buscar"),
    "actionSelect": MessageLookupByLibrary.simpleMessage("Selekcionar"),
    "activate": MessageLookupByLibrary.simpleMessage("Aktivar"),
    "activateKms": MessageLookupByLibrary.simpleMessage("Aktivar KMS"),
    "appTitleInstaller": MessageLookupByLibrary.simpleMessage(
      "Instalační program Requiem",
    ),
    "appTitleTools": MessageLookupByLibrary.simpleMessage("Nástroje Requiem"),
    "applicationStack": MessageLookupByLibrary.simpleMessage(
      "Zásobník aplikací",
    ),
    "applicationStackDescription": MessageLookupByLibrary.simpleMessage(
      "Nainstalujte a aktualizujte herramentas desarrollo esenciales pro Windows mediante winget.",
    ),
    "applicationsCount": m0,
    "automaticOffice": MessageLookupByLibrary.simpleMessage(
      "Kancelářský automat",
    ),
    "automaticOfficeDescription": MessageLookupByLibrary.simpleMessage(
      "Pomocí GVLK je nainstalován objem",
    ),
    "automaticRenewal": MessageLookupByLibrary.simpleMessage(
      "Renovace automatiky",
    ),
    "automaticWindows": MessageLookupByLibrary.simpleMessage(
      "Automatická Windows",
    ),
    "automaticWindowsDescription": MessageLookupByLibrary.simpleMessage(
      "Kompatibilní s Detecta edición a GVLK",
    ),
    "availableVersion": m1,
    "bootCurrent": m2,
    "bridgeConnectError": m3,
    "bridgeDescription": MessageLookupByLibrary.simpleMessage(
      "Připravte se na WIM tak, abyste předali přímou cestu pro klienty Requiem de la misma red. Klienti nejsou chráněni před instalací WIM.",
    ),
    "bridgeIp": MessageLookupByLibrary.simpleMessage("IP del puente Requiem"),
    "bridgePorts": MessageLookupByLibrary.simpleMessage(
      "Puerto HTTP 40124 · chráněné UDP 40123. Pokud máte Windows Defender povolen, máte povolený přístup k soukromí.",
    ),
    "bridgeSearchError": m4,
    "checkingKms": m5,
    "clearLogs": MessageLookupByLibrary.simpleMessage("Limpiarské kulatiny"),
    "compatibleMode": m6,
    "confirmDataDestruction": MessageLookupByLibrary.simpleMessage(
      "Potvrďte destrucción de datos",
    ),
    "confirmInstallation": MessageLookupByLibrary.simpleMessage(
      "Potvrďte instalaci",
    ),
    "connectInstallerWifi": MessageLookupByLibrary.simpleMessage(
      "Připojte se k Wi-Fi",
    ),
    "connectWifi": MessageLookupByLibrary.simpleMessage("Připojte Wi-Fi"),
    "copyLogs": MessageLookupByLibrary.simpleMessage("Kopie protokoly"),
    "deploymentInProgress": MessageLookupByLibrary.simpleMessage(
      "Despliegue en curso",
    ),
    "designedBy": MessageLookupByLibrary.simpleMessage("Diseñado por Joss"),
    "destinationDiskDescription": MessageLookupByLibrary.simpleMessage(
      "Elija la unidad física donde se instaluje Windows.",
    ),
    "detect": MessageLookupByLibrary.simpleMessage("Detektor"),
    "diskManagement": MessageLookupByLibrary.simpleMessage("Správa diskoték"),
    "doNotDisconnect": MessageLookupByLibrary.simpleMessage(
      "No desconecte la energía ni pension el medio de instalación",
    ),
    "downloadAndActivate": MessageLookupByLibrary.simpleMessage(
      "Ke stažení + aktivar",
    ),
    "downloadInstaller": MessageLookupByLibrary.simpleMessage(
      "Stáhnout instalační program (.exe)",
    ),
    "downloadPortable": MessageLookupByLibrary.simpleMessage(
      "Stáhnout portable (.zip)",
    ),
    "drives": MessageLookupByLibrary.simpleMessage("Unidades"),
    "editionDetected": m7,
    "emptyFolder": MessageLookupByLibrary.simpleMessage(
      "Esta carpeta está vacía",
    ),
    "errorGeneric": m8,
    "filter": MessageLookupByLibrary.simpleMessage("Filtrační…"),
    "formatGpt": MessageLookupByLibrary.simpleMessage(
      "Formát GPT (doporučeno)",
    ),
    "formatGptDescription": MessageLookupByLibrary.simpleMessage(
      "Limpia el disco a crea diseño UEFI\nEFI (S:) + Windows (W:)",
    ),
    "formatMbr": MessageLookupByLibrary.simpleMessage(
      "Formatear MBR (BIOS heredado)",
    ),
    "formatMbrDescription": MessageLookupByLibrary.simpleMessage(
      "Limpia el disco a crea diseño heredado\nSolo Windows (C:)",
    ),
    "formatWarning": MessageLookupByLibrary.simpleMessage(
      "El disco seleccionado se formateará por completo. Se perderán todos los datos.",
    ),
    "generateIso": MessageLookupByLibrary.simpleMessage("Obecné ISO"),
    "getInstallOnlyIso": MessageLookupByLibrary.simpleMessage(
      "Obtener ISO pro instalación solamente",
    ),
    "goUpOneLevel": MessageLookupByLibrary.simpleMessage("Subir un nivel"),
    "imageDetected": MessageLookupByLibrary.simpleMessage("Obrazová detekce"),
    "imageFound": MessageLookupByLibrary.simpleMessage("Imagen encontrada"),
    "imageNotFound": MessageLookupByLibrary.simpleMessage("Imagen no contrada"),
    "imageSearching": MessageLookupByLibrary.simpleMessage(
      "Obrázek Buscando...",
    ),
    "installAll": MessageLookupByLibrary.simpleMessage("Instalovat úkol"),
    "installOffice": MessageLookupByLibrary.simpleMessage(
      "Instalační kancelář",
    ),
    "installationProgress": MessageLookupByLibrary.simpleMessage(
      "Průběh instalace",
    ),
    "invalidPath": m9,
    "isoDescription": MessageLookupByLibrary.simpleMessage(
      "Získání základny ISO pro výběr WIM v systému Windows, který je automatickým systémem ISO, který je součástí obrazu systému Windows.",
    ),
    "kmsError": m10,
    "kmsHostEmpty": MessageLookupByLibrary.simpleMessage(
      "Chyba: el host KMS está vacío.",
    ),
    "kmsServer": MessageLookupByLibrary.simpleMessage("Servider KMS"),
    "kmsTask160Days": MessageLookupByLibrary.simpleMessage("Tarea 160 días"),
    "kmsVolumeActivation": MessageLookupByLibrary.simpleMessage(
      "Aktivace objemu (KMS)",
    ),
    "landingDescription": MessageLookupByLibrary.simpleMessage(
      "Instalace Windows s vyšší přesností pro vyšší verzi. Experimente un despliegue rápido con orquestación directa de DISM y optimalización automatizada del sistema.",
    ),
    "licenseActivation": MessageLookupByLibrary.simpleMessage(
      "Aktivace licencí",
    ),
    "logsCopied": MessageLookupByLibrary.simpleMessage(
      "Záznamy kopií al portapapeles.",
    ),
    "mandatoryUpdate": MessageLookupByLibrary.simpleMessage(
      "Esta updatedización es obligatoria y no puede omitirse.",
    ),
    "manualWimHint": MessageLookupByLibrary.simpleMessage(
      "Použijte \"Buscar\" pro lokalizaci a archivaci WIM manuálu.",
    ),
    "mediaInstallation": MessageLookupByLibrary.simpleMessage(
      "Medio de instalace",
    ),
    "networkBridge": MessageLookupByLibrary.simpleMessage(
      "Puente IPv4 instalace",
    ),
    "networkInterface": MessageLookupByLibrary.simpleMessage(
      "Rozhraní Wi-Fi/LAN IPv4",
    ),
    "nextGenerationDeployment": MessageLookupByLibrary.simpleMessage(
      "Despliegue de SO de próxima generaceón",
    ),
    "noBridgeFound": MessageLookupByLibrary.simpleMessage(
      "No se encontró ningún puente. Pruebe con la IP manuál.",
    ),
    "noFormatWarning": MessageLookupByLibrary.simpleMessage(
      "Windows se desplegará en W:\\ sin formatear.",
    ),
    "noImageDetected": MessageLookupByLibrary.simpleMessage(
      "Nebyl nalezen žádný obrázek",
    ),
    "noKmsProducts": MessageLookupByLibrary.simpleMessage(
      "Žádné produkty sena KMS seleccionados.",
    ),
    "noPhysicalDisks": MessageLookupByLibrary.simpleMessage(
      "No se detectaron discos fisicos",
    ),
    "noProgramsSelected": MessageLookupByLibrary.simpleMessage(
      "Žádné seno programy jako seleccionados.",
    ),
    "noWifiNetworks": MessageLookupByLibrary.simpleMessage(
      "Žádné protikladné možnosti Wi-Fi.",
    ),
    "noWingetPackages": MessageLookupByLibrary.simpleMessage(
      "No se detectaron paquetes conocidos con winget.",
    ),
    "officeInstallDescription": MessageLookupByLibrary.simpleMessage(
      "Despliega Microsoft Office LTSC nebo 365 výrobní automatizace pomocí ODT.",
    ),
    "officeInstaller": MessageLookupByLibrary.simpleMessage(
      "Instalatér Office",
    ),
    "officeRenewalStatus": m11,
    "officeVersion": MessageLookupByLibrary.simpleMessage("Verze Office"),
    "onlyWindows": MessageLookupByLibrary.simpleMessage(
      "Esta función solo está disponible en Windows.",
    ),
    "packageStack": MessageLookupByLibrary.simpleMessage(
      "Stack de programas (Winget)",
    ),
    "packagesDetected": m12,
    "partitionMode": MessageLookupByLibrary.simpleMessage("Modo de partición"),
    "prepareBridge": MessageLookupByLibrary.simpleMessage(
      "Připravte se na začátek",
    ),
    "provideWindowsImage": MessageLookupByLibrary.simpleMessage(
      "Proporcione la imagen de instalación Windows (install.wim nebo install.swm)\nod una unidad USB nebo coalquier medium montado.",
    ),
    "receiveInstallation": MessageLookupByLibrary.simpleMessage(
      "O reciba la instalación preparada desde Requiem para Windows",
    ),
    "renewalActive": MessageLookupByLibrary.simpleMessage("Aktivní"),
    "renewalDisabled": MessageLookupByLibrary.simpleMessage("Deaktivace"),
    "searchingImage": MessageLookupByLibrary.simpleMessage("Obrázek Buscando…"),
    "secureBootCompatible": MessageLookupByLibrary.simpleMessage(
      "Kompatibilní s Secure Boot",
    ),
    "selectDestinationDisk": MessageLookupByLibrary.simpleMessage(
      "Výběrová diskotéka de destino",
    ),
    "selectFileHint": MessageLookupByLibrary.simpleMessage(
      "Seleccione un archivo .wim o .swm",
    ),
    "selectWim": MessageLookupByLibrary.simpleMessage("Výběr WIM"),
    "selectWimFirst": MessageLookupByLibrary.simpleMessage(
      "Vyberte WIM a rozhraní IPv4.",
    ),
    "selectWindowsImage": MessageLookupByLibrary.simpleMessage(
      "Výběr obrázku systému Windows",
    ),
    "selectWindowsImageFull": MessageLookupByLibrary.simpleMessage(
      "Výběr obrázku instalace systému Windows",
    ),
    "selectedFile": m13,
    "stableVersion": MessageLookupByLibrary.simpleMessage(
      "Verze etable v1.0.0",
    ),
    "start": MessageLookupByLibrary.simpleMessage("Empezar"),
    "startInstallation": MessageLookupByLibrary.simpleMessage(
      "Úvodní instalace",
    ),
    "stopBridge": MessageLookupByLibrary.simpleMessage("Detener puente"),
    "systemConsole": MessageLookupByLibrary.simpleMessage(
      "Consola del systema",
    ),
    "systemDisk": MessageLookupByLibrary.simpleMessage("Systém"),
    "systemLogs": MessageLookupByLibrary.simpleMessage("Logs del systema"),
    "unknown": MessageLookupByLibrary.simpleMessage("Desconocido"),
    "updateDescription": MessageLookupByLibrary.simpleMessage(
      "Pokračovat v používání nástrojů Requiem je nutné aktualizovat a aktualizovat verzi, která je k dispozici.",
    ),
    "updateRequired": MessageLookupByLibrary.simpleMessage(
      "Aktualizace požadavku",
    ),
    "useExistingPartitions": MessageLookupByLibrary.simpleMessage(
      "Usar particiones existentes",
    ),
    "useExistingPartitionsDescription": MessageLookupByLibrary.simpleMessage(
      "Sin formatear — despliega en W: tal cual\nPoužité gesto las particiones manualmente",
    ),
    "waitingAction": MessageLookupByLibrary.simpleMessage(
      "Esperando una acción...",
    ),
    "waitingForWim": MessageLookupByLibrary.simpleMessage(
      "Esperando la detección de install.wim...",
    ),
    "wifiConnectError": m14,
    "wifiConnected": m15,
    "wifiPassword": MessageLookupByLibrary.simpleMessage("Kontraseña Wi-Fi"),
    "wimIntegrated": MessageLookupByLibrary.simpleMessage(
      "Integrace WIM do ISO",
    ),
    "wingetUnavailable": MessageLookupByLibrary.simpleMessage(
      "winget no está instalado o no está en PATH.",
    ),
  };
}
