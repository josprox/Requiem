// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a el locale. All the
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
  String get localeName => 'el';

  static String m0(count) => "${count} προγράμματα";

  static String m1(version) => "Διαθέσιμη έκδοση: ${version}";

  static String m2(firmware) => "Πραγματικό Arranque: ${firmware}";

  static String m3(error) => "Δεν υπάρχει σύνδεση: ${error}";

  static String m4(error) => "No se pudo buscar el puente: ${error}";

  static String m5(host) => "Comprobando conectividad con ${host}:1688...";

  static String m6(mode) => "Συμβατό με Modo: ${mode}";

  static String m7(name, edition) => "Ανίχνευση έκδοσης: ${name} (${edition})";

  static String m8(error) => "Σφάλμα: ${error}";

  static String m9(path) => "Ruta inválida: ${path}";

  static String m10(error) => "Σφάλμα KMS: ${error}";

  static String m11(product, channel, edition, status) =>
      "${product} / ${channel} / ${edition} bit. La renovación queda ${status}.";

  static String m12(count) => "Πακέτα που ανιχνεύονται: ${count}.";

  static String m13(file) => "Επιλογή: ${file}";

  static String m14(error) => "Δεν υπάρχει σύνδεση Wi-Fi: ${error}";

  static String m15(network) => "Συνδέστε ένα ${network}.";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
    "actionCancel": MessageLookupByLibrary.simpleMessage("Ακύρωση"),
    "actionChange": MessageLookupByLibrary.simpleMessage("Cambiar"),
    "actionConfirm": MessageLookupByLibrary.simpleMessage("Επιβεβαίωση"),
    "actionConnect": MessageLookupByLibrary.simpleMessage("Conectar"),
    "actionContinue": MessageLookupByLibrary.simpleMessage("Συνέχεια"),
    "actionInstall": MessageLookupByLibrary.simpleMessage("Εγκατάσταση"),
    "actionRefresh": MessageLookupByLibrary.simpleMessage("Actualizar"),
    "actionRestartSystem": MessageLookupByLibrary.simpleMessage(
      "Reiniciar sistema",
    ),
    "actionScanAgain": MessageLookupByLibrary.simpleMessage(
      "Escanear unidades de nuevo",
    ),
    "actionSearch": MessageLookupByLibrary.simpleMessage("Buscar"),
    "actionSelect": MessageLookupByLibrary.simpleMessage("Επιλεκτικός"),
    "activate": MessageLookupByLibrary.simpleMessage("Activar"),
    "activateKms": MessageLookupByLibrary.simpleMessage("Activar KMS"),
    "appTitleInstaller": MessageLookupByLibrary.simpleMessage(
      "Requiem Installer",
    ),
    "appTitleTools": MessageLookupByLibrary.simpleMessage("Εργαλεία Ρέκβιεμ"),
    "applicationStack": MessageLookupByLibrary.simpleMessage(
      "Στοίβα εφαρμογών",
    ),
    "applicationStackDescription": MessageLookupByLibrary.simpleMessage(
      "Εγκαταστήστε την ενημερωμένη έκδοση των βασικών στοιχείων για τα Windows mediante winget.",
    ),
    "applicationsCount": m0,
    "automaticOffice": MessageLookupByLibrary.simpleMessage("Αυτόματο γραφείο"),
    "automaticOfficeDescription": MessageLookupByLibrary.simpleMessage(
      "Usa la GVLK για τον τόμο για την εγκατάσταση",
    ),
    "automaticRenewal": MessageLookupByLibrary.simpleMessage(
      "Αυτόματη ανακαίνιση",
    ),
    "automaticWindows": MessageLookupByLibrary.simpleMessage(
      "Windows αυτόματα",
    ),
    "automaticWindowsDescription": MessageLookupByLibrary.simpleMessage(
      "Συμβατό με Detecta edición y GVLK",
    ),
    "availableVersion": m1,
    "bootCurrent": m2,
    "bridgeConnectError": m3,
    "bridgeDescription": MessageLookupByLibrary.simpleMessage(
      "Προετοιμάστε το WIM una sola vez y lo μετάδοση directamente a los clientes Requiem de la misma red. Los clientes no guardan el WIM antes de install.",
    ),
    "bridgeIp": MessageLookupByLibrary.simpleMessage("IP del Puente Ρέκβιεμ"),
    "bridgePorts": MessageLookupByLibrary.simpleMessage(
      "Puerto HTTP 40124 · descubrimiento UDP 40123. Si Windows Defender είναι προεγκατεστημένο, επιτρέπεται η πρόσβαση και η προστασία ιδιωτικών.",
    ),
    "bridgeSearchError": m4,
    "checkingKms": m5,
    "clearLogs": MessageLookupByLibrary.simpleMessage("Limpiar κούτσουρα"),
    "compatibleMode": m6,
    "confirmDataDestruction": MessageLookupByLibrary.simpleMessage(
      "Επιβεβαιώστε την καταστροφή των δεδομένων",
    ),
    "confirmInstallation": MessageLookupByLibrary.simpleMessage(
      "Επιβεβαίωση εγκατάστασης",
    ),
    "connectInstallerWifi": MessageLookupByLibrary.simpleMessage(
      "Συνδέστε και εγκαταστήστε ένα Wi-Fi",
    ),
    "connectWifi": MessageLookupByLibrary.simpleMessage("Συνδέστε Wi-Fi"),
    "copyLogs": MessageLookupByLibrary.simpleMessage("κούτσουρα αντιγραφής"),
    "deploymentInProgress": MessageLookupByLibrary.simpleMessage(
      "Despliegue en curso",
    ),
    "designedBy": MessageLookupByLibrary.simpleMessage("Diseñado por Joss"),
    "destinationDiskDescription": MessageLookupByLibrary.simpleMessage(
      "Το Elija la unidad fisica donde se installerá Windows.",
    ),
    "detect": MessageLookupByLibrary.simpleMessage("Ανιχνευτής"),
    "diskManagement": MessageLookupByLibrary.simpleMessage("Διοίκηση ντίσκο"),
    "doNotDisconnect": MessageLookupByLibrary.simpleMessage(
      "No desconecte la energía ni retire el medio de installación",
    ),
    "downloadAndActivate": MessageLookupByLibrary.simpleMessage(
      "Κατεβάστε + activar",
    ),
    "downloadInstaller": MessageLookupByLibrary.simpleMessage(
      "Κατεβάστε το πρόγραμμα εγκατάστασης (.exe)",
    ),
    "downloadPortable": MessageLookupByLibrary.simpleMessage(
      "Κατεβάστε φορητό (.zip)",
    ),
    "drives": MessageLookupByLibrary.simpleMessage("Ουνιδάδες"),
    "editionDetected": m7,
    "emptyFolder": MessageLookupByLibrary.simpleMessage(
      "Esta carpeta está vacía",
    ),
    "errorGeneric": m8,
    "filter": MessageLookupByLibrary.simpleMessage("Φίλτρα…"),
    "formatGpt": MessageLookupByLibrary.simpleMessage(
      "Formatear GPT (προτείνεται)",
    ),
    "formatGptDescription": MessageLookupByLibrary.simpleMessage(
      "Limpia el disco y crea diseño UEFI\nEFI (S:) + Windows (W:)",
    ),
    "formatMbr": MessageLookupByLibrary.simpleMessage(
      "Formatear MBR (BIOS heredado)",
    ),
    "formatMbrDescription": MessageLookupByLibrary.simpleMessage(
      "Limpia el disco y crea diseño heredado\nΜεμονωμένα Windows (C:)",
    ),
    "formatWarning": MessageLookupByLibrary.simpleMessage(
      "El disco seleccionado se formateará por completo. Se perderán todos los datos.",
    ),
    "generateIso": MessageLookupByLibrary.simpleMessage("Γενικό ISO"),
    "getInstallOnlyIso": MessageLookupByLibrary.simpleMessage(
      "Παραλήπτης ISO για την εγκατάσταση",
    ),
    "goUpOneLevel": MessageLookupByLibrary.simpleMessage("Subir un nivel"),
    "imageDetected": MessageLookupByLibrary.simpleMessage("Imagen detectada"),
    "imageFound": MessageLookupByLibrary.simpleMessage("Imagen encontrada"),
    "imageNotFound": MessageLookupByLibrary.simpleMessage(
      "Η εικόνα δεν είναι αντίθετη",
    ),
    "imageSearching": MessageLookupByLibrary.simpleMessage(
      "Εικόνα Buscando...",
    ),
    "installAll": MessageLookupByLibrary.simpleMessage("Εγκαταστήστε εκκρεμή"),
    "installOffice": MessageLookupByLibrary.simpleMessage(
      "Εγκαταστήστε το γραφείο",
    ),
    "installationProgress": MessageLookupByLibrary.simpleMessage(
      "Πρόγραμμα εγκατάστασης",
    ),
    "invalidPath": m9,
    "isoDescription": MessageLookupByLibrary.simpleMessage(
      "Αποκτήστε τη βάση ISO για επιλογή και ρύθμιση WIM, ή δημιουργία ενός αυτόματου ISO που περιλαμβάνει την εικόνα των Windows.",
    ),
    "kmsError": m10,
    "kmsHostEmpty": MessageLookupByLibrary.simpleMessage(
      "Σφάλμα: el host KMS está vacío.",
    ),
    "kmsServer": MessageLookupByLibrary.simpleMessage("Εξυπηρετητής KMS"),
    "kmsTask160Days": MessageLookupByLibrary.simpleMessage("Tarea 160 días"),
    "kmsVolumeActivation": MessageLookupByLibrary.simpleMessage(
      "Ενεργοποίηση τόμου (KMS)",
    ),
    "landingDescription": MessageLookupByLibrary.simpleMessage(
      "Εγκατάσταση των Windows σε alta precision για την είσοδο στο alto rendimiento. Πειραματιστείτε και βελτιστοποιήστε την αυτοματοποίηση του συστήματος.",
    ),
    "licenseActivation": MessageLookupByLibrary.simpleMessage(
      "Ενεργοποίηση αδειών",
    ),
    "logsCopied": MessageLookupByLibrary.simpleMessage(
      "Κορμούς copiados al portapapeles.",
    ),
    "mandatoryUpdate": MessageLookupByLibrary.simpleMessage(
      "Esta actualización e obligatoria y no puede omitirse.",
    ),
    "manualWimHint": MessageLookupByLibrary.simpleMessage(
      "Χρησιμοποιήστε το \"Buscar\" για τον εντοπισμό του εγχειριδίου του αρχείου WIM.",
    ),
    "mediaInstallation": MessageLookupByLibrary.simpleMessage(
      "Μέσο εγκατάστασης",
    ),
    "networkBridge": MessageLookupByLibrary.simpleMessage("Εγκατάσταση IPv4"),
    "networkInterface": MessageLookupByLibrary.simpleMessage(
      "Interfaz Wi‑Fi/LAN IPv4",
    ),
    "nextGenerationDeployment": MessageLookupByLibrary.simpleMessage(
      "Despliegue de SO de próxima generación",
    ),
    "noBridgeFound": MessageLookupByLibrary.simpleMessage(
      "No se encontró ningún puente. Εγχειρίδιο Pruebe con la IP.",
    ),
    "noFormatWarning": MessageLookupByLibrary.simpleMessage(
      "Τα Windows se desplegará en W:\\ sin formatear.",
    ),
    "noImageDetected": MessageLookupByLibrary.simpleMessage(
      "Δεν υπάρχει ανίχνευση εικόνας",
    ),
    "noKmsProducts": MessageLookupByLibrary.simpleMessage(
      "Όχι προϊόντα σανού KMS seleccionados.",
    ),
    "noPhysicalDisks": MessageLookupByLibrary.simpleMessage(
      "No se detectaron discos físicos",
    ),
    "noProgramsSelected": MessageLookupByLibrary.simpleMessage(
      "Όχι προγράμματα επιλογής σανού.",
    ),
    "noWifiNetworks": MessageLookupByLibrary.simpleMessage(
      "Δεν υπάρχει δυνατότητα αλλαγής των διαθέσιμων Wi-Fi.",
    ),
    "noWingetPackages": MessageLookupByLibrary.simpleMessage(
      "No se detectaron paquetes conocidos con winget.",
    ),
    "officeInstallDescription": MessageLookupByLibrary.simpleMessage(
      "Καταχωρίστε το Microsoft Office LTSC ή το 365 για την αυτόματη λειτουργία του ODT.",
    ),
    "officeInstaller": MessageLookupByLibrary.simpleMessage(
      "Εγκατάσταση γραφείου",
    ),
    "officeRenewalStatus": m11,
    "officeVersion": MessageLookupByLibrary.simpleMessage("Έκδοση του Office"),
    "onlyWindows": MessageLookupByLibrary.simpleMessage(
      "Αυτή η λειτουργία είναι μόνο διαθέσιμη στα Windows.",
    ),
    "packageStack": MessageLookupByLibrary.simpleMessage(
      "Stack de programas (Winget)",
    ),
    "packagesDetected": m12,
    "partitionMode": MessageLookupByLibrary.simpleMessage("Modo de Partición"),
    "prepareBridge": MessageLookupByLibrary.simpleMessage(
      "Προετοιμάστε την αρχική εργασία",
    ),
    "provideWindowsImage": MessageLookupByLibrary.simpleMessage(
      "Αναλογία εικόνας εγκατάστασης των Windows (install.wim ή install.swm)\ndesde una unidad USB ή cualquier medio montado.",
    ),
    "receiveInstallation": MessageLookupByLibrary.simpleMessage(
      "O reciba la installación preparada desde Requiem για τα Windows",
    ),
    "renewalActive": MessageLookupByLibrary.simpleMessage("Activa"),
    "renewalDisabled": MessageLookupByLibrary.simpleMessage("Desactivada"),
    "searchingImage": MessageLookupByLibrary.simpleMessage("Εικόνα Buscando…"),
    "secureBootCompatible": MessageLookupByLibrary.simpleMessage(
      "Συμβατό με ασφαλή εκκίνηση",
    ),
    "selectDestinationDisk": MessageLookupByLibrary.simpleMessage(
      "Επιλογή disco de destino",
    ),
    "selectFileHint": MessageLookupByLibrary.simpleMessage(
      "Selection un archivo .wim o .swm",
    ),
    "selectWim": MessageLookupByLibrary.simpleMessage("Επιλεκτικό WIM"),
    "selectWimFirst": MessageLookupByLibrary.simpleMessage(
      "Επιλέξτε από το WIM και μια ιδιωτική διασύνδεση IPv4.",
    ),
    "selectWindowsImage": MessageLookupByLibrary.simpleMessage(
      "Επιλογή εικόνας των Windows",
    ),
    "selectWindowsImageFull": MessageLookupByLibrary.simpleMessage(
      "Επιλογή εικόνας για την εγκατάσταση των Windows",
    ),
    "selectedFile": m13,
    "stableVersion": MessageLookupByLibrary.simpleMessage(
      "Έκδοση estable v1.0.0",
    ),
    "start": MessageLookupByLibrary.simpleMessage("Εμπεζάρ"),
    "startInstallation": MessageLookupByLibrary.simpleMessage(
      "Αρχική εγκατάσταση",
    ),
    "stopBridge": MessageLookupByLibrary.simpleMessage("Detener puente"),
    "systemConsole": MessageLookupByLibrary.simpleMessage(
      "Consola del sistema",
    ),
    "systemDisk": MessageLookupByLibrary.simpleMessage("Σύστημα"),
    "systemLogs": MessageLookupByLibrary.simpleMessage("Logs del sistema"),
    "unknown": MessageLookupByLibrary.simpleMessage("Desconocido"),
    "updateDescription": MessageLookupByLibrary.simpleMessage(
      "Για να συνεχίσετε να χρησιμοποιείτε τα Εργαλεία Ρέκβιεμ είναι απαραίτητο να πραγματοποιήσετε μια έκδοση με την πιο πρόσφατη έκδοση.",
    ),
    "updateRequired": MessageLookupByLibrary.simpleMessage(
      "Απαιτείται πραγματοποίηση",
    ),
    "useExistingPartitions": MessageLookupByLibrary.simpleMessage(
      "Χρησιμοποιήστε τις υπάρχουσες μερίδες",
    ),
    "useExistingPartitionsDescription": MessageLookupByLibrary.simpleMessage(
      "Sin formatear — despliega en W: tal cual\nΧρησιμοποιήθηκε το εγχειρίδιο gestiona las particiones",
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
      "WIM integrado στο ISO",
    ),
    "wingetUnavailable": MessageLookupByLibrary.simpleMessage(
      "winget no está installado o no está en PATH.",
    ),
  };
}
