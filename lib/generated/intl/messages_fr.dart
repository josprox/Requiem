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

  static String m7(name, edition) => "Édition détectée : ${name} (${edition})";

  static String m8(error) => "Une erreur s\'est produite : ${error}";

  static String m9(path) => "Itinéraire invalide : ${path}";

  static String m10(error) => "Erreur KMS : ${error}";

  static String m11(product, channel, edition, status) =>
      "${product} / ${channel} / ${edition} bits. La rénovation a eu lieu ${status}.";

  static String m12(count) => "Paquets détectés : ${count}.";

  static String m13(file) => "Sélectionné : ${file}";

  static String m14(error) =>
      "Vous ne pouvez pas vous connecter au Wi-Fi : ${error}";

  static String m15(network) => "Connecté à ${network}.";

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
    "editionDetected": m7,
    "emptyFolder": MessageLookupByLibrary.simpleMessage(
      "Esta carpeta está vacía",
    ),
    "errorGeneric": m8,
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
    "invalidPath": m9,
    "isoDescription": MessageLookupByLibrary.simpleMessage(
      "Obtenez la base ISO pour sélectionner un WIM pour l\'installation, ou créer une ISO autonome qui inclut votre image de Windows.",
    ),
    "kmsError": m10,
    "kmsHostEmpty": MessageLookupByLibrary.simpleMessage(
      "Erreur : l\'hôte KMS est vide.",
    ),
    "kmsServer": MessageLookupByLibrary.simpleMessage("Serveur KMS"),
    "kmsTask160Days": MessageLookupByLibrary.simpleMessage("Tarea 160 jours"),
    "kmsVolumeActivation": MessageLookupByLibrary.simpleMessage(
      "Activation du volume (KMS)",
    ),
    "landingDescription": MessageLookupByLibrary.simpleMessage(
      "Installateur de Windows de haute précision pour un rendu de haut niveau. Expérimentez un déploiement rapide avec la requête directe de DISM et l\'optimisation automatisée du système.",
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
    "officeRenewalStatus": m11,
    "officeVersion": MessageLookupByLibrary.simpleMessage("Version de Office"),
    "onlyWindows": MessageLookupByLibrary.simpleMessage(
      "Cette fonction est uniquement disponible sur Windows.",
    ),
    "packageStack": MessageLookupByLibrary.simpleMessage(
      "Pile de programmes (Winget)",
    ),
    "packagesDetected": m12,
    "partitionMode": MessageLookupByLibrary.simpleMessage(
      "Mode de participation",
    ),
    "prepareBridge": MessageLookupByLibrary.simpleMessage(
      "Préparer et démarrer le pont",
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
    "selectedFile": m13,
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
    "wifiConnectError": m14,
    "wifiConnected": m15,
    "wifiPassword": MessageLookupByLibrary.simpleMessage("Wi-Fi à Contraseña"),
    "wimIntegrated": MessageLookupByLibrary.simpleMessage(
      "WIM intégré à l\'ISO",
    ),
    "wingetUnavailable": MessageLookupByLibrary.simpleMessage(
      "n\'est pas installé ou n\'est pas sur PATH.",
    ),
  };
}
