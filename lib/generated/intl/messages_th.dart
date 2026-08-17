// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a th locale. All the
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
  String get localeName => 'th';

  static String m0(count) => "${count} โปรแกรม";

  static String m1(version) => "รุ่นที่มีจำหน่าย: ${version}";

  static String m2(firmware) => "ข้อตกลงปัจจุบัน: ${firmware}";

  static String m3(error) => "ไม่สามารถเชื่อมต่อ: ${error}";

  static String m4(error) => "ไม่สามารถค้นหาสะพาน: ${error}";

  static String m5(host) => "กำลังตรวจสอบการเชื่อมต่อกับ ${host}:1688...";

  static String m6(mode) => "โหมดที่รองรับ: ${mode}";

  static String m7(firmware) => "ข้อตกลงปัจจุบัน: ${firmware}";

  static String m8(diskNumber, mediaType, busType) =>
      "ดิสก์ ${diskNumber} · ${mediaType} · ${busType}";

  static String m9(recommended) => "โหมดที่รองรับ: ${recommended}";

  static String m10(sizeGB) => "${sizeGB} ส";

  static String m11(imageName) =>
      "สะพาน: \${controller.bridgeAnnouncement?.imageName ??";

  static String m12(name, edition) => "ตรวจพบการแก้ไข: ${name} (${edition})";

  static String m13(error) => "เกิดข้อผิดพลาด: ${error}";

  static String m14(val) => "เส้นทางไม่ถูกต้อง: ${val}";

  static String m15(error) => "ไม่สามารถอ่านเนื้อหาของไดเร็กทอรีได้\\n${error}";

  static String m16(path) => "เลือกแล้ว: ${path}";

  static String m17(path) => "เส้นทางไม่ถูกต้อง: ${path}";

  static String m18(clients) => "${clients} คนรู้จัก";

  static String m19(error) => "ข้อผิดพลาด: ${error}";

  static String m20(error) => "ไม่สามารถระบุอินเทอร์เฟซ IPv4 ได้: ${error}";

  static String m21(path) => "WIM ที่เลือก: ${path}";

  static String m22(error) => "ข้อผิดพลาด KMS: ${error}";

  static String m23(product, channel, edition, status) =>
      "${product} / ${channel} / ${edition} บิต การต่ออายุยังคงอยู่ ${status}";

  static String m24(count) => "แพ็กเก็ตที่ตรวจพบ: ${count}";

  static String m25(file) => "เลือกแล้ว: ${file}";

  static String m26(count) => "${count} โปรแกรม";

  static String m27(host) => "กำลังตรวจสอบการเชื่อมต่อกับ ${host}:1688...";

  static String m28(error) => "ข้อผิดพลาด KMS: ${error}";

  static String m29(time, message) => "[${time}] ${message}";

  static String m30(count) => "แพ็กเก็ตที่ตรวจพบ: ${count}";

  static String m31(error) => "ไม่สามารถเชื่อมต่อ Wi-Fi: ${error}";

  static String m32(network) => "เชื่อมต่อกับ ${network}";

  static String m33(error) => "ไม่สามารถเชื่อมต่อ Wi-Fi: ${error}";

  static String m34(ssid, result) => "เชื่อมต่อ Wi-Fi กับ ${ssid} ${result}";

  static String m35(ssid) => "เชื่อมต่อกับ ${ssid}";

  static String m36(signal, security) => "${signal}% · ${security}";

  static String m37(error) => "ไม่สามารถเชื่อมต่อ: ${error}";

  static String m38(error) => "ไม่สามารถค้นหาสะพาน: ${error}";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
    "actionCancel": MessageLookupByLibrary.simpleMessage("ยกเลิก"),
    "actionChange": MessageLookupByLibrary.simpleMessage("เปลี่ยน"),
    "actionConfirm": MessageLookupByLibrary.simpleMessage("ยืนยัน"),
    "actionConnect": MessageLookupByLibrary.simpleMessage("เชื่อมต่อ"),
    "actionContinue": MessageLookupByLibrary.simpleMessage("ดำเนินการต่อ"),
    "actionInstall": MessageLookupByLibrary.simpleMessage("ติดตั้ง"),
    "actionRefresh": MessageLookupByLibrary.simpleMessage("อัปเดต"),
    "actionRestartSystem": MessageLookupByLibrary.simpleMessage("รีบูทระบบ"),
    "actionScanAgain": MessageLookupByLibrary.simpleMessage(
      "สแกนไดรฟ์อีกครั้ง",
    ),
    "actionSearch": MessageLookupByLibrary.simpleMessage("ค้นหา"),
    "actionSelect": MessageLookupByLibrary.simpleMessage("เลือก"),
    "activate": MessageLookupByLibrary.simpleMessage("เปิดใช้งาน"),
    "activateKms": MessageLookupByLibrary.simpleMessage("เปิดใช้งาน KMS"),
    "appTitleInstaller": MessageLookupByLibrary.simpleMessage(
      "ตัวติดตั้งบังสุกุล",
    ),
    "appTitleTools": MessageLookupByLibrary.simpleMessage("เครื่องมือบังสุกุล"),
    "app_title_installer": MessageLookupByLibrary.simpleMessage(
      "ตัวติดตั้งบังสุกุล",
    ),
    "app_title_tools": MessageLookupByLibrary.simpleMessage(
      "เครื่องมือบังสุกุล",
    ),
    "applicationStack": MessageLookupByLibrary.simpleMessage(
      "สแต็คแอปพลิเคชัน",
    ),
    "applicationStackDescription": MessageLookupByLibrary.simpleMessage(
      "ติดตั้งและอัปเดตเครื่องมือการพัฒนาที่จำเป็นสำหรับ Windows โดยใช้ Winget",
    ),
    "applicationsCount": m0,
    "automaticOffice": MessageLookupByLibrary.simpleMessage(
      "สำนักงานอัตโนมัติ",
    ),
    "automaticOfficeDescription": MessageLookupByLibrary.simpleMessage(
      "ใช้โวลุ่ม GVLK ที่ติดตั้งไว้แล้ว",
    ),
    "automaticRenewal": MessageLookupByLibrary.simpleMessage(
      "ต่ออายุอัตโนมัติ",
    ),
    "automaticWindows": MessageLookupByLibrary.simpleMessage(
      "หน้าต่างอัตโนมัติ",
    ),
    "automaticWindowsDescription": MessageLookupByLibrary.simpleMessage(
      "ตรวจจับรุ่นและ GVLK ที่เข้ากันได้",
    ),
    "availableVersion": m1,
    "bootCurrent": m2,
    "bridgeConnectError": m3,
    "bridgeDescription": MessageLookupByLibrary.simpleMessage(
      "เตรียม WIM เพียงครั้งเดียว และส่งโดยตรงไปยังไคลเอนต์ Requiem บนเครือข่ายเดียวกัน ไคลเอนต์ไม่บันทึก WIM ก่อนที่จะทำการติดตั้ง",
    ),
    "bridgeIp": MessageLookupByLibrary.simpleMessage("IP สะพานบังสุกุล"),
    "bridgePorts": MessageLookupByLibrary.simpleMessage(
      "พอร์ต HTTP 40124 · การค้นพบ UDP 40123 หาก Windows Defender ถาม ให้อนุญาตการเข้าถึงบนเครือข่ายส่วนตัว",
    ),
    "bridgeSearchError": m4,
    "checkingKms": m5,
    "clearLogs": MessageLookupByLibrary.simpleMessage("บันทึกการทำความสะอาด"),
    "common_cancel": MessageLookupByLibrary.simpleMessage("ยกเลิก"),
    "common_change": MessageLookupByLibrary.simpleMessage("การเปลี่ยนแปลง"),
    "common_connect": MessageLookupByLibrary.simpleMessage("เชื่อมต่อ"),
    "common_continue": MessageLookupByLibrary.simpleMessage("ดำเนินการต่อ"),
    "common_label_disk": MessageLookupByLibrary.simpleMessage("แผ่นดิสก์"),
    "common_label_image": MessageLookupByLibrary.simpleMessage("รูปภาพ"),
    "common_label_mode": MessageLookupByLibrary.simpleMessage("โหมด"),
    "common_refresh": MessageLookupByLibrary.simpleMessage("อัปเดต"),
    "common_search": MessageLookupByLibrary.simpleMessage("ค้นหา"),
    "common_select": MessageLookupByLibrary.simpleMessage("เลือก"),
    "compatibleMode": m6,
    "confirmDataDestruction": MessageLookupByLibrary.simpleMessage(
      "ยืนยันการทำลายข้อมูล",
    ),
    "confirmInstallation": MessageLookupByLibrary.simpleMessage(
      "ยืนยันการติดตั้ง",
    ),
    "connectInstallerWifi": MessageLookupByLibrary.simpleMessage(
      "เชื่อมต่อตัวติดตั้งกับ Wi-Fi",
    ),
    "connectWifi": MessageLookupByLibrary.simpleMessage("เชื่อมต่อ Wi-Fi"),
    "console_title": MessageLookupByLibrary.simpleMessage("คอนโซลระบบ"),
    "console_tooltip_clear": MessageLookupByLibrary.simpleMessage(
      "บันทึกการทำความสะอาด",
    ),
    "console_tooltip_copy": MessageLookupByLibrary.simpleMessage(
      "คัดลอกบันทึก",
    ),
    "console_waiting_action": MessageLookupByLibrary.simpleMessage(
      "กำลังรอการดำเนินการ...",
    ),
    "copyLogs": MessageLookupByLibrary.simpleMessage("คัดลอกบันทึก"),
    "deploymentInProgress": MessageLookupByLibrary.simpleMessage(
      "อยู่ระหว่างดำเนินการปรับใช้",
    ),
    "designedBy": MessageLookupByLibrary.simpleMessage("ออกแบบโดยจอส"),
    "destinationDiskDescription": MessageLookupByLibrary.simpleMessage(
      "เลือกฟิสิคัลไดรฟ์ที่จะติดตั้ง Windows",
    ),
    "detect": MessageLookupByLibrary.simpleMessage("ตรวจจับ"),
    "diskManagement": MessageLookupByLibrary.simpleMessage("การจัดการไนท์คลับ"),
    "disk_badge_system": MessageLookupByLibrary.simpleMessage("ระบบ"),
    "disk_boot_firmware_label": m7,
    "disk_button_confirm_and_install": MessageLookupByLibrary.simpleMessage(
      "ยืนยันและติดตั้ง",
    ),
    "disk_dialog_confirm_destruction_title":
        MessageLookupByLibrary.simpleMessage("ยืนยันการทำลายข้อมูล"),
    "disk_dialog_confirm_install_title": MessageLookupByLibrary.simpleMessage(
      "ยืนยันการติดตั้ง",
    ),
    "disk_dialog_existing_notice": MessageLookupByLibrary.simpleMessage(
      "Windows จะปรับใช้กับ W:\\\\ โดยไม่ต้องฟอร์แมต",
    ),
    "disk_dialog_format_warning": MessageLookupByLibrary.simpleMessage(
      "ดิสก์ที่เลือกจะถูกฟอร์แมตอย่างสมบูรณ์ ข้อมูลทั้งหมดจะหายไป",
    ),
    "disk_empty_list": MessageLookupByLibrary.simpleMessage(
      "ไม่พบฟิสิคัลดิสก์",
    ),
    "disk_item_header": m8,
    "disk_management_appbar_title": MessageLookupByLibrary.simpleMessage(
      "การจัดการดิสก์",
    ),
    "disk_partition_gpt_uefi": MessageLookupByLibrary.simpleMessage("GPT/UEFI"),
    "disk_partition_mbr_bios": MessageLookupByLibrary.simpleMessage(
      "MBR/ไบออส",
    ),
    "disk_recommended_mode_label": m9,
    "disk_selection_button_start": MessageLookupByLibrary.simpleMessage(
      "เริ่มการติดตั้ง",
    ),
    "disk_selection_desc": MessageLookupByLibrary.simpleMessage(
      "เลือกฟิสิคัลไดรฟ์ที่จะติดตั้ง Windows",
    ),
    "disk_selection_title": MessageLookupByLibrary.simpleMessage(
      "เลือกดิสก์ปลายทาง",
    ),
    "disk_size_gb": m10,
    "disk_waiting_wim_hint": MessageLookupByLibrary.simpleMessage(
      "กำลังรอการตรวจจับ install.wim...",
    ),
    "disk_wim_bridge_source": m11,
    "disk_wim_detected": MessageLookupByLibrary.simpleMessage("ตรวจพบรูปภาพ"),
    "disk_wim_integrated_source": MessageLookupByLibrary.simpleMessage(
      "WIM รวมอยู่ใน ISO",
    ),
    "disk_wim_not_found": MessageLookupByLibrary.simpleMessage("ไม่พบรูปภาพ"),
    "doNotDisconnect": MessageLookupByLibrary.simpleMessage(
      "อย่าปิดเครื่องหรือถอดสื่อการติดตั้งออก",
    ),
    "downloadAndActivate": MessageLookupByLibrary.simpleMessage(
      "ดาวน์โหลด + เปิดใช้งาน",
    ),
    "downloadInstaller": MessageLookupByLibrary.simpleMessage(
      "ดาวน์โหลดตัวติดตั้ง (.exe)",
    ),
    "downloadPortable": MessageLookupByLibrary.simpleMessage(
      "ดาวน์โหลดแบบพกพา (.zip)",
    ),
    "drives": MessageLookupByLibrary.simpleMessage("หน่วย"),
    "editionDetected": m12,
    "emptyFolder": MessageLookupByLibrary.simpleMessage("โฟลเดอร์นี้ว่างเปล่า"),
    "errorGeneric": m13,
    "file_explorer_default_title": MessageLookupByLibrary.simpleMessage(
      "เลือกอิมเมจการติดตั้ง Windows",
    ),
    "file_explorer_drives_header": MessageLookupByLibrary.simpleMessage(
      "หน่วย",
    ),
    "file_explorer_empty_folder": MessageLookupByLibrary.simpleMessage(
      "โฟลเดอร์นี้ว่างเปล่า",
    ),
    "file_explorer_filter_hint": MessageLookupByLibrary.simpleMessage(
      "ตัวกรอง…",
    ),
    "file_explorer_go_up_tooltip": MessageLookupByLibrary.simpleMessage(
      "ขึ้นไปอีกระดับหนึ่ง",
    ),
    "file_explorer_invalid_path_error": m14,
    "file_explorer_read_error": m15,
    "file_explorer_select_file_hint": MessageLookupByLibrary.simpleMessage(
      "เลือกไฟล์ .wim หรือ .swm",
    ),
    "file_explorer_selected_file": m16,
    "filter": MessageLookupByLibrary.simpleMessage("ตัวกรอง…"),
    "formatGpt": MessageLookupByLibrary.simpleMessage("รูปแบบ GPT (แนะนำ)"),
    "formatGptDescription": MessageLookupByLibrary.simpleMessage(
      "ทำความสะอาดดิสโก้และสร้างเค้าโครง UEFI\nEFI (S:) + Windows (W :)",
    ),
    "formatMbr": MessageLookupByLibrary.simpleMessage(
      "รูปแบบ MBR (BIOS ดั้งเดิม)",
    ),
    "formatMbrDescription": MessageLookupByLibrary.simpleMessage(
      "ล้างดิสก์และสร้างเค้าโครงดั้งเดิม\nวินโดวส์เท่านั้น (C:)",
    ),
    "formatWarning": MessageLookupByLibrary.simpleMessage(
      "ดิสก์ที่เลือกจะถูกฟอร์แมตอย่างสมบูรณ์ ข้อมูลทั้งหมดจะหายไป",
    ),
    "generateIso": MessageLookupByLibrary.simpleMessage("สร้าง ISO"),
    "getInstallOnlyIso": MessageLookupByLibrary.simpleMessage(
      "รับ ISO สำหรับการติดตั้งเท่านั้น",
    ),
    "goUpOneLevel": MessageLookupByLibrary.simpleMessage("ขึ้นไปอีกระดับหนึ่ง"),
    "imageDetected": MessageLookupByLibrary.simpleMessage("ตรวจพบรูปภาพ"),
    "imageFound": MessageLookupByLibrary.simpleMessage("พบรูปภาพแล้ว"),
    "imageNotFound": MessageLookupByLibrary.simpleMessage("ไม่พบรูปภาพ"),
    "imageSearching": MessageLookupByLibrary.simpleMessage("กำลังค้นหาภาพ..."),
    "installAll": MessageLookupByLibrary.simpleMessage("ติดตั้งทั้งหมด"),
    "installOffice": MessageLookupByLibrary.simpleMessage("สำนักงานติดตั้ง"),
    "installationProgress": MessageLookupByLibrary.simpleMessage(
      "ความคืบหน้าการติดตั้ง",
    ),
    "invalidPath": m17,
    "isoDescription": MessageLookupByLibrary.simpleMessage(
      "รับ ISO พื้นฐานเพื่อเลือก WIM ขณะบูต หรือสร้าง ISO ที่มีอยู่ในตัวเองซึ่งมีอิมเมจ Windows ของคุณอยู่แล้ว",
    ),
    "iso_bridge_clients_count": m18,
    "iso_bridge_desc": MessageLookupByLibrary.simpleMessage(
      "เตรียม WIM เพียงครั้งเดียว และส่งโดยตรงไปยังไคลเอนต์ Requiem บนเครือข่ายเดียวกัน ไคลเอนต์ไม่บันทึก WIM ก่อนที่จะทำการติดตั้ง",
    ),
    "iso_bridge_generic_error": m19,
    "iso_bridge_list_interfaces_error": m20,
    "iso_bridge_save_simple_iso_dialog": MessageLookupByLibrary.simpleMessage(
      "บันทึก Requiem ISO แบบง่าย",
    ),
    "iso_bridge_save_wim_iso_dialog": MessageLookupByLibrary.simpleMessage(
      "บันทึก Requiem ISO ด้วย WIM",
    ),
    "iso_bridge_select_wim_dialog": MessageLookupByLibrary.simpleMessage(
      "เลือกอิมเมจ Windows WIM",
    ),
    "iso_bridge_simple_iso_filename": MessageLookupByLibrary.simpleMessage(
      "Requiem-ตัวติดตั้ง-Simple.iso",
    ),
    "iso_bridge_start_validation_error": MessageLookupByLibrary.simpleMessage(
      "เลือก WIM และอินเทอร์เฟซ IPv4 ส่วนตัว",
    ),
    "iso_bridge_wim_selected_log": m21,
    "iso_panel_button_generate_iso": MessageLookupByLibrary.simpleMessage(
      "ISO สร้าง",
    ),
    "iso_panel_button_select_wim": MessageLookupByLibrary.simpleMessage(
      "เลือก WIM",
    ),
    "iso_panel_button_simple_iso": MessageLookupByLibrary.simpleMessage(
      "รับ ISO เพื่อการติดตั้งเท่านั้น",
    ),
    "iso_panel_desc_media": MessageLookupByLibrary.simpleMessage(
      "รับ ISO พื้นฐานเพื่อเลือก WIM ขณะบูต หรือสร้าง ISO ที่มีอยู่ในตัวเองซึ่งมีอิมเมจ Windows ของคุณอยู่แล้ว",
    ),
    "iso_panel_title_bridge": MessageLookupByLibrary.simpleMessage(
      "การติดตั้งบริดจ์ IPv4",
    ),
    "iso_panel_title_media": MessageLookupByLibrary.simpleMessage(
      "สื่อการติดตั้ง",
    ),
    "kmsError": m22,
    "kmsHostEmpty": MessageLookupByLibrary.simpleMessage(
      "ข้อผิดพลาด: โฮสต์ KMS ว่างเปล่า",
    ),
    "kmsServer": MessageLookupByLibrary.simpleMessage("เซิร์ฟเวอร์ KMS"),
    "kmsTask160Days": MessageLookupByLibrary.simpleMessage("ภารกิจ 160 วัน"),
    "kmsVolumeActivation": MessageLookupByLibrary.simpleMessage(
      "การเปิดใช้งานแบบหลายเครื่อง (KMS)",
    ),
    "kms_product_office_ltsc_professional_plus_2021":
        MessageLookupByLibrary.simpleMessage(
          "LTSC Professional Plus Office 2021",
        ),
    "kms_product_office_ltsc_professional_plus_2024":
        MessageLookupByLibrary.simpleMessage(
          "สำนักงาน LTSC Professional Plus 2024",
        ),
    "kms_product_office_professional_plus_2013":
        MessageLookupByLibrary.simpleMessage("ออฟฟิศโปรเฟสชั่นแนลพลัส 2013"),
    "kms_product_office_professional_plus_2016":
        MessageLookupByLibrary.simpleMessage("ออฟฟิศมืออาชีพพลัส 2016"),
    "kms_product_office_professional_plus_2019":
        MessageLookupByLibrary.simpleMessage("มืออาชีพ Office Plus 2019"),
    "kms_product_office_standard_2013": MessageLookupByLibrary.simpleMessage(
      "ออฟฟิศมาตรฐาน 2013",
    ),
    "kms_product_windows_10_11_education": MessageLookupByLibrary.simpleMessage(
      "การศึกษาของ Windows 10/11",
    ),
    "kms_product_windows_10_11_education_n":
        MessageLookupByLibrary.simpleMessage("Windows 10/11 การศึกษา N"),
    "kms_product_windows_10_11_enterprise":
        MessageLookupByLibrary.simpleMessage("ธุรกิจวินโดวส์ 10/11"),
    "kms_product_windows_10_11_enterprise_g":
        MessageLookupByLibrary.simpleMessage("Windows 10/11 Enterprise G"),
    "kms_product_windows_10_11_enterprise_g_n":
        MessageLookupByLibrary.simpleMessage("Windows 10/11 Enterprise G N"),
    "kms_product_windows_10_11_enterprise_n":
        MessageLookupByLibrary.simpleMessage("Windows 10/11 องค์กร N"),
    "kms_product_windows_10_11_pro": MessageLookupByLibrary.simpleMessage(
      "วินโดว์ 10/11 โปร",
    ),
    "kms_product_windows_10_11_pro_education":
        MessageLookupByLibrary.simpleMessage("การศึกษา Windows 10/11 Pro"),
    "kms_product_windows_10_11_pro_for_workstations":
        MessageLookupByLibrary.simpleMessage(
          "Windows 10/11 Pro สำหรับเวิร์กสเตชัน",
        ),
    "kms_product_windows_10_11_pro_n": MessageLookupByLibrary.simpleMessage(
      "Windows 10/11 Pro N",
    ),
    "kms_product_windows_10_11_pro_workstations":
        MessageLookupByLibrary.simpleMessage("เวิร์กสเตชัน Windows 10/11 Pro"),
    "kms_product_windows_8_1_enterprise": MessageLookupByLibrary.simpleMessage(
      "วินโดวส์ 8.1 องค์กร",
    ),
    "kms_product_windows_8_1_pro": MessageLookupByLibrary.simpleMessage(
      "วินโดวส์ 8.1 โปร",
    ),
    "kms_product_windows_8_enterprise": MessageLookupByLibrary.simpleMessage(
      "ธุรกิจวินโดวส์ 8",
    ),
    "kms_product_windows_8_pro": MessageLookupByLibrary.simpleMessage(
      "วินโดว์ 8 โปร",
    ),
    "kms_product_windows_server_2019_datacenter":
        MessageLookupByLibrary.simpleMessage("ศูนย์ข้อมูล Windows Server 2019"),
    "kms_product_windows_server_2019_standard":
        MessageLookupByLibrary.simpleMessage("วินโดวส์เซิร์ฟเวอร์มาตรฐาน 2019"),
    "kms_product_windows_server_2022_datacenter":
        MessageLookupByLibrary.simpleMessage("ศูนย์ข้อมูล Windows Server 2022"),
    "kms_product_windows_server_2022_standard":
        MessageLookupByLibrary.simpleMessage("มาตรฐาน Windows Server 2022"),
    "kms_product_windows_server_2025_datacenter":
        MessageLookupByLibrary.simpleMessage("ศูนย์ข้อมูล Windows Server 2025"),
    "kms_product_windows_server_2025_standard":
        MessageLookupByLibrary.simpleMessage("มาตรฐาน Windows Server 2025"),
    "kms_product_windows_subsystem_for_linux":
        MessageLookupByLibrary.simpleMessage("ระบบย่อย Windows สำหรับ Linux"),
    "kms_product_windows_terminal": MessageLookupByLibrary.simpleMessage(
      "เทอร์มินัลวินโดวส์",
    ),
    "landingDescription": MessageLookupByLibrary.simpleMessage(
      "ตัวติดตั้ง Windows ที่มีความแม่นยำสูงสำหรับสภาพแวดล้อมที่มีประสิทธิภาพสูง สัมผัสประสบการณ์การใช้งานที่รวดเร็วด้วยการจัดการ DISM โดยตรงและการเพิ่มประสิทธิภาพระบบอัตโนมัติ",
    ),
    "landing_badge_author": MessageLookupByLibrary.simpleMessage(
      "ออกแบบโดยจอส",
    ),
    "landing_badge_secure_boot": MessageLookupByLibrary.simpleMessage(
      "เข้ากันได้กับรองเท้าบู๊ตแบบปลอดภัย",
    ),
    "landing_badge_version": MessageLookupByLibrary.simpleMessage(
      "เวอร์ชันเสถียร",
    ),
    "landing_button_logs": MessageLookupByLibrary.simpleMessage("บันทึกระบบ"),
    "landing_button_start": MessageLookupByLibrary.simpleMessage("เริ่มต้นเลย"),
    "landing_description_part1": MessageLookupByLibrary.simpleMessage(
      "ตัวติดตั้ง Windows ที่มีความแม่นยำสูงสำหรับสภาพแวดล้อมที่มีประสิทธิภาพสูง",
    ),
    "landing_description_part2": MessageLookupByLibrary.simpleMessage(
      "สัมผัสประสบการณ์การใช้งานที่รวดเร็วด้วยการจัดการ DISM โดยตรงและการเพิ่มประสิทธิภาพระบบอัตโนมัติ",
    ),
    "landing_subtitle": MessageLookupByLibrary.simpleMessage(
      "การปรับใช้ระบบปฏิบัติการรุ่นต่อไป",
    ),
    "landing_title_installer": MessageLookupByLibrary.simpleMessage(
      "ตัวติดตั้ง REQUIEM",
    ),
    "landing_title_tools": MessageLookupByLibrary.simpleMessage(
      "เครื่องมือบังสุกุล",
    ),
    "licenseActivation": MessageLookupByLibrary.simpleMessage(
      "การเปิดใช้งานใบอนุญาต",
    ),
    "logsCopied": MessageLookupByLibrary.simpleMessage(
      "บันทึกคัดลอกไปยังคลิปบอร์ดแล้ว",
    ),
    "mandatoryUpdate": MessageLookupByLibrary.simpleMessage(
      "การอัปเดตนี้เป็นข้อบังคับและไม่สามารถข้ามได้",
    ),
    "manualWimHint": MessageLookupByLibrary.simpleMessage(
      "ใช้ \"เรียกดู\" เพื่อค้นหาไฟล์ WIM ของคุณด้วยตนเอง",
    ),
    "mediaInstallation": MessageLookupByLibrary.simpleMessage("สื่อการติดตั้ง"),
    "networkBridge": MessageLookupByLibrary.simpleMessage(
      "การติดตั้งบริดจ์ IPv4",
    ),
    "networkInterface": MessageLookupByLibrary.simpleMessage(
      "อินเทอร์เฟซ Wi-Fi/LAN IPv4",
    ),
    "nextGenerationDeployment": MessageLookupByLibrary.simpleMessage(
      "การปรับใช้ระบบปฏิบัติการรุ่นต่อไป",
    ),
    "noBridgeFound": MessageLookupByLibrary.simpleMessage(
      "ไม่พบสะพาน ลองใช้คู่มือ IP",
    ),
    "noFormatWarning": MessageLookupByLibrary.simpleMessage(
      "Windows จะปรับใช้กับ W:\\ โดยไม่ต้องฟอร์แมต",
    ),
    "noImageDetected": MessageLookupByLibrary.simpleMessage("ไม่พบภาพ"),
    "noKmsProducts": MessageLookupByLibrary.simpleMessage(
      "ไม่มีผลิตภัณฑ์ KMS ที่เลือก",
    ),
    "noPhysicalDisks": MessageLookupByLibrary.simpleMessage(
      "ไม่พบฟิสิคัลดิสก์",
    ),
    "noProgramsSelected": MessageLookupByLibrary.simpleMessage(
      "ไม่มีโปรแกรมที่เลือก",
    ),
    "noWifiNetworks": MessageLookupByLibrary.simpleMessage(
      "ไม่พบเครือข่าย Wi-Fi ที่ใช้งานได้",
    ),
    "noWingetPackages": MessageLookupByLibrary.simpleMessage(
      "ไม่พบแพ็คเกจที่รู้จักกับ Winget",
    ),
    "officeInstallDescription": MessageLookupByLibrary.simpleMessage(
      "ปรับใช้ Microsoft Office LTSC หรือ 365 ในลักษณะอัตโนมัติโดยใช้ ODT",
    ),
    "officeInstaller": MessageLookupByLibrary.simpleMessage(
      "ช่างติดตั้งสำนักงาน",
    ),
    "officeRenewalStatus": m23,
    "officeVersion": MessageLookupByLibrary.simpleMessage("รุ่นสำนักงาน"),
    "office_odt_kms_badge": MessageLookupByLibrary.simpleMessage("ODT + KMS"),
    "office_odt_panel_title": MessageLookupByLibrary.simpleMessage(
      "เครื่องมือปรับใช้ Office",
    ),
    "office_pkg_desc_2019": MessageLookupByLibrary.simpleMessage(
      "คลิกและเรียกใช้โวลุ่มด้วยช่อง PerpetualVL2019",
    ),
    "office_pkg_desc_2021": MessageLookupByLibrary.simpleMessage(
      "คลิกและรันวอลุ่มด้วยช่อง PerpetualVL2021",
    ),
    "office_pkg_desc_2024": MessageLookupByLibrary.simpleMessage(
      "คลิกและเรียกใช้โวลุ่มด้วยช่อง PerpetualVL2024",
    ),
    "office_pkg_name_2019": MessageLookupByLibrary.simpleMessage(
      "ออฟฟิศโปรพลัส 2019",
    ),
    "office_pkg_name_2021": MessageLookupByLibrary.simpleMessage(
      "LTSC Pro Plus Office 2021",
    ),
    "office_pkg_name_2024": MessageLookupByLibrary.simpleMessage(
      "สำนักงาน LTSC Pro Plus 2024",
    ),
    "onlyWindows": MessageLookupByLibrary.simpleMessage(
      "คุณลักษณะนี้มีเฉพาะใน Windows เท่านั้น",
    ),
    "packageStack": MessageLookupByLibrary.simpleMessage(
      "โปรแกรมสแต็ค (Winget)",
    ),
    "packagesDetected": m24,
    "partitionMode": MessageLookupByLibrary.simpleMessage("โหมดพาร์ติชัน"),
    "pkg_cat_apache_php_mysql": MessageLookupByLibrary.simpleMessage(
      "อาปาเช่ PHP MySQL",
    ),
    "pkg_cat_bi_desktop": MessageLookupByLibrary.simpleMessage(
      "บีไอ เดสก์ท็อป",
    ),
    "pkg_cat_cliente_api": MessageLookupByLibrary.simpleMessage(
      "API ของไคลเอ็นต์",
    ),
    "pkg_cat_cliente_db": MessageLookupByLibrary.simpleMessage(
      "ฐานข้อมูลลูกค้า",
    ),
    "pkg_cat_compiladores_c": MessageLookupByLibrary.simpleMessage(
      "คอมไพเลอร์ C++",
    ),
    "pkg_cat_compresor": MessageLookupByLibrary.simpleMessage("คอมเพรสเซอร์"),
    "pkg_cat_comunicacion": MessageLookupByLibrary.simpleMessage("การสื่อสาร"),
    "pkg_cat_control_de_versiones": MessageLookupByLibrary.simpleMessage(
      "การควบคุมเวอร์ชัน",
    ),
    "pkg_cat_desktop": MessageLookupByLibrary.simpleMessage("โต๊ะทำงาน"),
    "pkg_cat_diagramas": MessageLookupByLibrary.simpleMessage("ไดอะแกรม"),
    "pkg_cat_distro_wsl": MessageLookupByLibrary.simpleMessage("การกระจาย WSL"),
    "pkg_cat_editor": MessageLookupByLibrary.simpleMessage("บรรณาธิการ"),
    "pkg_cat_golang": MessageLookupByLibrary.simpleMessage("โกลัง"),
    "pkg_cat_gpu_compute": MessageLookupByLibrary.simpleMessage(
      "การประมวลผล GPU",
    ),
    "pkg_cat_grabacion": MessageLookupByLibrary.simpleMessage("การบันทึก"),
    "pkg_cat_ide_ai": MessageLookupByLibrary.simpleMessage("ไอดีไอเอ"),
    "pkg_cat_ide_android": MessageLookupByLibrary.simpleMessage("IDEAndroid"),
    "pkg_cat_ide_completo": MessageLookupByLibrary.simpleMessage(
      "ทำ IDE ให้สมบูรณ์",
    ),
    "pkg_cat_instaladores": MessageLookupByLibrary.simpleMessage("ผู้ติดตั้ง"),
    "pkg_cat_javascript": MessageLookupByLibrary.simpleMessage("จาวาสคริปต์"),
    "pkg_cat_limpieza": MessageLookupByLibrary.simpleMessage("ทำความสะอาด"),
    "pkg_cat_modelos_locales": MessageLookupByLibrary.simpleMessage(
      "โมเดลท้องถิ่น",
    ),
    "pkg_cat_navegador": MessageLookupByLibrary.simpleMessage("เบราว์เซอร์"),
    "pkg_cat_python_3": MessageLookupByLibrary.simpleMessage("หลาม 3"),
    "pkg_cat_runtime_c": MessageLookupByLibrary.simpleMessage("รันไทม์ C++"),
    "pkg_cat_runtime_escritorio": MessageLookupByLibrary.simpleMessage(
      "รันไทม์เดสก์ท็อป",
    ),
    "pkg_cat_runtime_juegos": MessageLookupByLibrary.simpleMessage(
      "เกมรันไทม์",
    ),
    "pkg_cat_runtime_php": MessageLookupByLibrary.simpleMessage(
      "PHP ที่รันไทม์",
    ),
    "pkg_cat_rustup": MessageLookupByLibrary.simpleMessage("สนิม"),
    "pkg_cat_sdk__net": MessageLookupByLibrary.simpleMessage(".NET SDK"),
    "pkg_cat_servidor_db": MessageLookupByLibrary.simpleMessage(
      "เซิร์ฟเวอร์ฐานข้อมูล",
    ),
    "pkg_cat_ssh_clasico": MessageLookupByLibrary.simpleMessage(
      "SSH แบบคลาสสิก",
    ),
    "pkg_cat_ssh_moderno": MessageLookupByLibrary.simpleMessage("SSH สมัยใหม่"),
    "pkg_cat_subsistema_linux": MessageLookupByLibrary.simpleMessage(
      "ระบบย่อยลินุกซ์",
    ),
    "pkg_cat_temurin_21": MessageLookupByLibrary.simpleMessage("เทมูริน 21"),
    "pkg_cat_terminal_moderno": MessageLookupByLibrary.simpleMessage(
      "เทอร์มินัลที่ทันสมัย",
    ),
    "prepareBridge": MessageLookupByLibrary.simpleMessage(
      "เตรียมและเริ่มสะพาน",
    ),
    "progress_button_reboot": MessageLookupByLibrary.simpleMessage(
      "รีเซ็ตระบบ",
    ),
    "progress_footer_warning": MessageLookupByLibrary.simpleMessage(
      "อย่าตัดการเชื่อมต่อพลังงานหรือถอดสื่อการติดตั้งออก",
    ),
    "progress_header_badge": MessageLookupByLibrary.simpleMessage(
      "อยู่ระหว่างดำเนินการปรับใช้",
    ),
    "provideWindowsImage": MessageLookupByLibrary.simpleMessage(
      "จัดเตรียมอิมเมจการติดตั้ง Windows (install.wim หรือ install.swm)\nจากไดรฟ์ USB หรือสื่อที่ติดตั้งไว้",
    ),
    "receiveInstallation": MessageLookupByLibrary.simpleMessage(
      "หรือรับการติดตั้งพร้อมจาก Requiem สำหรับ Windows",
    ),
    "renewalActive": MessageLookupByLibrary.simpleMessage("ใช้งานอยู่"),
    "renewalDisabled": MessageLookupByLibrary.simpleMessage("ปิดการใช้งาน"),
    "searchingImage": MessageLookupByLibrary.simpleMessage("กำลังค้นหาภาพ..."),
    "secureBootCompatible": MessageLookupByLibrary.simpleMessage(
      "รองรับการบูตอย่างปลอดภัย",
    ),
    "selectDestinationDisk": MessageLookupByLibrary.simpleMessage(
      "เลือกดิสก์ปลายทาง",
    ),
    "selectFileHint": MessageLookupByLibrary.simpleMessage(
      "เลือกไฟล์ .wim หรือ .swm",
    ),
    "selectWim": MessageLookupByLibrary.simpleMessage("เลือก WIM"),
    "selectWimFirst": MessageLookupByLibrary.simpleMessage(
      "เลือก WIM และอินเทอร์เฟซ IPv4 ส่วนตัว",
    ),
    "selectWindowsImage": MessageLookupByLibrary.simpleMessage(
      "เลือกอิมเมจของ Windows",
    ),
    "selectWindowsImageFull": MessageLookupByLibrary.simpleMessage(
      "เลือกอิมเมจการติดตั้ง Windows",
    ),
    "selectedFile": m25,
    "stableVersion": MessageLookupByLibrary.simpleMessage(
      "เวอร์ชันเสถียร v1.0.0",
    ),
    "start": MessageLookupByLibrary.simpleMessage("เริ่มต้นเลย"),
    "startInstallation": MessageLookupByLibrary.simpleMessage(
      "เริ่มการติดตั้ง",
    ),
    "stopBridge": MessageLookupByLibrary.simpleMessage("หยุดสะพาน"),
    "systemConsole": MessageLookupByLibrary.simpleMessage("คอนโซลระบบ"),
    "systemDisk": MessageLookupByLibrary.simpleMessage("ระบบ"),
    "systemLogs": MessageLookupByLibrary.simpleMessage("บันทึกของระบบ"),
    "tools_badge_iso_compatibility": MessageLookupByLibrary.simpleMessage(
      "อนุรักษ์นิยม BIOS + UEFI",
    ),
    "tools_badge_kms_pending": MessageLookupByLibrary.simpleMessage(
      "KMS ที่รอดำเนินการ",
    ),
    "tools_badge_package_count": m26,
    "tools_button_activate_kms": MessageLookupByLibrary.simpleMessage(
      "เปิดใช้งาน KMS",
    ),
    "tools_button_install_all_packages": MessageLookupByLibrary.simpleMessage(
      "ติดตั้งทั้งหมด",
    ),
    "tools_button_install_office": MessageLookupByLibrary.simpleMessage(
      "สำนักงานติดตั้ง",
    ),
    "tools_header_title": MessageLookupByLibrary.simpleMessage(
      "เครื่องมือการโยกย้าย REQUIEM",
    ),
    "tools_kms_checking_connectivity": m27,
    "tools_kms_empty_host_error": MessageLookupByLibrary.simpleMessage(
      "ข้อผิดพลาด: โฮสต์ KMS ว่างเปล่า",
    ),
    "tools_kms_error_log": m28,
    "tools_kms_no_products_selected": MessageLookupByLibrary.simpleMessage(
      "ไม่มีผลิตภัณฑ์ KMS ที่เลือก",
    ),
    "tools_log_format": m29,
    "tools_logs_copied_snackbar": MessageLookupByLibrary.simpleMessage(
      "บันทึกคัดลอกไปยังคลิปบอร์ดแล้ว",
    ),
    "tools_packages_detected_count": m30,
    "tools_packages_none_detected": MessageLookupByLibrary.simpleMessage(
      "ไม่พบแพ็คเกจที่รู้จักกับ Winget",
    ),
    "tools_packages_none_selected": MessageLookupByLibrary.simpleMessage(
      "ไม่มีโปรแกรมที่เลือก",
    ),
    "tools_section_activation_desc": MessageLookupByLibrary.simpleMessage(
      "กำหนดค่าเซิร์ฟเวอร์ KMS ภายในหรือระยะไกลเพื่อเปิดใช้งาน Windows และ Office",
    ),
    "tools_section_activation_title": MessageLookupByLibrary.simpleMessage(
      "การเปิดใช้งานใบอนุญาต",
    ),
    "tools_section_iso_desc": MessageLookupByLibrary.simpleMessage(
      "สร้างสื่อแบบสแตนด์อโลนด้วย WIM ในตัวหรือกระจายการติดตั้งโดยตรงผ่าน IPv4",
    ),
    "tools_section_iso_title": MessageLookupByLibrary.simpleMessage(
      "ISO และจอแสดงผลสีแดง",
    ),
    "tools_section_office_desc": MessageLookupByLibrary.simpleMessage(
      "ปรับใช้ Microsoft Office LTSC หรือ 365 ในลักษณะอัตโนมัติโดยใช้ ODT",
    ),
    "tools_section_office_title": MessageLookupByLibrary.simpleMessage(
      "ช่างติดตั้งสำนักงาน",
    ),
    "tools_section_packages_desc": MessageLookupByLibrary.simpleMessage(
      "ติดตั้งและอัปเดตเครื่องมือการพัฒนาที่จำเป็นสำหรับ Windows โดยใช้ Winget",
    ),
    "tools_section_packages_title": MessageLookupByLibrary.simpleMessage(
      "สแต็คแอปพลิเคชัน",
    ),
    "tools_sidebar_app_name": MessageLookupByLibrary.simpleMessage("เรเควี่ยม"),
    "tools_sidebar_mode_badge": MessageLookupByLibrary.simpleMessage(
      "โหมดเครื่องมือท้องถิ่น",
    ),
    "tools_sidebar_tab_iso": MessageLookupByLibrary.simpleMessage(
      "ISO และบริดจ์",
    ),
    "tools_sidebar_tab_kms": MessageLookupByLibrary.simpleMessage(
      "การเปิดใช้งาน KMS",
    ),
    "tools_sidebar_tab_office": MessageLookupByLibrary.simpleMessage(
      "การติดตั้งสำนักงาน",
    ),
    "tools_sidebar_tab_packages": MessageLookupByLibrary.simpleMessage(
      "โปรแกรมสแต็ค",
    ),
    "unknown": MessageLookupByLibrary.simpleMessage("ไม่ทราบ"),
    "updateDescription": MessageLookupByLibrary.simpleMessage(
      "หากต้องการใช้ Requiem Tools ต่อไป จำเป็นต้องอัปเดตเป็นเวอร์ชันล่าสุด",
    ),
    "updateRequired": MessageLookupByLibrary.simpleMessage("จำเป็นต้องอัปเดต"),
    "useExistingPartitions": MessageLookupByLibrary.simpleMessage(
      "ใช้พาร์ติชันที่มีอยู่",
    ),
    "useExistingPartitionsDescription": MessageLookupByLibrary.simpleMessage(
      "ไม่ฟอร์แมต — แสดงใน W: ตามที่เป็นอยู่\nคุณจัดการการเข้าร่วมด้วยตนเอง",
    ),
    "waitingAction": MessageLookupByLibrary.simpleMessage(
      "กำลังรอการดำเนินการ...",
    ),
    "waitingForWim": MessageLookupByLibrary.simpleMessage(
      "กำลังรอการตรวจจับ install.wim...",
    ),
    "wifiConnectError": m31,
    "wifiConnected": m32,
    "wifiPassword": MessageLookupByLibrary.simpleMessage("รหัสผ่าน Wi-Fi"),
    "wifi_connect_error": m33,
    "wifi_connected_log": m34,
    "wifi_connected_status": m35,
    "wifi_dialog_title": MessageLookupByLibrary.simpleMessage(
      "เชื่อมต่อตัวติดตั้งกับ Wi-Fi",
    ),
    "wifi_item_signal_security": m36,
    "wifi_none_found": MessageLookupByLibrary.simpleMessage(
      "ไม่พบเครือข่าย Wi-Fi ที่ใช้งานได้",
    ),
    "wifi_password_hint": MessageLookupByLibrary.simpleMessage(
      "รหัสผ่าน Wi-Fi",
    ),
    "wifi_scanning": MessageLookupByLibrary.simpleMessage(
      "กำลังค้นหาเครือข่าย Wi-Fi ที่ใช้งานได้...",
    ),
    "wimIntegrated": MessageLookupByLibrary.simpleMessage("WIM รวมอยู่ใน ISO"),
    "wim_bridge_connection_error": m37,
    "wim_bridge_ip_dialog_title": MessageLookupByLibrary.simpleMessage(
      "IP สะพานบังสุกุล",
    ),
    "wim_bridge_ip_placeholder": MessageLookupByLibrary.simpleMessage(
      "192.168.1.20",
    ),
    "wim_bridge_not_found": MessageLookupByLibrary.simpleMessage(
      "ไม่พบสะพาน ลองใช้คู่มือ IP",
    ),
    "wim_bridge_search_error": m38,
    "wim_bridge_searching": MessageLookupByLibrary.simpleMessage(
      "กำลังค้นหา Requiem Bridge บนเครือข่าย IPv4 ท้องถิ่น...",
    ),
    "wim_bridge_section_header": MessageLookupByLibrary.simpleMessage(
      "หรือรับการติดตั้งพร้อมจาก Requiem สำหรับ Windows",
    ),
    "wim_button_change_file": MessageLookupByLibrary.simpleMessage(
      "เปลี่ยนไฟล์",
    ),
    "wim_button_connect_wifi": MessageLookupByLibrary.simpleMessage(
      "เชื่อมต่อ Wi-Fi",
    ),
    "wim_button_manual_ip": MessageLookupByLibrary.simpleMessage(
      "คู่มือการใช้งานไอพี",
    ),
    "wim_button_rescan": MessageLookupByLibrary.simpleMessage(
      "สแกนไดรฟ์อีกครั้ง",
    ),
    "wim_button_search_bridge": MessageLookupByLibrary.simpleMessage(
      "สะพานค้นหา",
    ),
    "wim_manual_search_hint": MessageLookupByLibrary.simpleMessage(
      "ใช้ \"เรียกดู\" เพื่อค้นหาไฟล์ WIM ของคุณด้วยตนเอง",
    ),
    "wim_picker_description": MessageLookupByLibrary.simpleMessage(
      "จัดเตรียมอิมเมจการติดตั้ง Windows (install.wim หรือ install.swm)\\n",
    ),
    "wim_picker_title": MessageLookupByLibrary.simpleMessage(
      "เลือกรูปภาพของ Windows",
    ),
    "wim_status_found": MessageLookupByLibrary.simpleMessage("พบรูปภาพแล้ว"),
    "wim_status_not_found": MessageLookupByLibrary.simpleMessage("ไม่พบภาพ"),
    "wim_status_searching": MessageLookupByLibrary.simpleMessage(
      "กำลังค้นหาภาพ...",
    ),
    "wim_status_searching_alt": MessageLookupByLibrary.simpleMessage(
      "กำลังค้นหาภาพ...",
    ),
    "wingetUnavailable": MessageLookupByLibrary.simpleMessage(
      "ไม่ได้ติดตั้ง Winget หรือไม่ได้อยู่ใน PATH",
    ),
  };
}
