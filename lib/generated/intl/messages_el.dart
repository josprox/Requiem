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

  static String m7(firmware) => "Πραγματικό Arranque: ${firmware}";

  static String m8(diskNumber, mediaType, busType) =>
      "ΔΙΣΚΟΣ ${diskNumber} · ${mediaType} · ${busType}";

  static String m9(recommended) => "Συμβατό με Modo: ${recommended}";

  static String m10(sizeGB) => "${sizeGB} GB";

  static String m11(imageName) =>
      "Puente: \${controller.bridgeAnnouncement?.imageName ??";

  static String m12(name, edition) => "Ανίχνευση έκδοσης: ${name} (${edition})";

  static String m13(error) => "Σφάλμα: ${error}";

  static String m14(val) => "Ruta inválida: ${val}";

  static String m15(error) =>
      "No se pudo leer el contenido del Directorio.\\n${error}";

  static String m16(path) => "Επιλογή: ${path}";

  static String m17(path) => "Ruta inválida: ${path}";

  static String m18(clients) => "${clients} συνθέσεις";

  static String m19(error) => "ΣΦΑΛΜΑ: ${error}";

  static String m20(error) => "Δεν υπάρχουν διασυνδέσεις IPv4: ${error}";

  static String m21(path) => "επιλογή WIM: ${path}";

  static String m22(error) => "Σφάλμα KMS: ${error}";

  static String m23(product, channel, edition, status) =>
      "${product} / ${channel} / ${edition} bit. La renovación queda ${status}.";

  static String m24(count) => "Πακέτα που ανιχνεύονται: ${count}.";

  static String m25(file) => "Επιλογή: ${file}";

  static String m26(count) => "${count} προγράμματα";

  static String m27(host) => "Comprobando conectividad con ${host}:1688...";

  static String m28(error) => "ΣΦΑΛΜΑ KMS: ${error}";

  static String m29(time, message) => "[${time}] ${message}";

  static String m30(count) => "Πακέτα που ανιχνεύονται: ${count}.";

  static String m31(error) => "Δεν υπάρχει σύνδεση Wi-Fi: ${error}";

  static String m32(network) => "Συνδέστε ένα ${network}.";

  static String m33(error) => "Δεν υπάρχει σύνδεση Wi-Fi: ${error}";

  static String m34(ssid, result) => "Wi-Fi συνδεδεμένο σε ${ssid}. ${result}";

  static String m35(ssid) => "Συνδέστε ένα ${ssid}.";

  static String m36(signal, security) => "${signal}% · ${security}";

  static String m37(error) => "Δεν υπάρχει σύνδεση: ${error}";

  static String m38(error) => "No se pudo buscar el puente: ${error}";

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
    "app_title_installer": MessageLookupByLibrary.simpleMessage(
      "Requiem Installer",
    ),
    "app_title_tools": MessageLookupByLibrary.simpleMessage("Εργαλεία Ρέκβιεμ"),
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
    "common_cancel": MessageLookupByLibrary.simpleMessage("ΑΚΥΡΩΣΗ"),
    "common_change": MessageLookupByLibrary.simpleMessage("ΚΑΜΠΙΑΡ"),
    "common_connect": MessageLookupByLibrary.simpleMessage("ΚΟΝΕΚΤΑΡ"),
    "common_continue": MessageLookupByLibrary.simpleMessage("ΣΥΝΕΧΕΙΑ"),
    "common_label_disk": MessageLookupByLibrary.simpleMessage("ΔΙΣΚΟΣ"),
    "common_label_image": MessageLookupByLibrary.simpleMessage("ΕΙΚΟΝΑ"),
    "common_label_mode": MessageLookupByLibrary.simpleMessage("MODE"),
    "common_refresh": MessageLookupByLibrary.simpleMessage("ACTUALIZAR"),
    "common_search": MessageLookupByLibrary.simpleMessage("ΜΠΟΥΣΚΑΡ"),
    "common_select": MessageLookupByLibrary.simpleMessage("ΕΠΙΛΟΓΟΣ"),
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
    "console_title": MessageLookupByLibrary.simpleMessage(
      "Consola del Sistema",
    ),
    "console_tooltip_clear": MessageLookupByLibrary.simpleMessage(
      "Limpiar κούτσουρα",
    ),
    "console_tooltip_copy": MessageLookupByLibrary.simpleMessage(
      "κούτσουρα αντιγραφής",
    ),
    "console_waiting_action": MessageLookupByLibrary.simpleMessage(
      "Esperando una acción...",
    ),
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
    "disk_badge_system": MessageLookupByLibrary.simpleMessage("SISTEMA"),
    "disk_boot_firmware_label": m7,
    "disk_button_confirm_and_install": MessageLookupByLibrary.simpleMessage(
      "ΕΠΙΒΕΒΑΙΩΣΗ Ε ΤΟΠΟΘΕΤΗΣΗΣ",
    ),
    "disk_dialog_confirm_destruction_title":
        MessageLookupByLibrary.simpleMessage(
          "ΕΠΙΒΕΒΑΙΩΣΗ ΚΑΤΑΣΤΡΟΦΗΣ DE DATOS",
        ),
    "disk_dialog_confirm_install_title": MessageLookupByLibrary.simpleMessage(
      "ΕΠΙΒΕΒΑΙΩΣΗ ΕΓΚΑΤΑΣΤΑΣΗΣ",
    ),
    "disk_dialog_existing_notice": MessageLookupByLibrary.simpleMessage(
      "Τα Windows se desplegará en W:\\\\ sin formatear.",
    ),
    "disk_dialog_format_warning": MessageLookupByLibrary.simpleMessage(
      "El disco seleccionado se formateará por completo. Se perderán todos los datos.",
    ),
    "disk_empty_list": MessageLookupByLibrary.simpleMessage(
      "No se detectaron discos físicos",
    ),
    "disk_item_header": m8,
    "disk_management_appbar_title": MessageLookupByLibrary.simpleMessage(
      "ADMINISTRACIÓN DE DISCOS",
    ),
    "disk_partition_gpt_uefi": MessageLookupByLibrary.simpleMessage(
      "GPT / UEFI",
    ),
    "disk_partition_mbr_bios": MessageLookupByLibrary.simpleMessage(
      "MBR / BIOS",
    ),
    "disk_recommended_mode_label": m9,
    "disk_selection_button_start": MessageLookupByLibrary.simpleMessage(
      "INICIAR INSTALACIÓN",
    ),
    "disk_selection_desc": MessageLookupByLibrary.simpleMessage(
      "Το Elija la unidad fisica donde se installerá Windows.",
    ),
    "disk_selection_title": MessageLookupByLibrary.simpleMessage(
      "Επιλογή Disco de Destino",
    ),
    "disk_size_gb": m10,
    "disk_waiting_wim_hint": MessageLookupByLibrary.simpleMessage(
      "Esperando la detección de install.wim...",
    ),
    "disk_wim_bridge_source": m11,
    "disk_wim_detected": MessageLookupByLibrary.simpleMessage(
      "Imagen detectada",
    ),
    "disk_wim_integrated_source": MessageLookupByLibrary.simpleMessage(
      "WIM integrado στο ISO",
    ),
    "disk_wim_not_found": MessageLookupByLibrary.simpleMessage(
      "Η εικόνα δεν είναι αντίθετη",
    ),
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
    "editionDetected": m12,
    "emptyFolder": MessageLookupByLibrary.simpleMessage(
      "Esta carpeta está vacía",
    ),
    "errorGeneric": m13,
    "file_explorer_default_title": MessageLookupByLibrary.simpleMessage(
      "Επιλογή Εικόνας Εγκατάστασης των Windows",
    ),
    "file_explorer_drives_header": MessageLookupByLibrary.simpleMessage(
      "UNIDADES",
    ),
    "file_explorer_empty_folder": MessageLookupByLibrary.simpleMessage(
      "Esta carpeta está vacía",
    ),
    "file_explorer_filter_hint": MessageLookupByLibrary.simpleMessage(
      "Φίλτρα…",
    ),
    "file_explorer_go_up_tooltip": MessageLookupByLibrary.simpleMessage(
      "Subir un nivel",
    ),
    "file_explorer_invalid_path_error": m14,
    "file_explorer_read_error": m15,
    "file_explorer_select_file_hint": MessageLookupByLibrary.simpleMessage(
      "Selection un archivo .wim o .swm",
    ),
    "file_explorer_selected_file": m16,
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
    "invalidPath": m17,
    "isoDescription": MessageLookupByLibrary.simpleMessage(
      "Αποκτήστε τη βάση ISO για επιλογή και ρύθμιση WIM, ή δημιουργία ενός αυτόματου ISO που περιλαμβάνει την εικόνα των Windows.",
    ),
    "iso_bridge_clients_count": m18,
    "iso_bridge_desc": MessageLookupByLibrary.simpleMessage(
      "Προετοιμάστε το WIM una sola vez y lo μετάδοση directamente a los clientes Requiem de la misma red. Los clientes no guardan el WIM antes de install.",
    ),
    "iso_bridge_generic_error": m19,
    "iso_bridge_list_interfaces_error": m20,
    "iso_bridge_save_simple_iso_dialog": MessageLookupByLibrary.simpleMessage(
      "Guardar ISO simple de Requiem",
    ),
    "iso_bridge_save_wim_iso_dialog": MessageLookupByLibrary.simpleMessage(
      "Guardar ISO de Requiem con WIM",
    ),
    "iso_bridge_select_wim_dialog": MessageLookupByLibrary.simpleMessage(
      "Επιλογή εικόνας WIM για Windows",
    ),
    "iso_bridge_simple_iso_filename": MessageLookupByLibrary.simpleMessage(
      "Requiem-Installer-Simple.iso",
    ),
    "iso_bridge_start_validation_error": MessageLookupByLibrary.simpleMessage(
      "Επιλέξτε από το WIM και μια ιδιωτική διασύνδεση IPv4.",
    ),
    "iso_bridge_wim_selected_log": m21,
    "iso_panel_button_generate_iso": MessageLookupByLibrary.simpleMessage(
      "ΓΕΝΙΚΟ ISO",
    ),
    "iso_panel_button_select_wim": MessageLookupByLibrary.simpleMessage(
      "ΕΠΙΛΟΓΟΣ WIM",
    ),
    "iso_panel_button_simple_iso": MessageLookupByLibrary.simpleMessage(
      "OBTENER ISO PARA INSTALACIÓN SOLAMENTE",
    ),
    "iso_panel_desc_media": MessageLookupByLibrary.simpleMessage(
      "Αποκτήστε τη βάση ISO για επιλογή και ρύθμιση WIM, ή δημιουργία ενός αυτόματου ISO που περιλαμβάνει την εικόνα των Windows.",
    ),
    "iso_panel_title_bridge": MessageLookupByLibrary.simpleMessage(
      "Εγκατάσταση IPv4",
    ),
    "iso_panel_title_media": MessageLookupByLibrary.simpleMessage(
      "Μέσο εγκατάστασης",
    ),
    "kmsError": m22,
    "kmsHostEmpty": MessageLookupByLibrary.simpleMessage(
      "Σφάλμα: el host KMS está vacío.",
    ),
    "kmsServer": MessageLookupByLibrary.simpleMessage("Εξυπηρετητής KMS"),
    "kmsTask160Days": MessageLookupByLibrary.simpleMessage("Tarea 160 días"),
    "kmsVolumeActivation": MessageLookupByLibrary.simpleMessage(
      "Ενεργοποίηση τόμου (KMS)",
    ),
    "kms_product_office_ltsc_professional_plus_2021":
        MessageLookupByLibrary.simpleMessage(
          "Office LTSC Professional Plus 2021",
        ),
    "kms_product_office_ltsc_professional_plus_2024":
        MessageLookupByLibrary.simpleMessage(
          "Office LTSC Professional Plus 2024",
        ),
    "kms_product_office_professional_plus_2013":
        MessageLookupByLibrary.simpleMessage("Office Professional Plus 2013"),
    "kms_product_office_professional_plus_2016":
        MessageLookupByLibrary.simpleMessage("Office Professional Plus 2016"),
    "kms_product_office_professional_plus_2019":
        MessageLookupByLibrary.simpleMessage("Office Professional Plus 2019"),
    "kms_product_office_standard_2013": MessageLookupByLibrary.simpleMessage(
      "Πρότυπο Office 2013",
    ),
    "kms_product_windows_10_11_education": MessageLookupByLibrary.simpleMessage(
      "Windows 10/11 Education",
    ),
    "kms_product_windows_10_11_education_n":
        MessageLookupByLibrary.simpleMessage("Windows 10/11 Education N"),
    "kms_product_windows_10_11_enterprise":
        MessageLookupByLibrary.simpleMessage("Windows 10/11 Enterprise"),
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
          "Windows 10/11 Pro για σταθμούς εργασίας",
        ),
    "kms_product_windows_10_11_pro_n": MessageLookupByLibrary.simpleMessage(
      "Windows 10/11 Pro N",
    ),
    "kms_product_windows_10_11_pro_workstations":
        MessageLookupByLibrary.simpleMessage(
          "Σταθμοί εργασίας Windows 10/11 Pro",
        ),
    "kms_product_windows_8_1_enterprise": MessageLookupByLibrary.simpleMessage(
      "Windows 8.1 Enterprise",
    ),
    "kms_product_windows_8_1_pro": MessageLookupByLibrary.simpleMessage(
      "Windows 8.1 Pro",
    ),
    "kms_product_windows_8_enterprise": MessageLookupByLibrary.simpleMessage(
      "Windows 8 Enterprise",
    ),
    "kms_product_windows_8_pro": MessageLookupByLibrary.simpleMessage(
      "Windows 8 Pro",
    ),
    "kms_product_windows_server_2019_datacenter":
        MessageLookupByLibrary.simpleMessage("Windows Server 2019 Datacenter"),
    "kms_product_windows_server_2019_standard":
        MessageLookupByLibrary.simpleMessage("Windows Server 2019 Standard"),
    "kms_product_windows_server_2022_datacenter":
        MessageLookupByLibrary.simpleMessage("Windows Server 2022 Datacenter"),
    "kms_product_windows_server_2022_standard":
        MessageLookupByLibrary.simpleMessage("Windows Server 2022 Standard"),
    "kms_product_windows_server_2025_datacenter":
        MessageLookupByLibrary.simpleMessage("Windows Server 2025 Datacenter"),
    "kms_product_windows_server_2025_standard":
        MessageLookupByLibrary.simpleMessage("Windows Server 2025 Standard"),
    "kms_product_windows_subsystem_for_linux":
        MessageLookupByLibrary.simpleMessage("Υποσύστημα Windows για Linux"),
    "kms_product_windows_terminal": MessageLookupByLibrary.simpleMessage(
      "Τερματικό Windows",
    ),
    "landingDescription": MessageLookupByLibrary.simpleMessage(
      "Εγκατάσταση των Windows σε alta precision για την είσοδο στο alto rendimiento. Πειραματιστείτε και βελτιστοποιήστε την αυτοματοποίηση του συστήματος.",
    ),
    "landing_badge_author": MessageLookupByLibrary.simpleMessage(
      "DISEÑADO POR JOSS",
    ),
    "landing_badge_secure_boot": MessageLookupByLibrary.simpleMessage(
      "ΣΥΜΒΑΤΟ CON SECURE BOOT",
    ),
    "landing_badge_version": MessageLookupByLibrary.simpleMessage(
      "VERSIÓN ESTABLE",
    ),
    "landing_button_logs": MessageLookupByLibrary.simpleMessage(
      "ΚΟΥΤΡΑ DEL SISTEMA",
    ),
    "landing_button_start": MessageLookupByLibrary.simpleMessage("ΕΜΠΕΖΑΡ"),
    "landing_description_part1": MessageLookupByLibrary.simpleMessage(
      "Εγκατάσταση των Windows σε alta precision για την είσοδο στο alto rendimiento.",
    ),
    "landing_description_part2": MessageLookupByLibrary.simpleMessage(
      "Πειραματιστείτε και βελτιστοποιήστε την αυτοματοποίηση του συστήματος.",
    ),
    "landing_subtitle": MessageLookupByLibrary.simpleMessage(
      "DESPLIEGUE DE SO DE PRÓXIMA GENERACIÓN",
    ),
    "landing_title_installer": MessageLookupByLibrary.simpleMessage(
      "REQUIEM INSTALLER",
    ),
    "landing_title_tools": MessageLookupByLibrary.simpleMessage(
      "ΕΡΓΑΛΕΙΑ REQUIEM",
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
    "officeRenewalStatus": m23,
    "officeVersion": MessageLookupByLibrary.simpleMessage("Έκδοση του Office"),
    "office_odt_kms_badge": MessageLookupByLibrary.simpleMessage("ODT + KMS"),
    "office_odt_panel_title": MessageLookupByLibrary.simpleMessage(
      "Εργαλείο ανάπτυξης γραφείου",
    ),
    "office_pkg_desc_2019": MessageLookupByLibrary.simpleMessage(
      "Click-to-Run de volume con canal PerpetualVL2019",
    ),
    "office_pkg_desc_2021": MessageLookupByLibrary.simpleMessage(
      "Κάντε κλικ για εκτέλεση του καναλιού όγκου PerpetualVL2021",
    ),
    "office_pkg_desc_2024": MessageLookupByLibrary.simpleMessage(
      "Κάντε κλικ για εκτέλεση του καναλιού όγκου PerpetualVL2024",
    ),
    "office_pkg_name_2019": MessageLookupByLibrary.simpleMessage(
      "Office Pro Plus 2019",
    ),
    "office_pkg_name_2021": MessageLookupByLibrary.simpleMessage(
      "Office LTSC Pro Plus 2021",
    ),
    "office_pkg_name_2024": MessageLookupByLibrary.simpleMessage(
      "Office LTSC Pro Plus 2024",
    ),
    "onlyWindows": MessageLookupByLibrary.simpleMessage(
      "Αυτή η λειτουργία είναι μόνο διαθέσιμη στα Windows.",
    ),
    "packageStack": MessageLookupByLibrary.simpleMessage(
      "Stack de programas (Winget)",
    ),
    "packagesDetected": m24,
    "partitionMode": MessageLookupByLibrary.simpleMessage("Modo de Partición"),
    "pkg_cat_apache_php_mysql": MessageLookupByLibrary.simpleMessage(
      "Apache PHP MySQL",
    ),
    "pkg_cat_bi_desktop": MessageLookupByLibrary.simpleMessage("BI Desktop"),
    "pkg_cat_cliente_api": MessageLookupByLibrary.simpleMessage("Client API"),
    "pkg_cat_cliente_db": MessageLookupByLibrary.simpleMessage("DB πελάτη"),
    "pkg_cat_compiladores_c": MessageLookupByLibrary.simpleMessage(
      "Compiladores C++",
    ),
    "pkg_cat_compresor": MessageLookupByLibrary.simpleMessage("Συμπιεστής"),
    "pkg_cat_comunicacion": MessageLookupByLibrary.simpleMessage("Επικοινωνία"),
    "pkg_cat_control_de_versiones": MessageLookupByLibrary.simpleMessage(
      "Έλεγχος εκδόσεων",
    ),
    "pkg_cat_desktop": MessageLookupByLibrary.simpleMessage(
      "Επιτραπέζιος υπολογιστής",
    ),
    "pkg_cat_diagramas": MessageLookupByLibrary.simpleMessage("Διαγράμματα"),
    "pkg_cat_distro_wsl": MessageLookupByLibrary.simpleMessage("Distro WSL"),
    "pkg_cat_editor": MessageLookupByLibrary.simpleMessage("Συντάκτης"),
    "pkg_cat_golang": MessageLookupByLibrary.simpleMessage("Golang"),
    "pkg_cat_gpu_compute": MessageLookupByLibrary.simpleMessage(
      "Υπολογισμός GPU",
    ),
    "pkg_cat_grabacion": MessageLookupByLibrary.simpleMessage("Grabacion"),
    "pkg_cat_ide_ai": MessageLookupByLibrary.simpleMessage("IDE AI"),
    "pkg_cat_ide_android": MessageLookupByLibrary.simpleMessage("IDE Android"),
    "pkg_cat_ide_completo": MessageLookupByLibrary.simpleMessage(
      "IDE ολοκληρωμένο",
    ),
    "pkg_cat_instaladores": MessageLookupByLibrary.simpleMessage(
      "Instaladores",
    ),
    "pkg_cat_javascript": MessageLookupByLibrary.simpleMessage("JavaScript"),
    "pkg_cat_limpieza": MessageLookupByLibrary.simpleMessage("Λιμπιέζα"),
    "pkg_cat_modelos_locales": MessageLookupByLibrary.simpleMessage(
      "Τοπικές θέσεις Modelos",
    ),
    "pkg_cat_navegador": MessageLookupByLibrary.simpleMessage("Ναβεγαδόρ"),
    "pkg_cat_python_3": MessageLookupByLibrary.simpleMessage("Python 3"),
    "pkg_cat_runtime_c": MessageLookupByLibrary.simpleMessage(
      "Χρόνος εκτέλεσης C++",
    ),
    "pkg_cat_runtime_escritorio": MessageLookupByLibrary.simpleMessage(
      "Περιγραφή χρόνου εκτέλεσης",
    ),
    "pkg_cat_runtime_juegos": MessageLookupByLibrary.simpleMessage(
      "Juego χρόνου εκτέλεσης",
    ),
    "pkg_cat_runtime_php": MessageLookupByLibrary.simpleMessage(
      "Χρόνος εκτέλεσης PHP",
    ),
    "pkg_cat_rustup": MessageLookupByLibrary.simpleMessage("Rustup"),
    "pkg_cat_sdk__net": MessageLookupByLibrary.simpleMessage("SDK .NET"),
    "pkg_cat_servidor_db": MessageLookupByLibrary.simpleMessage(
      "DB διακομιστή",
    ),
    "pkg_cat_ssh_clasico": MessageLookupByLibrary.simpleMessage("SSH clasico"),
    "pkg_cat_ssh_moderno": MessageLookupByLibrary.simpleMessage("SSH σύγχρονο"),
    "pkg_cat_subsistema_linux": MessageLookupByLibrary.simpleMessage(
      "Subsistema Linux",
    ),
    "pkg_cat_temurin_21": MessageLookupByLibrary.simpleMessage("Temurin 21"),
    "pkg_cat_terminal_moderno": MessageLookupByLibrary.simpleMessage(
      "Terminal moderno",
    ),
    "prepareBridge": MessageLookupByLibrary.simpleMessage(
      "Προετοιμάστε την αρχική εργασία",
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
    "selectedFile": m25,
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
    "tools_badge_iso_compatibility": MessageLookupByLibrary.simpleMessage(
      "BIOS + UEFI συντηρητικά",
    ),
    "tools_badge_kms_pending": MessageLookupByLibrary.simpleMessage(
      "ΚΜΣ εκκρεμές",
    ),
    "tools_badge_package_count": m26,
    "tools_button_activate_kms": MessageLookupByLibrary.simpleMessage(
      "ACTIVAR KMS",
    ),
    "tools_button_install_all_packages": MessageLookupByLibrary.simpleMessage(
      "ΕΓΚΑΤΑΣΤΑΣΗ TODO",
    ),
    "tools_button_install_office": MessageLookupByLibrary.simpleMessage(
      "ΕΓΚΑΤΑΣΤΑΣΗ ΓΡΑΦΕΙΟΥ",
    ),
    "tools_header_title": MessageLookupByLibrary.simpleMessage(
      "ΕΡΓΑΛΕΙΑ ΜΕΤΑΝΑΣΤΕΥΣΗΣ REQUIEM",
    ),
    "tools_kms_checking_connectivity": m27,
    "tools_kms_empty_host_error": MessageLookupByLibrary.simpleMessage(
      "ΣΦΑΛΜΑ: el host KMS esta vacio.",
    ),
    "tools_kms_error_log": m28,
    "tools_kms_no_products_selected": MessageLookupByLibrary.simpleMessage(
      "Όχι προϊόντα σανού KMS seleccionados.",
    ),
    "tools_log_format": m29,
    "tools_logs_copied_snackbar": MessageLookupByLibrary.simpleMessage(
      "Κορμούς copiados al portapapeles.",
    ),
    "tools_packages_detected_count": m30,
    "tools_packages_none_detected": MessageLookupByLibrary.simpleMessage(
      "No se detectaron paquetes conocidos con winget.",
    ),
    "tools_packages_none_selected": MessageLookupByLibrary.simpleMessage(
      "Όχι προγράμματα επιλογής σανού.",
    ),
    "tools_section_activation_desc": MessageLookupByLibrary.simpleMessage(
      "Ρυθμίστε τις παραμέτρους του διακομιστή KMS τοπικό ή απομακρυσμένο για ενεργοποίηση των Windows και του Office.",
    ),
    "tools_section_activation_title": MessageLookupByLibrary.simpleMessage(
      "Activación de Licencias",
    ),
    "tools_section_iso_desc": MessageLookupByLibrary.simpleMessage(
      "Cree medios autonomos con un WIM integrado ή διανομή μιας εγκατάστασης εγκατάστασης μέσω IPv4.",
    ),
    "tools_section_iso_title": MessageLookupByLibrary.simpleMessage(
      "ISO y despliegue ή κόκκινο",
    ),
    "tools_section_office_desc": MessageLookupByLibrary.simpleMessage(
      "Καταχωρίστε το Microsoft Office LTSC ή το 365 για την αυτόματη λειτουργία του ODT.",
    ),
    "tools_section_office_title": MessageLookupByLibrary.simpleMessage(
      "Εγκατάσταση γραφείου",
    ),
    "tools_section_packages_desc": MessageLookupByLibrary.simpleMessage(
      "Εγκαταστήστε την ενημερωμένη έκδοση των βασικών στοιχείων για τα Windows mediante winget.",
    ),
    "tools_section_packages_title": MessageLookupByLibrary.simpleMessage(
      "Stack de Applicaciones",
    ),
    "tools_sidebar_app_name": MessageLookupByLibrary.simpleMessage("REQUIEM"),
    "tools_sidebar_mode_badge": MessageLookupByLibrary.simpleMessage(
      "Λειτουργία τοπικών εργαλείων",
    ),
    "tools_sidebar_tab_iso": MessageLookupByLibrary.simpleMessage(
      "ISO y Puente",
    ),
    "tools_sidebar_tab_kms": MessageLookupByLibrary.simpleMessage(
      "Ενεργοποίηση KMS",
    ),
    "tools_sidebar_tab_office": MessageLookupByLibrary.simpleMessage(
      "Γραφείο εγκατάστασης",
    ),
    "tools_sidebar_tab_packages": MessageLookupByLibrary.simpleMessage(
      "Στοίβα Προγράμματα",
    ),
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
    "wifiConnectError": m31,
    "wifiConnected": m32,
    "wifiPassword": MessageLookupByLibrary.simpleMessage("Contraseña Wi-Fi"),
    "wifi_connect_error": m33,
    "wifi_connected_log": m34,
    "wifi_connected_status": m35,
    "wifi_dialog_title": MessageLookupByLibrary.simpleMessage(
      "Συνδέστε και εγκαταστήστε ένα Wi-Fi",
    ),
    "wifi_item_signal_security": m36,
    "wifi_none_found": MessageLookupByLibrary.simpleMessage(
      "Δεν υπάρχει δυνατότητα αλλαγής των διαθέσιμων Wi-Fi.",
    ),
    "wifi_password_hint": MessageLookupByLibrary.simpleMessage(
      "Contraseña Wi-Fi",
    ),
    "wifi_scanning": MessageLookupByLibrary.simpleMessage(
      "Σάρωση διαθέσιμων δικτύων Wi-Fi...",
    ),
    "wimIntegrated": MessageLookupByLibrary.simpleMessage(
      "WIM integrado στο ISO",
    ),
    "wim_bridge_connection_error": m37,
    "wim_bridge_ip_dialog_title": MessageLookupByLibrary.simpleMessage(
      "IP del Puente Ρέκβιεμ",
    ),
    "wim_bridge_ip_placeholder": MessageLookupByLibrary.simpleMessage(
      "192.168.1.20",
    ),
    "wim_bridge_not_found": MessageLookupByLibrary.simpleMessage(
      "No se encontró ningún puente. Εγχειρίδιο Pruebe con la IP.",
    ),
    "wim_bridge_search_error": m38,
    "wim_bridge_searching": MessageLookupByLibrary.simpleMessage(
      "Αναζήτηση γεφυρών Requiem στο τοπικό δίκτυο IPv4...",
    ),
    "wim_bridge_section_header": MessageLookupByLibrary.simpleMessage(
      "O reciba la installación preparada desde Requiem για τα Windows",
    ),
    "wim_button_change_file": MessageLookupByLibrary.simpleMessage(
      "ΑΡΧΕΙΟ CAMBIAR",
    ),
    "wim_button_connect_wifi": MessageLookupByLibrary.simpleMessage(
      "ΣΥΝΔΕΣΗ WI-FI",
    ),
    "wim_button_manual_ip": MessageLookupByLibrary.simpleMessage(
      "ΕΓΧΕΙΡΙΔΙΟ IP USAR",
    ),
    "wim_button_rescan": MessageLookupByLibrary.simpleMessage(
      "Escanear unidades de nuevo",
    ),
    "wim_button_search_bridge": MessageLookupByLibrary.simpleMessage(
      "BUSCAR PUENTE",
    ),
    "wim_manual_search_hint": MessageLookupByLibrary.simpleMessage(
      "Χρησιμοποιήστε το \"Buscar\" για τον εντοπισμό του εγχειριδίου του αρχείου WIM.",
    ),
    "wim_picker_description": MessageLookupByLibrary.simpleMessage(
      "Αναλογία εικόνας εγκατάστασης των Windows (install.wim o install.swm)\\n",
    ),
    "wim_picker_title": MessageLookupByLibrary.simpleMessage(
      "Επιλογή εικόνας των Windows",
    ),
    "wim_status_found": MessageLookupByLibrary.simpleMessage(
      "Imagen encontrada",
    ),
    "wim_status_not_found": MessageLookupByLibrary.simpleMessage(
      "Δεν υπάρχει ανίχνευση εικόνας",
    ),
    "wim_status_searching": MessageLookupByLibrary.simpleMessage(
      "Εικόνα Buscando…",
    ),
    "wim_status_searching_alt": MessageLookupByLibrary.simpleMessage(
      "Εικόνα Buscando...",
    ),
    "wingetUnavailable": MessageLookupByLibrary.simpleMessage(
      "winget no está installado o no está en PATH.",
    ),
  };
}
