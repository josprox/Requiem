// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a da locale. All the
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
  String get localeName => 'da';

  static String m0(count) => "${count} programmer";

  static String m1(version) => "Tilgængelig version: ${version}";

  static String m2(firmware) => "Nuværende aftale: ${firmware}";

  static String m3(error) => "Kunne ikke oprette forbindelse: ${error}";

  static String m4(error) => "Kunne ikke søge efter bro: ${error}";

  static String m5(host) => "Kontrollerer forbindelse med ${host}:1688...";

  static String m6(mode) => "Understøttet tilstand: ${mode}";

  static String m7(name, edition) => "Rediger fundet: ${name} (${edition})";

  static String m8(error) => "Der opstod en fejl: ${error}";

  static String m9(path) => "Ugyldig rute: ${path}";

  static String m10(error) => "KMS fejl: ${error}";

  static String m11(product, channel, edition, status) =>
      "${product} / ${channel} / ${edition} bits. Fornyelsen forbliver ${status}.";

  static String m12(count) => "Detekterede pakker: ${count}.";

  static String m13(file) => "Valgt: ${file}";

  static String m14(error) =>
      "Kunne ikke oprette forbindelse til Wi-Fi: ${error}";

  static String m15(network) => "Forbundet til ${network}.";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
    "actionCancel": MessageLookupByLibrary.simpleMessage("Annuller"),
    "actionChange": MessageLookupByLibrary.simpleMessage("Skift"),
    "actionConfirm": MessageLookupByLibrary.simpleMessage("Bekræft"),
    "actionConnect": MessageLookupByLibrary.simpleMessage("Forbind"),
    "actionContinue": MessageLookupByLibrary.simpleMessage("Fortsæt"),
    "actionInstall": MessageLookupByLibrary.simpleMessage("Installer"),
    "actionRefresh": MessageLookupByLibrary.simpleMessage("Opdatering"),
    "actionRestartSystem": MessageLookupByLibrary.simpleMessage(
      "Genstart systemet",
    ),
    "actionScanAgain": MessageLookupByLibrary.simpleMessage("Scan drev igen"),
    "actionSearch": MessageLookupByLibrary.simpleMessage("Søg"),
    "actionSelect": MessageLookupByLibrary.simpleMessage("Vælg"),
    "activate": MessageLookupByLibrary.simpleMessage("Aktiver"),
    "activateKms": MessageLookupByLibrary.simpleMessage("Aktiver KMS"),
    "appTitleInstaller": MessageLookupByLibrary.simpleMessage(
      "Requiem installatør",
    ),
    "appTitleTools": MessageLookupByLibrary.simpleMessage("Requiem værktøjer"),
    "applicationStack": MessageLookupByLibrary.simpleMessage("Ansøgningsstak"),
    "applicationStackDescription": MessageLookupByLibrary.simpleMessage(
      "Installer og opdater væsentlige udviklingsværktøjer til Windows ved hjælp af Winget.",
    ),
    "applicationsCount": m0,
    "automaticOffice": MessageLookupByLibrary.simpleMessage(
      "automatisk kontor",
    ),
    "automaticOfficeDescription": MessageLookupByLibrary.simpleMessage(
      "Brug det allerede installerede volumen GVLK",
    ),
    "automaticRenewal": MessageLookupByLibrary.simpleMessage(
      "Automatisk fornyelse",
    ),
    "automaticWindows": MessageLookupByLibrary.simpleMessage(
      "automatiske vinduer",
    ),
    "automaticWindowsDescription": MessageLookupByLibrary.simpleMessage(
      "Registrerer udgave og kompatibel GVLK",
    ),
    "availableVersion": m1,
    "bootCurrent": m2,
    "bridgeConnectError": m3,
    "bridgeDescription": MessageLookupByLibrary.simpleMessage(
      "Forbered WIM kun én gang, og send den direkte til Requiem-klienter på det samme netværk. Klienter gemmer ikke WIM\'en, før de installeres.",
    ),
    "bridgeIp": MessageLookupByLibrary.simpleMessage("Requiem Bridge IP"),
    "bridgePorts": MessageLookupByLibrary.simpleMessage(
      "HTTP-port 40124 · UDP-opdagelse 40123. Hvis Windows Defender spørger, tillad adgang på private netværk.",
    ),
    "bridgeSearchError": m4,
    "checkingKms": m5,
    "clearLogs": MessageLookupByLibrary.simpleMessage("Rens logs"),
    "compatibleMode": m6,
    "confirmDataDestruction": MessageLookupByLibrary.simpleMessage(
      "Bekræft destruktion af data",
    ),
    "confirmInstallation": MessageLookupByLibrary.simpleMessage(
      "Bekræft installationen",
    ),
    "connectInstallerWifi": MessageLookupByLibrary.simpleMessage(
      "Tilslut installationsprogrammet til Wi-Fi",
    ),
    "connectWifi": MessageLookupByLibrary.simpleMessage("Tilslut Wi-Fi"),
    "copyLogs": MessageLookupByLibrary.simpleMessage("Kopier optegnelser"),
    "deploymentInProgress": MessageLookupByLibrary.simpleMessage(
      "Implementering i gang",
    ),
    "designedBy": MessageLookupByLibrary.simpleMessage("Designet af Joss"),
    "destinationDiskDescription": MessageLookupByLibrary.simpleMessage(
      "Vælg det fysiske drev, hvor Windows skal installeres.",
    ),
    "detect": MessageLookupByLibrary.simpleMessage("Opdag"),
    "diskManagement": MessageLookupByLibrary.simpleMessage("natklubledelse"),
    "doNotDisconnect": MessageLookupByLibrary.simpleMessage(
      "Sluk ikke for strømmen eller fjern installationsmediet",
    ),
    "downloadAndActivate": MessageLookupByLibrary.simpleMessage(
      "Download + aktiver",
    ),
    "downloadInstaller": MessageLookupByLibrary.simpleMessage(
      "Download installationsprogrammet (.exe)",
    ),
    "downloadPortable": MessageLookupByLibrary.simpleMessage(
      "Download bærbar (.zip)",
    ),
    "drives": MessageLookupByLibrary.simpleMessage("Enheder"),
    "editionDetected": m7,
    "emptyFolder": MessageLookupByLibrary.simpleMessage("Denne mappe er tom"),
    "errorGeneric": m8,
    "filter": MessageLookupByLibrary.simpleMessage("Filtrer..."),
    "formatGpt": MessageLookupByLibrary.simpleMessage("Format GPT (anbefales)"),
    "formatGptDescription": MessageLookupByLibrary.simpleMessage(
      "Rengør diskoteket og lav UEFI-layout\nEFI (S:) + Windows (W:)",
    ),
    "formatMbr": MessageLookupByLibrary.simpleMessage(
      "Formater MBR (legacy BIOS)",
    ),
    "formatMbrDescription": MessageLookupByLibrary.simpleMessage(
      "Tør disken og opret et gammelt layout\nKun Windows (C :)",
    ),
    "formatWarning": MessageLookupByLibrary.simpleMessage(
      "Den valgte disk vil blive fuldstændig formateret. Alle data vil gå tabt.",
    ),
    "generateIso": MessageLookupByLibrary.simpleMessage("Generer ISO"),
    "getInstallOnlyIso": MessageLookupByLibrary.simpleMessage(
      "Få kun ISO til installation",
    ),
    "goUpOneLevel": MessageLookupByLibrary.simpleMessage("Gå et niveau op"),
    "imageDetected": MessageLookupByLibrary.simpleMessage("Billede fundet"),
    "imageFound": MessageLookupByLibrary.simpleMessage("Billede fundet"),
    "imageNotFound": MessageLookupByLibrary.simpleMessage(
      "Billedet blev ikke fundet",
    ),
    "imageSearching": MessageLookupByLibrary.simpleMessage(
      "Søger efter billede...",
    ),
    "installAll": MessageLookupByLibrary.simpleMessage("Installer alle"),
    "installOffice": MessageLookupByLibrary.simpleMessage(
      "Installationskontor",
    ),
    "installationProgress": MessageLookupByLibrary.simpleMessage(
      "Installationsfremskridt",
    ),
    "invalidPath": m9,
    "isoDescription": MessageLookupByLibrary.simpleMessage(
      "Få den grundlæggende ISO for at vælge en WIM ved opstart, eller opret en selvstændig ISO, der allerede inkluderer dit Windows-billede.",
    ),
    "kmsError": m10,
    "kmsHostEmpty": MessageLookupByLibrary.simpleMessage(
      "Fejl: KMS-værten er tom.",
    ),
    "kmsServer": MessageLookupByLibrary.simpleMessage("KMS server"),
    "kmsTask160Days": MessageLookupByLibrary.simpleMessage("Opgave 160 dage"),
    "kmsVolumeActivation": MessageLookupByLibrary.simpleMessage(
      "Volumenaktivering (KMS)",
    ),
    "landingDescription": MessageLookupByLibrary.simpleMessage(
      "Højpræcisions Windows-installationsprogram til højtydende miljøer. Oplev hurtig implementering med direkte DISM-orkestrering og automatiseret systemoptimering.",
    ),
    "licenseActivation": MessageLookupByLibrary.simpleMessage(
      "licensaktivering",
    ),
    "logsCopied": MessageLookupByLibrary.simpleMessage(
      "Optegnelser kopieret til udklipsholder.",
    ),
    "mandatoryUpdate": MessageLookupByLibrary.simpleMessage(
      "Denne opdatering er obligatorisk og kan ikke springes over.",
    ),
    "manualWimHint": MessageLookupByLibrary.simpleMessage(
      "Brug \"Gennemse\" for at finde din WIM-fil manuelt.",
    ),
    "mediaInstallation": MessageLookupByLibrary.simpleMessage(
      "Installationsmedie",
    ),
    "networkBridge": MessageLookupByLibrary.simpleMessage(
      "Installation af IPv4 Bridge",
    ),
    "networkInterface": MessageLookupByLibrary.simpleMessage(
      "Wi-Fi/LAN IPv4-grænseflade",
    ),
    "nextGenerationDeployment": MessageLookupByLibrary.simpleMessage(
      "Næste generation af OS-implementering",
    ),
    "noBridgeFound": MessageLookupByLibrary.simpleMessage(
      "Der blev ikke fundet nogen bro. Prøv IP-manualen.",
    ),
    "noFormatWarning": MessageLookupByLibrary.simpleMessage(
      "Windows vil implementere til W:\\ uden formatering.",
    ),
    "noImageDetected": MessageLookupByLibrary.simpleMessage(
      "Intet billede fundet",
    ),
    "noKmsProducts": MessageLookupByLibrary.simpleMessage(
      "Der er ingen KMS-produkter valgt.",
    ),
    "noPhysicalDisks": MessageLookupByLibrary.simpleMessage(
      "Ingen fysiske diske fundet",
    ),
    "noProgramsSelected": MessageLookupByLibrary.simpleMessage(
      "Der er ingen programmer valgt.",
    ),
    "noWifiNetworks": MessageLookupByLibrary.simpleMessage(
      "Der blev ikke fundet nogen tilgængelige Wi-Fi-netværk.",
    ),
    "noWingetPackages": MessageLookupByLibrary.simpleMessage(
      "Ingen kendte pakker blev fundet med Winget.",
    ),
    "officeInstallDescription": MessageLookupByLibrary.simpleMessage(
      "Implementer Microsoft Office LTSC eller 365 på en automatiseret måde ved hjælp af ODT.",
    ),
    "officeInstaller": MessageLookupByLibrary.simpleMessage(
      "kontorinstallatør",
    ),
    "officeRenewalStatus": m11,
    "officeVersion": MessageLookupByLibrary.simpleMessage("office version"),
    "onlyWindows": MessageLookupByLibrary.simpleMessage(
      "Denne funktion er kun tilgængelig på Windows.",
    ),
    "packageStack": MessageLookupByLibrary.simpleMessage(
      "Program Stack (Winget)",
    ),
    "packagesDetected": m12,
    "partitionMode": MessageLookupByLibrary.simpleMessage("Partitionstilstand"),
    "prepareBridge": MessageLookupByLibrary.simpleMessage(
      "Forbered og start bro",
    ),
    "provideWindowsImage": MessageLookupByLibrary.simpleMessage(
      "Angiv Windows installationsbillede (install.wim eller install.swm)\nfra et USB-drev eller et hvilket som helst monteret medie.",
    ),
    "receiveInstallation": MessageLookupByLibrary.simpleMessage(
      "Eller modtag den færdige installation fra Requiem til Windows",
    ),
    "renewalActive": MessageLookupByLibrary.simpleMessage("aktiv"),
    "renewalDisabled": MessageLookupByLibrary.simpleMessage("Deaktiveret"),
    "searchingImage": MessageLookupByLibrary.simpleMessage(
      "Søger efter billede...",
    ),
    "secureBootCompatible": MessageLookupByLibrary.simpleMessage(
      "Sikker boot understøttet",
    ),
    "selectDestinationDisk": MessageLookupByLibrary.simpleMessage(
      "Vælg destinationsdisk",
    ),
    "selectFileHint": MessageLookupByLibrary.simpleMessage(
      "Vælg en .wim- eller .swm-fil",
    ),
    "selectWim": MessageLookupByLibrary.simpleMessage("Vælg WIM"),
    "selectWimFirst": MessageLookupByLibrary.simpleMessage(
      "Vælg en WIM og en privat IPv4-grænseflade.",
    ),
    "selectWindowsImage": MessageLookupByLibrary.simpleMessage(
      "Vælg Windows-billede",
    ),
    "selectWindowsImageFull": MessageLookupByLibrary.simpleMessage(
      "Vælg Windows installationsbillede",
    ),
    "selectedFile": m13,
    "stableVersion": MessageLookupByLibrary.simpleMessage(
      "Stabil version v1.0.0",
    ),
    "start": MessageLookupByLibrary.simpleMessage("Kom i gang"),
    "startInstallation": MessageLookupByLibrary.simpleMessage(
      "Start installationen",
    ),
    "stopBridge": MessageLookupByLibrary.simpleMessage("bro stop"),
    "systemConsole": MessageLookupByLibrary.simpleMessage("Systemkonsol"),
    "systemDisk": MessageLookupByLibrary.simpleMessage("system"),
    "systemLogs": MessageLookupByLibrary.simpleMessage("System logs"),
    "unknown": MessageLookupByLibrary.simpleMessage("Ukendt"),
    "updateDescription": MessageLookupByLibrary.simpleMessage(
      "For at fortsætte med at bruge Requiem Tools er det nødvendigt at opdatere til den seneste version.",
    ),
    "updateRequired": MessageLookupByLibrary.simpleMessage(
      "Opdatering påkrævet",
    ),
    "useExistingPartitions": MessageLookupByLibrary.simpleMessage(
      "Brug eksisterende partitioner",
    ),
    "useExistingPartitionsDescription": MessageLookupByLibrary.simpleMessage(
      "Uformateret — vises i W: som den er\nDu administrerer deltagelser manuelt",
    ),
    "waitingAction": MessageLookupByLibrary.simpleMessage(
      "Venter på en handling...",
    ),
    "waitingForWim": MessageLookupByLibrary.simpleMessage(
      "Venter på registrering af install.wim...",
    ),
    "wifiConnectError": m14,
    "wifiConnected": m15,
    "wifiPassword": MessageLookupByLibrary.simpleMessage("Wi-Fi adgangskode"),
    "wimIntegrated": MessageLookupByLibrary.simpleMessage(
      "WIM integreret i ISO",
    ),
    "wingetUnavailable": MessageLookupByLibrary.simpleMessage(
      "Winget er ikke installeret eller er ikke i PATH.",
    ),
  };
}
