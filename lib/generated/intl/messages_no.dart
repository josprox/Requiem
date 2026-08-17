// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a no locale. All the
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
  String get localeName => 'no';

  static String m0(count) => "${count} programmer";

  static String m1(version) => "Tilgjengelig versjon: ${version}";

  static String m2(firmware) => "Gjeldende avtale: ${firmware}";

  static String m3(error) => "Kunne ikke koble til: ${error}";

  static String m4(error) => "Kunne ikke søke etter bro: ${error}";

  static String m5(host) => "Sjekker tilkobling med ${host}:1688...";

  static String m6(mode) => "Støttet modus: ${mode}";

  static String m7(name, edition) =>
      "Redigering oppdaget: ${name} (${edition})";

  static String m8(error) => "Det oppstod en feil: ${error}";

  static String m9(path) => "Ugyldig rute: ${path}";

  static String m10(error) => "KMS-feil: ${error}";

  static String m11(product, channel, edition, status) =>
      "${product} / ${channel} / ${edition} biter. Fornyelsen gjenstår ${status}.";

  static String m12(count) => "Oppdaget pakker: ${count}.";

  static String m13(file) => "Valgt: ${file}";

  static String m14(error) => "Kunne ikke koble til Wi-Fi: ${error}";

  static String m15(network) => "Koblet til ${network}.";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
    "actionCancel": MessageLookupByLibrary.simpleMessage("Avbryt"),
    "actionChange": MessageLookupByLibrary.simpleMessage("Endre"),
    "actionConfirm": MessageLookupByLibrary.simpleMessage("Bekreft"),
    "actionConnect": MessageLookupByLibrary.simpleMessage("Koble til"),
    "actionContinue": MessageLookupByLibrary.simpleMessage("Fortsett"),
    "actionInstall": MessageLookupByLibrary.simpleMessage("Installer"),
    "actionRefresh": MessageLookupByLibrary.simpleMessage("Oppdater"),
    "actionRestartSystem": MessageLookupByLibrary.simpleMessage(
      "Start systemet på nytt",
    ),
    "actionScanAgain": MessageLookupByLibrary.simpleMessage(
      "Skann stasjoner på nytt",
    ),
    "actionSearch": MessageLookupByLibrary.simpleMessage("Søk"),
    "actionSelect": MessageLookupByLibrary.simpleMessage("Velg"),
    "activate": MessageLookupByLibrary.simpleMessage("Aktiver"),
    "activateKms": MessageLookupByLibrary.simpleMessage("Aktiver KMS"),
    "appTitleInstaller": MessageLookupByLibrary.simpleMessage(
      "Requiem Installer",
    ),
    "appTitleTools": MessageLookupByLibrary.simpleMessage("Requiem-verktøy"),
    "applicationStack": MessageLookupByLibrary.simpleMessage("Søknadsstabel"),
    "applicationStackDescription": MessageLookupByLibrary.simpleMessage(
      "Installer og oppdater viktige utviklingsverktøy for Windows ved hjelp av Winget.",
    ),
    "applicationsCount": m0,
    "automaticOffice": MessageLookupByLibrary.simpleMessage(
      "automatisk kontor",
    ),
    "automaticOfficeDescription": MessageLookupByLibrary.simpleMessage(
      "Bruk det allerede installerte volumet GVLK",
    ),
    "automaticRenewal": MessageLookupByLibrary.simpleMessage(
      "Automatisk fornyelse",
    ),
    "automaticWindows": MessageLookupByLibrary.simpleMessage(
      "automatiske vinduer",
    ),
    "automaticWindowsDescription": MessageLookupByLibrary.simpleMessage(
      "Oppdager utgave og kompatibel GVLK",
    ),
    "availableVersion": m1,
    "bootCurrent": m2,
    "bridgeConnectError": m3,
    "bridgeDescription": MessageLookupByLibrary.simpleMessage(
      "Forbered WIM bare én gang og send den direkte til Requiem-klienter på samme nettverk. Klienter lagrer ikke WIM før de installerer den.",
    ),
    "bridgeIp": MessageLookupByLibrary.simpleMessage("Requiem Bridge IP"),
    "bridgePorts": MessageLookupByLibrary.simpleMessage(
      "HTTP-port 40124 · UDP-oppdagelse 40123. Hvis Windows Defender spør, tillat tilgang på private nettverk.",
    ),
    "bridgeSearchError": m4,
    "checkingKms": m5,
    "clearLogs": MessageLookupByLibrary.simpleMessage("Rengjør vedkubber"),
    "compatibleMode": m6,
    "confirmDataDestruction": MessageLookupByLibrary.simpleMessage(
      "Bekreft ødeleggelse av data",
    ),
    "confirmInstallation": MessageLookupByLibrary.simpleMessage(
      "Bekreft installasjonen",
    ),
    "connectInstallerWifi": MessageLookupByLibrary.simpleMessage(
      "Koble installasjonsprogrammet til Wi-Fi",
    ),
    "connectWifi": MessageLookupByLibrary.simpleMessage("Koble til Wi-Fi"),
    "copyLogs": MessageLookupByLibrary.simpleMessage("Kopier poster"),
    "deploymentInProgress": MessageLookupByLibrary.simpleMessage(
      "Utrulling pågår",
    ),
    "designedBy": MessageLookupByLibrary.simpleMessage("Designet av Joss"),
    "destinationDiskDescription": MessageLookupByLibrary.simpleMessage(
      "Velg den fysiske stasjonen der Windows skal installeres.",
    ),
    "detect": MessageLookupByLibrary.simpleMessage("Oppdag"),
    "diskManagement": MessageLookupByLibrary.simpleMessage("nattklubbledelse"),
    "doNotDisconnect": MessageLookupByLibrary.simpleMessage(
      "Ikke slå av strømmen eller fjern installasjonsmediet",
    ),
    "downloadAndActivate": MessageLookupByLibrary.simpleMessage(
      "Last ned + aktiver",
    ),
    "downloadInstaller": MessageLookupByLibrary.simpleMessage(
      "Last ned installasjonsprogrammet (.exe)",
    ),
    "downloadPortable": MessageLookupByLibrary.simpleMessage(
      "Last ned bærbar (.zip)",
    ),
    "drives": MessageLookupByLibrary.simpleMessage("Enheter"),
    "editionDetected": m7,
    "emptyFolder": MessageLookupByLibrary.simpleMessage("Denne mappen er tom"),
    "errorGeneric": m8,
    "filter": MessageLookupByLibrary.simpleMessage("Filtrer …"),
    "formatGpt": MessageLookupByLibrary.simpleMessage("Format GPT (anbefalt)"),
    "formatGptDescription": MessageLookupByLibrary.simpleMessage(
      "Rengjør diskoteket og lag UEFI-oppsett\nEFI (S:) + Windows (W:)",
    ),
    "formatMbr": MessageLookupByLibrary.simpleMessage(
      "Formater MBR (legacy BIOS)",
    ),
    "formatMbrDescription": MessageLookupByLibrary.simpleMessage(
      "Tørk av disk og lag et gammelt oppsett\nKun Windows (C:)",
    ),
    "formatWarning": MessageLookupByLibrary.simpleMessage(
      "Den valgte disken vil bli fullstendig formatert. Alle data vil gå tapt.",
    ),
    "generateIso": MessageLookupByLibrary.simpleMessage("Generer ISO"),
    "getInstallOnlyIso": MessageLookupByLibrary.simpleMessage(
      "Få ISO kun for installasjon",
    ),
    "goUpOneLevel": MessageLookupByLibrary.simpleMessage("Gå opp et nivå"),
    "imageDetected": MessageLookupByLibrary.simpleMessage("Bilde oppdaget"),
    "imageFound": MessageLookupByLibrary.simpleMessage("Bilde funnet"),
    "imageNotFound": MessageLookupByLibrary.simpleMessage("Finner ikke bilde"),
    "imageSearching": MessageLookupByLibrary.simpleMessage(
      "Søker etter bilde...",
    ),
    "installAll": MessageLookupByLibrary.simpleMessage("Installer alle"),
    "installOffice": MessageLookupByLibrary.simpleMessage(
      "Installasjonskontor",
    ),
    "installationProgress": MessageLookupByLibrary.simpleMessage(
      "Installasjonsfremdrift",
    ),
    "invalidPath": m9,
    "isoDescription": MessageLookupByLibrary.simpleMessage(
      "Få den grunnleggende ISO for å velge en WIM ved oppstart, eller lag en selvstendig ISO som allerede inkluderer Windows-bildet ditt.",
    ),
    "kmsError": m10,
    "kmsHostEmpty": MessageLookupByLibrary.simpleMessage(
      "Feil: KMS-verten er tom.",
    ),
    "kmsServer": MessageLookupByLibrary.simpleMessage("KMS server"),
    "kmsTask160Days": MessageLookupByLibrary.simpleMessage("Oppgave 160 dager"),
    "kmsVolumeActivation": MessageLookupByLibrary.simpleMessage(
      "Volumaktivering (KMS)",
    ),
    "landingDescription": MessageLookupByLibrary.simpleMessage(
      "Høypresisjons Windows-installasjonsprogram for miljøer med høy ytelse. Opplev rask distribusjon med direkte DISM-orkestrering og automatisert systemoptimalisering.",
    ),
    "licenseActivation": MessageLookupByLibrary.simpleMessage(
      "lisensaktivering",
    ),
    "logsCopied": MessageLookupByLibrary.simpleMessage(
      "Oppføringer kopiert til utklippstavlen.",
    ),
    "mandatoryUpdate": MessageLookupByLibrary.simpleMessage(
      "Denne oppdateringen er obligatorisk og kan ikke hoppes over.",
    ),
    "manualWimHint": MessageLookupByLibrary.simpleMessage(
      "Bruk \"Bla gjennom\" for å finne WIM-filen manuelt.",
    ),
    "mediaInstallation": MessageLookupByLibrary.simpleMessage(
      "Installasjonsmedier",
    ),
    "networkBridge": MessageLookupByLibrary.simpleMessage(
      "Installasjon IPv4 Bridge",
    ),
    "networkInterface": MessageLookupByLibrary.simpleMessage(
      "Wi-Fi/LAN IPv4-grensesnitt",
    ),
    "nextGenerationDeployment": MessageLookupByLibrary.simpleMessage(
      "Neste generasjons OS-distribusjon",
    ),
    "noBridgeFound": MessageLookupByLibrary.simpleMessage(
      "Ingen bro ble funnet. Prøv IP-manualen.",
    ),
    "noFormatWarning": MessageLookupByLibrary.simpleMessage(
      "Windows vil distribuere til W:\\ uten formatering.",
    ),
    "noImageDetected": MessageLookupByLibrary.simpleMessage(
      "Ingen bilde oppdaget",
    ),
    "noKmsProducts": MessageLookupByLibrary.simpleMessage(
      "Det er ingen KMS-produkter valgt.",
    ),
    "noPhysicalDisks": MessageLookupByLibrary.simpleMessage(
      "Ingen fysiske disker oppdaget",
    ),
    "noProgramsSelected": MessageLookupByLibrary.simpleMessage(
      "Det er ingen programmer valgt.",
    ),
    "noWifiNetworks": MessageLookupByLibrary.simpleMessage(
      "Finner ingen tilgjengelige Wi-Fi-nettverk.",
    ),
    "noWingetPackages": MessageLookupByLibrary.simpleMessage(
      "Ingen kjente pakker ble oppdaget med Winget.",
    ),
    "officeInstallDescription": MessageLookupByLibrary.simpleMessage(
      "Distribuer Microsoft Office LTSC eller 365 på en automatisert måte ved hjelp av ODT.",
    ),
    "officeInstaller": MessageLookupByLibrary.simpleMessage(
      "kontorinstallatør",
    ),
    "officeRenewalStatus": m11,
    "officeVersion": MessageLookupByLibrary.simpleMessage("kontorversjon"),
    "onlyWindows": MessageLookupByLibrary.simpleMessage(
      "Denne funksjonen er kun tilgjengelig på Windows.",
    ),
    "packageStack": MessageLookupByLibrary.simpleMessage(
      "Programstabel (Winget)",
    ),
    "packagesDetected": m12,
    "partitionMode": MessageLookupByLibrary.simpleMessage("Partisjonsmodus"),
    "prepareBridge": MessageLookupByLibrary.simpleMessage(
      "Klargjør og start bro",
    ),
    "provideWindowsImage": MessageLookupByLibrary.simpleMessage(
      "Gi Windows installasjonsbilde (install.wim eller install.swm)\nfra en USB-stasjon eller et annet montert medium.",
    ),
    "receiveInstallation": MessageLookupByLibrary.simpleMessage(
      "Eller motta den ferdige installasjonen fra Requiem for Windows",
    ),
    "renewalActive": MessageLookupByLibrary.simpleMessage("aktive"),
    "renewalDisabled": MessageLookupByLibrary.simpleMessage("Deaktivert"),
    "searchingImage": MessageLookupByLibrary.simpleMessage(
      "Søker etter bilde …",
    ),
    "secureBootCompatible": MessageLookupByLibrary.simpleMessage(
      "Sikker oppstart støttes",
    ),
    "selectDestinationDisk": MessageLookupByLibrary.simpleMessage(
      "Velg måldisk",
    ),
    "selectFileHint": MessageLookupByLibrary.simpleMessage(
      "Velg en .wim- eller .swm-fil",
    ),
    "selectWim": MessageLookupByLibrary.simpleMessage("Velg WIM"),
    "selectWimFirst": MessageLookupByLibrary.simpleMessage(
      "Velg et WIM og et privat IPv4-grensesnitt.",
    ),
    "selectWindowsImage": MessageLookupByLibrary.simpleMessage(
      "Velg Windows-bilde",
    ),
    "selectWindowsImageFull": MessageLookupByLibrary.simpleMessage(
      "Velg Windows installasjonsbilde",
    ),
    "selectedFile": m13,
    "stableVersion": MessageLookupByLibrary.simpleMessage(
      "Stabil versjon v1.0.0",
    ),
    "start": MessageLookupByLibrary.simpleMessage("Kom i gang"),
    "startInstallation": MessageLookupByLibrary.simpleMessage(
      "Start installasjonen",
    ),
    "stopBridge": MessageLookupByLibrary.simpleMessage("brostopp"),
    "systemConsole": MessageLookupByLibrary.simpleMessage("Systemkonsoll"),
    "systemDisk": MessageLookupByLibrary.simpleMessage("systemet"),
    "systemLogs": MessageLookupByLibrary.simpleMessage("Systemlogger"),
    "unknown": MessageLookupByLibrary.simpleMessage("Ukjent"),
    "updateDescription": MessageLookupByLibrary.simpleMessage(
      "For å fortsette å bruke Requiem Tools er det nødvendig å oppdatere til den nyeste versjonen.",
    ),
    "updateRequired": MessageLookupByLibrary.simpleMessage(
      "Oppdatering kreves",
    ),
    "useExistingPartitions": MessageLookupByLibrary.simpleMessage(
      "Bruk eksisterende partisjoner",
    ),
    "useExistingPartitionsDescription": MessageLookupByLibrary.simpleMessage(
      "Uformatert — vises i W: som den er\nDu administrerer deltakelser manuelt",
    ),
    "waitingAction": MessageLookupByLibrary.simpleMessage(
      "Venter på en handling...",
    ),
    "waitingForWim": MessageLookupByLibrary.simpleMessage(
      "Venter på oppdagelse av install.wim...",
    ),
    "wifiConnectError": m14,
    "wifiConnected": m15,
    "wifiPassword": MessageLookupByLibrary.simpleMessage("Wi-Fi-passord"),
    "wimIntegrated": MessageLookupByLibrary.simpleMessage(
      "WIM integrert i ISO",
    ),
    "wingetUnavailable": MessageLookupByLibrary.simpleMessage(
      "Winget er ikke installert eller er ikke i PATH.",
    ),
  };
}
