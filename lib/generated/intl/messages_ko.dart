// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a ko locale. All the
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
  String get localeName => 'ko';

  static String m0(count) => "${count} 프로그램";

  static String m1(version) => "버전: ${version}";

  static String m2(firmware) => "실제 Arranque: ${firmware}";

  static String m3(error) => "더 이상 연결하지 마세요: ${error}";

  static String m4(error) => "아니 se pudo buscar el puente: ${error}";

  static String m5(host) => "${host}:1688 연결 연결...";

  static String m6(mode) => "Modo 호환 가능: ${mode}";

  static String m7(name, edition) => "감지된 편집: ${name} (${edition})";

  static String m8(error) => "오류 발생: ${error}";

  static String m9(path) => "유효하지 않은 기본 정보: ${path}";

  static String m10(error) => "오류 KMS: ${error}";

  static String m11(product, channel, edition, status) =>
      "${product} / ${channel} / ${edition} 비트. La renovación queda ${status}.";

  static String m12(count) => "감지 패키지: ${count}.";

  static String m13(file) => "선택 항목: ${file}";

  static String m14(error) => "Wi-Fi에 연결하지 마세요: ${error}";

  static String m15(network) => "${network}에 연결하세요.";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
    "actionCancel": MessageLookupByLibrary.simpleMessage("취소"),
    "actionChange": MessageLookupByLibrary.simpleMessage("캠비아"),
    "actionConfirm": MessageLookupByLibrary.simpleMessage("확인"),
    "actionConnect": MessageLookupByLibrary.simpleMessage("커넥타"),
    "actionContinue": MessageLookupByLibrary.simpleMessage("계속"),
    "actionInstall": MessageLookupByLibrary.simpleMessage("설치"),
    "actionRefresh": MessageLookupByLibrary.simpleMessage("실제화"),
    "actionRestartSystem": MessageLookupByLibrary.simpleMessage(
      "Reiniciar 시스템",
    ),
    "actionScanAgain": MessageLookupByLibrary.simpleMessage(
      "Escanear unidades de nuevo",
    ),
    "actionSearch": MessageLookupByLibrary.simpleMessage("버스카르"),
    "actionSelect": MessageLookupByLibrary.simpleMessage("선택"),
    "activate": MessageLookupByLibrary.simpleMessage("액티바"),
    "activateKms": MessageLookupByLibrary.simpleMessage("액티바 KMS"),
    "appTitleInstaller": MessageLookupByLibrary.simpleMessage("레퀴엠 설치 프로그램"),
    "appTitleTools": MessageLookupByLibrary.simpleMessage("레퀴엠 도구"),
    "applicationStack": MessageLookupByLibrary.simpleMessage("응용 프로그램 스택"),
    "applicationStackDescription": MessageLookupByLibrary.simpleMessage(
      "Windows 중앙 날개에 필요한 장치를 실제로 설치합니다.",
    ),
    "applicationsCount": m0,
    "automaticOffice": MessageLookupByLibrary.simpleMessage("사무실 자동화"),
    "automaticOfficeDescription": MessageLookupByLibrary.simpleMessage(
      "Usa la GVLK de Volumen ya instalada",
    ),
    "automaticRenewal": MessageLookupByLibrary.simpleMessage("자동 혁신"),
    "automaticWindows": MessageLookupByLibrary.simpleMessage("Windows 자동"),
    "automaticWindowsDescription": MessageLookupByLibrary.simpleMessage(
      "GVLK 호환 버전 감지",
    ),
    "availableVersion": m1,
    "bootCurrent": m2,
    "bridgeConnectError": m3,
    "bridgeDescription": MessageLookupByLibrary.simpleMessage(
      "WIM을 준비하여 고객에게 Requiem de la misma red를 직접 전송하세요. 클라이언트에는 WIM 설치 비용에 대한 보호가 없습니다.",
    ),
    "bridgeIp": MessageLookupByLibrary.simpleMessage("IP 델 푸엔테 레퀴엠"),
    "bridgePorts": MessageLookupByLibrary.simpleMessage(
      "Puerto HTTP 40124 · descubrimiento UDP 40123. Si Windows Defender는 사전에 개인 정보 액세스를 허용합니다.",
    ),
    "bridgeSearchError": m4,
    "checkingKms": m5,
    "clearLogs": MessageLookupByLibrary.simpleMessage("Limpiar 로그"),
    "compatibleMode": m6,
    "confirmDataDestruction": MessageLookupByLibrary.simpleMessage("데이터 파괴 확인"),
    "confirmInstallation": MessageLookupByLibrary.simpleMessage("설치 확인"),
    "connectInstallerWifi": MessageLookupByLibrary.simpleMessage(
      "Wi-Fi를 설치하는 연결",
    ),
    "connectWifi": MessageLookupByLibrary.simpleMessage("커넥타 Wi-Fi"),
    "copyLogs": MessageLookupByLibrary.simpleMessage("복사 로그"),
    "deploymentInProgress": MessageLookupByLibrary.simpleMessage(
      "Despliegue en curso",
    ),
    "designedBy": MessageLookupByLibrary.simpleMessage("Joss의 디자인"),
    "destinationDiskDescription": MessageLookupByLibrary.simpleMessage(
      "Elija la unidad física donde se installará Windows.",
    ),
    "detect": MessageLookupByLibrary.simpleMessage("탐지기"),
    "diskManagement": MessageLookupByLibrary.simpleMessage("디스코 관리"),
    "doNotDisconnect": MessageLookupByLibrary.simpleMessage(
      "No desconecte la energía ni 은퇴 el medio de installación",
    ),
    "downloadAndActivate": MessageLookupByLibrary.simpleMessage("다운로드 + 액티바"),
    "downloadInstaller": MessageLookupByLibrary.simpleMessage(
      "다운로드 설치 프로그램(.exe)",
    ),
    "downloadPortable": MessageLookupByLibrary.simpleMessage("휴대용 다운로드(.zip)"),
    "drives": MessageLookupByLibrary.simpleMessage("유니다데스"),
    "editionDetected": m7,
    "emptyFolder": MessageLookupByLibrary.simpleMessage(
      "Esta Carpeta está vacía",
    ),
    "errorGeneric": m8,
    "filter": MessageLookupByLibrary.simpleMessage("필터…"),
    "formatGpt": MessageLookupByLibrary.simpleMessage("포맷어 GPT(권장)"),
    "formatGptDescription": MessageLookupByLibrary.simpleMessage(
      "Limpia el disco y crea diseño UEFI\nEFI(S:) + Windows(W:)",
    ),
    "formatMbr": MessageLookupByLibrary.simpleMessage("MBR 포맷(BIOS heredado)"),
    "formatMbrDescription": MessageLookupByLibrary.simpleMessage(
      "Limpia el disco y crea diseño heredado\n솔로 윈도우(C:)",
    ),
    "formatWarning": MessageLookupByLibrary.simpleMessage(
      "디스코를 선택하여 형식을 완료하세요. Se perderán todos los datos.",
    ),
    "generateIso": MessageLookupByLibrary.simpleMessage("일반 ISO"),
    "getInstallOnlyIso": MessageLookupByLibrary.simpleMessage(
      "ISO 파라멘타 설치 솔루션 확보",
    ),
    "goUpOneLevel": MessageLookupByLibrary.simpleMessage("수비르 유엔 니벨"),
    "imageDetected": MessageLookupByLibrary.simpleMessage("이미지 감지"),
    "imageFound": MessageLookupByLibrary.simpleMessage("Imagen encontrada"),
    "imageNotFound": MessageLookupByLibrary.simpleMessage("반대하지 않는 이미지"),
    "imageSearching": MessageLookupByLibrary.simpleMessage("부스칸도 이미지..."),
    "installAll": MessageLookupByLibrary.simpleMessage("설치 할 일"),
    "installOffice": MessageLookupByLibrary.simpleMessage("설치 사무실"),
    "installationProgress": MessageLookupByLibrary.simpleMessage("설치 진행"),
    "invalidPath": m9,
    "isoDescription": MessageLookupByLibrary.simpleMessage(
      "WIM을 선택하여 ISO 기반을 선택하면 Windows 이미지가 포함된 ISO 자동 기능이 제공됩니다.",
    ),
    "kmsError": m10,
    "kmsHostEmpty": MessageLookupByLibrary.simpleMessage(
      "오류: 호스트 KMS가 비어 있습니다.",
    ),
    "kmsServer": MessageLookupByLibrary.simpleMessage("서비스 제공자 KMS"),
    "kmsTask160Days": MessageLookupByLibrary.simpleMessage("타레아 160일"),
    "kmsVolumeActivation": MessageLookupByLibrary.simpleMessage("볼륨 활성화(KMS)"),
    "landingDescription": MessageLookupByLibrary.simpleMessage(
      "알토 렌디미엔토를 위한 알타 정밀 Windows 설치. DISM 방향을 탐색하고 시스템 자동화를 최적화하는 빠른 속도를 실험해 보세요.",
    ),
    "licenseActivation": MessageLookupByLibrary.simpleMessage("라이센스 활성화"),
    "logsCopied": MessageLookupByLibrary.simpleMessage(
      "copiados al portapapeles를 기록합니다.",
    ),
    "mandatoryUpdate": MessageLookupByLibrary.simpleMessage(
      "의무사항이 실제로 실현되면 생략할 필요가 없습니다.",
    ),
    "manualWimHint": MessageLookupByLibrary.simpleMessage(
      "WIM 설명서 보관소에 있는 \"Buscar\" para localizar를 사용하십시오.",
    ),
    "mediaInstallation": MessageLookupByLibrary.simpleMessage("설치 미디어"),
    "networkBridge": MessageLookupByLibrary.simpleMessage("IPv4 설치가 완료되었습니다."),
    "networkInterface": MessageLookupByLibrary.simpleMessage(
      "Interfaz Wi-Fi/LAN IPv4",
    ),
    "nextGenerationDeployment": MessageLookupByLibrary.simpleMessage(
      "SO de próxima generación의 Despliegue",
    ),
    "noBridgeFound": MessageLookupByLibrary.simpleMessage(
      "No se encontró ningún puente. Pruebe con la IP 매뉴얼.",
    ),
    "noFormatWarning": MessageLookupByLibrary.simpleMessage(
      "Windows는 W:\\ 형식으로 되어 있습니다.",
    ),
    "noImageDetected": MessageLookupByLibrary.simpleMessage(
      "No se detector ninguna imagen",
    ),
    "noKmsProducts": MessageLookupByLibrary.simpleMessage(
      "KMS 선택 건초 제품은 없습니다.",
    ),
    "noPhysicalDisks": MessageLookupByLibrary.simpleMessage(
      "디스코드 físicos를 탐지하는 것은 아닙니다.",
    ),
    "noProgramsSelected": MessageLookupByLibrary.simpleMessage(
      "선택과 같은 건초 프로그램은 없습니다.",
    ),
    "noWifiNetworks": MessageLookupByLibrary.simpleMessage(
      "더 이상 Wi-Fi를 무시할 수 없습니다.",
    ),
    "noWingetPackages": MessageLookupByLibrary.simpleMessage(
      "탐지기는 날개와 함께 conocidos를 포장하지 않습니다.",
    ),
    "officeInstallDescription": MessageLookupByLibrary.simpleMessage(
      "Microsoft Office LTSC는 ODT를 사용하여 365개 자동 자동화 기능을 제공합니다.",
    ),
    "officeInstaller": MessageLookupByLibrary.simpleMessage("사무실 설치"),
    "officeRenewalStatus": m11,
    "officeVersion": MessageLookupByLibrary.simpleMessage("Office 버전"),
    "onlyWindows": MessageLookupByLibrary.simpleMessage(
      "Windows에서 단독으로 사용할 수 있습니다.",
    ),
    "packageStack": MessageLookupByLibrary.simpleMessage("스택 드 프로그래밍(Winget)"),
    "packagesDetected": m12,
    "partitionMode": MessageLookupByLibrary.simpleMessage("참여 방식"),
    "prepareBridge": MessageLookupByLibrary.simpleMessage("초기 과정 준비"),
    "provideWindowsImage": MessageLookupByLibrary.simpleMessage(
      "Windows 설치 이미지 비율(install.wim 또는 install.swm)\nUSB 또는 USB 장치를 통합하여 사용할 수 있습니다.",
    ),
    "receiveInstallation": MessageLookupByLibrary.simpleMessage(
      "Windows에서 레퀴엠을 준비하기 위해 설치를 완료하세요.",
    ),
    "renewalActive": MessageLookupByLibrary.simpleMessage("액티바"),
    "renewalDisabled": MessageLookupByLibrary.simpleMessage("Desactivada"),
    "searchingImage": MessageLookupByLibrary.simpleMessage("부스칸도 이미지…"),
    "secureBootCompatible": MessageLookupByLibrary.simpleMessage(
      "보안 부팅과 호환 가능",
    ),
    "selectDestinationDisk": MessageLookupByLibrary.simpleMessage(
      "디스코 드 목적지 선택",
    ),
    "selectFileHint": MessageLookupByLibrary.simpleMessage(
      ".wim o .swm 아카이브 선택",
    ),
    "selectWim": MessageLookupByLibrary.simpleMessage("WIM 선택"),
    "selectWimFirst": MessageLookupByLibrary.simpleMessage(
      "WIM 및 인터페이스 IPv4 개인 정보 보호를 선택하세요.",
    ),
    "selectWindowsImage": MessageLookupByLibrary.simpleMessage(
      "Windows 이미지 선택",
    ),
    "selectWindowsImageFull": MessageLookupByLibrary.simpleMessage(
      "Windows 설치 이미지 선택",
    ),
    "selectedFile": m13,
    "stableVersion": MessageLookupByLibrary.simpleMessage("안정적인 버전 v1.0.0"),
    "start": MessageLookupByLibrary.simpleMessage("엠페자르"),
    "startInstallation": MessageLookupByLibrary.simpleMessage("초기 설치"),
    "stopBridge": MessageLookupByLibrary.simpleMessage("디테너 푸엔테"),
    "systemConsole": MessageLookupByLibrary.simpleMessage("콘솔라 델 시스테마"),
    "systemDisk": MessageLookupByLibrary.simpleMessage("시스테마"),
    "systemLogs": MessageLookupByLibrary.simpleMessage("로그 델 시스템"),
    "unknown": MessageLookupByLibrary.simpleMessage("데스코노시도"),
    "updateDescription": MessageLookupByLibrary.simpleMessage(
      "계속해서 Requiem Tools를 사용하려면 최신 버전으로 현실화해야 합니다.",
    ),
    "updateRequired": MessageLookupByLibrary.simpleMessage("실제 요구 사항"),
    "useExistingPartitions": MessageLookupByLibrary.simpleMessage(
      "Usar는 존재합니다.",
    ),
    "useExistingPartitionsDescription": MessageLookupByLibrary.simpleMessage(
      "Sin formatear — despliega en W: tal cual\nUsted gestiona las particiones manualmente",
    ),
    "waitingAction": MessageLookupByLibrary.simpleMessage("에스페란도 또는 어쿠션..."),
    "waitingForWim": MessageLookupByLibrary.simpleMessage(
      "Esperando la detección de install.wim...",
    ),
    "wifiConnectError": m14,
    "wifiConnected": m15,
    "wifiPassword": MessageLookupByLibrary.simpleMessage("콘트라세냐 Wi-Fi"),
    "wimIntegrated": MessageLookupByLibrary.simpleMessage("ISO에 WIM 통합"),
    "wingetUnavailable": MessageLookupByLibrary.simpleMessage(
      "PATH에 설치하지 마십시오.",
    ),
  };
}
