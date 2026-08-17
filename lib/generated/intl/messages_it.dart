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

  static String m7(firmware) => "Disposizione effettiva: ${firmware}";

  static String m8(diskNumber, mediaType, busType) =>
      "DISCO ${diskNumber} · ${mediaType} · ${busType}";

  static String m9(recommended) => "Modalità compatibile: ${recommended}";

  static String m10(sizeGB) => "${sizeGB}GB";

  static String m11(imageName) =>
      "Ponte: \${controller.bridgeAnnuncio?.imageName ??";

  static String m12(name, edition) => "Edizione rilevata: ${name} (${edition})";

  static String m13(error) => "Si è verificato un errore: ${error}";

  static String m14(val) => "Percorso non valido: ${val}";

  static String m15(error) =>
      "Impossibile leggere il contenuto della directory.\\n${error}";

  static String m16(path) => "Selezionato: ${path}";

  static String m17(path) => "Percorso non valido: ${path}";

  static String m18(clients) => "${clients} connessioni";

  static String m19(error) => "ERRORE: ${error}";

  static String m20(error) =>
      "Non è possibile enumerare le interfacce IPv4: ${error}";

  static String m21(path) => "WIM selezionato: ${path}";

  static String m22(error) => "Errore KMS: ${error}";

  static String m23(product, channel, edition, status) =>
      "${product} / ${channel} / ${edition} bit. La ristrutturazione è ${status}.";

  static String m24(count) => "Pacchetti rilevati: ${count}.";

  static String m25(file) => "Selezionato: ${file}";

  static String m26(count) => "${count} programmi";

  static String m27(host) => "Comprobando la connettività con ${host}:1688...";

  static String m28(error) => "ERRORE KMS: ${error}";

  static String m29(time, message) => "[${time}] ${message}";

  static String m30(count) => "Pacchetti rilevati: ${count}.";

  static String m31(error) => "Impossibile connettersi al Wi-Fi: ${error}";

  static String m32(network) => "Collegato a ${network}.";

  static String m33(error) => "Impossibile connettersi al Wi-Fi: ${error}";

  static String m34(ssid, result) => "Wi-Fi connesso a ${ssid}. ${result}";

  static String m35(ssid) => "Collegato a ${ssid}.";

  static String m36(signal, security) => "${signal}% · ${security}";

  static String m37(error) => "Impossibile connettersi: ${error}";

  static String m38(error) => "Non è possibile cercare il ponte: ${error}";

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
    "app_title_installer": MessageLookupByLibrary.simpleMessage(
      "Programma di installazione di Requiem",
    ),
    "app_title_tools": MessageLookupByLibrary.simpleMessage(
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
    "common_cancel": MessageLookupByLibrary.simpleMessage("ANNULLATO"),
    "common_change": MessageLookupByLibrary.simpleMessage("CAMBIARE"),
    "common_connect": MessageLookupByLibrary.simpleMessage("CONETTARE"),
    "common_continue": MessageLookupByLibrary.simpleMessage("CONTINUA"),
    "common_label_disk": MessageLookupByLibrary.simpleMessage("DISCO"),
    "common_label_image": MessageLookupByLibrary.simpleMessage("IMMAGINE"),
    "common_label_mode": MessageLookupByLibrary.simpleMessage("MODALITÀ"),
    "common_refresh": MessageLookupByLibrary.simpleMessage("ATTUALIZZARE"),
    "common_search": MessageLookupByLibrary.simpleMessage("BUSCAR"),
    "common_select": MessageLookupByLibrary.simpleMessage("SELEZIONARE"),
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
    "console_title": MessageLookupByLibrary.simpleMessage(
      "Consola del Sistema",
    ),
    "console_tooltip_clear": MessageLookupByLibrary.simpleMessage("Log chiari"),
    "console_tooltip_copy": MessageLookupByLibrary.simpleMessage(
      "Copiare i log",
    ),
    "console_waiting_action": MessageLookupByLibrary.simpleMessage(
      "Aspettando un\'azione...",
    ),
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
    "disk_badge_system": MessageLookupByLibrary.simpleMessage("SISTEMA"),
    "disk_boot_firmware_label": m7,
    "disk_button_confirm_and_install": MessageLookupByLibrary.simpleMessage(
      "CONFERMA E INSTALLA",
    ),
    "disk_dialog_confirm_destruction_title":
        MessageLookupByLibrary.simpleMessage("CONFERMA DESTRUCCIÓN DE DATOS"),
    "disk_dialog_confirm_install_title": MessageLookupByLibrary.simpleMessage(
      "CONFERMA L\'INSTALLAZIONE",
    ),
    "disk_dialog_existing_notice": MessageLookupByLibrary.simpleMessage(
      "Windows verrà visualizzato in W:\\\\ senza formattazione.",
    ),
    "disk_dialog_format_warning": MessageLookupByLibrary.simpleMessage(
      "Il disco selezionato verrà formattato completamente. Si perderanno tutti i dati.",
    ),
    "disk_empty_list": MessageLookupByLibrary.simpleMessage(
      "Non vengono rilevati dischi fisici",
    ),
    "disk_item_header": m8,
    "disk_management_appbar_title": MessageLookupByLibrary.simpleMessage(
      "AMMINISTRAZIONE DELLE DISCOTECHE",
    ),
    "disk_partition_gpt_uefi": MessageLookupByLibrary.simpleMessage("GPT/UEFI"),
    "disk_partition_mbr_bios": MessageLookupByLibrary.simpleMessage("MBR/BIOS"),
    "disk_recommended_mode_label": m9,
    "disk_selection_button_start": MessageLookupByLibrary.simpleMessage(
      "INIZIA L\'INSTALLAZIONE",
    ),
    "disk_selection_desc": MessageLookupByLibrary.simpleMessage(
      "Elimina l\'unità fisica dove verrà installato Windows.",
    ),
    "disk_selection_title": MessageLookupByLibrary.simpleMessage(
      "Selezionare Disco de Destino",
    ),
    "disk_size_gb": m10,
    "disk_waiting_wim_hint": MessageLookupByLibrary.simpleMessage(
      "Aspettando il rilevamento di install.wim...",
    ),
    "disk_wim_bridge_source": m11,
    "disk_wim_detected": MessageLookupByLibrary.simpleMessage(
      "Immagine rilevata",
    ),
    "disk_wim_integrated_source": MessageLookupByLibrary.simpleMessage(
      "WIM integrato nell\'ISO",
    ),
    "disk_wim_not_found": MessageLookupByLibrary.simpleMessage(
      "Immagine non trovata",
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
    "editionDetected": m12,
    "emptyFolder": MessageLookupByLibrary.simpleMessage(
      "Questa cartella è vuota",
    ),
    "errorGeneric": m13,
    "file_explorer_default_title": MessageLookupByLibrary.simpleMessage(
      "Selezionare l\'immagine di installazione di Windows",
    ),
    "file_explorer_drives_header": MessageLookupByLibrary.simpleMessage(
      "UNIDADES",
    ),
    "file_explorer_empty_folder": MessageLookupByLibrary.simpleMessage(
      "Questa cartella è vuota",
    ),
    "file_explorer_filter_hint": MessageLookupByLibrary.simpleMessage(
      "Filtra…",
    ),
    "file_explorer_go_up_tooltip": MessageLookupByLibrary.simpleMessage(
      "Sono a un livello",
    ),
    "file_explorer_invalid_path_error": m14,
    "file_explorer_read_error": m15,
    "file_explorer_select_file_hint": MessageLookupByLibrary.simpleMessage(
      "Selezionare un file .wim o .swm",
    ),
    "file_explorer_selected_file": m16,
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
    "invalidPath": m17,
    "isoDescription": MessageLookupByLibrary.simpleMessage(
      "Ottieni la base ISO per selezionare un WIM al momento dell\'installazione o crea un ISO automatico che includa la tua immagine di Windows.",
    ),
    "iso_bridge_clients_count": m18,
    "iso_bridge_desc": MessageLookupByLibrary.simpleMessage(
      "Prepara il WIM una sola volta e trasmettilo direttamente ai clienti Requiem de la misma red. I clienti non salvano il WIM prima dell\'installazione.",
    ),
    "iso_bridge_generic_error": m19,
    "iso_bridge_list_interfaces_error": m20,
    "iso_bridge_save_simple_iso_dialog": MessageLookupByLibrary.simpleMessage(
      "Guardar ISO semplice de Requiem",
    ),
    "iso_bridge_save_wim_iso_dialog": MessageLookupByLibrary.simpleMessage(
      "Guarda ISO de Requiem con WIM",
    ),
    "iso_bridge_select_wim_dialog": MessageLookupByLibrary.simpleMessage(
      "Selezionare l\'immagine WIM di Windows",
    ),
    "iso_bridge_simple_iso_filename": MessageLookupByLibrary.simpleMessage(
      "Requiem-Installer-Simple.iso",
    ),
    "iso_bridge_start_validation_error": MessageLookupByLibrary.simpleMessage(
      "Selezionare un WIM e un\'interfaccia IPv4 privata.",
    ),
    "iso_bridge_wim_selected_log": m21,
    "iso_panel_button_generate_iso": MessageLookupByLibrary.simpleMessage(
      "ISO GENERAR",
    ),
    "iso_panel_button_select_wim": MessageLookupByLibrary.simpleMessage(
      "SELEZIONE WIM",
    ),
    "iso_panel_button_simple_iso": MessageLookupByLibrary.simpleMessage(
      "OBTENER ISO PARA INSTALACIÓN SOLAMENTE",
    ),
    "iso_panel_desc_media": MessageLookupByLibrary.simpleMessage(
      "Ottieni la base ISO per selezionare un WIM al momento dell\'installazione o crea un ISO automatico che includa la tua immagine di Windows.",
    ),
    "iso_panel_title_bridge": MessageLookupByLibrary.simpleMessage(
      "Ponte di installazione IPv4",
    ),
    "iso_panel_title_media": MessageLookupByLibrary.simpleMessage(
      "Medio di installazione",
    ),
    "kmsError": m22,
    "kmsHostEmpty": MessageLookupByLibrary.simpleMessage(
      "Errore: l\'host KMS è vuoto.",
    ),
    "kmsServer": MessageLookupByLibrary.simpleMessage("Servidor KMS"),
    "kmsTask160Days": MessageLookupByLibrary.simpleMessage("Tarea 160 giorni"),
    "kmsVolumeActivation": MessageLookupByLibrary.simpleMessage(
      "Attivazione del volume (KMS)",
    ),
    "kms_product_office_ltsc_professional_plus_2021":
        MessageLookupByLibrary.simpleMessage(
          "Ufficio LTSC Professional Plus 2021",
        ),
    "kms_product_office_ltsc_professional_plus_2024":
        MessageLookupByLibrary.simpleMessage(
          "Ufficio LTSC Professional Plus 2024",
        ),
    "kms_product_office_professional_plus_2013":
        MessageLookupByLibrary.simpleMessage("OfficeProfessional Plus 2013"),
    "kms_product_office_professional_plus_2016":
        MessageLookupByLibrary.simpleMessage("OfficeProfessional Plus 2016"),
    "kms_product_office_professional_plus_2019":
        MessageLookupByLibrary.simpleMessage("OfficeProfessional Plus 2019"),
    "kms_product_office_standard_2013": MessageLookupByLibrary.simpleMessage(
      "Norma dell\'ufficio 2013",
    ),
    "kms_product_windows_10_11_education": MessageLookupByLibrary.simpleMessage(
      "Windows 10/11 Formazione",
    ),
    "kms_product_windows_10_11_education_n":
        MessageLookupByLibrary.simpleMessage("Windows 10/11 Education n"),
    "kms_product_windows_10_11_enterprise":
        MessageLookupByLibrary.simpleMessage("Windows 10/11 aziendale"),
    "kms_product_windows_10_11_enterprise_g":
        MessageLookupByLibrary.simpleMessage("Windows 10/11 Enterprise G"),
    "kms_product_windows_10_11_enterprise_g_n":
        MessageLookupByLibrary.simpleMessage("Windows 10/11 Enterprise G N"),
    "kms_product_windows_10_11_enterprise_n":
        MessageLookupByLibrary.simpleMessage("Windows 10/11 Enterprise N"),
    "kms_product_windows_10_11_pro": MessageLookupByLibrary.simpleMessage(
      "Windows 10/11 Pro",
    ),
    "kms_product_windows_10_11_pro_education":
        MessageLookupByLibrary.simpleMessage("Windows 10/11 Pro Education"),
    "kms_product_windows_10_11_pro_for_workstations":
        MessageLookupByLibrary.simpleMessage(
          "Windows 10/11 Pro per workstation",
        ),
    "kms_product_windows_10_11_pro_n": MessageLookupByLibrary.simpleMessage(
      "Windows 10/11 Pro n",
    ),
    "kms_product_windows_10_11_pro_workstations":
        MessageLookupByLibrary.simpleMessage("Workstation Windows 10/11 Pro"),
    "kms_product_windows_8_1_enterprise": MessageLookupByLibrary.simpleMessage(
      "Windows 8.1 Aziendale",
    ),
    "kms_product_windows_8_1_pro": MessageLookupByLibrary.simpleMessage(
      "Windows 8.1 Pro",
    ),
    "kms_product_windows_8_enterprise": MessageLookupByLibrary.simpleMessage(
      "Windows 8 aziendale",
    ),
    "kms_product_windows_8_pro": MessageLookupByLibrary.simpleMessage(
      "Windows 8 Pro",
    ),
    "kms_product_windows_server_2019_datacenter":
        MessageLookupByLibrary.simpleMessage("Centro dati Windows Server 2019"),
    "kms_product_windows_server_2019_standard":
        MessageLookupByLibrary.simpleMessage("Windows Server 2019 Standard"),
    "kms_product_windows_server_2022_datacenter":
        MessageLookupByLibrary.simpleMessage("Centro dati Windows Server 2022"),
    "kms_product_windows_server_2022_standard":
        MessageLookupByLibrary.simpleMessage("WindowsServer2022Standard"),
    "kms_product_windows_server_2025_datacenter":
        MessageLookupByLibrary.simpleMessage("Centro dati Windows Server 2025"),
    "kms_product_windows_server_2025_standard":
        MessageLookupByLibrary.simpleMessage("Windows Server 2025 standard"),
    "kms_product_windows_subsystem_for_linux":
        MessageLookupByLibrary.simpleMessage("Sottosistema Windows per Linux"),
    "kms_product_windows_terminal": MessageLookupByLibrary.simpleMessage(
      "Terminale Windows",
    ),
    "landingDescription": MessageLookupByLibrary.simpleMessage(
      "Installatore di Windows ad alta precisione per ambienti ad alta resa. Sperimenta un download rapido con la richiesta diretta di DISM e l\'ottimizzazione automatizzata del sistema.",
    ),
    "landing_badge_author": MessageLookupByLibrary.simpleMessage(
      "DISEÑADO POR JOSS",
    ),
    "landing_badge_secure_boot": MessageLookupByLibrary.simpleMessage(
      "COMPATIBILE CON STIVALE SICURO",
    ),
    "landing_badge_version": MessageLookupByLibrary.simpleMessage(
      "VERSIONE STABILE",
    ),
    "landing_button_logs": MessageLookupByLibrary.simpleMessage(
      "TRONCHI DEL SISTEMA",
    ),
    "landing_button_start": MessageLookupByLibrary.simpleMessage("EMPEZAR"),
    "landing_description_part1": MessageLookupByLibrary.simpleMessage(
      "Installatore di Windows ad alta precisione per ambienti ad alta resa.",
    ),
    "landing_description_part2": MessageLookupByLibrary.simpleMessage(
      "Sperimenta un download rapido con la richiesta diretta di DISM e l\'ottimizzazione automatizzata del sistema.",
    ),
    "landing_subtitle": MessageLookupByLibrary.simpleMessage(
      "DESPLIEGUE DE SO DE PRÓXIMA GENERACIÓN",
    ),
    "landing_title_installer": MessageLookupByLibrary.simpleMessage(
      "INSTALLATORE RICHIESTO",
    ),
    "landing_title_tools": MessageLookupByLibrary.simpleMessage(
      "STRUMENTI RICHIESTI",
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
    "officeRenewalStatus": m23,
    "officeVersion": MessageLookupByLibrary.simpleMessage("Versione di Office"),
    "office_odt_kms_badge": MessageLookupByLibrary.simpleMessage("ODT + KMS"),
    "office_odt_panel_title": MessageLookupByLibrary.simpleMessage(
      "Strumento di distribuzione in ufficio",
    ),
    "office_pkg_desc_2019": MessageLookupByLibrary.simpleMessage(
      "Click-to-Run del volume con canale PerpetualVL2019",
    ),
    "office_pkg_desc_2021": MessageLookupByLibrary.simpleMessage(
      "Click-to-Run del volume con canale PerpetualVL2021",
    ),
    "office_pkg_desc_2024": MessageLookupByLibrary.simpleMessage(
      "Click-to-Run del volume con canale PerpetualVL2024",
    ),
    "office_pkg_name_2019": MessageLookupByLibrary.simpleMessage(
      "Ufficio Pro Plus 2019",
    ),
    "office_pkg_name_2021": MessageLookupByLibrary.simpleMessage(
      "Ufficio LTSC Pro Plus 2021",
    ),
    "office_pkg_name_2024": MessageLookupByLibrary.simpleMessage(
      "Ufficio LTSC Pro Plus 2024",
    ),
    "onlyWindows": MessageLookupByLibrary.simpleMessage(
      "Questa funzione è disponibile solo in Windows.",
    ),
    "packageStack": MessageLookupByLibrary.simpleMessage(
      "Stack di programmi (Winget)",
    ),
    "packagesDetected": m24,
    "partitionMode": MessageLookupByLibrary.simpleMessage(
      "Modalità di partizione",
    ),
    "pkg_cat_apache_php_mysql": MessageLookupByLibrary.simpleMessage(
      "Apache PHPMySQL",
    ),
    "pkg_cat_bi_desktop": MessageLookupByLibrary.simpleMessage("BI Desktop"),
    "pkg_cat_cliente_api": MessageLookupByLibrary.simpleMessage("API cliente"),
    "pkg_cat_cliente_db": MessageLookupByLibrary.simpleMessage("Cliente DB"),
    "pkg_cat_compiladores_c": MessageLookupByLibrary.simpleMessage(
      "Compilatori C++",
    ),
    "pkg_cat_compresor": MessageLookupByLibrary.simpleMessage("Compressore"),
    "pkg_cat_comunicacion": MessageLookupByLibrary.simpleMessage(
      "Comunicazione",
    ),
    "pkg_cat_control_de_versiones": MessageLookupByLibrary.simpleMessage(
      "Controllo delle versioni",
    ),
    "pkg_cat_desktop": MessageLookupByLibrary.simpleMessage("Desktop"),
    "pkg_cat_diagramas": MessageLookupByLibrary.simpleMessage("Diagrammi"),
    "pkg_cat_distro_wsl": MessageLookupByLibrary.simpleMessage(
      "Distribuzione WSL",
    ),
    "pkg_cat_editor": MessageLookupByLibrary.simpleMessage("Editore"),
    "pkg_cat_golang": MessageLookupByLibrary.simpleMessage("Golang"),
    "pkg_cat_gpu_compute": MessageLookupByLibrary.simpleMessage("Calcolo GPU"),
    "pkg_cat_grabacion": MessageLookupByLibrary.simpleMessage("Grabacion"),
    "pkg_cat_ide_ai": MessageLookupByLibrary.simpleMessage("IDEAI"),
    "pkg_cat_ide_android": MessageLookupByLibrary.simpleMessage("IDEAndroid"),
    "pkg_cat_ide_completo": MessageLookupByLibrary.simpleMessage(
      "IDE completo",
    ),
    "pkg_cat_instaladores": MessageLookupByLibrary.simpleMessage(
      "Installatori",
    ),
    "pkg_cat_javascript": MessageLookupByLibrary.simpleMessage("JavaScript"),
    "pkg_cat_limpieza": MessageLookupByLibrary.simpleMessage("Pulitezza"),
    "pkg_cat_modelos_locales": MessageLookupByLibrary.simpleMessage(
      "Località dei modelli",
    ),
    "pkg_cat_navegador": MessageLookupByLibrary.simpleMessage("Navegador"),
    "pkg_cat_python_3": MessageLookupByLibrary.simpleMessage("Pitone 3"),
    "pkg_cat_runtime_c": MessageLookupByLibrary.simpleMessage(
      "C++ in fase di esecuzione",
    ),
    "pkg_cat_runtime_escritorio": MessageLookupByLibrary.simpleMessage(
      "Escritorio runtime",
    ),
    "pkg_cat_runtime_juegos": MessageLookupByLibrary.simpleMessage(
      "Giochi runtime",
    ),
    "pkg_cat_runtime_php": MessageLookupByLibrary.simpleMessage(
      "PHP in fase di esecuzione",
    ),
    "pkg_cat_rustup": MessageLookupByLibrary.simpleMessage("Ruggine"),
    "pkg_cat_sdk__net": MessageLookupByLibrary.simpleMessage("SDK.NET"),
    "pkg_cat_servidor_db": MessageLookupByLibrary.simpleMessage("Servidor DB"),
    "pkg_cat_ssh_clasico": MessageLookupByLibrary.simpleMessage("Classico SSH"),
    "pkg_cat_ssh_moderno": MessageLookupByLibrary.simpleMessage("SSH moderno"),
    "pkg_cat_subsistema_linux": MessageLookupByLibrary.simpleMessage(
      "Sottosistema Linux",
    ),
    "pkg_cat_temurin_21": MessageLookupByLibrary.simpleMessage("Temurin 21"),
    "pkg_cat_terminal_moderno": MessageLookupByLibrary.simpleMessage(
      "Terminale moderno",
    ),
    "prepareBridge": MessageLookupByLibrary.simpleMessage(
      "Preparare e iniziare il ponte",
    ),
    "progress_button_reboot": MessageLookupByLibrary.simpleMessage(
      "REINICIAR SISTEMA",
    ),
    "progress_footer_warning": MessageLookupByLibrary.simpleMessage(
      "NO DESCONECTE LA ENERGÍA NI RETIRE EL MEDIO DE INSTALACIÓN",
    ),
    "progress_header_badge": MessageLookupByLibrary.simpleMessage(
      "DESPLIEGUE EN CURSO",
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
    "selectedFile": m25,
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
    "tools_badge_iso_compatibility": MessageLookupByLibrary.simpleMessage(
      "Conservazione BIOS + UEFI",
    ),
    "tools_badge_kms_pending": MessageLookupByLibrary.simpleMessage(
      "KMS pendente",
    ),
    "tools_badge_package_count": m26,
    "tools_button_activate_kms": MessageLookupByLibrary.simpleMessage(
      "ATTIVARE KM",
    ),
    "tools_button_install_all_packages": MessageLookupByLibrary.simpleMessage(
      "INSTALLARE TUTTO",
    ),
    "tools_button_install_office": MessageLookupByLibrary.simpleMessage(
      "UFFICIO ISTALAR",
    ),
    "tools_header_title": MessageLookupByLibrary.simpleMessage(
      "STRUMENTI DI MIGRAZIONE REQUIEM",
    ),
    "tools_kms_checking_connectivity": m27,
    "tools_kms_empty_host_error": MessageLookupByLibrary.simpleMessage(
      "ERRORE: el host KMS esta vacio.",
    ),
    "tools_kms_error_log": m28,
    "tools_kms_no_products_selected": MessageLookupByLibrary.simpleMessage(
      "Nessun prodotto fieno selezionato da KMS.",
    ),
    "tools_log_format": m29,
    "tools_logs_copied_snackbar": MessageLookupByLibrary.simpleMessage(
      "Log copiati nel portapapeles.",
    ),
    "tools_packages_detected_count": m30,
    "tools_packages_none_detected": MessageLookupByLibrary.simpleMessage(
      "Non si rilevano pacchetti conosciuti con ali.",
    ),
    "tools_packages_none_selected": MessageLookupByLibrary.simpleMessage(
      "Nessun programma selezionato.",
    ),
    "tools_section_activation_desc": MessageLookupByLibrary.simpleMessage(
      "Configura il server KMS locale o remoto per attivare Windows e Office.",
    ),
    "tools_section_activation_title": MessageLookupByLibrary.simpleMessage(
      "Attivazione delle licenze",
    ),
    "tools_section_iso_desc": MessageLookupByLibrary.simpleMessage(
      "Creiamo mezzi autonomi con un WIM integrato o distribuiamo un\'installazione direttamente tramite IPv4.",
    ),
    "tools_section_iso_title": MessageLookupByLibrary.simpleMessage(
      "ISO e descrizione in rosso",
    ),
    "tools_section_office_desc": MessageLookupByLibrary.simpleMessage(
      "Distribuisci Microsoft Office LTSC o 365 in modo automatizzato utilizzando ODT.",
    ),
    "tools_section_office_title": MessageLookupByLibrary.simpleMessage(
      "Installatore di Office",
    ),
    "tools_section_packages_desc": MessageLookupByLibrary.simpleMessage(
      "Installa e aggiorna gli strumenti di sviluppo essenziali per Windows tramite il winget.",
    ),
    "tools_section_packages_title": MessageLookupByLibrary.simpleMessage(
      "Pila di applicazioni",
    ),
    "tools_sidebar_app_name": MessageLookupByLibrary.simpleMessage("REQUIEM"),
    "tools_sidebar_mode_badge": MessageLookupByLibrary.simpleMessage(
      "Modalità Strumenti locali",
    ),
    "tools_sidebar_tab_iso": MessageLookupByLibrary.simpleMessage(
      "ISO e Ponte",
    ),
    "tools_sidebar_tab_kms": MessageLookupByLibrary.simpleMessage(
      "Attivazione KMS",
    ),
    "tools_sidebar_tab_office": MessageLookupByLibrary.simpleMessage(
      "Ufficio di installazione",
    ),
    "tools_sidebar_tab_packages": MessageLookupByLibrary.simpleMessage(
      "Impila programmi",
    ),
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
    "wifiConnectError": m31,
    "wifiConnected": m32,
    "wifiPassword": MessageLookupByLibrary.simpleMessage("Contraseña Wi-Fi"),
    "wifi_connect_error": m33,
    "wifi_connected_log": m34,
    "wifi_connected_status": m35,
    "wifi_dialog_title": MessageLookupByLibrary.simpleMessage(
      "Collegare l\'installatore al Wi-Fi",
    ),
    "wifi_item_signal_security": m36,
    "wifi_none_found": MessageLookupByLibrary.simpleMessage(
      "Non si trovano reti Wi-Fi disponibili.",
    ),
    "wifi_password_hint": MessageLookupByLibrary.simpleMessage(
      "Contraseña Wi-Fi",
    ),
    "wifi_scanning": MessageLookupByLibrary.simpleMessage(
      "Scansione delle reti Wi-Fi disponibili...",
    ),
    "wimIntegrated": MessageLookupByLibrary.simpleMessage(
      "WIM integrato nell\'ISO",
    ),
    "wim_bridge_connection_error": m37,
    "wim_bridge_ip_dialog_title": MessageLookupByLibrary.simpleMessage(
      "IP del ponte Requiem",
    ),
    "wim_bridge_ip_placeholder": MessageLookupByLibrary.simpleMessage(
      "192.168.1.20",
    ),
    "wim_bridge_not_found": MessageLookupByLibrary.simpleMessage(
      "Non si è incontrato con nessun ponte. Prova con il manuale IP.",
    ),
    "wim_bridge_search_error": m38,
    "wim_bridge_searching": MessageLookupByLibrary.simpleMessage(
      "Ricerca di bridge Requiem sulla rete IPv4 locale...",
    ),
    "wim_bridge_section_header": MessageLookupByLibrary.simpleMessage(
      "O ricevi l\'installazione preparata dal Requiem per Windows",
    ),
    "wim_button_change_file": MessageLookupByLibrary.simpleMessage(
      "ARCHIVIO CAMBIAR",
    ),
    "wim_button_connect_wifi": MessageLookupByLibrary.simpleMessage(
      "CONNETTERE WI-FI",
    ),
    "wim_button_manual_ip": MessageLookupByLibrary.simpleMessage(
      "MANUALE IP USAR",
    ),
    "wim_button_rescan": MessageLookupByLibrary.simpleMessage(
      "Esci dalle nuove unità",
    ),
    "wim_button_search_bridge": MessageLookupByLibrary.simpleMessage(
      "BUSCAR PUENTE",
    ),
    "wim_manual_search_hint": MessageLookupByLibrary.simpleMessage(
      "Utilizzare \"Cerca\" per localizzare manualmente il file WIM.",
    ),
    "wim_picker_description": MessageLookupByLibrary.simpleMessage(
      "Porre l\'immagine di installazione di Windows (install.wim o install.swm)\\n",
    ),
    "wim_picker_title": MessageLookupByLibrary.simpleMessage(
      "Selezionare l\'immagine di Windows",
    ),
    "wim_status_found": MessageLookupByLibrary.simpleMessage(
      "Immagine trovata",
    ),
    "wim_status_not_found": MessageLookupByLibrary.simpleMessage(
      "Non è stata rilevata nessuna immagine",
    ),
    "wim_status_searching": MessageLookupByLibrary.simpleMessage(
      "Cercando immagine…",
    ),
    "wim_status_searching_alt": MessageLookupByLibrary.simpleMessage(
      "Cercando immagine...",
    ),
    "wingetUnavailable": MessageLookupByLibrary.simpleMessage(
      "l\'ala non è installata o non è in PATH.",
    ),
  };
}
