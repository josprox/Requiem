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

  static String m7(firmware) => "آرانک واقعی: ${firmware}";

  static String m8(diskNumber, mediaType, busType) =>
      "DISK ${diskNumber} · ${mediaType} · ${busType}";

  static String m9(recommended) => "سازگار با حالت: ${recommended}";

  static String m10(sizeGB) => "${sizeGB} گیگابایت";

  static String m11(imageName) =>
      "پوئنت: \${controller.bridgeAnnouncement?.imageName ??";

  static String m12(name, edition) => "نسخه شناسایی: ${name} (${edition})";

  static String m13(error) => "خطای رویداد: ${error}";

  static String m14(val) => "Ruta inválida: ${val}";

  static String m15(error) =>
      "بدون این که اطلاعاتی را در اختیار داشته باشید.\\n${error}";

  static String m16(path) => "انتخاب: ${path}";

  static String m17(path) => "Ruta inválida: ${path}";

  static String m18(clients) => "${clients} کانکسیون";

  static String m19(error) => "خطا: ${error}";

  static String m20(error) => "اینترفیس‌های IPv4 نیست: ${error}";

  static String m21(path) => "انتخاب WIM: ${path}";

  static String m22(error) => "خطای KMS: ${error}";

  static String m23(product, channel, edition, status) =>
      "${product} / ${channel} / ${edition} بیت. La renovación queda ${status}.";

  static String m24(count) => "شناسایی پاکت ها: ${count}.";

  static String m25(file) => "انتخاب: ${file}";

  static String m26(count) => "برنامه های ${count}";

  static String m27(host) => "Comprobando conectividad con ${host}:1688...";

  static String m28(error) => "خطای KMS: ${error}";

  static String m29(time, message) => "[${time}] ${message}";

  static String m30(count) => "شناسایی پاکت ها: ${count}.";

  static String m31(error) => "بدون اتصال Wi-Fi: ${error}";

  static String m32(network) => "Conectado یک ${network}.";

  static String m33(error) => "بدون اتصال Wi-Fi: ${error}";

  static String m34(ssid, result) => "Wi-Fi به ${ssid} متصل است. ${result}";

  static String m35(ssid) => "Conectado یک ${ssid}.";

  static String m36(signal, security) => "${signal}% · ${security}";

  static String m37(error) => "بدون اتصال به پودو: ${error}";

  static String m38(error) => "No se pudo buscar el puente: ${error}";

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
    "app_title_installer": MessageLookupByLibrary.simpleMessage(
      "نصب کننده Requiem",
    ),
    "app_title_tools": MessageLookupByLibrary.simpleMessage("ابزار Requiem"),
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
    "common_cancel": MessageLookupByLibrary.simpleMessage("لغو"),
    "common_change": MessageLookupByLibrary.simpleMessage("کامبیار"),
    "common_connect": MessageLookupByLibrary.simpleMessage("CONECTAR"),
    "common_continue": MessageLookupByLibrary.simpleMessage("ادامه دهید"),
    "common_label_disk": MessageLookupByLibrary.simpleMessage("دیسک"),
    "common_label_image": MessageLookupByLibrary.simpleMessage("تصویر"),
    "common_label_mode": MessageLookupByLibrary.simpleMessage("حالت"),
    "common_refresh": MessageLookupByLibrary.simpleMessage("ACTUALIZAR"),
    "common_search": MessageLookupByLibrary.simpleMessage("BUSCAR"),
    "common_select": MessageLookupByLibrary.simpleMessage("انتخابی"),
    "compatibleMode": m6,
    "confirmDataDestruction": MessageLookupByLibrary.simpleMessage(
      "تایید خرابی داده ها",
    ),
    "confirmInstallation": MessageLookupByLibrary.simpleMessage("تایید نصب"),
    "connectInstallerWifi": MessageLookupByLibrary.simpleMessage(
      "یک Wi-Fi را نصب کنید",
    ),
    "connectWifi": MessageLookupByLibrary.simpleMessage("اتصال وای فای"),
    "console_title": MessageLookupByLibrary.simpleMessage("کنسول دل سیستما"),
    "console_tooltip_clear": MessageLookupByLibrary.simpleMessage(
      "سیاهههای مربوط به لیمپیار",
    ),
    "console_tooltip_copy": MessageLookupByLibrary.simpleMessage("لاگ های کپی"),
    "console_waiting_action": MessageLookupByLibrary.simpleMessage(
      "اسپراندو una acción...",
    ),
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
    "disk_badge_system": MessageLookupByLibrary.simpleMessage("SISTEMA"),
    "disk_boot_firmware_label": m7,
    "disk_button_confirm_and_install": MessageLookupByLibrary.simpleMessage(
      "CONFIRMAR E INSTALAR",
    ),
    "disk_dialog_confirm_destruction_title":
        MessageLookupByLibrary.simpleMessage("تأیید تخریب DATOS"),
    "disk_dialog_confirm_install_title": MessageLookupByLibrary.simpleMessage(
      "تایید نصب",
    ),
    "disk_dialog_existing_notice": MessageLookupByLibrary.simpleMessage(
      "Windows desplegará en W:\\\\ sin formatear.",
    ),
    "disk_dialog_format_warning": MessageLookupByLibrary.simpleMessage(
      "ال دیسکو انتخاب شده است برای تکمیل. Se perderán todos los datos.",
    ),
    "disk_empty_list": MessageLookupByLibrary.simpleMessage(
      "بدون شناسایی دیسکوهای فیسیکو",
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
      "Elija la unidad física donde se installer Windows.",
    ),
    "disk_selection_title": MessageLookupByLibrary.simpleMessage(
      "انتخاب دیسکو د Destino",
    ),
    "disk_size_gb": m10,
    "disk_waiting_wim_hint": MessageLookupByLibrary.simpleMessage(
      "Esperando la detección de install.wim...",
    ),
    "disk_wim_bridge_source": m11,
    "disk_wim_detected": MessageLookupByLibrary.simpleMessage("تشخیص تصویر"),
    "disk_wim_integrated_source": MessageLookupByLibrary.simpleMessage(
      "WIM integrado در ISO",
    ),
    "disk_wim_not_found": MessageLookupByLibrary.simpleMessage(
      "Imagen no contrada",
    ),
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
    "editionDetected": m12,
    "emptyFolder": MessageLookupByLibrary.simpleMessage(
      "Esta carpeta está vacía",
    ),
    "errorGeneric": m13,
    "file_explorer_default_title": MessageLookupByLibrary.simpleMessage(
      "انتخاب تصویر نصب ویندوز",
    ),
    "file_explorer_drives_header": MessageLookupByLibrary.simpleMessage(
      "UNIDADES",
    ),
    "file_explorer_empty_folder": MessageLookupByLibrary.simpleMessage(
      "Esta carpeta está vacía",
    ),
    "file_explorer_filter_hint": MessageLookupByLibrary.simpleMessage("فیلتر…"),
    "file_explorer_go_up_tooltip": MessageLookupByLibrary.simpleMessage(
      "سوبیر اون سطح",
    ),
    "file_explorer_invalid_path_error": m14,
    "file_explorer_read_error": m15,
    "file_explorer_select_file_hint": MessageLookupByLibrary.simpleMessage(
      "انتخاب آرشیو .wim o .swm",
    ),
    "file_explorer_selected_file": m16,
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
    "invalidPath": m17,
    "isoDescription": MessageLookupByLibrary.simpleMessage(
      "پایه ISO برای انتخاب و تنظیم WIM، یا ایجاد یک ISO خودکار که شامل تصاویر ویندوز می شود را انتخاب کنید.",
    ),
    "iso_bridge_clients_count": m18,
    "iso_bridge_desc": MessageLookupByLibrary.simpleMessage(
      "آماده کردن WIM una sola vez y lo transmite directamente a los clientes Requiem de la misma red. مشتریان بدون نگهبانی از WIM قبل از نصب.",
    ),
    "iso_bridge_generic_error": m19,
    "iso_bridge_list_interfaces_error": m20,
    "iso_bridge_save_simple_iso_dialog": MessageLookupByLibrary.simpleMessage(
      "نگهبان ISO simple de Requiem",
    ),
    "iso_bridge_save_wim_iso_dialog": MessageLookupByLibrary.simpleMessage(
      "Guardar ISO de Requiem con WIM",
    ),
    "iso_bridge_select_wim_dialog": MessageLookupByLibrary.simpleMessage(
      "تصویر انتخابی WIM ویندوز",
    ),
    "iso_bridge_simple_iso_filename": MessageLookupByLibrary.simpleMessage(
      "Requiem-Installer-Simple.iso",
    ),
    "iso_bridge_start_validation_error": MessageLookupByLibrary.simpleMessage(
      "انتخاب یک WIM و یک رابط IPv4 خصوصی.",
    ),
    "iso_bridge_wim_selected_log": m21,
    "iso_panel_button_generate_iso": MessageLookupByLibrary.simpleMessage(
      "GENERAR ISO",
    ),
    "iso_panel_button_select_wim": MessageLookupByLibrary.simpleMessage(
      "SELECCIONAR WIM",
    ),
    "iso_panel_button_simple_iso": MessageLookupByLibrary.simpleMessage(
      "OBTENER ISO PARA INSTALACIÓN SOLAMENTE",
    ),
    "iso_panel_desc_media": MessageLookupByLibrary.simpleMessage(
      "پایه ISO برای انتخاب و تنظیم WIM، یا ایجاد یک ISO خودکار که شامل تصاویر ویندوز می شود را انتخاب کنید.",
    ),
    "iso_panel_title_bridge": MessageLookupByLibrary.simpleMessage("نصب IPv4"),
    "iso_panel_title_media": MessageLookupByLibrary.simpleMessage("رسانه نصب"),
    "kmsError": m22,
    "kmsHostEmpty": MessageLookupByLibrary.simpleMessage(
      "خطا: el host KMS está vacío.",
    ),
    "kmsServer": MessageLookupByLibrary.simpleMessage("سرویس دهنده KMS"),
    "kmsTask160Days": MessageLookupByLibrary.simpleMessage("Tarea 160 días"),
    "kmsVolumeActivation": MessageLookupByLibrary.simpleMessage(
      "فعال سازی حجم (KMS)",
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
      "استاندارد آفیس 2013",
    ),
    "kms_product_windows_10_11_education": MessageLookupByLibrary.simpleMessage(
      "آموزش ویندوز 10/11",
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
      "ویندوز 10/11 پرو",
    ),
    "kms_product_windows_10_11_pro_education":
        MessageLookupByLibrary.simpleMessage("Windows 10/11 Pro Education"),
    "kms_product_windows_10_11_pro_for_workstations":
        MessageLookupByLibrary.simpleMessage(
          "ویندوز 10/11 پرو برای ایستگاه های کاری",
        ),
    "kms_product_windows_10_11_pro_n": MessageLookupByLibrary.simpleMessage(
      "Windows 10/11 Pro N",
    ),
    "kms_product_windows_10_11_pro_workstations":
        MessageLookupByLibrary.simpleMessage(
          "ایستگاه های کاری ویندوز 10/11 پرو",
        ),
    "kms_product_windows_8_1_enterprise": MessageLookupByLibrary.simpleMessage(
      "Windows 8.1 Enterprise",
    ),
    "kms_product_windows_8_1_pro": MessageLookupByLibrary.simpleMessage(
      "ویندوز 8.1 پرو",
    ),
    "kms_product_windows_8_enterprise": MessageLookupByLibrary.simpleMessage(
      "Windows 8 Enterprise",
    ),
    "kms_product_windows_8_pro": MessageLookupByLibrary.simpleMessage(
      "ویندوز 8 پرو",
    ),
    "kms_product_windows_server_2019_datacenter":
        MessageLookupByLibrary.simpleMessage("Windows Server 2019 Datacenter"),
    "kms_product_windows_server_2019_standard":
        MessageLookupByLibrary.simpleMessage("ویندوز سرور 2019 استاندارد"),
    "kms_product_windows_server_2022_datacenter":
        MessageLookupByLibrary.simpleMessage("Windows Server 2022 Datacenter"),
    "kms_product_windows_server_2022_standard":
        MessageLookupByLibrary.simpleMessage("ویندوز سرور 2022 استاندارد"),
    "kms_product_windows_server_2025_datacenter":
        MessageLookupByLibrary.simpleMessage("Windows Server 2025 Datacenter"),
    "kms_product_windows_server_2025_standard":
        MessageLookupByLibrary.simpleMessage("ویندوز سرور 2025 استاندارد"),
    "kms_product_windows_subsystem_for_linux":
        MessageLookupByLibrary.simpleMessage("زیر سیستم ویندوز برای لینوکس"),
    "kms_product_windows_terminal": MessageLookupByLibrary.simpleMessage(
      "ترمینال ویندوز",
    ),
    "landingDescription": MessageLookupByLibrary.simpleMessage(
      "نصب ویندوز دالتا دقیق برای بازیابی آلتو. DISM و بهینه سازی خودکار سیستم را آزمایش کنید.",
    ),
    "landing_badge_author": MessageLookupByLibrary.simpleMessage(
      "DISEÑADO POR JOSS",
    ),
    "landing_badge_secure_boot": MessageLookupByLibrary.simpleMessage(
      "بوت امن CON سازگار",
    ),
    "landing_badge_version": MessageLookupByLibrary.simpleMessage(
      "VERSIÓN ESTABLE",
    ),
    "landing_button_logs": MessageLookupByLibrary.simpleMessage(
      "LOGS DEL SISTEMA",
    ),
    "landing_button_start": MessageLookupByLibrary.simpleMessage("EMPEZAR"),
    "landing_description_part1": MessageLookupByLibrary.simpleMessage(
      "نصب ویندوز دالتا دقیق برای بازیابی آلتو.",
    ),
    "landing_description_part2": MessageLookupByLibrary.simpleMessage(
      "DISM و بهینه سازی خودکار سیستم را آزمایش کنید.",
    ),
    "landing_subtitle": MessageLookupByLibrary.simpleMessage(
      "DESPLIEGUE DE SO DE PRÓXIMA GENERACIÓN",
    ),
    "landing_title_installer": MessageLookupByLibrary.simpleMessage(
      "REQUIEM INSTALLER",
    ),
    "landing_title_tools": MessageLookupByLibrary.simpleMessage(
      "ابزار REQUIEM",
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
    "officeRenewalStatus": m23,
    "officeVersion": MessageLookupByLibrary.simpleMessage("نسخه آفیس"),
    "office_odt_kms_badge": MessageLookupByLibrary.simpleMessage("ODT + KMS"),
    "office_odt_panel_title": MessageLookupByLibrary.simpleMessage(
      "ابزار استقرار آفیس",
    ),
    "office_pkg_desc_2019": MessageLookupByLibrary.simpleMessage(
      "کلیک برای اجرا در مجرای حجمی PerpetualVL2019",
    ),
    "office_pkg_desc_2021": MessageLookupByLibrary.simpleMessage(
      "کلیک برای اجرا در مجرای حجمی PerpetualVL2021",
    ),
    "office_pkg_desc_2024": MessageLookupByLibrary.simpleMessage(
      "کلیک برای اجرا در مجرای حجمی PerpetualVL2024",
    ),
    "office_pkg_name_2019": MessageLookupByLibrary.simpleMessage(
      "آفیس پرو پلاس 2019",
    ),
    "office_pkg_name_2021": MessageLookupByLibrary.simpleMessage(
      "Office LTSC Pro Plus 2021",
    ),
    "office_pkg_name_2024": MessageLookupByLibrary.simpleMessage(
      "Office LTSC Pro Plus 2024",
    ),
    "onlyWindows": MessageLookupByLibrary.simpleMessage(
      "این عملکرد انفرادی در ویندوز در دسترس است.",
    ),
    "packageStack": MessageLookupByLibrary.simpleMessage(
      "Stack de Programas (Winget)",
    ),
    "packagesDetected": m24,
    "partitionMode": MessageLookupByLibrary.simpleMessage("Modo de Partición"),
    "pkg_cat_apache_php_mysql": MessageLookupByLibrary.simpleMessage(
      "آپاچی PHP MySQL",
    ),
    "pkg_cat_bi_desktop": MessageLookupByLibrary.simpleMessage("دسکتاپ BI"),
    "pkg_cat_cliente_api": MessageLookupByLibrary.simpleMessage("Client API"),
    "pkg_cat_cliente_db": MessageLookupByLibrary.simpleMessage("مشتری DB"),
    "pkg_cat_compiladores_c": MessageLookupByLibrary.simpleMessage(
      "Compiladores C++",
    ),
    "pkg_cat_compresor": MessageLookupByLibrary.simpleMessage("کمپرسور"),
    "pkg_cat_comunicacion": MessageLookupByLibrary.simpleMessage("ارتباط"),
    "pkg_cat_control_de_versiones": MessageLookupByLibrary.simpleMessage(
      "کنترل نسخه ها",
    ),
    "pkg_cat_desktop": MessageLookupByLibrary.simpleMessage("دسکتاپ"),
    "pkg_cat_diagramas": MessageLookupByLibrary.simpleMessage("نمودارها"),
    "pkg_cat_distro_wsl": MessageLookupByLibrary.simpleMessage("توزیع WSL"),
    "pkg_cat_editor": MessageLookupByLibrary.simpleMessage("ویرایشگر"),
    "pkg_cat_golang": MessageLookupByLibrary.simpleMessage("گولنگ"),
    "pkg_cat_gpu_compute": MessageLookupByLibrary.simpleMessage("محاسبه GPU"),
    "pkg_cat_grabacion": MessageLookupByLibrary.simpleMessage("گراباسیون"),
    "pkg_cat_ide_ai": MessageLookupByLibrary.simpleMessage("IDE AI"),
    "pkg_cat_ide_android": MessageLookupByLibrary.simpleMessage("IDE اندروید"),
    "pkg_cat_ide_completo": MessageLookupByLibrary.simpleMessage("IDE کامل شد"),
    "pkg_cat_instaladores": MessageLookupByLibrary.simpleMessage(
      "Instaladores",
    ),
    "pkg_cat_javascript": MessageLookupByLibrary.simpleMessage("جاوا اسکریپت"),
    "pkg_cat_limpieza": MessageLookupByLibrary.simpleMessage("لیمپیزا"),
    "pkg_cat_modelos_locales": MessageLookupByLibrary.simpleMessage(
      "مکان های مدلوس",
    ),
    "pkg_cat_navegador": MessageLookupByLibrary.simpleMessage("ناوگادور"),
    "pkg_cat_python_3": MessageLookupByLibrary.simpleMessage("پایتون 3"),
    "pkg_cat_runtime_c": MessageLookupByLibrary.simpleMessage("زمان اجرا ++C"),
    "pkg_cat_runtime_escritorio": MessageLookupByLibrary.simpleMessage(
      "زمان اجرا",
    ),
    "pkg_cat_runtime_juegos": MessageLookupByLibrary.simpleMessage(
      "بازی های زمان اجرا",
    ),
    "pkg_cat_runtime_php": MessageLookupByLibrary.simpleMessage(
      "زمان اجرا PHP",
    ),
    "pkg_cat_rustup": MessageLookupByLibrary.simpleMessage("Rustup"),
    "pkg_cat_sdk__net": MessageLookupByLibrary.simpleMessage("SDK .NET"),
    "pkg_cat_servidor_db": MessageLookupByLibrary.simpleMessage(
      "سرویس دهنده DB",
    ),
    "pkg_cat_ssh_clasico": MessageLookupByLibrary.simpleMessage("کلاسیکو SSH"),
    "pkg_cat_ssh_moderno": MessageLookupByLibrary.simpleMessage("SSH مدرن"),
    "pkg_cat_subsistema_linux": MessageLookupByLibrary.simpleMessage(
      "ساب سیستم لینوکس",
    ),
    "pkg_cat_temurin_21": MessageLookupByLibrary.simpleMessage("تیمورین 21"),
    "pkg_cat_terminal_moderno": MessageLookupByLibrary.simpleMessage(
      "ترمینال مدرن",
    ),
    "prepareBridge": MessageLookupByLibrary.simpleMessage(
      "Preparar e iniciar puente",
    ),
    "progress_button_reboot": MessageLookupByLibrary.simpleMessage(
      "رینیسیار سیستم",
    ),
    "progress_footer_warning": MessageLookupByLibrary.simpleMessage(
      "NO DESCONECTE LA ENERGÍA NI RETIRE EL MEDIO DE INSTALACIÓN",
    ),
    "progress_header_badge": MessageLookupByLibrary.simpleMessage(
      "DESPLIEGUE EN CURSO",
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
    "selectedFile": m25,
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
    "tools_badge_iso_compatibility": MessageLookupByLibrary.simpleMessage(
      "مواد نگهدارنده BIOS + UEFI",
    ),
    "tools_badge_kms_pending": MessageLookupByLibrary.simpleMessage(
      "KMS pendiente",
    ),
    "tools_badge_package_count": m26,
    "tools_button_activate_kms": MessageLookupByLibrary.simpleMessage(
      "ACTIVAR KMS",
    ),
    "tools_button_install_all_packages": MessageLookupByLibrary.simpleMessage(
      "INSTALAR TODO",
    ),
    "tools_button_install_office": MessageLookupByLibrary.simpleMessage(
      "دفتر نصب",
    ),
    "tools_header_title": MessageLookupByLibrary.simpleMessage(
      "ابزارهای REQUIEM MIGRATION",
    ),
    "tools_kms_checking_connectivity": m27,
    "tools_kms_empty_host_error": MessageLookupByLibrary.simpleMessage(
      "خطا: el host KMS esta vacio.",
    ),
    "tools_kms_error_log": m28,
    "tools_kms_no_products_selected": MessageLookupByLibrary.simpleMessage(
      "هیچ محصول یونجه ای برای انتخاب KMS وجود ندارد.",
    ),
    "tools_log_format": m29,
    "tools_logs_copied_snackbar": MessageLookupByLibrary.simpleMessage(
      "سیاههها copiados al portapapeles.",
    ),
    "tools_packages_detected_count": m30,
    "tools_packages_none_detected": MessageLookupByLibrary.simpleMessage(
      "No se detectaron paquetes conocidos con winget.",
    ),
    "tools_packages_none_selected": MessageLookupByLibrary.simpleMessage(
      "بدون برنامه های انتخابی یونجه.",
    ),
    "tools_section_activation_desc": MessageLookupByLibrary.simpleMessage(
      "سرور KMS محلی یا راه دور را برای فعال کردن ویندوز و آفیس پیکربندی کنید.",
    ),
    "tools_section_activation_title": MessageLookupByLibrary.simpleMessage(
      "Activación de Licencias",
    ),
    "tools_section_iso_desc": MessageLookupByLibrary.simpleMessage(
      "Cree medios autonomos با یکپارچه سازی WIM یا توزیع یک نصب مستقیم با IPv4.",
    ),
    "tools_section_iso_title": MessageLookupByLibrary.simpleMessage(
      "ISO y despliegue برای قرمز",
    ),
    "tools_section_office_desc": MessageLookupByLibrary.simpleMessage(
      "مایکروسافت آفیس LTSC یا 365 را به طور خودکار از ODT استفاده می کند.",
    ),
    "tools_section_office_title": MessageLookupByLibrary.simpleMessage(
      "Instalador de Office",
    ),
    "tools_section_packages_desc": MessageLookupByLibrary.simpleMessage(
      "برای Windows Mediante winget، هرمی را به طور کامل نصب کنید.",
    ),
    "tools_section_packages_title": MessageLookupByLibrary.simpleMessage(
      "Stack de Applicaciones",
    ),
    "tools_sidebar_app_name": MessageLookupByLibrary.simpleMessage("مرثیه"),
    "tools_sidebar_mode_badge": MessageLookupByLibrary.simpleMessage(
      "حالت ابزارهای محلی",
    ),
    "tools_sidebar_tab_iso": MessageLookupByLibrary.simpleMessage(
      "ISO y Puente",
    ),
    "tools_sidebar_tab_kms": MessageLookupByLibrary.simpleMessage(
      "Activation KMS",
    ),
    "tools_sidebar_tab_office": MessageLookupByLibrary.simpleMessage(
      "دفتر نصب",
    ),
    "tools_sidebar_tab_packages": MessageLookupByLibrary.simpleMessage(
      "پشته برنامه ها",
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
    "wifiConnectError": m31,
    "wifiConnected": m32,
    "wifiPassword": MessageLookupByLibrary.simpleMessage("Wi-Fi Contraseña"),
    "wifi_connect_error": m33,
    "wifi_connected_log": m34,
    "wifi_connected_status": m35,
    "wifi_dialog_title": MessageLookupByLibrary.simpleMessage(
      "یک Wi-Fi را نصب کنید",
    ),
    "wifi_item_signal_security": m36,
    "wifi_none_found": MessageLookupByLibrary.simpleMessage(
      "بدون نیاز به تغییر Wi-Fi در دسترس است.",
    ),
    "wifi_password_hint": MessageLookupByLibrary.simpleMessage(
      "Wi-Fi Contraseña",
    ),
    "wifi_scanning": MessageLookupByLibrary.simpleMessage(
      "در حال اسکن شبکه های Wi-Fi موجود...",
    ),
    "wimIntegrated": MessageLookupByLibrary.simpleMessage(
      "WIM integrado در ISO",
    ),
    "wim_bridge_connection_error": m37,
    "wim_bridge_ip_dialog_title": MessageLookupByLibrary.simpleMessage(
      "IP del Puente Requiem",
    ),
    "wim_bridge_ip_placeholder": MessageLookupByLibrary.simpleMessage(
      "192.168.1.20",
    ),
    "wim_bridge_not_found": MessageLookupByLibrary.simpleMessage(
      "بدون هیچ گونه محدودیتی برای ningún puente. راهنمای Pruebe con la IP.",
    ),
    "wim_bridge_search_error": m38,
    "wim_bridge_searching": MessageLookupByLibrary.simpleMessage(
      "جستجوی پل های Requiem در شبکه محلی IPv4...",
    ),
    "wim_bridge_section_header": MessageLookupByLibrary.simpleMessage(
      "O reciba la installación preparada desde requiem for Windows",
    ),
    "wim_button_change_file": MessageLookupByLibrary.simpleMessage(
      "CAMBIAR ARCHIVO",
    ),
    "wim_button_connect_wifi": MessageLookupByLibrary.simpleMessage(
      "کانکتار وای فای",
    ),
    "wim_button_manual_ip": MessageLookupByLibrary.simpleMessage(
      "راهنمای IP USAR",
    ),
    "wim_button_rescan": MessageLookupByLibrary.simpleMessage(
      "Escanear unidades de nuevo",
    ),
    "wim_button_search_bridge": MessageLookupByLibrary.simpleMessage(
      "BUSCAR PUENTE",
    ),
    "wim_manual_search_hint": MessageLookupByLibrary.simpleMessage(
      "از \"Buscar\" برای محلی سازی بایگانی راهنمای WIM استفاده کنید.",
    ),
    "wim_picker_description": MessageLookupByLibrary.simpleMessage(
      "متناسب با تصویر نصب ویندوز (install.wim یا install.swm)\\n",
    ),
    "wim_picker_title": MessageLookupByLibrary.simpleMessage(
      "انتخاب تصویر ویندوز",
    ),
    "wim_status_found": MessageLookupByLibrary.simpleMessage(
      "Imagen encontrada",
    ),
    "wim_status_not_found": MessageLookupByLibrary.simpleMessage(
      "بدون تشخیص تصویر",
    ),
    "wim_status_searching": MessageLookupByLibrary.simpleMessage(
      "تصویر Buscando…",
    ),
    "wim_status_searching_alt": MessageLookupByLibrary.simpleMessage(
      "تصویر بوسکاندو...",
    ),
    "wingetUnavailable": MessageLookupByLibrary.simpleMessage(
      "winget no está installado o no está en PATH.",
    ),
  };
}
