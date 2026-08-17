// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a fr locale. All the
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
  String get localeName => 'fr';

  static String m0(count) => "${count} programmes";

  static String m1(version) => "Version disponible : ${version}";

  static String m2(firmware) => "Arranque actuelle : ${firmware}";

  static String m3(error) => "Vous ne pouvez pas vous connecter : ${error}";

  static String m4(error) => "Ne vous laissez pas chercher le pont : ${error}";

  static String m5(host) => "Connectivité comprise avec ${host}:1688...";

  static String m6(mode) => "Mode compatible : ${mode}";

  static String m7(firmware) => "Arranque actuelle : ${firmware}";

  static String m8(diskNumber, mediaType, busType) =>
      "DISQUE ${diskNumber} · ${mediaType} · ${busType}";

  static String m9(recommended) => "Mode compatible : ${recommended}";

  static String m10(sizeGB) => "${sizeGB} Go";

  static String m11(imageName) =>
      "Puente : \${controller.bridgeAnnouncement?.imageName ??";

  static String m12(name, edition) => "Édition détectée : ${name} (${edition})";

  static String m13(error) => "Une erreur s\'est produite : ${error}";

  static String m14(val) => "Itinéraire invalide : ${val}";

  static String m15(error) =>
      "Vous ne pouvez pas lire le contenu du répertoire.\\n${error}";

  static String m16(path) => "Sélectionné : ${path}";

  static String m17(path) => "Itinéraire invalide : ${path}";

  static String m18(clients) => "${clients} connexions";

  static String m19(error) => "ERREUR : ${error}";

  static String m20(error) =>
      "Vous ne pouvez pas énumérer les interfaces IPv4 : ${error}";

  static String m21(path) => "Sélectionné WIM : ${path}";

  static String m22(error) => "Erreur KMS : ${error}";

  static String m23(product, channel, edition, status) =>
      "${product} / ${channel} / ${edition} bits. La rénovation a eu lieu ${status}.";

  static String m24(count) => "Paquets détectés : ${count}.";

  static String m25(file) => "Sélectionné : ${file}";

  static String m26(count) => "${count} programmes";

  static String m27(host) => "Connectivité comprise avec ${host}:1688...";

  static String m28(error) => "ERREUR KMS : ${error}";

  static String m29(time, message) => "[${time}] ${message}";

  static String m30(count) => "Paquets détectés : ${count}.";

  static String m31(error) =>
      "Vous ne pouvez pas vous connecter au Wi-Fi : ${error}";

  static String m32(network) => "Connecté à ${network}.";

  static String m33(error) =>
      "Vous ne pouvez pas vous connecter au Wi-Fi : ${error}";

  static String m34(ssid, result) => "Wi-Fi connecté à ${ssid}. ${result}";

  static String m35(ssid) => "Connecté à ${ssid}.";

  static String m36(signal, security) => "${signal}% · ${security}";

  static String m37(error) => "Vous ne pouvez pas vous connecter : ${error}";

  static String m38(error) => "Ne vous laissez pas chercher le pont : ${error}";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
    "actionCancel": MessageLookupByLibrary.simpleMessage("Annuler"),
    "actionChange": MessageLookupByLibrary.simpleMessage("Changer"),
    "actionConfirm": MessageLookupByLibrary.simpleMessage("Confirmer"),
    "actionConnect": MessageLookupByLibrary.simpleMessage("Connecter"),
    "actionContinue": MessageLookupByLibrary.simpleMessage("Continuer"),
    "actionInstall": MessageLookupByLibrary.simpleMessage("Installer"),
    "actionRefresh": MessageLookupByLibrary.simpleMessage("Actualiser"),
    "actionRestartSystem": MessageLookupByLibrary.simpleMessage(
      "Système de réparation",
    ),
    "actionScanAgain": MessageLookupByLibrary.simpleMessage(
      "Échapper à des unités neuves",
    ),
    "actionSearch": MessageLookupByLibrary.simpleMessage("Rechercher"),
    "actionSelect": MessageLookupByLibrary.simpleMessage("Sélectionner"),
    "activate": MessageLookupByLibrary.simpleMessage("Activer"),
    "activateKms": MessageLookupByLibrary.simpleMessage("Activer KMS"),
    "appTitleInstaller": MessageLookupByLibrary.simpleMessage(
      "Installateur de Requiem",
    ),
    "appTitleTools": MessageLookupByLibrary.simpleMessage("Outils Requiem"),
    "app_title_installer": MessageLookupByLibrary.simpleMessage(
      "Installateur de Requiem",
    ),
    "app_title_tools": MessageLookupByLibrary.simpleMessage("Outils Requiem"),
    "applicationStack": MessageLookupByLibrary.simpleMessage(
      "Pile d\'applications",
    ),
    "applicationStackDescription": MessageLookupByLibrary.simpleMessage(
      "Installez et actualisez les outils de développement essentiels pour Windows à l\'intérieur de l\'aile.",
    ),
    "applicationsCount": m0,
    "automaticOffice": MessageLookupByLibrary.simpleMessage(
      "Bureau automatique",
    ),
    "automaticOfficeDescription": MessageLookupByLibrary.simpleMessage(
      "Utiliser le GVLK de volume installé",
    ),
    "automaticRenewal": MessageLookupByLibrary.simpleMessage(
      "Rénovation automatique",
    ),
    "automaticWindows": MessageLookupByLibrary.simpleMessage(
      "Windows automatique",
    ),
    "automaticWindowsDescription": MessageLookupByLibrary.simpleMessage(
      "Détecter l\'édition et la compatibilité GVLK",
    ),
    "availableVersion": m1,
    "bootCurrent": m2,
    "bridgeConnectError": m3,
    "bridgeDescription": MessageLookupByLibrary.simpleMessage(
      "Préparez le WIM un seul jour et transmettez-le directement aux clients Requiem de la misma red. Les clients ne gardent pas WIM avant de l\'installer.",
    ),
    "bridgeIp": MessageLookupByLibrary.simpleMessage("IP du pont Requiem"),
    "bridgePorts": MessageLookupByLibrary.simpleMessage(
      "Port HTTP 40124 · Recherche UDP 40123. Si Windows Defender est important, permettez l\'accès aux réseaux privés.",
    ),
    "bridgeSearchError": m4,
    "checkingKms": m5,
    "clearLogs": MessageLookupByLibrary.simpleMessage("Journaux clairs"),
    "common_cancel": MessageLookupByLibrary.simpleMessage("ANNULER"),
    "common_change": MessageLookupByLibrary.simpleMessage("CAMBIAR"),
    "common_connect": MessageLookupByLibrary.simpleMessage("CONECTAR"),
    "common_continue": MessageLookupByLibrary.simpleMessage("CONTINUER"),
    "common_label_disk": MessageLookupByLibrary.simpleMessage("DISQUE"),
    "common_label_image": MessageLookupByLibrary.simpleMessage("IMAGES"),
    "common_label_mode": MessageLookupByLibrary.simpleMessage("MODE"),
    "common_refresh": MessageLookupByLibrary.simpleMessage("Actualiser"),
    "common_search": MessageLookupByLibrary.simpleMessage("AUTOMOBILE"),
    "common_select": MessageLookupByLibrary.simpleMessage("SÉLECTIONNER"),
    "compatibleMode": m6,
    "confirmDataDestruction": MessageLookupByLibrary.simpleMessage(
      "Confirmer la destruction des données",
    ),
    "confirmInstallation": MessageLookupByLibrary.simpleMessage(
      "Confirmer l\'installation",
    ),
    "connectInstallerWifi": MessageLookupByLibrary.simpleMessage(
      "Connecter l’installateur au Wi-Fi",
    ),
    "connectWifi": MessageLookupByLibrary.simpleMessage("Connecter le Wi-Fi"),
    "console_title": MessageLookupByLibrary.simpleMessage(
      "Consola del Sistema",
    ),
    "console_tooltip_clear": MessageLookupByLibrary.simpleMessage(
      "Journaux clairs",
    ),
    "console_tooltip_copy": MessageLookupByLibrary.simpleMessage(
      "Journaux de copie",
    ),
    "console_waiting_action": MessageLookupByLibrary.simpleMessage(
      "J\'espère une action...",
    ),
    "copyLogs": MessageLookupByLibrary.simpleMessage("Journaux de copie"),
    "deploymentInProgress": MessageLookupByLibrary.simpleMessage(
      "Despliegue en curso",
    ),
    "designedBy": MessageLookupByLibrary.simpleMessage("Conçu par Joss"),
    "destinationDiskDescription": MessageLookupByLibrary.simpleMessage(
      "Elija l\'unité physique où se installa Windows.",
    ),
    "detect": MessageLookupByLibrary.simpleMessage("Détecter"),
    "diskManagement": MessageLookupByLibrary.simpleMessage(
      "Administration des discothèques",
    ),
    "disk_badge_system": MessageLookupByLibrary.simpleMessage("SYSTÈME"),
    "disk_boot_firmware_label": m7,
    "disk_button_confirm_and_install": MessageLookupByLibrary.simpleMessage(
      "CONFIRMER ET INSTALLER",
    ),
    "disk_dialog_confirm_destruction_title":
        MessageLookupByLibrary.simpleMessage(
          "CONFIRMER LA DESTRUCCIÓN DE DATOS",
        ),
    "disk_dialog_confirm_install_title": MessageLookupByLibrary.simpleMessage(
      "CONFIRMER L\'INSTALLATION",
    ),
    "disk_dialog_existing_notice": MessageLookupByLibrary.simpleMessage(
      "Windows se désinstallera sur W:\\\\ sans formater.",
    ),
    "disk_dialog_format_warning": MessageLookupByLibrary.simpleMessage(
      "La discothèque sélectionnée sera formatée complètement. Vous perdrez toutes les données.",
    ),
    "disk_empty_list": MessageLookupByLibrary.simpleMessage(
      "Ne détectez pas de discothèques physiques",
    ),
    "disk_item_header": m8,
    "disk_management_appbar_title": MessageLookupByLibrary.simpleMessage(
      "ADMINISTRATION DE DISQUES",
    ),
    "disk_partition_gpt_uefi": MessageLookupByLibrary.simpleMessage("GPT/UEFI"),
    "disk_partition_mbr_bios": MessageLookupByLibrary.simpleMessage("MBR/BIOS"),
    "disk_recommended_mode_label": m9,
    "disk_selection_button_start": MessageLookupByLibrary.simpleMessage(
      "INSTALLATION INITIALE",
    ),
    "disk_selection_desc": MessageLookupByLibrary.simpleMessage(
      "Elija l\'unité physique où se installa Windows.",
    ),
    "disk_selection_title": MessageLookupByLibrary.simpleMessage(
      "Sélectionner une discothèque de Destino",
    ),
    "disk_size_gb": m10,
    "disk_waiting_wim_hint": MessageLookupByLibrary.simpleMessage(
      "En attendant la détection de install.wim...",
    ),
    "disk_wim_bridge_source": m11,
    "disk_wim_detected": MessageLookupByLibrary.simpleMessage("Image détectée"),
    "disk_wim_integrated_source": MessageLookupByLibrary.simpleMessage(
      "WIM intégré à l\'ISO",
    ),
    "disk_wim_not_found": MessageLookupByLibrary.simpleMessage(
      "Image non trouvée",
    ),
    "doNotDisconnect": MessageLookupByLibrary.simpleMessage(
      "Ne pas couper l\'énergie ni mettre hors service le moyen d\'installation",
    ),
    "downloadAndActivate": MessageLookupByLibrary.simpleMessage(
      "Télécharger + activer",
    ),
    "downloadInstaller": MessageLookupByLibrary.simpleMessage(
      "Télécharger l\'installateur (.exe)",
    ),
    "downloadPortable": MessageLookupByLibrary.simpleMessage(
      "Télécharger le portable (.zip)",
    ),
    "drives": MessageLookupByLibrary.simpleMessage("Unités"),
    "editionDetected": m12,
    "emptyFolder": MessageLookupByLibrary.simpleMessage(
      "Esta carpeta está vacía",
    ),
    "errorGeneric": m13,
    "file_explorer_default_title": MessageLookupByLibrary.simpleMessage(
      "Sélectionnez l\'image d\'installation de Windows",
    ),
    "file_explorer_drives_header": MessageLookupByLibrary.simpleMessage(
      "UNITÉS",
    ),
    "file_explorer_empty_folder": MessageLookupByLibrary.simpleMessage(
      "Esta carpeta está vacía",
    ),
    "file_explorer_filter_hint": MessageLookupByLibrary.simpleMessage(
      "Filtrer…",
    ),
    "file_explorer_go_up_tooltip": MessageLookupByLibrary.simpleMessage(
      "Subir un niveau",
    ),
    "file_explorer_invalid_path_error": m14,
    "file_explorer_read_error": m15,
    "file_explorer_select_file_hint": MessageLookupByLibrary.simpleMessage(
      "Sélectionnez un fichier .wim ou .swm",
    ),
    "file_explorer_selected_file": m16,
    "filter": MessageLookupByLibrary.simpleMessage("Filtrer…"),
    "formatGpt": MessageLookupByLibrary.simpleMessage(
      "Formater GPT (recommandé)",
    ),
    "formatGptDescription": MessageLookupByLibrary.simpleMessage(
      "Nettoyer la discothèque et créer un design UEFI\nEFI (S :) + Windows (W :)",
    ),
    "formatMbr": MessageLookupByLibrary.simpleMessage(
      "Formater le MBR (BIOS hérité)",
    ),
    "formatMbrDescription": MessageLookupByLibrary.simpleMessage(
      "Nettoyer la discothèque et créer un design hérité\nFenêtres solo (C :)",
    ),
    "formatWarning": MessageLookupByLibrary.simpleMessage(
      "La discothèque sélectionnée sera formatée complètement. Vous perdrez toutes les données.",
    ),
    "generateIso": MessageLookupByLibrary.simpleMessage("ISO générique"),
    "getInstallOnlyIso": MessageLookupByLibrary.simpleMessage(
      "Obtenir ISO pour l’installation seule",
    ),
    "goUpOneLevel": MessageLookupByLibrary.simpleMessage("Subir un niveau"),
    "imageDetected": MessageLookupByLibrary.simpleMessage("Image détectée"),
    "imageFound": MessageLookupByLibrary.simpleMessage("Image trouvée"),
    "imageNotFound": MessageLookupByLibrary.simpleMessage("Image non trouvée"),
    "imageSearching": MessageLookupByLibrary.simpleMessage("Image Buscando..."),
    "installAll": MessageLookupByLibrary.simpleMessage("Installer la tâche"),
    "installOffice": MessageLookupByLibrary.simpleMessage(
      "Installer le bureau",
    ),
    "installationProgress": MessageLookupByLibrary.simpleMessage(
      "Progression de l\'installation",
    ),
    "invalidPath": m17,
    "isoDescription": MessageLookupByLibrary.simpleMessage(
      "Obtenez la base ISO pour sélectionner un WIM pour l\'installation, ou créer une ISO autonome qui inclut votre image de Windows.",
    ),
    "iso_bridge_clients_count": m18,
    "iso_bridge_desc": MessageLookupByLibrary.simpleMessage(
      "Préparez le WIM un seul jour et transmettez-le directement aux clients Requiem de la misma red. Les clients ne gardent pas WIM avant de l\'installer.",
    ),
    "iso_bridge_generic_error": m19,
    "iso_bridge_list_interfaces_error": m20,
    "iso_bridge_save_simple_iso_dialog": MessageLookupByLibrary.simpleMessage(
      "Garder ISO simple de Requiem",
    ),
    "iso_bridge_save_wim_iso_dialog": MessageLookupByLibrary.simpleMessage(
      "Garder ISO de Requiem avec WIM",
    ),
    "iso_bridge_select_wim_dialog": MessageLookupByLibrary.simpleMessage(
      "Sélectionner l\'image WIM de Windows",
    ),
    "iso_bridge_simple_iso_filename": MessageLookupByLibrary.simpleMessage(
      "Requiem-Installer-Simple.iso",
    ),
    "iso_bridge_start_validation_error": MessageLookupByLibrary.simpleMessage(
      "Sélectionnez un WIM et une interface IPv4 privée.",
    ),
    "iso_bridge_wim_selected_log": m21,
    "iso_panel_button_generate_iso": MessageLookupByLibrary.simpleMessage(
      "ISO GÉNÉRAIRE",
    ),
    "iso_panel_button_select_wim": MessageLookupByLibrary.simpleMessage(
      "WIM SÉLECTIONNÉ",
    ),
    "iso_panel_button_simple_iso": MessageLookupByLibrary.simpleMessage(
      "OBTENER ISO POUR INSTALACIÓN SOLAMENTE",
    ),
    "iso_panel_desc_media": MessageLookupByLibrary.simpleMessage(
      "Obtenez la base ISO pour sélectionner un WIM pour l\'installation, ou créer une ISO autonome qui inclut votre image de Windows.",
    ),
    "iso_panel_title_bridge": MessageLookupByLibrary.simpleMessage(
      "Pont d\'installation IPv4",
    ),
    "iso_panel_title_media": MessageLookupByLibrary.simpleMessage(
      "Moyen d\'installation",
    ),
    "kmsError": m22,
    "kmsHostEmpty": MessageLookupByLibrary.simpleMessage(
      "Erreur : l\'hôte KMS est vide.",
    ),
    "kmsServer": MessageLookupByLibrary.simpleMessage("Serveur KMS"),
    "kmsTask160Days": MessageLookupByLibrary.simpleMessage("Tarea 160 jours"),
    "kmsVolumeActivation": MessageLookupByLibrary.simpleMessage(
      "Activation du volume (KMS)",
    ),
    "kms_product_office_ltsc_professional_plus_2021":
        MessageLookupByLibrary.simpleMessage(
          "Bureau LTSC Professionnel Plus 2021",
        ),
    "kms_product_office_ltsc_professional_plus_2024":
        MessageLookupByLibrary.simpleMessage(
          "Bureau LTSC Professionnel Plus 2024",
        ),
    "kms_product_office_professional_plus_2013":
        MessageLookupByLibrary.simpleMessage("Bureau Professionnel Plus 2013"),
    "kms_product_office_professional_plus_2016":
        MessageLookupByLibrary.simpleMessage("Bureau Professionnel Plus 2016"),
    "kms_product_office_professional_plus_2019":
        MessageLookupByLibrary.simpleMessage("Bureau Professionnel Plus 2019"),
    "kms_product_office_standard_2013": MessageLookupByLibrary.simpleMessage(
      "Norme de bureau 2013",
    ),
    "kms_product_windows_10_11_education": MessageLookupByLibrary.simpleMessage(
      "Windows 10/11 Éducation",
    ),
    "kms_product_windows_10_11_education_n":
        MessageLookupByLibrary.simpleMessage("Windows 10/11 Éducation N"),
    "kms_product_windows_10_11_enterprise":
        MessageLookupByLibrary.simpleMessage("Windows 10/11 Entreprise"),
    "kms_product_windows_10_11_enterprise_g":
        MessageLookupByLibrary.simpleMessage("Windows 10/11 Entreprise G"),
    "kms_product_windows_10_11_enterprise_g_n":
        MessageLookupByLibrary.simpleMessage("Windows 10/11 Entreprise G N"),
    "kms_product_windows_10_11_enterprise_n":
        MessageLookupByLibrary.simpleMessage("Windows 10/11 Entreprise N"),
    "kms_product_windows_10_11_pro": MessageLookupByLibrary.simpleMessage(
      "Windows 10/11 Professionnel",
    ),
    "kms_product_windows_10_11_pro_education":
        MessageLookupByLibrary.simpleMessage(
          "Windows 10/11 Professionnel Éducation",
        ),
    "kms_product_windows_10_11_pro_for_workstations":
        MessageLookupByLibrary.simpleMessage(
          "Windows 10/11 Professionnel pour les postes de travail",
        ),
    "kms_product_windows_10_11_pro_n": MessageLookupByLibrary.simpleMessage(
      "Windows 10/11 Professionnel N",
    ),
    "kms_product_windows_10_11_pro_workstations":
        MessageLookupByLibrary.simpleMessage(
          "Postes de travail Windows 10/11 Professionnel",
        ),
    "kms_product_windows_8_1_enterprise": MessageLookupByLibrary.simpleMessage(
      "Windows 8.1 Entreprise",
    ),
    "kms_product_windows_8_1_pro": MessageLookupByLibrary.simpleMessage(
      "Windows 8.1 Professionnel",
    ),
    "kms_product_windows_8_enterprise": MessageLookupByLibrary.simpleMessage(
      "Windows 8 Entreprise",
    ),
    "kms_product_windows_8_pro": MessageLookupByLibrary.simpleMessage(
      "Windows 8 Professionnel",
    ),
    "kms_product_windows_server_2019_datacenter":
        MessageLookupByLibrary.simpleMessage(
          "Centre de données Windows Server 2019",
        ),
    "kms_product_windows_server_2019_standard":
        MessageLookupByLibrary.simpleMessage("Windows Server 2019 Standard"),
    "kms_product_windows_server_2022_datacenter":
        MessageLookupByLibrary.simpleMessage(
          "Centre de données Windows Server 2022",
        ),
    "kms_product_windows_server_2022_standard":
        MessageLookupByLibrary.simpleMessage("Windows Serveur 2022 Standard"),
    "kms_product_windows_server_2025_datacenter":
        MessageLookupByLibrary.simpleMessage(
          "Centre de données Windows Server 2025",
        ),
    "kms_product_windows_server_2025_standard":
        MessageLookupByLibrary.simpleMessage("Windows Serveur 2025 Standard"),
    "kms_product_windows_subsystem_for_linux":
        MessageLookupByLibrary.simpleMessage("Sous-système Windows pour Linux"),
    "kms_product_windows_terminal": MessageLookupByLibrary.simpleMessage(
      "Terminal Windows",
    ),
    "landingDescription": MessageLookupByLibrary.simpleMessage(
      "Installateur de Windows de haute précision pour un rendu de haut niveau. Expérimentez un déploiement rapide avec la requête directe de DISM et l\'optimisation automatisée du système.",
    ),
    "landing_badge_author": MessageLookupByLibrary.simpleMessage(
      "DISEÑADO POR JOSS",
    ),
    "landing_badge_secure_boot": MessageLookupByLibrary.simpleMessage(
      "COMPATIBLE AVEC DÉMARRAGE SÉCURISÉ",
    ),
    "landing_badge_version": MessageLookupByLibrary.simpleMessage(
      "VERSION ESTABLE",
    ),
    "landing_button_logs": MessageLookupByLibrary.simpleMessage(
      "JOURNAUX DU SISTEMA",
    ),
    "landing_button_start": MessageLookupByLibrary.simpleMessage("EMPÉZAR"),
    "landing_description_part1": MessageLookupByLibrary.simpleMessage(
      "Installateur de Windows de haute précision pour un rendu de haut niveau.",
    ),
    "landing_description_part2": MessageLookupByLibrary.simpleMessage(
      "Expérimentez un déploiement rapide avec la requête directe de DISM et l\'optimisation automatisée du système.",
    ),
    "landing_subtitle": MessageLookupByLibrary.simpleMessage(
      "DESPLIEGUE DE SO DE PRÓXIMA GENERACIÓN",
    ),
    "landing_title_installer": MessageLookupByLibrary.simpleMessage(
      "INSTALLATEUR DE REQUIEM",
    ),
    "landing_title_tools": MessageLookupByLibrary.simpleMessage(
      "OUTILS REQUIEM",
    ),
    "licenseActivation": MessageLookupByLibrary.simpleMessage(
      "Activation des licences",
    ),
    "logsCopied": MessageLookupByLibrary.simpleMessage(
      "Journaux copiés sur les ordinateurs portables.",
    ),
    "mandatoryUpdate": MessageLookupByLibrary.simpleMessage(
      "Cette mise à jour est obligatoire et ne peut pas être omise.",
    ),
    "manualWimHint": MessageLookupByLibrary.simpleMessage(
      "Utilisez \"Rechercher\" pour localiser manuellement votre fichier WIM.",
    ),
    "mediaInstallation": MessageLookupByLibrary.simpleMessage(
      "Moyen d\'installation",
    ),
    "networkBridge": MessageLookupByLibrary.simpleMessage(
      "Pont d\'installation IPv4",
    ),
    "networkInterface": MessageLookupByLibrary.simpleMessage(
      "Interfaz Wi-Fi/LAN IPv4",
    ),
    "nextGenerationDeployment": MessageLookupByLibrary.simpleMessage(
      "Despligue de SO de la prochaine génération",
    ),
    "noBridgeFound": MessageLookupByLibrary.simpleMessage(
      "No se trouve ningún puente. Examinez le manuel IP.",
    ),
    "noFormatWarning": MessageLookupByLibrary.simpleMessage(
      "Windows se désinstallera sur W:\\ sans formater.",
    ),
    "noImageDetected": MessageLookupByLibrary.simpleMessage(
      "Aucune image n\'a été détectée",
    ),
    "noKmsProducts": MessageLookupByLibrary.simpleMessage(
      "Aucun produit de foin sélectionné par KMS.",
    ),
    "noPhysicalDisks": MessageLookupByLibrary.simpleMessage(
      "Ne détectez pas de discothèques physiques",
    ),
    "noProgramsSelected": MessageLookupByLibrary.simpleMessage(
      "Aucun programme de foin sélectionné.",
    ),
    "noWifiNetworks": MessageLookupByLibrary.simpleMessage(
      "Vous ne trouverez pas de réseau Wi-Fi disponible.",
    ),
    "noWingetPackages": MessageLookupByLibrary.simpleMessage(
      "Ne détectez pas de paquets connus avec des ailes.",
    ),
    "officeInstallDescription": MessageLookupByLibrary.simpleMessage(
      "Téléchargez Microsoft Office LTSC ou 365 de manière automatisée en utilisant ODT.",
    ),
    "officeInstaller": MessageLookupByLibrary.simpleMessage(
      "Installateur de bureau",
    ),
    "officeRenewalStatus": m23,
    "officeVersion": MessageLookupByLibrary.simpleMessage("Version de Office"),
    "office_odt_kms_badge": MessageLookupByLibrary.simpleMessage("ODT + KMS"),
    "office_odt_panel_title": MessageLookupByLibrary.simpleMessage(
      "Outil de déploiement de bureau",
    ),
    "office_pkg_desc_2019": MessageLookupByLibrary.simpleMessage(
      "Cliquez pour exécuter le volume avec le canal PerpetualVL2019",
    ),
    "office_pkg_desc_2021": MessageLookupByLibrary.simpleMessage(
      "Cliquez pour exécuter le volume avec le canal PerpetualVL2021",
    ),
    "office_pkg_desc_2024": MessageLookupByLibrary.simpleMessage(
      "Cliquez pour exécuter le volume avec le canal PerpetualVL2024",
    ),
    "office_pkg_name_2019": MessageLookupByLibrary.simpleMessage(
      "Bureau Pro Plus 2019",
    ),
    "office_pkg_name_2021": MessageLookupByLibrary.simpleMessage(
      "Bureau LTSC Pro Plus 2021",
    ),
    "office_pkg_name_2024": MessageLookupByLibrary.simpleMessage(
      "Bureau LTSC Pro Plus 2024",
    ),
    "onlyWindows": MessageLookupByLibrary.simpleMessage(
      "Cette fonction est uniquement disponible sur Windows.",
    ),
    "packageStack": MessageLookupByLibrary.simpleMessage(
      "Pile de programmes (Winget)",
    ),
    "packagesDetected": m24,
    "partitionMode": MessageLookupByLibrary.simpleMessage(
      "Mode de participation",
    ),
    "pkg_cat_apache_php_mysql": MessageLookupByLibrary.simpleMessage(
      "Apache PHP MySQL",
    ),
    "pkg_cat_bi_desktop": MessageLookupByLibrary.simpleMessage("Bureau BI"),
    "pkg_cat_cliente_api": MessageLookupByLibrary.simpleMessage("API client"),
    "pkg_cat_cliente_db": MessageLookupByLibrary.simpleMessage(
      "Base de données client",
    ),
    "pkg_cat_compiladores_c": MessageLookupByLibrary.simpleMessage(
      "Compilateurs C++",
    ),
    "pkg_cat_compresor": MessageLookupByLibrary.simpleMessage("Compresseur"),
    "pkg_cat_comunicacion": MessageLookupByLibrary.simpleMessage(
      "Communication",
    ),
    "pkg_cat_control_de_versiones": MessageLookupByLibrary.simpleMessage(
      "Contrôle des versions",
    ),
    "pkg_cat_desktop": MessageLookupByLibrary.simpleMessage("Bureau"),
    "pkg_cat_diagramas": MessageLookupByLibrary.simpleMessage("Diagrammes"),
    "pkg_cat_distro_wsl": MessageLookupByLibrary.simpleMessage(
      "Distribution WSL",
    ),
    "pkg_cat_editor": MessageLookupByLibrary.simpleMessage("Éditeur"),
    "pkg_cat_golang": MessageLookupByLibrary.simpleMessage("Golang"),
    "pkg_cat_gpu_compute": MessageLookupByLibrary.simpleMessage("Calcul GPU"),
    "pkg_cat_grabacion": MessageLookupByLibrary.simpleMessage("Grabacion"),
    "pkg_cat_ide_ai": MessageLookupByLibrary.simpleMessage("IDE IA"),
    "pkg_cat_ide_android": MessageLookupByLibrary.simpleMessage("EDI Android"),
    "pkg_cat_ide_completo": MessageLookupByLibrary.simpleMessage("IDE complet"),
    "pkg_cat_instaladores": MessageLookupByLibrary.simpleMessage(
      "Installateurs",
    ),
    "pkg_cat_javascript": MessageLookupByLibrary.simpleMessage("Javascript"),
    "pkg_cat_limpieza": MessageLookupByLibrary.simpleMessage("Limpieza"),
    "pkg_cat_modelos_locales": MessageLookupByLibrary.simpleMessage(
      "Modèles locaux",
    ),
    "pkg_cat_navegador": MessageLookupByLibrary.simpleMessage("Navigateur"),
    "pkg_cat_python_3": MessageLookupByLibrary.simpleMessage("Python3"),
    "pkg_cat_runtime_c": MessageLookupByLibrary.simpleMessage("Exécution C++"),
    "pkg_cat_runtime_escritorio": MessageLookupByLibrary.simpleMessage(
      "Bureau d\'écriture d\'exécution",
    ),
    "pkg_cat_runtime_juegos": MessageLookupByLibrary.simpleMessage(
      "Jeux d\'exécution",
    ),
    "pkg_cat_runtime_php": MessageLookupByLibrary.simpleMessage(
      "Exécution PHP",
    ),
    "pkg_cat_rustup": MessageLookupByLibrary.simpleMessage("Rouille"),
    "pkg_cat_sdk__net": MessageLookupByLibrary.simpleMessage("SDK .NET"),
    "pkg_cat_servidor_db": MessageLookupByLibrary.simpleMessage(
      "Serveur de base de données",
    ),
    "pkg_cat_ssh_clasico": MessageLookupByLibrary.simpleMessage(
      "Classique SSH",
    ),
    "pkg_cat_ssh_moderno": MessageLookupByLibrary.simpleMessage("SSH moderne"),
    "pkg_cat_subsistema_linux": MessageLookupByLibrary.simpleMessage(
      "Sous-système Linux",
    ),
    "pkg_cat_temurin_21": MessageLookupByLibrary.simpleMessage("Temurin 21"),
    "pkg_cat_terminal_moderno": MessageLookupByLibrary.simpleMessage(
      "Terminal moderne",
    ),
    "prepareBridge": MessageLookupByLibrary.simpleMessage(
      "Préparer et démarrer le pont",
    ),
    "progress_button_reboot": MessageLookupByLibrary.simpleMessage(
      "SYSTÈME DE RÉINICIAIRE",
    ),
    "progress_footer_warning": MessageLookupByLibrary.simpleMessage(
      "NO DESCONECTE LA ENERGÍA NI RETIRE EL MEDIO DE INSTALACIÓN",
    ),
    "progress_header_badge": MessageLookupByLibrary.simpleMessage(
      "DESPLIEGUE EN CURSO",
    ),
    "provideWindowsImage": MessageLookupByLibrary.simpleMessage(
      "Proportionner l\'image d\'installation de Windows (install.wim ou install.swm)\nà partir d’une unité USB ou de n’importe quel moyen monté.",
    ),
    "receiveInstallation": MessageLookupByLibrary.simpleMessage(
      "Vous recevez l\'installation préparée à partir de Requiem pour Windows",
    ),
    "renewalActive": MessageLookupByLibrary.simpleMessage("Actif"),
    "renewalDisabled": MessageLookupByLibrary.simpleMessage("Désactivé"),
    "searchingImage": MessageLookupByLibrary.simpleMessage("Image Buscando…"),
    "secureBootCompatible": MessageLookupByLibrary.simpleMessage(
      "Compatible avec Secure Boot",
    ),
    "selectDestinationDisk": MessageLookupByLibrary.simpleMessage(
      "Sélectionner une discothèque de destination",
    ),
    "selectFileHint": MessageLookupByLibrary.simpleMessage(
      "Sélectionnez un fichier .wim ou .swm",
    ),
    "selectWim": MessageLookupByLibrary.simpleMessage("Sélectionner WIM"),
    "selectWimFirst": MessageLookupByLibrary.simpleMessage(
      "Sélectionnez un WIM et une interface IPv4 privée.",
    ),
    "selectWindowsImage": MessageLookupByLibrary.simpleMessage(
      "Sélectionner une image de Windows",
    ),
    "selectWindowsImageFull": MessageLookupByLibrary.simpleMessage(
      "Sélectionner l\'image d\'installation de Windows",
    ),
    "selectedFile": m25,
    "stableVersion": MessageLookupByLibrary.simpleMessage(
      "Version établie v1.0.0",
    ),
    "start": MessageLookupByLibrary.simpleMessage("Empézar"),
    "startInstallation": MessageLookupByLibrary.simpleMessage(
      "Démarrer l’installation",
    ),
    "stopBridge": MessageLookupByLibrary.simpleMessage("Détenteur puente"),
    "systemConsole": MessageLookupByLibrary.simpleMessage("Console du système"),
    "systemDisk": MessageLookupByLibrary.simpleMessage("Système"),
    "systemLogs": MessageLookupByLibrary.simpleMessage("Journaux du système"),
    "tools_badge_iso_compatibility": MessageLookupByLibrary.simpleMessage(
      "BIOS + UEFI préservés",
    ),
    "tools_badge_kms_pending": MessageLookupByLibrary.simpleMessage(
      "KMS pendant",
    ),
    "tools_badge_package_count": m26,
    "tools_button_activate_kms": MessageLookupByLibrary.simpleMessage(
      "ACTIVER KMS",
    ),
    "tools_button_install_all_packages": MessageLookupByLibrary.simpleMessage(
      "INSTALLER TOUT À FAIRE",
    ),
    "tools_button_install_office": MessageLookupByLibrary.simpleMessage(
      "BUREAU INSTALLER",
    ),
    "tools_header_title": MessageLookupByLibrary.simpleMessage(
      "OUTILS DE MIGRATION REQUIEM",
    ),
    "tools_kms_checking_connectivity": m27,
    "tools_kms_empty_host_error": MessageLookupByLibrary.simpleMessage(
      "ERREUR : l\'hôte KMS est vide.",
    ),
    "tools_kms_error_log": m28,
    "tools_kms_no_products_selected": MessageLookupByLibrary.simpleMessage(
      "Aucun produit de foin sélectionné par KMS.",
    ),
    "tools_log_format": m29,
    "tools_logs_copied_snackbar": MessageLookupByLibrary.simpleMessage(
      "Journaux copiés sur les ordinateurs portables.",
    ),
    "tools_packages_detected_count": m30,
    "tools_packages_none_detected": MessageLookupByLibrary.simpleMessage(
      "Ne détectez pas de paquets connus avec des ailes.",
    ),
    "tools_packages_none_selected": MessageLookupByLibrary.simpleMessage(
      "Aucun programme de foin sélectionné.",
    ),
    "tools_section_activation_desc": MessageLookupByLibrary.simpleMessage(
      "Configurez le serveur KMS local ou distant pour activer Windows et Office.",
    ),
    "tools_section_activation_title": MessageLookupByLibrary.simpleMessage(
      "Activation des licences",
    ),
    "tools_section_iso_desc": MessageLookupByLibrary.simpleMessage(
      "Vous avez des moyens autonomes avec un WIM intégré ou distribuez une installation directement par IPv4.",
    ),
    "tools_section_iso_title": MessageLookupByLibrary.simpleMessage(
      "ISO et despliegue por red",
    ),
    "tools_section_office_desc": MessageLookupByLibrary.simpleMessage(
      "Téléchargez Microsoft Office LTSC ou 365 de manière automatisée en utilisant ODT.",
    ),
    "tools_section_office_title": MessageLookupByLibrary.simpleMessage(
      "Installateur de bureau",
    ),
    "tools_section_packages_desc": MessageLookupByLibrary.simpleMessage(
      "Installez et actualisez les outils de développement essentiels pour Windows à l\'intérieur de l\'aile.",
    ),
    "tools_section_packages_title": MessageLookupByLibrary.simpleMessage(
      "Pile d\'applications",
    ),
    "tools_sidebar_app_name": MessageLookupByLibrary.simpleMessage("REQUIEM"),
    "tools_sidebar_mode_badge": MessageLookupByLibrary.simpleMessage(
      "Mode outils locaux",
    ),
    "tools_sidebar_tab_iso": MessageLookupByLibrary.simpleMessage(
      "ISO et Puente",
    ),
    "tools_sidebar_tab_kms": MessageLookupByLibrary.simpleMessage(
      "Activation de KMS",
    ),
    "tools_sidebar_tab_office": MessageLookupByLibrary.simpleMessage(
      "Bureau d\'installation",
    ),
    "tools_sidebar_tab_packages": MessageLookupByLibrary.simpleMessage(
      "Programmes de pile",
    ),
    "unknown": MessageLookupByLibrary.simpleMessage("Desconocido"),
    "updateDescription": MessageLookupByLibrary.simpleMessage(
      "Pour continuer à utiliser Requiem Tools, vous devez mettre à jour la version la plus récente.",
    ),
    "updateRequired": MessageLookupByLibrary.simpleMessage(
      "Mise à jour requise",
    ),
    "useExistingPartitions": MessageLookupByLibrary.simpleMessage(
      "Utiliser les partitions existantes",
    ),
    "useExistingPartitionsDescription": MessageLookupByLibrary.simpleMessage(
      "Sin formatear — despliega en W: tal cual\nUtiliser la gestion manuelle des partitions",
    ),
    "waitingAction": MessageLookupByLibrary.simpleMessage(
      "J\'espère une action...",
    ),
    "waitingForWim": MessageLookupByLibrary.simpleMessage(
      "En attendant la détection de install.wim...",
    ),
    "wifiConnectError": m31,
    "wifiConnected": m32,
    "wifiPassword": MessageLookupByLibrary.simpleMessage("Wi-Fi à Contraseña"),
    "wifi_connect_error": m33,
    "wifi_connected_log": m34,
    "wifi_connected_status": m35,
    "wifi_dialog_title": MessageLookupByLibrary.simpleMessage(
      "Connecter l’installateur au Wi-Fi",
    ),
    "wifi_item_signal_security": m36,
    "wifi_none_found": MessageLookupByLibrary.simpleMessage(
      "Vous ne trouverez pas de réseau Wi-Fi disponible.",
    ),
    "wifi_password_hint": MessageLookupByLibrary.simpleMessage(
      "Wi-Fi à Contraseña",
    ),
    "wifi_scanning": MessageLookupByLibrary.simpleMessage(
      "Analyse des réseaux Wi-Fi disponibles...",
    ),
    "wimIntegrated": MessageLookupByLibrary.simpleMessage(
      "WIM intégré à l\'ISO",
    ),
    "wim_bridge_connection_error": m37,
    "wim_bridge_ip_dialog_title": MessageLookupByLibrary.simpleMessage(
      "IP du pont Requiem",
    ),
    "wim_bridge_ip_placeholder": MessageLookupByLibrary.simpleMessage(
      "192.168.1.20",
    ),
    "wim_bridge_not_found": MessageLookupByLibrary.simpleMessage(
      "No se trouve ningún puente. Examinez le manuel IP.",
    ),
    "wim_bridge_search_error": m38,
    "wim_bridge_searching": MessageLookupByLibrary.simpleMessage(
      "Recherche de ponts Requiem sur le réseau IPv4 local...",
    ),
    "wim_bridge_section_header": MessageLookupByLibrary.simpleMessage(
      "Vous recevez l\'installation préparée à partir de Requiem pour Windows",
    ),
    "wim_button_change_file": MessageLookupByLibrary.simpleMessage(
      "CAMBIAR ARCHIVO",
    ),
    "wim_button_connect_wifi": MessageLookupByLibrary.simpleMessage(
      "CONNECTER WI-FI",
    ),
    "wim_button_manual_ip": MessageLookupByLibrary.simpleMessage(
      "MANUEL IP USAR",
    ),
    "wim_button_rescan": MessageLookupByLibrary.simpleMessage(
      "Échapper à des unités neuves",
    ),
    "wim_button_search_bridge": MessageLookupByLibrary.simpleMessage(
      "BUSCAR PUENTE",
    ),
    "wim_manual_search_hint": MessageLookupByLibrary.simpleMessage(
      "Utilisez \"Rechercher\" pour localiser manuellement votre fichier WIM.",
    ),
    "wim_picker_description": MessageLookupByLibrary.simpleMessage(
      "Proportionner l\'image d\'installation de Windows (install.wim ou install.swm)\\n",
    ),
    "wim_picker_title": MessageLookupByLibrary.simpleMessage(
      "Sélectionner une image de Windows",
    ),
    "wim_status_found": MessageLookupByLibrary.simpleMessage("Image trouvée"),
    "wim_status_not_found": MessageLookupByLibrary.simpleMessage(
      "Aucune image n\'a été détectée",
    ),
    "wim_status_searching": MessageLookupByLibrary.simpleMessage(
      "Image Buscando…",
    ),
    "wim_status_searching_alt": MessageLookupByLibrary.simpleMessage(
      "Image Buscando...",
    ),
    "wingetUnavailable": MessageLookupByLibrary.simpleMessage(
      "n\'est pas installé ou n\'est pas sur PATH.",
    ),
  };
}
