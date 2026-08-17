// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a hu locale. All the
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
  String get localeName => 'hu';

  static String m0(count) => "${count} programok";

  static String m1(version) => "Elérhető verzió: ${version}";

  static String m2(firmware) => "Tényleges sorrend: ${firmware}";

  static String m3(error) => "Nincs pudo conectar: ${error}";

  static String m4(error) => "No se pudo buscar el puente: ${error}";

  static String m5(host) => "Comprobando conectividad con ${host}:1688...";

  static String m6(mode) => "Modo kompatibilis: ${mode}";

  static String m7(name, edition) => "Edition detectada: ${name} (${edition})";

  static String m8(error) => "Hiba előfordulása: ${error}";

  static String m9(path) => "Ruta inválida: ${path}";

  static String m10(error) => "Hiba KMS: ${error}";

  static String m11(product, channel, edition, status) =>
      "${product} / ${channel} / ${edition} bit. La renovación queda ${status}.";

  static String m12(count) => "Paquetes detectados: ${count}.";

  static String m13(file) => "Kiválasztás: ${file}";

  static String m14(error) => "Nem lehet Wi-Fi-t csatlakoztatni: ${error}";

  static String m15(network) => "Csatlakoztassa a ${network}.";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
    "actionCancel": MessageLookupByLibrary.simpleMessage("Mégse"),
    "actionChange": MessageLookupByLibrary.simpleMessage("Cambiar"),
    "actionConfirm": MessageLookupByLibrary.simpleMessage("Megerősítő"),
    "actionConnect": MessageLookupByLibrary.simpleMessage("Conectar"),
    "actionContinue": MessageLookupByLibrary.simpleMessage("Folyamatos"),
    "actionInstall": MessageLookupByLibrary.simpleMessage("Telepítés"),
    "actionRefresh": MessageLookupByLibrary.simpleMessage("Actualizar"),
    "actionRestartSystem": MessageLookupByLibrary.simpleMessage(
      "Reiniciar rendszer",
    ),
    "actionScanAgain": MessageLookupByLibrary.simpleMessage(
      "Escanear unidades de nuevo",
    ),
    "actionSearch": MessageLookupByLibrary.simpleMessage("Buscar"),
    "actionSelect": MessageLookupByLibrary.simpleMessage("Selectionar"),
    "activate": MessageLookupByLibrary.simpleMessage("Activar"),
    "activateKms": MessageLookupByLibrary.simpleMessage("Activar KMS"),
    "appTitleInstaller": MessageLookupByLibrary.simpleMessage(
      "Requiem telepítő",
    ),
    "appTitleTools": MessageLookupByLibrary.simpleMessage("Requiem Tools"),
    "applicationStack": MessageLookupByLibrary.simpleMessage(
      "Stack de aplicaciones",
    ),
    "applicationStackDescription": MessageLookupByLibrary.simpleMessage(
      "Instala y aktualiza herramientas de desarrollo esenciales para Windows mediante winget.",
    ),
    "applicationsCount": m0,
    "automaticOffice": MessageLookupByLibrary.simpleMessage(
      "Irodai automatika",
    ),
    "automaticOfficeDescription": MessageLookupByLibrary.simpleMessage(
      "Usa la GVLK de volumen ya instalada",
    ),
    "automaticRenewal": MessageLookupByLibrary.simpleMessage(
      "Renovación automatica",
    ),
    "automaticWindows": MessageLookupByLibrary.simpleMessage(
      "Windows automatika",
    ),
    "automaticWindowsDescription": MessageLookupByLibrary.simpleMessage(
      "Detecta Edition és GVLK kompatibilis",
    ),
    "availableVersion": m1,
    "bootCurrent": m2,
    "bridgeConnectError": m3,
    "bridgeDescription": MessageLookupByLibrary.simpleMessage(
      "Prepara el WIM una sola vez y lo transfere directamente a los clientes Requiem de la misma red. Az ügyfelek nem védik a WIM-et a telepítés előtt.",
    ),
    "bridgeIp": MessageLookupByLibrary.simpleMessage("IP del Puente Requiem"),
    "bridgePorts": MessageLookupByLibrary.simpleMessage(
      "Puerto HTTP 40124 · UDP 40123 leállítása. A Windows Defender előzetesen engedélyezve van a hozzáféréshez és a titkosításhoz.",
    ),
    "bridgeSearchError": m4,
    "checkingKms": m5,
    "clearLogs": MessageLookupByLibrary.simpleMessage("Limpiar rönkök"),
    "compatibleMode": m6,
    "confirmDataDestruction": MessageLookupByLibrary.simpleMessage(
      "Confirmar destrucción de datos",
    ),
    "confirmInstallation": MessageLookupByLibrary.simpleMessage(
      "Confirmar installación",
    ),
    "connectInstallerWifi": MessageLookupByLibrary.simpleMessage(
      "Csatlakoztassa a Wi-Fi-t",
    ),
    "connectWifi": MessageLookupByLibrary.simpleMessage("Conectar Wi-Fi"),
    "copyLogs": MessageLookupByLibrary.simpleMessage("Copiar naplók"),
    "deploymentInProgress": MessageLookupByLibrary.simpleMessage(
      "Despiegue en curso",
    ),
    "designedBy": MessageLookupByLibrary.simpleMessage("Diseñado por Joss"),
    "destinationDiskDescription": MessageLookupByLibrary.simpleMessage(
      "Elija la unidad física donde a Windows telepítéséhez.",
    ),
    "detect": MessageLookupByLibrary.simpleMessage("Detectar"),
    "diskManagement": MessageLookupByLibrary.simpleMessage(
      "Administración de discos",
    ),
    "doNotDisconnect": MessageLookupByLibrary.simpleMessage(
      "No desconecte la energía ni retire el medio de instalación",
    ),
    "downloadAndActivate": MessageLookupByLibrary.simpleMessage(
      "Letöltés + aktiválás",
    ),
    "downloadInstaller": MessageLookupByLibrary.simpleMessage(
      "Telepítő (.exe) letöltése",
    ),
    "downloadPortable": MessageLookupByLibrary.simpleMessage(
      "Hordozható (.zip) letöltés",
    ),
    "drives": MessageLookupByLibrary.simpleMessage("Unidades"),
    "editionDetected": m7,
    "emptyFolder": MessageLookupByLibrary.simpleMessage(
      "Esta carpeta está vacía",
    ),
    "errorGeneric": m8,
    "filter": MessageLookupByLibrary.simpleMessage("Szűrő…"),
    "formatGpt": MessageLookupByLibrary.simpleMessage(
      "Formatear GPT (ajánlott)",
    ),
    "formatGptDescription": MessageLookupByLibrary.simpleMessage(
      "Limpia el disco és létrehozta az UEFI-t\nEFI (S:) + Windows (W:)",
    ),
    "formatMbr": MessageLookupByLibrary.simpleMessage(
      "Formatear MBR (BIOS heredado)",
    ),
    "formatMbrDescription": MessageLookupByLibrary.simpleMessage(
      "Limpia el disco y crea diseño heredado\nEgyedülálló Windows (C:)",
    ),
    "formatWarning": MessageLookupByLibrary.simpleMessage(
      "El disco seleccionado se formateará por Completo. Se perderán todos los datos.",
    ),
    "generateIso": MessageLookupByLibrary.simpleMessage("Általános ISO"),
    "getInstallOnlyIso": MessageLookupByLibrary.simpleMessage(
      "Megszerző ISO para instalación solamente",
    ),
    "goUpOneLevel": MessageLookupByLibrary.simpleMessage("Subir un nivel"),
    "imageDetected": MessageLookupByLibrary.simpleMessage("Imagen detectada"),
    "imageFound": MessageLookupByLibrary.simpleMessage("Imagen encontrada"),
    "imageNotFound": MessageLookupByLibrary.simpleMessage(
      "Imagen no encontrada",
    ),
    "imageSearching": MessageLookupByLibrary.simpleMessage("Buscando kép..."),
    "installAll": MessageLookupByLibrary.simpleMessage("Teendők telepítése"),
    "installOffice": MessageLookupByLibrary.simpleMessage("Iroda telepítése"),
    "installationProgress": MessageLookupByLibrary.simpleMessage(
      "Progreso de instalación",
    ),
    "invalidPath": m9,
    "isoDescription": MessageLookupByLibrary.simpleMessage(
      "Válassza az ISO-alapot a WIM al arrancar, o cree una ISO autónoma que ya incluya su Windows képpel.",
    ),
    "kmsError": m10,
    "kmsHostEmpty": MessageLookupByLibrary.simpleMessage(
      "Hiba: el host KMS está vacío.",
    ),
    "kmsServer": MessageLookupByLibrary.simpleMessage("Servidor KMS"),
    "kmsTask160Days": MessageLookupByLibrary.simpleMessage("Tarea 160 días"),
    "kmsVolumeActivation": MessageLookupByLibrary.simpleMessage(
      "Activación de volumen (KMS)",
    ),
    "landingDescription": MessageLookupByLibrary.simpleMessage(
      "Instalador de Windows de alta precisión para entornos de alto rendimiento. Experimente un despliegue rápido con orquestación directa de DISM y optimación automatizada del system.",
    ),
    "licenseActivation": MessageLookupByLibrary.simpleMessage(
      "Activación de licencias",
    ),
    "logsCopied": MessageLookupByLibrary.simpleMessage(
      "Logs copiados al porttapapeles.",
    ),
    "mandatoryUpdate": MessageLookupByLibrary.simpleMessage(
      "Esta aktualización es obligatoria y no puede omitirse.",
    ),
    "manualWimHint": MessageLookupByLibrary.simpleMessage(
      "Használja a „Buscar”-t a WIM-kézikönyvtárban.",
    ),
    "mediaInstallation": MessageLookupByLibrary.simpleMessage(
      "Medio de instalación",
    ),
    "networkBridge": MessageLookupByLibrary.simpleMessage(
      "Puente IPv4 telepítés",
    ),
    "networkInterface": MessageLookupByLibrary.simpleMessage(
      "Interfaz Wi-Fi/LAN IPv4",
    ),
    "nextGenerationDeployment": MessageLookupByLibrary.simpleMessage(
      "Despiegue de SO de próxima generación",
    ),
    "noBridgeFound": MessageLookupByLibrary.simpleMessage(
      "No se encontró ningún puente. Pruebe con la IP kézikönyv.",
    ),
    "noFormatWarning": MessageLookupByLibrary.simpleMessage(
      "Windows se desplegará en W:\\ sin formatear.",
    ),
    "noImageDetected": MessageLookupByLibrary.simpleMessage(
      "No se detectó ninguna imagen",
    ),
    "noKmsProducts": MessageLookupByLibrary.simpleMessage(
      "Nem szénatermékek KMS Selectionados.",
    ),
    "noPhysicalDisks": MessageLookupByLibrary.simpleMessage(
      "No se detectaron discos físicos",
    ),
    "noProgramsSelected": MessageLookupByLibrary.simpleMessage(
      "Nincs széna programs seleccionados.",
    ),
    "noWifiNetworks": MessageLookupByLibrary.simpleMessage(
      "No se encontraron redes Wi-Fi elérhető.",
    ),
    "noWingetPackages": MessageLookupByLibrary.simpleMessage(
      "No se detectaron paquetes conocidos con winget.",
    ),
    "officeInstallDescription": MessageLookupByLibrary.simpleMessage(
      "Távolítsa el a Microsoft Office LTSC-t vagy 365-öt, amely automatizálja az ODT-t.",
    ),
    "officeInstaller": MessageLookupByLibrary.simpleMessage("Iroda telepítése"),
    "officeRenewalStatus": m11,
    "officeVersion": MessageLookupByLibrary.simpleMessage("Versión de Office"),
    "onlyWindows": MessageLookupByLibrary.simpleMessage(
      "Ez a funkció egyedül elérhető Windowson.",
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
      "A Windows telepítési képének aránya (install.wim vagy install.swm)\ndesde una unidad USB vagy cualquier medio montado.",
    ),
    "receiveInstallation": MessageLookupByLibrary.simpleMessage(
      "O reciba la instalación preparada desde Requiem para Windows",
    ),
    "renewalActive": MessageLookupByLibrary.simpleMessage("Activa"),
    "renewalDisabled": MessageLookupByLibrary.simpleMessage("Desactivada"),
    "searchingImage": MessageLookupByLibrary.simpleMessage("Buscando kép…"),
    "secureBootCompatible": MessageLookupByLibrary.simpleMessage(
      "Biztonságos rendszerindítással kompatibilis",
    ),
    "selectDestinationDisk": MessageLookupByLibrary.simpleMessage(
      "Selectionar disco de destino",
    ),
    "selectFileHint": MessageLookupByLibrary.simpleMessage(
      "Selectione un archivo .wim o .swm",
    ),
    "selectWim": MessageLookupByLibrary.simpleMessage("Válassza ki a WIM-et"),
    "selectWimFirst": MessageLookupByLibrary.simpleMessage(
      "Válassza ki a WIM-et és az IPv4 privát interfészét.",
    ),
    "selectWindowsImage": MessageLookupByLibrary.simpleMessage(
      "Válassza ki a Windows képeit",
    ),
    "selectWindowsImageFull": MessageLookupByLibrary.simpleMessage(
      "Válassza ki a Windows telepítési képét",
    ),
    "selectedFile": m13,
    "stableVersion": MessageLookupByLibrary.simpleMessage(
      "Version estabil v1.0.0",
    ),
    "start": MessageLookupByLibrary.simpleMessage("Empezar"),
    "startInstallation": MessageLookupByLibrary.simpleMessage(
      "Kezdeti telepítés",
    ),
    "stopBridge": MessageLookupByLibrary.simpleMessage("Detener puente"),
    "systemConsole": MessageLookupByLibrary.simpleMessage("Consola del system"),
    "systemDisk": MessageLookupByLibrary.simpleMessage("Rendszer"),
    "systemLogs": MessageLookupByLibrary.simpleMessage("Rendszernaplók"),
    "unknown": MessageLookupByLibrary.simpleMessage("Desconocido"),
    "updateDescription": MessageLookupByLibrary.simpleMessage(
      "Folyamatosan használja a Requiem Tools-t, és aktualizálni kell a reciente verziót.",
    ),
    "updateRequired": MessageLookupByLibrary.simpleMessage(
      "Actualización requerida",
    ),
    "useExistingPartitions": MessageLookupByLibrary.simpleMessage(
      "Usar particiones existentes",
    ),
    "useExistingPartitionsDescription": MessageLookupByLibrary.simpleMessage(
      "Sin formatear — despliega en W: tal cual\nHasznált gestiona las particiones manualmente",
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
      "WIM integráció az ISO-ba",
    ),
    "wingetUnavailable": MessageLookupByLibrary.simpleMessage(
      "winget no está instalado o no está en PATH.",
    ),
  };
}
