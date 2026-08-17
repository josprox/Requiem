// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a de locale. All the
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
  String get localeName => 'de';

  static String m0(count) => "${count} Programme";

  static String m1(version) => "Verfügbare Version: ${version}";

  static String m2(firmware) => "Aktueller Auftrag: ${firmware}";

  static String m3(error) => "Keine Verbindung möglich: ${error}";

  static String m4(error) => "No se pudo buscar el puente: ${error}";

  static String m5(host) => "Verbindungsprüfung mit ${host}:1688...";

  static String m6(mode) => "Modo-kompatibel: ${mode}";

  static String m7(name, edition) => "Erkannte Ausgabe: ${name} (${edition})";

  static String m8(error) => "Es ist ein Fehler aufgetreten: ${error}";

  static String m9(path) => "Ungültige Route: ${path}";

  static String m10(error) => "Fehler KMS: ${error}";

  static String m11(product, channel, edition, status) =>
      "${product} / ${channel} / ${edition} Bits. Die Renovierung dauerte ${status}.";

  static String m12(count) => "Erkannte Pakete: ${count}.";

  static String m13(file) => "Ausgewählt: ${file}";

  static String m14(error) =>
      "Sie können keine Verbindung zu WLAN herstellen: ${error}";

  static String m15(network) => "Verbunden mit ${network}.";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
    "actionCancel": MessageLookupByLibrary.simpleMessage("Abbrechen"),
    "actionChange": MessageLookupByLibrary.simpleMessage("Kambiar"),
    "actionConfirm": MessageLookupByLibrary.simpleMessage("Bestätigen"),
    "actionConnect": MessageLookupByLibrary.simpleMessage("Konektar"),
    "actionContinue": MessageLookupByLibrary.simpleMessage("Fortsetzung"),
    "actionInstall": MessageLookupByLibrary.simpleMessage("Installiert"),
    "actionRefresh": MessageLookupByLibrary.simpleMessage("Aktualisieren"),
    "actionRestartSystem": MessageLookupByLibrary.simpleMessage(
      "Reiniciar-System",
    ),
    "actionScanAgain": MessageLookupByLibrary.simpleMessage(
      "Suchen Sie nach neuen Unidades",
    ),
    "actionSearch": MessageLookupByLibrary.simpleMessage("Buscar"),
    "actionSelect": MessageLookupByLibrary.simpleMessage("Auswahl"),
    "activate": MessageLookupByLibrary.simpleMessage("Aktivar"),
    "activateKms": MessageLookupByLibrary.simpleMessage("Activar KMS"),
    "appTitleInstaller": MessageLookupByLibrary.simpleMessage(
      "Requiem-Installer",
    ),
    "appTitleTools": MessageLookupByLibrary.simpleMessage("Requiem-Werkzeuge"),
    "applicationStack": MessageLookupByLibrary.simpleMessage(
      "Stapel von Anwendungen",
    ),
    "applicationStackDescription": MessageLookupByLibrary.simpleMessage(
      "Installieren und aktualisieren Sie die Betriebssysteme für Windows mit mittlerem Winget.",
    ),
    "applicationsCount": m0,
    "automaticOffice": MessageLookupByLibrary.simpleMessage(
      "Automatisches Büro",
    ),
    "automaticOfficeDescription": MessageLookupByLibrary.simpleMessage(
      "Verwenden Sie das installierte GVLK-Volumen",
    ),
    "automaticRenewal": MessageLookupByLibrary.simpleMessage(
      "Automatische Renovierung",
    ),
    "automaticWindows": MessageLookupByLibrary.simpleMessage(
      "Windows automatisch",
    ),
    "automaticWindowsDescription": MessageLookupByLibrary.simpleMessage(
      "Erkennen Sie die Edition und GVLK-Kompatibilität",
    ),
    "availableVersion": m1,
    "bootCurrent": m2,
    "bridgeConnectError": m3,
    "bridgeDescription": MessageLookupByLibrary.simpleMessage(
      "Bereiten Sie WIM ein einziges Mal vor und übermitteln Sie es direkt an die Kunden. Kunden dürfen WIM vor der Installation nicht bewachen.",
    ),
    "bridgeIp": MessageLookupByLibrary.simpleMessage("IP del puente Requiem"),
    "bridgePorts": MessageLookupByLibrary.simpleMessage(
      "HTTP 40124 und UDP 40123. Wenn Sie Windows Defender verwenden, erhalten Sie Zugriff auf persönliche Daten.",
    ),
    "bridgeSearchError": m4,
    "checkingKms": m5,
    "clearLogs": MessageLookupByLibrary.simpleMessage("Limpiar-Protokolle"),
    "compatibleMode": m6,
    "confirmDataDestruction": MessageLookupByLibrary.simpleMessage(
      "Bestätigen Sie die Datenvernichtung",
    ),
    "confirmInstallation": MessageLookupByLibrary.simpleMessage(
      "Bestätigen Sie die Installation",
    ),
    "connectInstallerWifi": MessageLookupByLibrary.simpleMessage(
      "Verbinden Sie den Installateur mit Wi-Fi",
    ),
    "connectWifi": MessageLookupByLibrary.simpleMessage("Conectar Wi-Fi"),
    "copyLogs": MessageLookupByLibrary.simpleMessage("Protokolle kopieren"),
    "deploymentInProgress": MessageLookupByLibrary.simpleMessage(
      "Depliegue en curso",
    ),
    "designedBy": MessageLookupByLibrary.simpleMessage("Entworfen von Joss"),
    "destinationDiskDescription": MessageLookupByLibrary.simpleMessage(
      "Elija la unidad física donde se instalará Windows.",
    ),
    "detect": MessageLookupByLibrary.simpleMessage("Detektor"),
    "diskManagement": MessageLookupByLibrary.simpleMessage(
      "Diskothekenverwaltung",
    ),
    "doNotDisconnect": MessageLookupByLibrary.simpleMessage(
      "Trennen Sie das Gerät während der Installation nicht vom Stromnetz und ziehen Sie es nicht aus",
    ),
    "downloadAndActivate": MessageLookupByLibrary.simpleMessage(
      "Herunterladen + aktivieren",
    ),
    "downloadInstaller": MessageLookupByLibrary.simpleMessage(
      "Installationsprogramm herunterladen (.exe)",
    ),
    "downloadPortable": MessageLookupByLibrary.simpleMessage(
      "Portable herunterladen (.zip)",
    ),
    "drives": MessageLookupByLibrary.simpleMessage("Unidades"),
    "editionDetected": m7,
    "emptyFolder": MessageLookupByLibrary.simpleMessage(
      "Dieser Teppich ist frei",
    ),
    "errorGeneric": m8,
    "filter": MessageLookupByLibrary.simpleMessage("Filtrar…"),
    "formatGpt": MessageLookupByLibrary.simpleMessage(
      "GPT formatieren (empfohlen)",
    ),
    "formatGptDescription": MessageLookupByLibrary.simpleMessage(
      "Füge die Disco hinzu und erstelle ein UEFI-Design\nEFI (S:) + Windows (W:)",
    ),
    "formatMbr": MessageLookupByLibrary.simpleMessage(
      "MBR formatieren (BIOS übernommen)",
    ),
    "formatMbrDescription": MessageLookupByLibrary.simpleMessage(
      "Limpia el disco und create diseño hieredado\nSolo Windows (C:)",
    ),
    "formatWarning": MessageLookupByLibrary.simpleMessage(
      "Die ausgewählte Disk wird komplett formatiert. Se perderán todos los data.",
    ),
    "generateIso": MessageLookupByLibrary.simpleMessage("Generisches ISO"),
    "getInstallOnlyIso": MessageLookupByLibrary.simpleMessage(
      "Erhalten Sie ISO für die sofortige Installation",
    ),
    "goUpOneLevel": MessageLookupByLibrary.simpleMessage("Unter eine Ebene"),
    "imageDetected": MessageLookupByLibrary.simpleMessage("Bild erkannt"),
    "imageFound": MessageLookupByLibrary.simpleMessage("Bild gefunden"),
    "imageNotFound": MessageLookupByLibrary.simpleMessage(
      "Bild nicht gefunden",
    ),
    "imageSearching": MessageLookupByLibrary.simpleMessage("Buscando-Bild..."),
    "installAll": MessageLookupByLibrary.simpleMessage("ToDo installieren"),
    "installOffice": MessageLookupByLibrary.simpleMessage("Installiertes Büro"),
    "installationProgress": MessageLookupByLibrary.simpleMessage(
      "Fortschritt der Installation",
    ),
    "invalidPath": m9,
    "isoDescription": MessageLookupByLibrary.simpleMessage(
      "Holen Sie sich die ISO-Basis, um ein WIM-Arrangement auszuwählen, oder erstellen Sie eine ISO-Autonomie, die Sie in Ihr Windows-Image aufnehmen.",
    ),
    "kmsError": m10,
    "kmsHostEmpty": MessageLookupByLibrary.simpleMessage(
      "Fehler: Der Host KMS ist leer.",
    ),
    "kmsServer": MessageLookupByLibrary.simpleMessage("Server-KMS"),
    "kmsTask160Days": MessageLookupByLibrary.simpleMessage("Tarea 160 Tage"),
    "kmsVolumeActivation": MessageLookupByLibrary.simpleMessage(
      "Volumenaktivierung (KMS)",
    ),
    "landingDescription": MessageLookupByLibrary.simpleMessage(
      "Hochpräziser Windows-Installer für Hochgeschwindigkeits-Entornos. Führen Sie ein schnelles Experiment mit direkter DISM-Ordnung und automatischer Systemoptimierung durch.",
    ),
    "licenseActivation": MessageLookupByLibrary.simpleMessage(
      "Aktivierung der Lizenzen",
    ),
    "logsCopied": MessageLookupByLibrary.simpleMessage(
      "Protokolle werden in tragbare Dateien kopiert.",
    ),
    "mandatoryUpdate": MessageLookupByLibrary.simpleMessage(
      "Diese Aktualisierung ist obligatorisch und kann nicht weggelassen werden.",
    ),
    "manualWimHint": MessageLookupByLibrary.simpleMessage(
      "Verwenden Sie „Buscar“, um Ihr WIM-Archiv manuell zu lokalisieren.",
    ),
    "mediaInstallation": MessageLookupByLibrary.simpleMessage(
      "Installationsdauer",
    ),
    "networkBridge": MessageLookupByLibrary.simpleMessage(
      "Puente IPv4-Installation",
    ),
    "networkInterface": MessageLookupByLibrary.simpleMessage(
      "Schnittstelle Wi-Fi/LAN IPv4",
    ),
    "nextGenerationDeployment": MessageLookupByLibrary.simpleMessage(
      "Nach SO der nächsten Generation",
    ),
    "noBridgeFound": MessageLookupByLibrary.simpleMessage(
      "Es ist nicht möglich, dass es passiert. Prüfen Sie das IP-Handbuch.",
    ),
    "noFormatWarning": MessageLookupByLibrary.simpleMessage(
      "Windows deinstalliert W:\\ ohne Formatierung.",
    ),
    "noImageDetected": MessageLookupByLibrary.simpleMessage(
      "Es wurde kein Bild erkannt",
    ),
    "noKmsProducts": MessageLookupByLibrary.simpleMessage(
      "Keine Heuprodukte von KMS ausgewählt.",
    ),
    "noPhysicalDisks": MessageLookupByLibrary.simpleMessage(
      "Wir werden keine Finanzdiskussionen entdecken",
    ),
    "noProgramsSelected": MessageLookupByLibrary.simpleMessage(
      "Keine Heuprogramme.",
    ),
    "noWifiNetworks": MessageLookupByLibrary.simpleMessage(
      "Kein Problem mit der Verfügbarkeit von Wi-Fi.",
    ),
    "noWingetPackages": MessageLookupByLibrary.simpleMessage(
      "Es werden keine Pakete entdeckt, die mit Winget verbunden sind.",
    ),
    "officeInstallDescription": MessageLookupByLibrary.simpleMessage(
      "Nutzen Sie Microsoft Office LTSC oder 365 mit ODT-Automatisierung.",
    ),
    "officeInstaller": MessageLookupByLibrary.simpleMessage(
      "Installateur des Büros",
    ),
    "officeRenewalStatus": m11,
    "officeVersion": MessageLookupByLibrary.simpleMessage("Office-Version"),
    "onlyWindows": MessageLookupByLibrary.simpleMessage(
      "Diese Funktion ist nur unter Windows verfügbar.",
    ),
    "packageStack": MessageLookupByLibrary.simpleMessage(
      "Programmstapel (Winget)",
    ),
    "packagesDetected": m12,
    "partitionMode": MessageLookupByLibrary.simpleMessage("Modo de partición"),
    "prepareBridge": MessageLookupByLibrary.simpleMessage(
      "Bereiten Sie sich vor und beginnen Sie",
    ),
    "provideWindowsImage": MessageLookupByLibrary.simpleMessage(
      "Anteil des Windows-Installationsbilds (install.wim oder install.swm)\nVon einer USB-Einheit aus oder während der Montage.",
    ),
    "receiveInstallation": MessageLookupByLibrary.simpleMessage(
      "Die Installation des Requiem für Windows wurde vorbereitet",
    ),
    "renewalActive": MessageLookupByLibrary.simpleMessage("Aktiva"),
    "renewalDisabled": MessageLookupByLibrary.simpleMessage("Desaktiviert"),
    "searchingImage": MessageLookupByLibrary.simpleMessage("Buscando-Bild…"),
    "secureBootCompatible": MessageLookupByLibrary.simpleMessage(
      "Kompatibel mit Secure Boot",
    ),
    "selectDestinationDisk": MessageLookupByLibrary.simpleMessage(
      "Ziel-Disco auswählen",
    ),
    "selectFileHint": MessageLookupByLibrary.simpleMessage(
      "Wählen Sie ein .wim- oder .swm-Archiv aus",
    ),
    "selectWim": MessageLookupByLibrary.simpleMessage("Wählen Sie WIM"),
    "selectWimFirst": MessageLookupByLibrary.simpleMessage(
      "Wählen Sie ein WIM und eine private IPv4-Schnittstelle.",
    ),
    "selectWindowsImage": MessageLookupByLibrary.simpleMessage(
      "Wählen Sie ein Windows-Bild aus",
    ),
    "selectWindowsImageFull": MessageLookupByLibrary.simpleMessage(
      "Wählen Sie ein Windows-Installationsbild aus",
    ),
    "selectedFile": m13,
    "stableVersion": MessageLookupByLibrary.simpleMessage(
      "Stabile Version v1.0.0",
    ),
    "start": MessageLookupByLibrary.simpleMessage("Empezar"),
    "startInstallation": MessageLookupByLibrary.simpleMessage(
      "Erste Installation",
    ),
    "stopBridge": MessageLookupByLibrary.simpleMessage("Detener puente"),
    "systemConsole": MessageLookupByLibrary.simpleMessage(
      "Consola del sistema",
    ),
    "systemDisk": MessageLookupByLibrary.simpleMessage("System"),
    "systemLogs": MessageLookupByLibrary.simpleMessage(
      "Protokolle des Systems",
    ),
    "unknown": MessageLookupByLibrary.simpleMessage("Desconocido"),
    "updateDescription": MessageLookupByLibrary.simpleMessage(
      "Um Requiem Tools weiterhin verwenden zu können, muss die neueste Version aktualisiert werden.",
    ),
    "updateRequired": MessageLookupByLibrary.simpleMessage(
      "Aktualisierung erforderlich",
    ),
    "useExistingPartitions": MessageLookupByLibrary.simpleMessage(
      "Wir verwenden vorhandene Particiones",
    ),
    "useExistingPartitionsDescription": MessageLookupByLibrary.simpleMessage(
      "Sin formatear – despliega en W: tal cual\nBenutzen Sie die Particiones manuell",
    ),
    "waitingAction": MessageLookupByLibrary.simpleMessage(
      "Esperando una acción...",
    ),
    "waitingForWim": MessageLookupByLibrary.simpleMessage(
      "Esperando la Erkennung von install.wim...",
    ),
    "wifiConnectError": m14,
    "wifiConnected": m15,
    "wifiPassword": MessageLookupByLibrary.simpleMessage("Kontraseña Wi-Fi"),
    "wimIntegrated": MessageLookupByLibrary.simpleMessage(
      "WIM in ISO integriert",
    ),
    "wingetUnavailable": MessageLookupByLibrary.simpleMessage(
      "Winget ist nicht installiert oder befindet sich nicht auf PATH.",
    ),
  };
}
