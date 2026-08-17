// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a zh locale. All the
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
  String get localeName => 'zh';

  static String m0(count) => "${count} 计划";

  static String m1(version) => "可选版本： ${version}";

  static String m2(firmware) => "阿兰克实际： ${firmware}";

  static String m3(error) => "没有 se pudo 连接： ${error}";

  static String m4(error) => "没有se pudo Buscar el puente：${error}";

  static String m5(host) => "与 ${host} 进行合作：1688...";

  static String m6(mode) => "Modo 兼容：${mode}";

  static String m7(name, edition) => "检测结果：${name} (${edition})";

  static String m8(error) => "出现错误：${error}";

  static String m9(path) => "芜菁：${path}";

  static String m10(error) => "错误 KMS：${error}";

  static String m11(product, channel, edition, status) =>
      "${product} / ${channel} / ${edition} 位。 La renovación queda ${status}。";

  static String m12(count) => "检测到的数据包：${count}。";

  static String m13(file) => "选择：${file}";

  static String m14(error) => "无法连接 Wi-Fi：${error}";

  static String m15(network) => "连接 ${network}。";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
    "actionCancel": MessageLookupByLibrary.simpleMessage("取消"),
    "actionChange": MessageLookupByLibrary.simpleMessage("坎比亚尔"),
    "actionConfirm": MessageLookupByLibrary.simpleMessage("确认"),
    "actionConnect": MessageLookupByLibrary.simpleMessage("连接器"),
    "actionContinue": MessageLookupByLibrary.simpleMessage("连续"),
    "actionInstall": MessageLookupByLibrary.simpleMessage("因斯塔拉尔"),
    "actionRefresh": MessageLookupByLibrary.simpleMessage("实现"),
    "actionRestartSystem": MessageLookupByLibrary.simpleMessage("雷尼西亚系统"),
    "actionScanAgain": MessageLookupByLibrary.simpleMessage("新联盟"),
    "actionSearch": MessageLookupByLibrary.simpleMessage("巴士卡"),
    "actionSelect": MessageLookupByLibrary.simpleMessage("精选"),
    "activate": MessageLookupByLibrary.simpleMessage("阿维瓦尔"),
    "activateKms": MessageLookupByLibrary.simpleMessage("激活KMS"),
    "appTitleInstaller": MessageLookupByLibrary.simpleMessage("安魂曲安装程序"),
    "appTitleTools": MessageLookupByLibrary.simpleMessage("安魂曲工具"),
    "applicationStack": MessageLookupByLibrary.simpleMessage("应用程序堆栈"),
    "applicationStackDescription": MessageLookupByLibrary.simpleMessage(
      "安装并实现 Windows 中间 winget 的相关功能。",
    ),
    "applicationsCount": m0,
    "automaticOffice": MessageLookupByLibrary.simpleMessage("办公自动化"),
    "automaticOfficeDescription": MessageLookupByLibrary.simpleMessage(
      "使用 GVLK 安装卷",
    ),
    "automaticRenewal": MessageLookupByLibrary.simpleMessage("自动翻新"),
    "automaticWindows": MessageLookupByLibrary.simpleMessage("Windows 自动"),
    "automaticWindowsDescription": MessageLookupByLibrary.simpleMessage(
      "检测版本与 GVLK 兼容",
    ),
    "availableVersion": m1,
    "bootCurrent": m2,
    "bridgeConnectError": m3,
    "bridgeDescription": MessageLookupByLibrary.simpleMessage(
      "准备 WIM 来直接向客户传达《红色米斯玛安魂曲》。客户在安装前不会保护 WIM。",
    ),
    "bridgeIp": MessageLookupByLibrary.simpleMessage("安魂曲IP"),
    "bridgePorts": MessageLookupByLibrary.simpleMessage(
      "Puerto HTTP 40124 · 解析 UDP 40123。如果 Windows Defender 已同意，则允许以私有方式访问。",
    ),
    "bridgeSearchError": m4,
    "checkingKms": m5,
    "clearLogs": MessageLookupByLibrary.simpleMessage("林皮亚原木"),
    "compatibleMode": m6,
    "confirmDataDestruction": MessageLookupByLibrary.simpleMessage("确认数据销毁"),
    "confirmInstallation": MessageLookupByLibrary.simpleMessage("确认安装"),
    "connectInstallerWifi": MessageLookupByLibrary.simpleMessage("连接并安装 Wi-Fi"),
    "connectWifi": MessageLookupByLibrary.simpleMessage("连接无线网络"),
    "copyLogs": MessageLookupByLibrary.simpleMessage("复印原木"),
    "deploymentInProgress": MessageLookupByLibrary.simpleMessage("德斯普利格·恩·库索"),
    "designedBy": MessageLookupByLibrary.simpleMessage("乔斯的事业"),
    "destinationDiskDescription": MessageLookupByLibrary.simpleMessage(
      "Elija la unidad física donde se instalará Windows.",
    ),
    "detect": MessageLookupByLibrary.simpleMessage("探测器"),
    "diskManagement": MessageLookupByLibrary.simpleMessage("迪斯科舞厅管理"),
    "doNotDisconnect": MessageLookupByLibrary.simpleMessage("安装中途停止供电时不得断开电源"),
    "downloadAndActivate": MessageLookupByLibrary.simpleMessage("下载 + activar"),
    "downloadInstaller": MessageLookupByLibrary.simpleMessage("下载安装程序 (.exe)"),
    "downloadPortable": MessageLookupByLibrary.simpleMessage("下载便携式 (.zip)"),
    "drives": MessageLookupByLibrary.simpleMessage("统一"),
    "editionDetected": m7,
    "emptyFolder": MessageLookupByLibrary.simpleMessage("地毯上空了"),
    "errorGeneric": m8,
    "filter": MessageLookupByLibrary.simpleMessage("过滤器…"),
    "formatGpt": MessageLookupByLibrary.simpleMessage("Formatear GPT（推荐）"),
    "formatGptDescription": MessageLookupByLibrary.simpleMessage(
      "Limpia el disco 和 creat diseño UEFI\nEFI (S:) + Windows (W:)",
    ),
    "formatMbr": MessageLookupByLibrary.simpleMessage("格式化MBR（BIOS继承）"),
    "formatMbrDescription": MessageLookupByLibrary.simpleMessage(
      "Limpia el disco y Crea diseño 世袭\n单独的窗口 (C:)",
    ),
    "formatWarning": MessageLookupByLibrary.simpleMessage(
      "精选迪斯科格式以完成。请参阅所有数据。",
    ),
    "generateIso": MessageLookupByLibrary.simpleMessage("通用ISO"),
    "getInstallOnlyIso": MessageLookupByLibrary.simpleMessage("获取安装所需的 ISO"),
    "goUpOneLevel": MessageLookupByLibrary.simpleMessage("苏比尔·乌尼维尔"),
    "imageDetected": MessageLookupByLibrary.simpleMessage("图像检测"),
    "imageFound": MessageLookupByLibrary.simpleMessage("图像恩康特拉达"),
    "imageNotFound": MessageLookupByLibrary.simpleMessage("图像没有冲突"),
    "imageSearching": MessageLookupByLibrary.simpleMessage("布斯坎多图像..."),
    "installAll": MessageLookupByLibrary.simpleMessage("安装待办事项"),
    "installOffice": MessageLookupByLibrary.simpleMessage("安装办公室"),
    "installationProgress": MessageLookupByLibrary.simpleMessage("安装进度"),
    "invalidPath": m9,
    "isoDescription": MessageLookupByLibrary.simpleMessage(
      "在 WIM 中选择 ISO 基础，或者在 Windows 映像中包含 ISO 自动化。",
    ),
    "kmsError": m10,
    "kmsHostEmpty": MessageLookupByLibrary.simpleMessage("错误：主机 KMS 已空。"),
    "kmsServer": MessageLookupByLibrary.simpleMessage("服务器KMS"),
    "kmsTask160Days": MessageLookupByLibrary.simpleMessage("塔雷亚 160 天"),
    "kmsVolumeActivation": MessageLookupByLibrary.simpleMessage("音量激活 (KMS)"),
    "landingDescription": MessageLookupByLibrary.simpleMessage(
      "安装 Windows 以获得最精确的效果。尝试直接快速解决 DISM 问题并优化系统自动化。",
    ),
    "licenseActivation": MessageLookupByLibrary.simpleMessage("许可证激活"),
    "logsCopied": MessageLookupByLibrary.simpleMessage(
      "Logs copiados al portapapeles。",
    ),
    "mandatoryUpdate": MessageLookupByLibrary.simpleMessage("必须实现这一点，并且不得省略。"),
    "manualWimHint": MessageLookupByLibrary.simpleMessage(
      "使用存档 WIM 手册中的本地化“Buscar”。",
    ),
    "mediaInstallation": MessageLookupByLibrary.simpleMessage("安装媒体"),
    "networkBridge": MessageLookupByLibrary.simpleMessage("IPv4 安装桥"),
    "networkInterface": MessageLookupByLibrary.simpleMessage(
      "Interfaz Wi‑Fi/LAN IPv4",
    ),
    "nextGenerationDeployment": MessageLookupByLibrary.simpleMessage("近代生成的解说"),
    "noBridgeFound": MessageLookupByLibrary.simpleMessage(
      "不存在任何问题。 Pruebe con la IP 手册。",
    ),
    "noFormatWarning": MessageLookupByLibrary.simpleMessage(
      "Windows 下的格式为 W:\\。",
    ),
    "noImageDetected": MessageLookupByLibrary.simpleMessage("无法检测到图像"),
    "noKmsProducts": MessageLookupByLibrary.simpleMessage("没有 KMS 选择的干草产品。"),
    "noPhysicalDisks": MessageLookupByLibrary.simpleMessage("不检测迪斯科舞厅"),
    "noProgramsSelected": MessageLookupByLibrary.simpleMessage("没有干草计划作为选择。"),
    "noWifiNetworks": MessageLookupByLibrary.simpleMessage(
      "不会遇到任何 Wi-Fi 设备的问题。",
    ),
    "noWingetPackages": MessageLookupByLibrary.simpleMessage(
      "没有检测到 paquetes conocidos con winget。",
    ),
    "officeInstallDescription": MessageLookupByLibrary.simpleMessage(
      "使用 ODT 提供 Microsoft Office LTSC 或 365 度自动化管理。",
    ),
    "officeInstaller": MessageLookupByLibrary.simpleMessage("办公室安装员"),
    "officeRenewalStatus": m11,
    "officeVersion": MessageLookupByLibrary.simpleMessage("办公室版本"),
    "onlyWindows": MessageLookupByLibrary.simpleMessage("该功能仅在 Windows 上可用。"),
    "packageStack": MessageLookupByLibrary.simpleMessage("程序堆栈 (Winget)"),
    "packagesDetected": m12,
    "partitionMode": MessageLookupByLibrary.simpleMessage("参与方式"),
    "prepareBridge": MessageLookupByLibrary.simpleMessage("准备开胃口水"),
    "provideWindowsImage": MessageLookupByLibrary.simpleMessage(
      "Windows 安装映像（install.wim 或 install.swm）\n是一个统一的 USB 或中度的 montado。",
    ),
    "receiveInstallation": MessageLookupByLibrary.simpleMessage(
      "请准备安装 Windows 的安魂曲",
    ),
    "renewalActive": MessageLookupByLibrary.simpleMessage("激活"),
    "renewalDisabled": MessageLookupByLibrary.simpleMessage("去激活"),
    "searchingImage": MessageLookupByLibrary.simpleMessage("而且，布斯坎多图像…"),
    "secureBootCompatible": MessageLookupByLibrary.simpleMessage("兼容安全启动"),
    "selectDestinationDisk": MessageLookupByLibrary.simpleMessage("目的地精选迪斯科"),
    "selectFileHint": MessageLookupByLibrary.simpleMessage("选择存档 .wim 或 .swm"),
    "selectWim": MessageLookupByLibrary.simpleMessage("选择性WIM"),
    "selectWimFirst": MessageLookupByLibrary.simpleMessage(
      "选择 WIM 和 IPv4 私有接口。",
    ),
    "selectWindowsImage": MessageLookupByLibrary.simpleMessage("Windows 图像选择"),
    "selectWindowsImageFull": MessageLookupByLibrary.simpleMessage(
      "选择 Windows 安装映像",
    ),
    "selectedFile": m13,
    "stableVersion": MessageLookupByLibrary.simpleMessage("稳定版 v1.0.0"),
    "start": MessageLookupByLibrary.simpleMessage("恩佩扎"),
    "startInstallation": MessageLookupByLibrary.simpleMessage("初始安装"),
    "stopBridge": MessageLookupByLibrary.simpleMessage("德特纳普恩特"),
    "systemConsole": MessageLookupByLibrary.simpleMessage("系统控制台"),
    "systemDisk": MessageLookupByLibrary.simpleMessage("系统"),
    "systemLogs": MessageLookupByLibrary.simpleMessage("系统日志"),
    "unknown": MessageLookupByLibrary.simpleMessage("德斯科诺西多"),
    "updateDescription": MessageLookupByLibrary.simpleMessage(
      "继续使用安魂曲工具需要实现最新版本。",
    ),
    "updateRequired": MessageLookupByLibrary.simpleMessage("要求实施"),
    "useExistingPartitions": MessageLookupByLibrary.simpleMessage("存在的使用者"),
    "useExistingPartitionsDescription": MessageLookupByLibrary.simpleMessage(
      "Sin formatear — despliega en W: tal cual\n使用手册管理",
    ),
    "waitingAction": MessageLookupByLibrary.simpleMessage("世界语行动..."),
    "waitingForWim": MessageLookupByLibrary.simpleMessage("安装检测的世界语..."),
    "wifiConnectError": m14,
    "wifiConnected": m15,
    "wifiPassword": MessageLookupByLibrary.simpleMessage("康特拉塞尼亚 Wi-Fi"),
    "wimIntegrated": MessageLookupByLibrary.simpleMessage("WIM 与 ISO 集成"),
    "wingetUnavailable": MessageLookupByLibrary.simpleMessage(
      "winget 没有安装，也没有在 PATH 中。",
    ),
  };
}
