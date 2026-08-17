// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a fa locale. All the
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
  String get localeName => 'fa';

  static String m0(count) => "برنامه های ${count}";

  static String m1(version) => "نسخه در دسترس: ${version}";

  static String m2(firmware) => "آرانک واقعی: ${firmware}";

  static String m3(error) => "بدون اتصال به پودو: ${error}";

  static String m4(error) => "No se pudo buscar el puente: ${error}";

  static String m5(host) => "Comprobando conectividad con ${host}:1688...";

  static String m6(mode) => "سازگار با حالت: ${mode}";

  static String m7(name, edition) => "نسخه شناسایی: ${name} (${edition})";

  static String m8(error) => "خطای رویداد: ${error}";

  static String m9(path) => "Ruta inválida: ${path}";

  static String m10(error) => "خطای KMS: ${error}";

  static String m11(product, channel, edition, status) =>
      "${product} / ${channel} / ${edition} بیت. La renovación queda ${status}.";

  static String m12(count) => "شناسایی پاکت ها: ${count}.";

  static String m13(file) => "انتخاب: ${file}";

  static String m14(error) => "بدون اتصال Wi-Fi: ${error}";

  static String m15(network) => "Conectado یک ${network}.";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
    "actionCancel": MessageLookupByLibrary.simpleMessage("لغو کنید"),
    "actionChange": MessageLookupByLibrary.simpleMessage("کامبیار"),
    "actionConfirm": MessageLookupByLibrary.simpleMessage("تایید"),
    "actionConnect": MessageLookupByLibrary.simpleMessage("کنکتار"),
    "actionContinue": MessageLookupByLibrary.simpleMessage("ادامه دارد"),
    "actionInstall": MessageLookupByLibrary.simpleMessage("نصب کنید"),
    "actionRefresh": MessageLookupByLibrary.simpleMessage("واقعی ساز"),
    "actionRestartSystem": MessageLookupByLibrary.simpleMessage(
      "سیستم Reiniciar",
    ),
    "actionScanAgain": MessageLookupByLibrary.simpleMessage(
      "Escanear unidades de nuevo",
    ),
    "actionSearch": MessageLookupByLibrary.simpleMessage("بوسکار"),
    "actionSelect": MessageLookupByLibrary.simpleMessage("منتخب"),
    "activate": MessageLookupByLibrary.simpleMessage("اکتیوار"),
    "activateKms": MessageLookupByLibrary.simpleMessage("Activar KMS"),
    "appTitleInstaller": MessageLookupByLibrary.simpleMessage(
      "نصب کننده Requiem",
    ),
    "appTitleTools": MessageLookupByLibrary.simpleMessage("ابزار Requiem"),
    "applicationStack": MessageLookupByLibrary.simpleMessage("پشته برنامه ها"),
    "applicationStackDescription": MessageLookupByLibrary.simpleMessage(
      "برای Windows Mediante winget، هرمی را به طور کامل نصب کنید.",
    ),
    "applicationsCount": m0,
    "automaticOffice": MessageLookupByLibrary.simpleMessage("اتومات اداری"),
    "automaticOfficeDescription": MessageLookupByLibrary.simpleMessage(
      "Usa la GVLK de volumen or installada",
    ),
    "automaticRenewal": MessageLookupByLibrary.simpleMessage("نوسازی خودکار"),
    "automaticWindows": MessageLookupByLibrary.simpleMessage("ویندوز خودکار"),
    "automaticWindowsDescription": MessageLookupByLibrary.simpleMessage(
      "Detecta edición y GVLK سازگار است",
    ),
    "availableVersion": m1,
    "bootCurrent": m2,
    "bridgeConnectError": m3,
    "bridgeDescription": MessageLookupByLibrary.simpleMessage(
      "آماده کردن WIM una sola vez y lo transmite directamente a los clientes Requiem de la misma red. مشتریان بدون نگهبانی از WIM قبل از نصب.",
    ),
    "bridgeIp": MessageLookupByLibrary.simpleMessage("IP del Puente Requiem"),
    "bridgePorts": MessageLookupByLibrary.simpleMessage(
      "Puerto HTTP 40124 · UDP 40123 را حذف کنید. Windows Defender پیش ساخته، اجازه دسترسی به خصوصیات خصوصی را دارد.",
    ),
    "bridgeSearchError": m4,
    "checkingKms": m5,
    "clearLogs": MessageLookupByLibrary.simpleMessage(
      "سیاهههای مربوط به لیمپیار",
    ),
    "compatibleMode": m6,
    "confirmDataDestruction": MessageLookupByLibrary.simpleMessage(
      "تایید خرابی داده ها",
    ),
    "confirmInstallation": MessageLookupByLibrary.simpleMessage("تایید نصب"),
    "connectInstallerWifi": MessageLookupByLibrary.simpleMessage(
      "یک Wi-Fi را نصب کنید",
    ),
    "connectWifi": MessageLookupByLibrary.simpleMessage("اتصال وای فای"),
    "copyLogs": MessageLookupByLibrary.simpleMessage("لاگ های کپی"),
    "deploymentInProgress": MessageLookupByLibrary.simpleMessage(
      "Despliegue en curso",
    ),
    "designedBy": MessageLookupByLibrary.simpleMessage("Diseñado por Joss"),
    "destinationDiskDescription": MessageLookupByLibrary.simpleMessage(
      "Elija la unidad física donde se installer Windows.",
    ),
    "detect": MessageLookupByLibrary.simpleMessage("آشکارساز"),
    "diskManagement": MessageLookupByLibrary.simpleMessage("مدیریت دیسکوها"),
    "doNotDisconnect": MessageLookupByLibrary.simpleMessage(
      "بدون حذف انرژی و بازنشستگی رسانه ای نصب",
    ),
    "downloadAndActivate": MessageLookupByLibrary.simpleMessage(
      "Descargar + Activar",
    ),
    "downloadInstaller": MessageLookupByLibrary.simpleMessage(
      "دانلود installador (.exe)",
    ),
    "downloadPortable": MessageLookupByLibrary.simpleMessage(
      "قابل حمل (.zip) را دانلود کنید",
    ),
    "drives": MessageLookupByLibrary.simpleMessage("Unidades"),
    "editionDetected": m7,
    "emptyFolder": MessageLookupByLibrary.simpleMessage(
      "Esta carpeta está vacía",
    ),
    "errorGeneric": m8,
    "filter": MessageLookupByLibrary.simpleMessage("فیلتر…"),
    "formatGpt": MessageLookupByLibrary.simpleMessage(
      "Formatear GPT (توصیه می شود)",
    ),
    "formatGptDescription": MessageLookupByLibrary.simpleMessage(
      "Limpia el disco y crea diseño UEFI\nEFI (S:) + Windows (W:)",
    ),
    "formatMbr": MessageLookupByLibrary.simpleMessage(
      "Formatear MBR (BIOS heredado)",
    ),
    "formatMbrDescription": MessageLookupByLibrary.simpleMessage(
      "Limpia el disco y crea diseño heredado\nویندوز انفرادی (C:)",
    ),
    "formatWarning": MessageLookupByLibrary.simpleMessage(
      "ال دیسکو انتخاب شده است برای تکمیل. Se perderán todos los datos.",
    ),
    "generateIso": MessageLookupByLibrary.simpleMessage("ISO عمومی"),
    "getInstallOnlyIso": MessageLookupByLibrary.simpleMessage(
      "دریافت کننده ISO برای نصب سولامنت",
    ),
    "goUpOneLevel": MessageLookupByLibrary.simpleMessage("سوبیر اون سطح"),
    "imageDetected": MessageLookupByLibrary.simpleMessage("تشخیص تصویر"),
    "imageFound": MessageLookupByLibrary.simpleMessage("Imagen encontrada"),
    "imageNotFound": MessageLookupByLibrary.simpleMessage("Imagen no contrada"),
    "imageSearching": MessageLookupByLibrary.simpleMessage("تصویر بوسکاندو..."),
    "installAll": MessageLookupByLibrary.simpleMessage("نصب کنید"),
    "installOffice": MessageLookupByLibrary.simpleMessage("نصب دفتر"),
    "installationProgress": MessageLookupByLibrary.simpleMessage("پیشرفت نصب"),
    "invalidPath": m9,
    "isoDescription": MessageLookupByLibrary.simpleMessage(
      "پایه ISO برای انتخاب و تنظیم WIM، یا ایجاد یک ISO خودکار که شامل تصاویر ویندوز می شود را انتخاب کنید.",
    ),
    "kmsError": m10,
    "kmsHostEmpty": MessageLookupByLibrary.simpleMessage(
      "خطا: el host KMS está vacío.",
    ),
    "kmsServer": MessageLookupByLibrary.simpleMessage("سرویس دهنده KMS"),
    "kmsTask160Days": MessageLookupByLibrary.simpleMessage("Tarea 160 días"),
    "kmsVolumeActivation": MessageLookupByLibrary.simpleMessage(
      "فعال سازی حجم (KMS)",
    ),
    "landingDescription": MessageLookupByLibrary.simpleMessage(
      "نصب ویندوز دالتا دقیق برای بازیابی آلتو. DISM و بهینه سازی خودکار سیستم را آزمایش کنید.",
    ),
    "licenseActivation": MessageLookupByLibrary.simpleMessage(
      "فعال سازی مجوزها",
    ),
    "logsCopied": MessageLookupByLibrary.simpleMessage(
      "سیاههها copiados al portapapeles.",
    ),
    "mandatoryUpdate": MessageLookupByLibrary.simpleMessage(
      "Esta actualización e obligatoria y no puede omitirse.",
    ),
    "manualWimHint": MessageLookupByLibrary.simpleMessage(
      "از \"Buscar\" برای محلی سازی بایگانی راهنمای WIM استفاده کنید.",
    ),
    "mediaInstallation": MessageLookupByLibrary.simpleMessage("رسانه نصب"),
    "networkBridge": MessageLookupByLibrary.simpleMessage("نصب IPv4"),
    "networkInterface": MessageLookupByLibrary.simpleMessage(
      "اینترفاز Wi‑Fi/LAN IPv4",
    ),
    "nextGenerationDeployment": MessageLookupByLibrary.simpleMessage(
      "Despliegue de SO de proxima generación",
    ),
    "noBridgeFound": MessageLookupByLibrary.simpleMessage(
      "بدون هیچ گونه محدودیتی برای ningún puente. راهنمای Pruebe con la IP.",
    ),
    "noFormatWarning": MessageLookupByLibrary.simpleMessage(
      "Windows desplegará en W:\\ sin formatear.",
    ),
    "noImageDetected": MessageLookupByLibrary.simpleMessage("بدون تشخیص تصویر"),
    "noKmsProducts": MessageLookupByLibrary.simpleMessage(
      "هیچ محصول یونجه ای برای انتخاب KMS وجود ندارد.",
    ),
    "noPhysicalDisks": MessageLookupByLibrary.simpleMessage(
      "بدون شناسایی دیسکوهای فیسیکو",
    ),
    "noProgramsSelected": MessageLookupByLibrary.simpleMessage(
      "بدون برنامه های انتخابی یونجه.",
    ),
    "noWifiNetworks": MessageLookupByLibrary.simpleMessage(
      "بدون نیاز به تغییر Wi-Fi در دسترس است.",
    ),
    "noWingetPackages": MessageLookupByLibrary.simpleMessage(
      "No se detectaron paquetes conocidos con winget.",
    ),
    "officeInstallDescription": MessageLookupByLibrary.simpleMessage(
      "مایکروسافت آفیس LTSC یا 365 را به طور خودکار از ODT استفاده می کند.",
    ),
    "officeInstaller": MessageLookupByLibrary.simpleMessage(
      "Instalador de Office",
    ),
    "officeRenewalStatus": m11,
    "officeVersion": MessageLookupByLibrary.simpleMessage("نسخه آفیس"),
    "onlyWindows": MessageLookupByLibrary.simpleMessage(
      "این عملکرد انفرادی در ویندوز در دسترس است.",
    ),
    "packageStack": MessageLookupByLibrary.simpleMessage(
      "Stack de Programas (Winget)",
    ),
    "packagesDetected": m12,
    "partitionMode": MessageLookupByLibrary.simpleMessage("Modo de Partición"),
    "prepareBridge": MessageLookupByLibrary.simpleMessage(
      "Preparar e iniciar puente",
    ),
    "provideWindowsImage": MessageLookupByLibrary.simpleMessage(
      "متناسب با تصویر نصب ویندوز (install.wim یا install.swm)\nUSB unidad یا cualquier medio montado.",
    ),
    "receiveInstallation": MessageLookupByLibrary.simpleMessage(
      "O reciba la installación preparada desde requiem for Windows",
    ),
    "renewalActive": MessageLookupByLibrary.simpleMessage("اکتیو"),
    "renewalDisabled": MessageLookupByLibrary.simpleMessage("غیر فعال سازی"),
    "searchingImage": MessageLookupByLibrary.simpleMessage("تصویر Buscando…"),
    "secureBootCompatible": MessageLookupByLibrary.simpleMessage(
      "سازگار با بوت امن",
    ),
    "selectDestinationDisk": MessageLookupByLibrary.simpleMessage(
      "دیسکوی انتخابی",
    ),
    "selectFileHint": MessageLookupByLibrary.simpleMessage(
      "انتخاب آرشیو .wim o .swm",
    ),
    "selectWim": MessageLookupByLibrary.simpleMessage("WIM انتخابی"),
    "selectWimFirst": MessageLookupByLibrary.simpleMessage(
      "انتخاب یک WIM و یک رابط IPv4 خصوصی.",
    ),
    "selectWindowsImage": MessageLookupByLibrary.simpleMessage(
      "تصویر انتخابی ویندوز",
    ),
    "selectWindowsImageFull": MessageLookupByLibrary.simpleMessage(
      "تصویر انتخابی نصب ویندوز",
    ),
    "selectedFile": m13,
    "stableVersion": MessageLookupByLibrary.simpleMessage(
      "نسخه estable نسخه 1.0.0",
    ),
    "start": MessageLookupByLibrary.simpleMessage("امپزار"),
    "startInstallation": MessageLookupByLibrary.simpleMessage("نصب اولیه"),
    "stopBridge": MessageLookupByLibrary.simpleMessage("پاک کننده پوئنت"),
    "systemConsole": MessageLookupByLibrary.simpleMessage("کنسول دل سیستم"),
    "systemDisk": MessageLookupByLibrary.simpleMessage("سیستما"),
    "systemLogs": MessageLookupByLibrary.simpleMessage(
      "سیاهههای مربوط به سیستم",
    ),
    "unknown": MessageLookupByLibrary.simpleMessage("دسکونوسیدو"),
    "updateDescription": MessageLookupByLibrary.simpleMessage(
      "برای ادامه استفاده از ابزارهای مرثیه، نیاز به یک نسخه جدید را دارد.",
    ),
    "updateRequired": MessageLookupByLibrary.simpleMessage("نیازهای واقعی"),
    "useExistingPartitions": MessageLookupByLibrary.simpleMessage(
      "Usar particiones موجود است",
    ),
    "useExistingPartitionsDescription": MessageLookupByLibrary.simpleMessage(
      "Sin formatear — despliega en W: tal cual\nاستفاده از gestiona las particiones manualmente",
    ),
    "waitingAction": MessageLookupByLibrary.simpleMessage(
      "اسپراندو una acción...",
    ),
    "waitingForWim": MessageLookupByLibrary.simpleMessage(
      "Esperando la detección de install.wim...",
    ),
    "wifiConnectError": m14,
    "wifiConnected": m15,
    "wifiPassword": MessageLookupByLibrary.simpleMessage("Wi-Fi Contraseña"),
    "wimIntegrated": MessageLookupByLibrary.simpleMessage(
      "WIM integrado در ISO",
    ),
    "wingetUnavailable": MessageLookupByLibrary.simpleMessage(
      "winget no está installado o no está en PATH.",
    ),
  };
}
