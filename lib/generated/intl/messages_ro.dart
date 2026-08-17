// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a ro locale. All the
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
  String get localeName => 'ro';

  static String m0(count) => "${count} programe";

  static String m1(version) => "Versiune disponibilă: ${version}";

  static String m2(firmware) => "Acord curent: ${firmware}";

  static String m3(error) => "Nu s-a putut conecta: ${error}";

  static String m4(error) => "Nu s-a putut căuta puntea: ${error}";

  static String m5(host) => "Se verifică conectivitatea cu ${host}:1688...";

  static String m6(mode) => "Mod acceptat: ${mode}";

  static String m7(name, edition) => "Editare detectată: ${name} (${edition})";

  static String m8(error) => "A apărut o eroare: ${error}";

  static String m9(path) => "Rută nevalidă: ${path}";

  static String m10(error) => "Eroare KMS: ${error}";

  static String m11(product, channel, edition, status) =>
      "${product} / ${channel} / ${edition} biți. Reînnoirea rămâne ${status}.";

  static String m12(count) => "Pachete detectate: ${count}.";

  static String m13(file) => "Selectat: ${file}";

  static String m14(error) => "Nu s-a putut conecta la Wi-Fi: ${error}";

  static String m15(network) => "Conectat la ${network}.";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
    "actionCancel": MessageLookupByLibrary.simpleMessage("Anula"),
    "actionChange": MessageLookupByLibrary.simpleMessage("Schimba"),
    "actionConfirm": MessageLookupByLibrary.simpleMessage("Confirma"),
    "actionConnect": MessageLookupByLibrary.simpleMessage("Conectați-vă"),
    "actionContinue": MessageLookupByLibrary.simpleMessage("Continua"),
    "actionInstall": MessageLookupByLibrary.simpleMessage("Instala"),
    "actionRefresh": MessageLookupByLibrary.simpleMessage("Actualizare"),
    "actionRestartSystem": MessageLookupByLibrary.simpleMessage(
      "Reporniți sistemul",
    ),
    "actionScanAgain": MessageLookupByLibrary.simpleMessage(
      "Scanați din nou unitățile",
    ),
    "actionSearch": MessageLookupByLibrary.simpleMessage("Caută"),
    "actionSelect": MessageLookupByLibrary.simpleMessage("Selecta"),
    "activate": MessageLookupByLibrary.simpleMessage("Activa"),
    "activateKms": MessageLookupByLibrary.simpleMessage("Activați KMS"),
    "appTitleInstaller": MessageLookupByLibrary.simpleMessage(
      "Instalator Requiem",
    ),
    "appTitleTools": MessageLookupByLibrary.simpleMessage(
      "Instrumente Requiem",
    ),
    "applicationStack": MessageLookupByLibrary.simpleMessage(
      "Stiva de aplicații",
    ),
    "applicationStackDescription": MessageLookupByLibrary.simpleMessage(
      "Instalați și actualizați instrumentele de dezvoltare esențiale pentru Windows folosind Winget.",
    ),
    "applicationsCount": m0,
    "automaticOffice": MessageLookupByLibrary.simpleMessage("birou automat"),
    "automaticOfficeDescription": MessageLookupByLibrary.simpleMessage(
      "Utilizați volumul deja instalat GVLK",
    ),
    "automaticRenewal": MessageLookupByLibrary.simpleMessage(
      "Reînnoire automată",
    ),
    "automaticWindows": MessageLookupByLibrary.simpleMessage(
      "ferestre automate",
    ),
    "automaticWindowsDescription": MessageLookupByLibrary.simpleMessage(
      "Detectează ediția și GVLK compatibil",
    ),
    "availableVersion": m1,
    "bootCurrent": m2,
    "bridgeConnectError": m3,
    "bridgeDescription": MessageLookupByLibrary.simpleMessage(
      "Pregătiți WIM-ul o singură dată și transmiteți-l direct clienților Requiem din aceeași rețea. Clienții nu salvează WIM-ul înainte de a-l instala.",
    ),
    "bridgeIp": MessageLookupByLibrary.simpleMessage("Requiem Bridge IP"),
    "bridgePorts": MessageLookupByLibrary.simpleMessage(
      "Port HTTP 40124 · Descoperire UDP 40123. Dacă Windows Defender vă întreabă, permiteți accesul în rețelele private.",
    ),
    "bridgeSearchError": m4,
    "checkingKms": m5,
    "clearLogs": MessageLookupByLibrary.simpleMessage("Curata bustenii"),
    "compatibleMode": m6,
    "confirmDataDestruction": MessageLookupByLibrary.simpleMessage(
      "Confirmați distrugerea datelor",
    ),
    "confirmInstallation": MessageLookupByLibrary.simpleMessage(
      "Confirmați instalarea",
    ),
    "connectInstallerWifi": MessageLookupByLibrary.simpleMessage(
      "Conectați programul de instalare la Wi-Fi",
    ),
    "connectWifi": MessageLookupByLibrary.simpleMessage("Conectați Wi-Fi"),
    "copyLogs": MessageLookupByLibrary.simpleMessage("Copiați înregistrările"),
    "deploymentInProgress": MessageLookupByLibrary.simpleMessage(
      "Desfășurare în curs",
    ),
    "designedBy": MessageLookupByLibrary.simpleMessage("Proiectat de Joss"),
    "destinationDiskDescription": MessageLookupByLibrary.simpleMessage(
      "Alegeți unitatea fizică pe care va fi instalat Windows.",
    ),
    "detect": MessageLookupByLibrary.simpleMessage("Detecta"),
    "diskManagement": MessageLookupByLibrary.simpleMessage(
      "managementul cluburilor de noapte",
    ),
    "doNotDisconnect": MessageLookupByLibrary.simpleMessage(
      "Nu opriți alimentarea și nu îndepărtați mediul de instalare",
    ),
    "downloadAndActivate": MessageLookupByLibrary.simpleMessage(
      "Descărcați + activați",
    ),
    "downloadInstaller": MessageLookupByLibrary.simpleMessage(
      "Descărcați programul de instalare (.exe)",
    ),
    "downloadPortable": MessageLookupByLibrary.simpleMessage(
      "Descărcați portabil (.zip)",
    ),
    "drives": MessageLookupByLibrary.simpleMessage("Unități"),
    "editionDetected": m7,
    "emptyFolder": MessageLookupByLibrary.simpleMessage(
      "Acest folder este gol",
    ),
    "errorGeneric": m8,
    "filter": MessageLookupByLibrary.simpleMessage("Filtra…"),
    "formatGpt": MessageLookupByLibrary.simpleMessage(
      "Format GPT (recomandat)",
    ),
    "formatGptDescription": MessageLookupByLibrary.simpleMessage(
      "Curățați discoteca și creați aspectul UEFI\nEFI (S:) + Windows (W:)",
    ),
    "formatMbr": MessageLookupByLibrary.simpleMessage(
      "Formatați MBR (BIOS moștenit)",
    ),
    "formatMbrDescription": MessageLookupByLibrary.simpleMessage(
      "Ștergeți discul și creați un aspect moștenit\nDoar Windows (C:)",
    ),
    "formatWarning": MessageLookupByLibrary.simpleMessage(
      "Discul selectat va fi complet formatat. Toate datele se vor pierde.",
    ),
    "generateIso": MessageLookupByLibrary.simpleMessage("Generați ISO"),
    "getInstallOnlyIso": MessageLookupByLibrary.simpleMessage(
      "Obțineți ISO numai pentru instalare",
    ),
    "goUpOneLevel": MessageLookupByLibrary.simpleMessage("Urcă un nivel"),
    "imageDetected": MessageLookupByLibrary.simpleMessage("Imaginea detectată"),
    "imageFound": MessageLookupByLibrary.simpleMessage("Imaginea găsită"),
    "imageNotFound": MessageLookupByLibrary.simpleMessage(
      "Imaginea nu a fost găsită",
    ),
    "imageSearching": MessageLookupByLibrary.simpleMessage(
      "Se caută imagine...",
    ),
    "installAll": MessageLookupByLibrary.simpleMessage("Instalați toate"),
    "installOffice": MessageLookupByLibrary.simpleMessage("Birou montaj"),
    "installationProgress": MessageLookupByLibrary.simpleMessage(
      "Progresul instalării",
    ),
    "invalidPath": m9,
    "isoDescription": MessageLookupByLibrary.simpleMessage(
      "Obțineți ISO de bază pentru a selecta un WIM la pornire sau creați un ISO autonom care include deja imaginea dvs. Windows.",
    ),
    "kmsError": m10,
    "kmsHostEmpty": MessageLookupByLibrary.simpleMessage(
      "Eroare: gazda KMS este goală.",
    ),
    "kmsServer": MessageLookupByLibrary.simpleMessage("Server KMS"),
    "kmsTask160Days": MessageLookupByLibrary.simpleMessage(
      "Sarcina 160 de zile",
    ),
    "kmsVolumeActivation": MessageLookupByLibrary.simpleMessage(
      "Activare volum (KMS)",
    ),
    "landingDescription": MessageLookupByLibrary.simpleMessage(
      "Program de instalare Windows de înaltă precizie pentru medii de înaltă performanță. Experimentați implementarea rapidă cu orchestrarea DISM directă și optimizarea automată a sistemului.",
    ),
    "licenseActivation": MessageLookupByLibrary.simpleMessage(
      "activarea licenței",
    ),
    "logsCopied": MessageLookupByLibrary.simpleMessage(
      "Înregistrările au fost copiate în clipboard.",
    ),
    "mandatoryUpdate": MessageLookupByLibrary.simpleMessage(
      "Această actualizare este obligatorie și nu poate fi omisă.",
    ),
    "manualWimHint": MessageLookupByLibrary.simpleMessage(
      "Folosiți „Răsfoiți” pentru a vă localiza manual fișierul WIM.",
    ),
    "mediaInstallation": MessageLookupByLibrary.simpleMessage(
      "Medii de instalare",
    ),
    "networkBridge": MessageLookupByLibrary.simpleMessage(
      "Instalare IPv4 Bridge",
    ),
    "networkInterface": MessageLookupByLibrary.simpleMessage(
      "Interfață Wi-Fi/LAN IPv4",
    ),
    "nextGenerationDeployment": MessageLookupByLibrary.simpleMessage(
      "Implementarea sistemului de operare de generație următoare",
    ),
    "noBridgeFound": MessageLookupByLibrary.simpleMessage(
      "Nu a fost găsit nici un pod. Încercați manualul IP.",
    ),
    "noFormatWarning": MessageLookupByLibrary.simpleMessage(
      "Windows se va implementa în W:\\ fără formatare.",
    ),
    "noImageDetected": MessageLookupByLibrary.simpleMessage(
      "Nu a fost detectată nicio imagine",
    ),
    "noKmsProducts": MessageLookupByLibrary.simpleMessage(
      "Nu sunt produse KMS selectate.",
    ),
    "noPhysicalDisks": MessageLookupByLibrary.simpleMessage(
      "Nu au fost detectate discuri fizice",
    ),
    "noProgramsSelected": MessageLookupByLibrary.simpleMessage(
      "Nu există programe selectate.",
    ),
    "noWifiNetworks": MessageLookupByLibrary.simpleMessage(
      "Nu au fost găsite rețele Wi-Fi disponibile.",
    ),
    "noWingetPackages": MessageLookupByLibrary.simpleMessage(
      "Nu au fost detectate pachete cunoscute cu Winget.",
    ),
    "officeInstallDescription": MessageLookupByLibrary.simpleMessage(
      "Implementați Microsoft Office LTSC sau 365 într-un mod automat, folosind ODT.",
    ),
    "officeInstaller": MessageLookupByLibrary.simpleMessage(
      "instalator de birou",
    ),
    "officeRenewalStatus": m11,
    "officeVersion": MessageLookupByLibrary.simpleMessage("versiune office"),
    "onlyWindows": MessageLookupByLibrary.simpleMessage(
      "Această caracteristică este disponibilă numai pe Windows.",
    ),
    "packageStack": MessageLookupByLibrary.simpleMessage(
      "Stiva de programe (Winget)",
    ),
    "packagesDetected": m12,
    "partitionMode": MessageLookupByLibrary.simpleMessage("Modul partiție"),
    "prepareBridge": MessageLookupByLibrary.simpleMessage(
      "Pregătiți și porniți podul",
    ),
    "provideWindowsImage": MessageLookupByLibrary.simpleMessage(
      "Furnizați imaginea de instalare Windows (install.wim sau install.swm)\nde pe o unitate USB sau orice suport montat.",
    ),
    "receiveInstallation": MessageLookupByLibrary.simpleMessage(
      "Sau primiți instalarea gata de la Requiem pentru Windows",
    ),
    "renewalActive": MessageLookupByLibrary.simpleMessage("activ"),
    "renewalDisabled": MessageLookupByLibrary.simpleMessage("Dezactivat"),
    "searchingImage": MessageLookupByLibrary.simpleMessage(
      "Se caută imaginea...",
    ),
    "secureBootCompatible": MessageLookupByLibrary.simpleMessage(
      "Pornire securizată acceptată",
    ),
    "selectDestinationDisk": MessageLookupByLibrary.simpleMessage(
      "Selectați discul de destinație",
    ),
    "selectFileHint": MessageLookupByLibrary.simpleMessage(
      "Selectați un fișier .wim sau .swm",
    ),
    "selectWim": MessageLookupByLibrary.simpleMessage("Selectați WIM"),
    "selectWimFirst": MessageLookupByLibrary.simpleMessage(
      "Selectați o interfață WIM și o interfață IPv4 privată.",
    ),
    "selectWindowsImage": MessageLookupByLibrary.simpleMessage(
      "Selectați imaginea Windows",
    ),
    "selectWindowsImageFull": MessageLookupByLibrary.simpleMessage(
      "Selectați imaginea de instalare Windows",
    ),
    "selectedFile": m13,
    "stableVersion": MessageLookupByLibrary.simpleMessage(
      "Versiunea stabilă v1.0.0",
    ),
    "start": MessageLookupByLibrary.simpleMessage("ÎNCEPE"),
    "startInstallation": MessageLookupByLibrary.simpleMessage(
      "Începeți instalarea",
    ),
    "stopBridge": MessageLookupByLibrary.simpleMessage("oprire pod"),
    "systemConsole": MessageLookupByLibrary.simpleMessage("Consola de sistem"),
    "systemDisk": MessageLookupByLibrary.simpleMessage("sistem"),
    "systemLogs": MessageLookupByLibrary.simpleMessage("Jurnalele de sistem"),
    "unknown": MessageLookupByLibrary.simpleMessage("Un străin"),
    "updateDescription": MessageLookupByLibrary.simpleMessage(
      "Pentru a continua să utilizați Requiem Tools, este necesar să actualizați la cea mai recentă versiune.",
    ),
    "updateRequired": MessageLookupByLibrary.simpleMessage(
      "Actualizare necesară",
    ),
    "useExistingPartitions": MessageLookupByLibrary.simpleMessage(
      "Utilizați partițiile existente",
    ),
    "useExistingPartitionsDescription": MessageLookupByLibrary.simpleMessage(
      "Neformatat — se afișează în W: așa cum este\nGestionați manual participările",
    ),
    "waitingAction": MessageLookupByLibrary.simpleMessage(
      "În așteptarea unei acțiuni...",
    ),
    "waitingForWim": MessageLookupByLibrary.simpleMessage(
      "Se așteaptă detectarea instal.wim...",
    ),
    "wifiConnectError": m14,
    "wifiConnected": m15,
    "wifiPassword": MessageLookupByLibrary.simpleMessage("Parola Wi-Fi"),
    "wimIntegrated": MessageLookupByLibrary.simpleMessage(
      "WIM integrat în ISO",
    ),
    "wingetUnavailable": MessageLookupByLibrary.simpleMessage(
      "Winget nu este instalat sau nu este în PATH.",
    ),
  };
}
