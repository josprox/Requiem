// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a it locale. All the
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
  String get localeName => 'it';

  static String m0(count) => "${count} programmi";

  static String m1(version) => "Versione disponibile: ${version}";

  static String m2(firmware) => "Disposizione effettiva: ${firmware}";

  static String m3(error) => "Impossibile connettersi: ${error}";

  static String m4(error) => "Non è possibile cercare il ponte: ${error}";

  static String m5(host) => "Comprobando la connettività con ${host}:1688...";

  static String m6(mode) => "Modalità compatibile: ${mode}";

  static String m7(name, edition) => "Edizione rilevata: ${name} (${edition})";

  static String m8(error) => "Si è verificato un errore: ${error}";

  static String m9(path) => "Percorso non valido: ${path}";

  static String m10(error) => "Errore KMS: ${error}";

  static String m11(product, channel, edition, status) =>
      "${product} / ${channel} / ${edition} bit. La ristrutturazione è ${status}.";

  static String m12(count) => "Pacchetti rilevati: ${count}.";

  static String m13(file) => "Selezionato: ${file}";

  static String m14(error) => "Impossibile connettersi al Wi-Fi: ${error}";

  static String m15(network) => "Collegato a ${network}.";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
    "actionCancel": MessageLookupByLibrary.simpleMessage("Cancellare"),
    "actionChange": MessageLookupByLibrary.simpleMessage("Cambiare"),
    "actionConfirm": MessageLookupByLibrary.simpleMessage("Conferma"),
    "actionConnect": MessageLookupByLibrary.simpleMessage("Conectar"),
    "actionContinue": MessageLookupByLibrary.simpleMessage("Continua"),
    "actionInstall": MessageLookupByLibrary.simpleMessage("Installare"),
    "actionRefresh": MessageLookupByLibrary.simpleMessage("Aggiornare"),
    "actionRestartSystem": MessageLookupByLibrary.simpleMessage(
      "Riavviare il sistema",
    ),
    "actionScanAgain": MessageLookupByLibrary.simpleMessage(
      "Esci dalle nuove unità",
    ),
    "actionSearch": MessageLookupByLibrary.simpleMessage("Buscare"),
    "actionSelect": MessageLookupByLibrary.simpleMessage("Selezionare"),
    "activate": MessageLookupByLibrary.simpleMessage("Attivare"),
    "activateKms": MessageLookupByLibrary.simpleMessage("Attiva KMS"),
    "appTitleInstaller": MessageLookupByLibrary.simpleMessage(
      "Programma di installazione di Requiem",
    ),
    "appTitleTools": MessageLookupByLibrary.simpleMessage(
      "Strumenti del Requiem",
    ),
    "applicationStack": MessageLookupByLibrary.simpleMessage(
      "Pila di applicazioni",
    ),
    "applicationStackDescription": MessageLookupByLibrary.simpleMessage(
      "Installa e aggiorna gli strumenti di sviluppo essenziali per Windows tramite il winget.",
    ),
    "applicationsCount": m0,
    "automaticOffice": MessageLookupByLibrary.simpleMessage(
      "Ufficio automatico",
    ),
    "automaticOfficeDescription": MessageLookupByLibrary.simpleMessage(
      "Usa il GVLK del volume già installato",
    ),
    "automaticRenewal": MessageLookupByLibrary.simpleMessage(
      "Ristrutturazione automatica",
    ),
    "automaticWindows": MessageLookupByLibrary.simpleMessage(
      "Windows automatico",
    ),
    "automaticWindowsDescription": MessageLookupByLibrary.simpleMessage(
      "Rileva edizione e compatibile GVLK",
    ),
    "availableVersion": m1,
    "bootCurrent": m2,
    "bridgeConnectError": m3,
    "bridgeDescription": MessageLookupByLibrary.simpleMessage(
      "Prepara il WIM una sola volta e trasmettilo direttamente ai clienti Requiem de la misma red. I clienti non salvano il WIM prima dell\'installazione.",
    ),
    "bridgeIp": MessageLookupByLibrary.simpleMessage("IP del ponte Requiem"),
    "bridgePorts": MessageLookupByLibrary.simpleMessage(
      "Puerto HTTP 40124 · descubrimiento UDP 40123. Se Windows Defender richiede, consente l\'accesso in reti private.",
    ),
    "bridgeSearchError": m4,
    "checkingKms": m5,
    "clearLogs": MessageLookupByLibrary.simpleMessage("Log chiari"),
    "compatibleMode": m6,
    "confirmDataDestruction": MessageLookupByLibrary.simpleMessage(
      "Conferma la distruzione dei dati",
    ),
    "confirmInstallation": MessageLookupByLibrary.simpleMessage(
      "Conferma installazione",
    ),
    "connectInstallerWifi": MessageLookupByLibrary.simpleMessage(
      "Collegare l\'installatore al Wi-Fi",
    ),
    "connectWifi": MessageLookupByLibrary.simpleMessage("Connettersi al Wi-Fi"),
    "copyLogs": MessageLookupByLibrary.simpleMessage("Copiare i log"),
    "deploymentInProgress": MessageLookupByLibrary.simpleMessage(
      "Despliegue en curso",
    ),
    "designedBy": MessageLookupByLibrary.simpleMessage("Progettato da Joss"),
    "destinationDiskDescription": MessageLookupByLibrary.simpleMessage(
      "Elimina l\'unità fisica dove verrà installato Windows.",
    ),
    "detect": MessageLookupByLibrary.simpleMessage("Rilevatore"),
    "diskManagement": MessageLookupByLibrary.simpleMessage(
      "Amministrazione di discoteche",
    ),
    "doNotDisconnect": MessageLookupByLibrary.simpleMessage(
      "Non scollegare l\'energia e non rimuovere il supporto di installazione",
    ),
    "downloadAndActivate": MessageLookupByLibrary.simpleMessage(
      "Scarica + attiva",
    ),
    "downloadInstaller": MessageLookupByLibrary.simpleMessage(
      "Scaricare il programma di installazione (.exe)",
    ),
    "downloadPortable": MessageLookupByLibrary.simpleMessage(
      "Scarica portatile (.zip)",
    ),
    "drives": MessageLookupByLibrary.simpleMessage("Unità"),
    "editionDetected": m7,
    "emptyFolder": MessageLookupByLibrary.simpleMessage(
      "Questa cartella è vuota",
    ),
    "errorGeneric": m8,
    "filter": MessageLookupByLibrary.simpleMessage("Filtra…"),
    "formatGpt": MessageLookupByLibrary.simpleMessage(
      "Formatta GPT (consigliato)",
    ),
    "formatGptDescription": MessageLookupByLibrary.simpleMessage(
      "Pulisci il disco e crea il design UEFI\nEFI (S:) + Windows (W:)",
    ),
    "formatMbr": MessageLookupByLibrary.simpleMessage(
      "Formattare MBR (BIOS ereditato)",
    ),
    "formatMbrDescription": MessageLookupByLibrary.simpleMessage(
      "Pulisci il disco e crea il tuo design ereditato\nSolo Windows (C:)",
    ),
    "formatWarning": MessageLookupByLibrary.simpleMessage(
      "Il disco selezionato verrà formattato completamente. Si perderanno tutti i dati.",
    ),
    "generateIso": MessageLookupByLibrary.simpleMessage("ISO generato"),
    "getInstallOnlyIso": MessageLookupByLibrary.simpleMessage(
      "Ottenere ISO solo per l\'installazione",
    ),
    "goUpOneLevel": MessageLookupByLibrary.simpleMessage("Sono a un livello"),
    "imageDetected": MessageLookupByLibrary.simpleMessage("Immagine rilevata"),
    "imageFound": MessageLookupByLibrary.simpleMessage("Immagine trovata"),
    "imageNotFound": MessageLookupByLibrary.simpleMessage(
      "Immagine non trovata",
    ),
    "imageSearching": MessageLookupByLibrary.simpleMessage(
      "Cercando immagine...",
    ),
    "installAll": MessageLookupByLibrary.simpleMessage("Installa tutto"),
    "installOffice": MessageLookupByLibrary.simpleMessage(
      "Ufficio installatore",
    ),
    "installationProgress": MessageLookupByLibrary.simpleMessage(
      "Progresso dell\'installazione",
    ),
    "invalidPath": m9,
    "isoDescription": MessageLookupByLibrary.simpleMessage(
      "Ottieni la base ISO per selezionare un WIM al momento dell\'installazione o crea un ISO automatico che includa la tua immagine di Windows.",
    ),
    "kmsError": m10,
    "kmsHostEmpty": MessageLookupByLibrary.simpleMessage(
      "Errore: l\'host KMS è vuoto.",
    ),
    "kmsServer": MessageLookupByLibrary.simpleMessage("Servidor KMS"),
    "kmsTask160Days": MessageLookupByLibrary.simpleMessage("Tarea 160 giorni"),
    "kmsVolumeActivation": MessageLookupByLibrary.simpleMessage(
      "Attivazione del volume (KMS)",
    ),
    "landingDescription": MessageLookupByLibrary.simpleMessage(
      "Installatore di Windows ad alta precisione per ambienti ad alta resa. Sperimenta un download rapido con la richiesta diretta di DISM e l\'ottimizzazione automatizzata del sistema.",
    ),
    "licenseActivation": MessageLookupByLibrary.simpleMessage(
      "Attivazione delle licenze",
    ),
    "logsCopied": MessageLookupByLibrary.simpleMessage(
      "Log copiati nel portapapeles.",
    ),
    "mandatoryUpdate": MessageLookupByLibrary.simpleMessage(
      "Questo aggiornamento è obbligatorio e non può essere omesso.",
    ),
    "manualWimHint": MessageLookupByLibrary.simpleMessage(
      "Utilizzare \"Cerca\" per localizzare manualmente il file WIM.",
    ),
    "mediaInstallation": MessageLookupByLibrary.simpleMessage(
      "Medio di installazione",
    ),
    "networkBridge": MessageLookupByLibrary.simpleMessage(
      "Ponte di installazione IPv4",
    ),
    "networkInterface": MessageLookupByLibrary.simpleMessage(
      "Interfaccia Wi‑Fi/LAN IPv4",
    ),
    "nextGenerationDeployment": MessageLookupByLibrary.simpleMessage(
      "Descrizione dell\'SO di prossima generazione",
    ),
    "noBridgeFound": MessageLookupByLibrary.simpleMessage(
      "Non si è incontrato con nessun ponte. Prova con il manuale IP.",
    ),
    "noFormatWarning": MessageLookupByLibrary.simpleMessage(
      "Windows verrà visualizzato in W:\\ sin formatear.",
    ),
    "noImageDetected": MessageLookupByLibrary.simpleMessage(
      "Non è stata rilevata nessuna immagine",
    ),
    "noKmsProducts": MessageLookupByLibrary.simpleMessage(
      "Nessun prodotto fieno selezionato da KMS.",
    ),
    "noPhysicalDisks": MessageLookupByLibrary.simpleMessage(
      "Non vengono rilevati dischi fisici",
    ),
    "noProgramsSelected": MessageLookupByLibrary.simpleMessage(
      "Nessun programma selezionato.",
    ),
    "noWifiNetworks": MessageLookupByLibrary.simpleMessage(
      "Non si trovano reti Wi-Fi disponibili.",
    ),
    "noWingetPackages": MessageLookupByLibrary.simpleMessage(
      "Non si rilevano pacchetti conosciuti con ali.",
    ),
    "officeInstallDescription": MessageLookupByLibrary.simpleMessage(
      "Distribuisci Microsoft Office LTSC o 365 in modo automatizzato utilizzando ODT.",
    ),
    "officeInstaller": MessageLookupByLibrary.simpleMessage(
      "Installatore di Office",
    ),
    "officeRenewalStatus": m11,
    "officeVersion": MessageLookupByLibrary.simpleMessage("Versione di Office"),
    "onlyWindows": MessageLookupByLibrary.simpleMessage(
      "Questa funzione è disponibile solo in Windows.",
    ),
    "packageStack": MessageLookupByLibrary.simpleMessage(
      "Stack di programmi (Winget)",
    ),
    "packagesDetected": m12,
    "partitionMode": MessageLookupByLibrary.simpleMessage(
      "Modalità di partizione",
    ),
    "prepareBridge": MessageLookupByLibrary.simpleMessage(
      "Preparare e iniziare il ponte",
    ),
    "provideWindowsImage": MessageLookupByLibrary.simpleMessage(
      "Proporzione dell\'immagine di installazione di Windows (install.wim o install.swm)\nda un\'unità USB o da qualsiasi supporto medio montato.",
    ),
    "receiveInstallation": MessageLookupByLibrary.simpleMessage(
      "O ricevi l\'installazione preparata dal Requiem per Windows",
    ),
    "renewalActive": MessageLookupByLibrary.simpleMessage("Attiva"),
    "renewalDisabled": MessageLookupByLibrary.simpleMessage("Disattivato"),
    "searchingImage": MessageLookupByLibrary.simpleMessage(
      "Cercando immagine…",
    ),
    "secureBootCompatible": MessageLookupByLibrary.simpleMessage(
      "Compatibile con Secure Boot",
    ),
    "selectDestinationDisk": MessageLookupByLibrary.simpleMessage(
      "Selezionare il disco di destinazione",
    ),
    "selectFileHint": MessageLookupByLibrary.simpleMessage(
      "Selezionare un file .wim o .swm",
    ),
    "selectWim": MessageLookupByLibrary.simpleMessage("Selezionare WIM"),
    "selectWimFirst": MessageLookupByLibrary.simpleMessage(
      "Selezionare un WIM e un\'interfaccia IPv4 privata.",
    ),
    "selectWindowsImage": MessageLookupByLibrary.simpleMessage(
      "Selezionare l\'immagine di Windows",
    ),
    "selectWindowsImageFull": MessageLookupByLibrary.simpleMessage(
      "Selezionare l\'immagine di installazione di Windows",
    ),
    "selectedFile": m13,
    "stableVersion": MessageLookupByLibrary.simpleMessage(
      "Versione stabile v1.0.0",
    ),
    "start": MessageLookupByLibrary.simpleMessage("Empezar"),
    "startInstallation": MessageLookupByLibrary.simpleMessage(
      "Avviare l\'installazione",
    ),
    "stopBridge": MessageLookupByLibrary.simpleMessage("Detener ponte"),
    "systemConsole": MessageLookupByLibrary.simpleMessage(
      "Consola del sistema",
    ),
    "systemDisk": MessageLookupByLibrary.simpleMessage("Sistema"),
    "systemLogs": MessageLookupByLibrary.simpleMessage("Log del sistema"),
    "unknown": MessageLookupByLibrary.simpleMessage("Desconocido"),
    "updateDescription": MessageLookupByLibrary.simpleMessage(
      "Per continuare a utilizzare Requiem Tools è necessario aggiornarlo alla versione più recente.",
    ),
    "updateRequired": MessageLookupByLibrary.simpleMessage(
      "Aggiornamento richiesto",
    ),
    "useExistingPartitions": MessageLookupByLibrary.simpleMessage(
      "Usare partizioni esistenti",
    ),
    "useExistingPartitionsDescription": MessageLookupByLibrary.simpleMessage(
      "Sin formatear — despliega en W: tal cual\nUsted gestiona le partizioni manualmente",
    ),
    "waitingAction": MessageLookupByLibrary.simpleMessage(
      "Aspettando un\'azione...",
    ),
    "waitingForWim": MessageLookupByLibrary.simpleMessage(
      "Aspettando il rilevamento di install.wim...",
    ),
    "wifiConnectError": m14,
    "wifiConnected": m15,
    "wifiPassword": MessageLookupByLibrary.simpleMessage("Contraseña Wi-Fi"),
    "wimIntegrated": MessageLookupByLibrary.simpleMessage(
      "WIM integrato nell\'ISO",
    ),
    "wingetUnavailable": MessageLookupByLibrary.simpleMessage(
      "l\'ala non è installata o non è in PATH.",
    ),
  };
}
