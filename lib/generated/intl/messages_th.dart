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

  static String m7(name, edition) => "ตรวจพบการแก้ไข: ${name} (${edition})";

  static String m8(error) => "เกิดข้อผิดพลาด: ${error}";

  static String m9(path) => "เส้นทางไม่ถูกต้อง: ${path}";

  static String m10(error) => "ข้อผิดพลาด KMS: ${error}";

  static String m11(product, channel, edition, status) =>
      "${product} / ${channel} / ${edition} บิต การต่ออายุยังคงอยู่ ${status}";

  static String m12(count) => "แพ็กเก็ตที่ตรวจพบ: ${count}";

  static String m13(file) => "เลือกแล้ว: ${file}";

  static String m14(error) => "ไม่สามารถเชื่อมต่อ Wi-Fi: ${error}";

  static String m15(network) => "เชื่อมต่อกับ ${network}";

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
    "editionDetected": m7,
    "emptyFolder": MessageLookupByLibrary.simpleMessage("โฟลเดอร์นี้ว่างเปล่า"),
    "errorGeneric": m8,
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
    "invalidPath": m9,
    "isoDescription": MessageLookupByLibrary.simpleMessage(
      "รับ ISO พื้นฐานเพื่อเลือก WIM ขณะบูต หรือสร้าง ISO ที่มีอยู่ในตัวเองซึ่งมีอิมเมจ Windows ของคุณอยู่แล้ว",
    ),
    "kmsError": m10,
    "kmsHostEmpty": MessageLookupByLibrary.simpleMessage(
      "ข้อผิดพลาด: โฮสต์ KMS ว่างเปล่า",
    ),
    "kmsServer": MessageLookupByLibrary.simpleMessage("เซิร์ฟเวอร์ KMS"),
    "kmsTask160Days": MessageLookupByLibrary.simpleMessage("ภารกิจ 160 วัน"),
    "kmsVolumeActivation": MessageLookupByLibrary.simpleMessage(
      "การเปิดใช้งานแบบหลายเครื่อง (KMS)",
    ),
    "landingDescription": MessageLookupByLibrary.simpleMessage(
      "ตัวติดตั้ง Windows ที่มีความแม่นยำสูงสำหรับสภาพแวดล้อมที่มีประสิทธิภาพสูง สัมผัสประสบการณ์การใช้งานที่รวดเร็วด้วยการจัดการ DISM โดยตรงและการเพิ่มประสิทธิภาพระบบอัตโนมัติ",
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
    "officeRenewalStatus": m11,
    "officeVersion": MessageLookupByLibrary.simpleMessage("รุ่นสำนักงาน"),
    "onlyWindows": MessageLookupByLibrary.simpleMessage(
      "คุณลักษณะนี้มีเฉพาะใน Windows เท่านั้น",
    ),
    "packageStack": MessageLookupByLibrary.simpleMessage(
      "โปรแกรมสแต็ค (Winget)",
    ),
    "packagesDetected": m12,
    "partitionMode": MessageLookupByLibrary.simpleMessage("โหมดพาร์ติชัน"),
    "prepareBridge": MessageLookupByLibrary.simpleMessage(
      "เตรียมและเริ่มสะพาน",
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
    "selectedFile": m13,
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
    "wifiConnectError": m14,
    "wifiConnected": m15,
    "wifiPassword": MessageLookupByLibrary.simpleMessage("รหัสผ่าน Wi-Fi"),
    "wimIntegrated": MessageLookupByLibrary.simpleMessage("WIM รวมอยู่ใน ISO"),
    "wingetUnavailable": MessageLookupByLibrary.simpleMessage(
      "ไม่ได้ติดตั้ง Winget หรือไม่ได้อยู่ใน PATH",
    ),
  };
}
