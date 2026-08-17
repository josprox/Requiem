// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a pl locale. All the
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
  String get localeName => 'pl';

  static String m0(count) => "${count} programy";

  static String m1(version) => "Dostępna wersja: ${version}";

  static String m2(firmware) => "Aktualna aranżacja: ${firmware}";

  static String m3(error) => "Nie możesz się połączyć: ${error}";

  static String m4(error) => "Nie se pudo buscar el puente: ${error}";

  static String m5(host) => "Połączenie połączone z ${host}:1688...";

  static String m6(mode) => "Kompatybilny z Modo: ${mode}";

  static String m7(name, edition) => "Edycja wykryta: ${name} (${edition})";

  static String m8(error) => "Wystąpił błąd: ${error}";

  static String m9(path) => "Ruta nieważna: ${path}";

  static String m10(error) => "Błąd KMS: ${error}";

  static String m11(product, channel, edition, status) =>
      "${product} / ${channel} / ${edition} bitów. La renovación queda ${status}.";

  static String m12(count) => "Wykryte wykrycia: ${count}.";

  static String m13(file) => "Wybrany: ${file}";

  static String m14(error) => "Nie można podłączyć do Wi-Fi: ${error}";

  static String m15(network) => "Połącz się z ${network}.";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
    "actionCancel": MessageLookupByLibrary.simpleMessage("Anuluj"),
    "actionChange": MessageLookupByLibrary.simpleMessage("Kambiar"),
    "actionConfirm": MessageLookupByLibrary.simpleMessage("Potwierdź"),
    "actionConnect": MessageLookupByLibrary.simpleMessage("Połącz"),
    "actionContinue": MessageLookupByLibrary.simpleMessage("Kontynuuj"),
    "actionInstall": MessageLookupByLibrary.simpleMessage("Instaluj"),
    "actionRefresh": MessageLookupByLibrary.simpleMessage("Aktualizuj"),
    "actionRestartSystem": MessageLookupByLibrary.simpleMessage(
      "System Reiniciara",
    ),
    "actionScanAgain": MessageLookupByLibrary.simpleMessage(
      "Escanear unidades de nuevo",
    ),
    "actionSearch": MessageLookupByLibrary.simpleMessage("Autobus"),
    "actionSelect": MessageLookupByLibrary.simpleMessage("Wybór"),
    "activate": MessageLookupByLibrary.simpleMessage("Aktywator"),
    "activateKms": MessageLookupByLibrary.simpleMessage("Aktywuj KMS"),
    "appTitleInstaller": MessageLookupByLibrary.simpleMessage(
      "Instalator Requiem",
    ),
    "appTitleTools": MessageLookupByLibrary.simpleMessage("Narzędzia Requiem"),
    "applicationStack": MessageLookupByLibrary.simpleMessage("Stos aplikacji"),
    "applicationStackDescription": MessageLookupByLibrary.simpleMessage(
      "Zainstaluj i zaktualizuj herramientas de desarrollo esenciales dla Windows Mediante Winget.",
    ),
    "applicationsCount": m0,
    "automaticOffice": MessageLookupByLibrary.simpleMessage(
      "Automatyka biurowa",
    ),
    "automaticOfficeDescription": MessageLookupByLibrary.simpleMessage(
      "Użyj GVLK de wolumenu instalacji",
    ),
    "automaticRenewal": MessageLookupByLibrary.simpleMessage(
      "Renovación automatica",
    ),
    "automaticWindows": MessageLookupByLibrary.simpleMessage(
      "Automatyka Windows",
    ),
    "automaticWindowsDescription": MessageLookupByLibrary.simpleMessage(
      "Kompatybilny z Detecta edición i GVLK",
    ),
    "availableVersion": m1,
    "bootCurrent": m2,
    "bridgeConnectError": m3,
    "bridgeDescription": MessageLookupByLibrary.simpleMessage(
      "Przygotuj WIM do samodzielnego przesłania bezpośrednio do klientów Requiem de la misma red. Los klientów nie chroni przed instalacją WIM.",
    ),
    "bridgeIp": MessageLookupByLibrary.simpleMessage("IP del Puente Requiem"),
    "bridgePorts": MessageLookupByLibrary.simpleMessage(
      "Puerto HTTP 40124 · pobierz UDP 40123. Jeśli Windows Defender jest dostępny, możesz uzyskać dostęp do prywatnych danych.",
    ),
    "bridgeSearchError": m4,
    "checkingKms": m5,
    "clearLogs": MessageLookupByLibrary.simpleMessage("Dzienniki lipiarskie"),
    "compatibleMode": m6,
    "confirmDataDestruction": MessageLookupByLibrary.simpleMessage(
      "Potwierdź zniszczenie danych",
    ),
    "confirmInstallation": MessageLookupByLibrary.simpleMessage(
      "Potwierdź instalację",
    ),
    "connectInstallerWifi": MessageLookupByLibrary.simpleMessage(
      "Połącz się z instalatorem Wi-Fi",
    ),
    "connectWifi": MessageLookupByLibrary.simpleMessage("Podłącz Wi-Fi"),
    "copyLogs": MessageLookupByLibrary.simpleMessage("Kopiuj logi"),
    "deploymentInProgress": MessageLookupByLibrary.simpleMessage(
      "Despliegue en curso",
    ),
    "designedBy": MessageLookupByLibrary.simpleMessage("Diseñado por Joss"),
    "destinationDiskDescription": MessageLookupByLibrary.simpleMessage(
      "Elija la unidad física donde se instalará Windows.",
    ),
    "detect": MessageLookupByLibrary.simpleMessage("Detektor"),
    "diskManagement": MessageLookupByLibrary.simpleMessage(
      "Administracja dyskotekami",
    ),
    "doNotDisconnect": MessageLookupByLibrary.simpleMessage(
      "No desconecte la energía ni retire el medio de instalación",
    ),
    "downloadAndActivate": MessageLookupByLibrary.simpleMessage(
      "Pobierz + aktywator",
    ),
    "downloadInstaller": MessageLookupByLibrary.simpleMessage(
      "Pobierz instalator (.exe)",
    ),
    "downloadPortable": MessageLookupByLibrary.simpleMessage(
      "Pobierz przenośny (.zip)",
    ),
    "drives": MessageLookupByLibrary.simpleMessage("Unidades"),
    "editionDetected": m7,
    "emptyFolder": MessageLookupByLibrary.simpleMessage(
      "Esta dywan está vacía",
    ),
    "errorGeneric": m8,
    "filter": MessageLookupByLibrary.simpleMessage("Filtr…"),
    "formatGpt": MessageLookupByLibrary.simpleMessage(
      "Formatuj GPT (zalecane)",
    ),
    "formatGptDescription": MessageLookupByLibrary.simpleMessage(
      "Limpia el disco y crea diseño UEFI\nEFI (S:) + Windows (W:)",
    ),
    "formatMbr": MessageLookupByLibrary.simpleMessage(
      "Formatuj MBR (BIOS tutaj)",
    ),
    "formatMbrDescription": MessageLookupByLibrary.simpleMessage(
      "Limpia el disco y crea diseño heredado\nOkna solowe (C:)",
    ),
    "formatWarning": MessageLookupByLibrary.simpleMessage(
      "El disco seleccionado se formateará por completo. Se perderán todos los datos.",
    ),
    "generateIso": MessageLookupByLibrary.simpleMessage("Ogólne ISO"),
    "getInstallOnlyIso": MessageLookupByLibrary.simpleMessage(
      "Uzyskaj ISO para instalación solamente",
    ),
    "goUpOneLevel": MessageLookupByLibrary.simpleMessage("Subir un nivel"),
    "imageDetected": MessageLookupByLibrary.simpleMessage("Wykrycie obrazu"),
    "imageFound": MessageLookupByLibrary.simpleMessage("Obraz encontrada"),
    "imageNotFound": MessageLookupByLibrary.simpleMessage("Nie ma encontrady"),
    "imageSearching": MessageLookupByLibrary.simpleMessage(
      "Zdjęcie Buscando...",
    ),
    "installAll": MessageLookupByLibrary.simpleMessage("Zainstaluj to zadanie"),
    "installOffice": MessageLookupByLibrary.simpleMessage("Biuro Instalatora"),
    "installationProgress": MessageLookupByLibrary.simpleMessage(
      "Postęp instalacji",
    ),
    "invalidPath": m9,
    "isoDescription": MessageLookupByLibrary.simpleMessage(
      "Obtenga la ISO base do wyboru WIM al Arrancar, lub tworzy auto ISO que ya incluya su image of Windows.",
    ),
    "kmsError": m10,
    "kmsHostEmpty": MessageLookupByLibrary.simpleMessage(
      "Błąd: el host KMS está vacío.",
    ),
    "kmsServer": MessageLookupByLibrary.simpleMessage("Serwer KMS"),
    "kmsTask160Days": MessageLookupByLibrary.simpleMessage("Tarea 160 días"),
    "kmsVolumeActivation": MessageLookupByLibrary.simpleMessage(
      "Aktywacja głośności (KMS)",
    ),
    "landingDescription": MessageLookupByLibrary.simpleMessage(
      "Instalador de Windows de alta precisión para entornos de alto rendimiento. Experimente un despliegue rápido con orquestación directa de DISM y optimización automatizada del sistema.",
    ),
    "licenseActivation": MessageLookupByLibrary.simpleMessage(
      "Aktywacja licencji",
    ),
    "logsCopied": MessageLookupByLibrary.simpleMessage(
      "Logi copiados al portapapeles.",
    ),
    "mandatoryUpdate": MessageLookupByLibrary.simpleMessage(
      "Esta updateización es obligatoryjne y no puede omitirse.",
    ),
    "manualWimHint": MessageLookupByLibrary.simpleMessage(
      "Użyj „Buscar” do lokalnego archiwizowania instrukcji WIM.",
    ),
    "mediaInstallation": MessageLookupByLibrary.simpleMessage(
      "Średnio instalacja",
    ),
    "networkBridge": MessageLookupByLibrary.simpleMessage(
      "Puente IPv4 do instalacji",
    ),
    "networkInterface": MessageLookupByLibrary.simpleMessage(
      "Interfaz Wi-Fi/LAN IPv4",
    ),
    "nextGenerationDeployment": MessageLookupByLibrary.simpleMessage(
      "Despliegue de SO de próxima generación",
    ),
    "noBridgeFound": MessageLookupByLibrary.simpleMessage(
      "No se encontró ningún puente. Pruebe z instrukcją IP.",
    ),
    "noFormatWarning": MessageLookupByLibrary.simpleMessage(
      "Windows se desplegará en W:\\ sin formatear.",
    ),
    "noImageDetected": MessageLookupByLibrary.simpleMessage(
      "Nie wykrywaj obrazu",
    ),
    "noKmsProducts": MessageLookupByLibrary.simpleMessage(
      "Brak produktów siana wybranych przez KMS.",
    ),
    "noPhysicalDisks": MessageLookupByLibrary.simpleMessage(
      "Nie można wykrywać dyskotek físicos",
    ),
    "noProgramsSelected": MessageLookupByLibrary.simpleMessage(
      "Brak programów do wyboru.",
    ),
    "noWifiNetworks": MessageLookupByLibrary.simpleMessage(
      "Brak dostępu do sieci Wi-Fi.",
    ),
    "noWingetPackages": MessageLookupByLibrary.simpleMessage(
      "Nie ma wykrywacza paquetes conocidos con winget.",
    ),
    "officeInstallDescription": MessageLookupByLibrary.simpleMessage(
      "Despliega Microsoft Office LTSC lub 365-stopniowa automatyzacja za pomocą ODT.",
    ),
    "officeInstaller": MessageLookupByLibrary.simpleMessage(
      "Instalator pakietu Office",
    ),
    "officeRenewalStatus": m11,
    "officeVersion": MessageLookupByLibrary.simpleMessage(
      "Wersja pakietu Office",
    ),
    "onlyWindows": MessageLookupByLibrary.simpleMessage(
      "Ta funkcja jest dostępna solo w systemie Windows.",
    ),
    "packageStack": MessageLookupByLibrary.simpleMessage(
      "Programy stosowe (Winget)",
    ),
    "packagesDetected": m12,
    "partitionMode": MessageLookupByLibrary.simpleMessage("Modo de partyción"),
    "prepareBridge": MessageLookupByLibrary.simpleMessage(
      "Przygotuj i zainicjuj puente",
    ),
    "provideWindowsImage": MessageLookupByLibrary.simpleMessage(
      "Proporcja obrazu instalacji systemu Windows (install.wim lub install.swm)\ndesde una unidad USB lub cualquier medio montado.",
    ),
    "receiveInstallation": MessageLookupByLibrary.simpleMessage(
      "O reciba la installación preparada desde Requiem dla Windows",
    ),
    "renewalActive": MessageLookupByLibrary.simpleMessage("Aktywa"),
    "renewalDisabled": MessageLookupByLibrary.simpleMessage("Dezaktywacja"),
    "searchingImage": MessageLookupByLibrary.simpleMessage("Obraz Buscando…"),
    "secureBootCompatible": MessageLookupByLibrary.simpleMessage(
      "Kompatybilny z bezpiecznym rozruchem",
    ),
    "selectDestinationDisk": MessageLookupByLibrary.simpleMessage(
      "Wybierz dyskotekę przeznaczoną",
    ),
    "selectFileHint": MessageLookupByLibrary.simpleMessage(
      "Wybierz archiwum .wim lub .swm",
    ),
    "selectWim": MessageLookupByLibrary.simpleMessage("Wybierz WIM"),
    "selectWimFirst": MessageLookupByLibrary.simpleMessage(
      "Wybierz WIM i prywatny interfejs IPv4.",
    ),
    "selectWindowsImage": MessageLookupByLibrary.simpleMessage(
      "Wybierz obraz systemu Windows",
    ),
    "selectWindowsImageFull": MessageLookupByLibrary.simpleMessage(
      "Wybierz obraz instalacji systemu Windows",
    ),
    "selectedFile": m13,
    "stableVersion": MessageLookupByLibrary.simpleMessage(
      "Wersja stabilna v1.0.0",
    ),
    "start": MessageLookupByLibrary.simpleMessage("Empezara"),
    "startInstallation": MessageLookupByLibrary.simpleMessage(
      "Pierwsza instalacja",
    ),
    "stopBridge": MessageLookupByLibrary.simpleMessage("Zachowaj ostrożność"),
    "systemConsole": MessageLookupByLibrary.simpleMessage("Konsola systemu"),
    "systemDisk": MessageLookupByLibrary.simpleMessage("System"),
    "systemLogs": MessageLookupByLibrary.simpleMessage("Logi systemu"),
    "unknown": MessageLookupByLibrary.simpleMessage("Desconocido"),
    "updateDescription": MessageLookupByLibrary.simpleMessage(
      "Ciągłe używanie Requiem Tools jest niezbędne do aktualizacji wersji más reciente.",
    ),
    "updateRequired": MessageLookupByLibrary.simpleMessage(
      "Aktualizowanie żądania",
    ),
    "useExistingPartitions": MessageLookupByLibrary.simpleMessage(
      "Użyj partycji istniejących",
    ),
    "useExistingPartitionsDescription": MessageLookupByLibrary.simpleMessage(
      "Sin formatear — despliega en W: tal cual\nUżywane gestiona las particiones manualmente",
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
      "WIM zintegrowany z ISO",
    ),
    "wingetUnavailable": MessageLookupByLibrary.simpleMessage(
      "winget no está instalado o no está en PATH.",
    ),
  };
}
