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

  static String m7(firmware) => "실제 Arranque: ${firmware}";

  static String m8(diskNumber, mediaType, busType) =>
      "디스크 ${diskNumber} · ${mediaType} · ${busType}";

  static String m9(recommended) => "Modo 호환 가능: ${recommended}";

  static String m10(sizeGB) => "${sizeGB}GB";

  static String m11(imageName) =>
      "푸엔테: \${controller.bridgeAnnouncement?.imageName ??";

  static String m12(name, edition) => "감지된 편집: ${name} (${edition})";

  static String m13(error) => "오류 발생: ${error}";

  static String m14(val) => "유효하지 않은 기본 정보: ${val}";

  static String m15(error) => "디렉토리 내용이 무엇인지 확인하세요.\\n${error}";

  static String m16(path) => "선택 항목: ${path}";

  static String m17(path) => "유효하지 않은 기본 정보: ${path}";

  static String m18(clients) => "${clients} 연결";

  static String m19(error) => "오류: ${error}";

  static String m20(error) => "IPv4 인터페이스에 대한 열거형이 없습니다: ${error}";

  static String m21(path) => "WIM 선택: ${path}";

  static String m22(error) => "오류 KMS: ${error}";

  static String m23(product, channel, edition, status) =>
      "${product} / ${channel} / ${edition} 비트. La renovación queda ${status}.";

  static String m24(count) => "감지 패키지: ${count}.";

  static String m25(file) => "선택 항목: ${file}";

  static String m26(count) => "${count} 프로그램";

  static String m27(host) => "${host}:1688 연결 연결...";

  static String m28(error) => "KMS 오류: ${error}";

  static String m29(time, message) => "[${time}] ${message}";

  static String m30(count) => "감지 패키지: ${count}.";

  static String m31(error) => "Wi-Fi에 연결하지 마세요: ${error}";

  static String m32(network) => "${network}에 연결하세요.";

  static String m33(error) => "Wi-Fi에 연결하지 마세요: ${error}";

  static String m34(ssid, result) => "${ssid}에 Wi-Fi가 연결되었습니다. ${result}";

  static String m35(ssid) => "${ssid}에 연결하세요.";

  static String m36(signal, security) => "${signal}% · ${security}";

  static String m37(error) => "더 이상 연결하지 마세요: ${error}";

  static String m38(error) => "아니 se pudo buscar el puente: ${error}";

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
    "app_title_installer": MessageLookupByLibrary.simpleMessage("레퀴엠 설치 프로그램"),
    "app_title_tools": MessageLookupByLibrary.simpleMessage("레퀴엠 도구"),
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
    "common_cancel": MessageLookupByLibrary.simpleMessage("취소"),
    "common_change": MessageLookupByLibrary.simpleMessage("캠비아"),
    "common_connect": MessageLookupByLibrary.simpleMessage("커넥타"),
    "common_continue": MessageLookupByLibrary.simpleMessage("계속"),
    "common_label_disk": MessageLookupByLibrary.simpleMessage("디스크"),
    "common_label_image": MessageLookupByLibrary.simpleMessage("이미지"),
    "common_label_mode": MessageLookupByLibrary.simpleMessage("모드"),
    "common_refresh": MessageLookupByLibrary.simpleMessage("실제화"),
    "common_search": MessageLookupByLibrary.simpleMessage("버스카"),
    "common_select": MessageLookupByLibrary.simpleMessage("선택"),
    "compatibleMode": m6,
    "confirmDataDestruction": MessageLookupByLibrary.simpleMessage("데이터 파괴 확인"),
    "confirmInstallation": MessageLookupByLibrary.simpleMessage("설치 확인"),
    "connectInstallerWifi": MessageLookupByLibrary.simpleMessage(
      "Wi-Fi를 설치하는 연결",
    ),
    "connectWifi": MessageLookupByLibrary.simpleMessage("커넥타 Wi-Fi"),
    "console_title": MessageLookupByLibrary.simpleMessage("콘솔라 델 시스테마"),
    "console_tooltip_clear": MessageLookupByLibrary.simpleMessage("Limpiar 로그"),
    "console_tooltip_copy": MessageLookupByLibrary.simpleMessage("복사 로그"),
    "console_waiting_action": MessageLookupByLibrary.simpleMessage(
      "에스페란도 또는 어쿠션...",
    ),
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
    "disk_badge_system": MessageLookupByLibrary.simpleMessage("시스테마"),
    "disk_boot_firmware_label": m7,
    "disk_button_confirm_and_install": MessageLookupByLibrary.simpleMessage(
      "설치 확인",
    ),
    "disk_dialog_confirm_destruction_title":
        MessageLookupByLibrary.simpleMessage("DESTRUCCIÓN DE DATOS 확인"),
    "disk_dialog_confirm_install_title": MessageLookupByLibrary.simpleMessage(
      "설치 확인",
    ),
    "disk_dialog_existing_notice": MessageLookupByLibrary.simpleMessage(
      "Windows는 W:\\\\ 형식으로 되어 있습니다.",
    ),
    "disk_dialog_format_warning": MessageLookupByLibrary.simpleMessage(
      "디스코를 선택하여 형식을 완료하세요. Se perderán todos los datos.",
    ),
    "disk_empty_list": MessageLookupByLibrary.simpleMessage(
      "디스코드 físicos를 탐지하는 것은 아닙니다.",
    ),
    "disk_item_header": m8,
    "disk_management_appbar_title": MessageLookupByLibrary.simpleMessage(
      "디스코시 관리",
    ),
    "disk_partition_gpt_uefi": MessageLookupByLibrary.simpleMessage("GPT/UEFI"),
    "disk_partition_mbr_bios": MessageLookupByLibrary.simpleMessage("MBR/바이오스"),
    "disk_recommended_mode_label": m9,
    "disk_selection_button_start": MessageLookupByLibrary.simpleMessage(
      "초기 설치",
    ),
    "disk_selection_desc": MessageLookupByLibrary.simpleMessage(
      "Elija la unidad física donde se installará Windows.",
    ),
    "disk_selection_title": MessageLookupByLibrary.simpleMessage(
      "선택 가능한 디스코 데 데스티노(Disco de Destino)",
    ),
    "disk_size_gb": m10,
    "disk_waiting_wim_hint": MessageLookupByLibrary.simpleMessage(
      "Esperando la detección de install.wim...",
    ),
    "disk_wim_bridge_source": m11,
    "disk_wim_detected": MessageLookupByLibrary.simpleMessage("이미지 감지"),
    "disk_wim_integrated_source": MessageLookupByLibrary.simpleMessage(
      "ISO에 WIM 통합",
    ),
    "disk_wim_not_found": MessageLookupByLibrary.simpleMessage("반대하지 않는 이미지"),
    "doNotDisconnect": MessageLookupByLibrary.simpleMessage(
      "No desconecte la energía ni 은퇴 el medio de installación",
    ),
    "downloadAndActivate": MessageLookupByLibrary.simpleMessage("다운로드 + 액티바"),
    "downloadInstaller": MessageLookupByLibrary.simpleMessage(
      "다운로드 설치 프로그램(.exe)",
    ),
    "downloadPortable": MessageLookupByLibrary.simpleMessage("휴대용 다운로드(.zip)"),
    "drives": MessageLookupByLibrary.simpleMessage("유니다데스"),
    "editionDetected": m12,
    "emptyFolder": MessageLookupByLibrary.simpleMessage(
      "Esta Carpeta está vacía",
    ),
    "errorGeneric": m13,
    "file_explorer_default_title": MessageLookupByLibrary.simpleMessage(
      "Windows 설치 이미지 선택",
    ),
    "file_explorer_drives_header": MessageLookupByLibrary.simpleMessage("유니다드"),
    "file_explorer_empty_folder": MessageLookupByLibrary.simpleMessage(
      "Esta Carpeta está vacía",
    ),
    "file_explorer_filter_hint": MessageLookupByLibrary.simpleMessage("필터…"),
    "file_explorer_go_up_tooltip": MessageLookupByLibrary.simpleMessage(
      "수비르 유엔 니벨",
    ),
    "file_explorer_invalid_path_error": m14,
    "file_explorer_read_error": m15,
    "file_explorer_select_file_hint": MessageLookupByLibrary.simpleMessage(
      ".wim o .swm 아카이브 선택",
    ),
    "file_explorer_selected_file": m16,
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
    "invalidPath": m17,
    "isoDescription": MessageLookupByLibrary.simpleMessage(
      "WIM을 선택하여 ISO 기반을 선택하면 Windows 이미지가 포함된 ISO 자동 기능이 제공됩니다.",
    ),
    "iso_bridge_clients_count": m18,
    "iso_bridge_desc": MessageLookupByLibrary.simpleMessage(
      "WIM을 준비하여 고객에게 Requiem de la misma red를 직접 전송하세요. 클라이언트에는 WIM 설치 비용에 대한 보호가 없습니다.",
    ),
    "iso_bridge_generic_error": m19,
    "iso_bridge_list_interfaces_error": m20,
    "iso_bridge_save_simple_iso_dialog": MessageLookupByLibrary.simpleMessage(
      "Guardar ISO 심플 드 레퀴엠",
    ),
    "iso_bridge_save_wim_iso_dialog": MessageLookupByLibrary.simpleMessage(
      "Guardar ISO de Requiem con WIM",
    ),
    "iso_bridge_select_wim_dialog": MessageLookupByLibrary.simpleMessage(
      "Windows WIM 이미지 선택",
    ),
    "iso_bridge_simple_iso_filename": MessageLookupByLibrary.simpleMessage(
      "레퀴엠-설치 프로그램-Simple.iso",
    ),
    "iso_bridge_start_validation_error": MessageLookupByLibrary.simpleMessage(
      "WIM 및 인터페이스 IPv4 개인 정보 보호를 선택하세요.",
    ),
    "iso_bridge_wim_selected_log": m21,
    "iso_panel_button_generate_iso": MessageLookupByLibrary.simpleMessage(
      "일반 ISO",
    ),
    "iso_panel_button_select_wim": MessageLookupByLibrary.simpleMessage(
      "선택형 WIM",
    ),
    "iso_panel_button_simple_iso": MessageLookupByLibrary.simpleMessage(
      "OBTENER ISO PARA INSTALACIÓN SOLAMENTE",
    ),
    "iso_panel_desc_media": MessageLookupByLibrary.simpleMessage(
      "WIM을 선택하여 ISO 기반을 선택하면 Windows 이미지가 포함된 ISO 자동 기능이 제공됩니다.",
    ),
    "iso_panel_title_bridge": MessageLookupByLibrary.simpleMessage(
      "IPv4 설치가 완료되었습니다.",
    ),
    "iso_panel_title_media": MessageLookupByLibrary.simpleMessage("설치 미디어"),
    "kmsError": m22,
    "kmsHostEmpty": MessageLookupByLibrary.simpleMessage(
      "오류: 호스트 KMS가 비어 있습니다.",
    ),
    "kmsServer": MessageLookupByLibrary.simpleMessage("서비스 제공자 KMS"),
    "kmsTask160Days": MessageLookupByLibrary.simpleMessage("타레아 160일"),
    "kmsVolumeActivation": MessageLookupByLibrary.simpleMessage("볼륨 활성화(KMS)"),
    "kms_product_office_ltsc_professional_plus_2021":
        MessageLookupByLibrary.simpleMessage("오피스 LTSC 프로페셔널 플러스 2021"),
    "kms_product_office_ltsc_professional_plus_2024":
        MessageLookupByLibrary.simpleMessage("오피스 LTSC 프로페셔널 플러스 2024"),
    "kms_product_office_professional_plus_2013":
        MessageLookupByLibrary.simpleMessage("오피스 프로페셔널 플러스 2013"),
    "kms_product_office_professional_plus_2016":
        MessageLookupByLibrary.simpleMessage("오피스 프로페셔널 플러스 2016"),
    "kms_product_office_professional_plus_2019":
        MessageLookupByLibrary.simpleMessage("오피스 프로페셔널 플러스 2019"),
    "kms_product_office_standard_2013": MessageLookupByLibrary.simpleMessage(
      "오피스 스탠다드 2013",
    ),
    "kms_product_windows_10_11_education": MessageLookupByLibrary.simpleMessage(
      "윈도우 10/11 교육",
    ),
    "kms_product_windows_10_11_education_n":
        MessageLookupByLibrary.simpleMessage("윈도우 10/11 교육 N"),
    "kms_product_windows_10_11_enterprise":
        MessageLookupByLibrary.simpleMessage("윈도우 10/11 엔터프라이즈"),
    "kms_product_windows_10_11_enterprise_g":
        MessageLookupByLibrary.simpleMessage("윈도우 10/11 엔터프라이즈 G"),
    "kms_product_windows_10_11_enterprise_g_n":
        MessageLookupByLibrary.simpleMessage("Windows 10/11 엔터프라이즈 G N"),
    "kms_product_windows_10_11_enterprise_n":
        MessageLookupByLibrary.simpleMessage("윈도우 10/11 엔터프라이즈 N"),
    "kms_product_windows_10_11_pro": MessageLookupByLibrary.simpleMessage(
      "윈도우 10/11 프로",
    ),
    "kms_product_windows_10_11_pro_education":
        MessageLookupByLibrary.simpleMessage("윈도우 10/11 프로 교육"),
    "kms_product_windows_10_11_pro_for_workstations":
        MessageLookupByLibrary.simpleMessage("워크스테이션용 Windows 10/11 Pro"),
    "kms_product_windows_10_11_pro_n": MessageLookupByLibrary.simpleMessage(
      "윈도우 10/11 프로 N",
    ),
    "kms_product_windows_10_11_pro_workstations":
        MessageLookupByLibrary.simpleMessage("Windows 10/11 Pro 워크스테이션"),
    "kms_product_windows_8_1_enterprise": MessageLookupByLibrary.simpleMessage(
      "윈도우 8.1 엔터프라이즈",
    ),
    "kms_product_windows_8_1_pro": MessageLookupByLibrary.simpleMessage(
      "윈도우 8.1 프로",
    ),
    "kms_product_windows_8_enterprise": MessageLookupByLibrary.simpleMessage(
      "윈도우 8 엔터프라이즈",
    ),
    "kms_product_windows_8_pro": MessageLookupByLibrary.simpleMessage(
      "윈도우 8 프로",
    ),
    "kms_product_windows_server_2019_datacenter":
        MessageLookupByLibrary.simpleMessage("윈도우 서버 2019 데이터 센터"),
    "kms_product_windows_server_2019_standard":
        MessageLookupByLibrary.simpleMessage("윈도우 서버 2019 기준"),
    "kms_product_windows_server_2022_datacenter":
        MessageLookupByLibrary.simpleMessage("윈도우 서버 2022 데이터센터"),
    "kms_product_windows_server_2022_standard":
        MessageLookupByLibrary.simpleMessage("윈도우 서버 2022 표준"),
    "kms_product_windows_server_2025_datacenter":
        MessageLookupByLibrary.simpleMessage("윈도우 서버 2025 데이터센터"),
    "kms_product_windows_server_2025_standard":
        MessageLookupByLibrary.simpleMessage("윈도우 서버 2025 표준"),
    "kms_product_windows_subsystem_for_linux":
        MessageLookupByLibrary.simpleMessage("Linux용 Windows 하위 시스템"),
    "kms_product_windows_terminal": MessageLookupByLibrary.simpleMessage(
      "윈도우 터미널",
    ),
    "landingDescription": MessageLookupByLibrary.simpleMessage(
      "알토 렌디미엔토를 위한 알타 정밀 Windows 설치. DISM 방향을 탐색하고 시스템 자동화를 최적화하는 빠른 속도를 실험해 보세요.",
    ),
    "landing_badge_author": MessageLookupByLibrary.simpleMessage(
      "DISEÑADO POR JOSS",
    ),
    "landing_badge_secure_boot": MessageLookupByLibrary.simpleMessage(
      "보안 부팅과 호환 가능",
    ),
    "landing_badge_version": MessageLookupByLibrary.simpleMessage("버전이 안정적임"),
    "landing_button_logs": MessageLookupByLibrary.simpleMessage("로그 델 시스테마"),
    "landing_button_start": MessageLookupByLibrary.simpleMessage("엠페자르"),
    "landing_description_part1": MessageLookupByLibrary.simpleMessage(
      "알토 렌디미엔토를 위한 알타 정밀 Windows 설치.",
    ),
    "landing_description_part2": MessageLookupByLibrary.simpleMessage(
      "DISM 방향을 탐색하고 시스템 자동화를 최적화하는 빠른 속도를 실험해 보세요.",
    ),
    "landing_subtitle": MessageLookupByLibrary.simpleMessage(
      "DESPLIEGUE DE SO DE PRÓXIMA GENERACIÓN",
    ),
    "landing_title_installer": MessageLookupByLibrary.simpleMessage(
      "레퀴엠 설치 프로그램",
    ),
    "landing_title_tools": MessageLookupByLibrary.simpleMessage("레퀴엠 도구"),
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
    "officeRenewalStatus": m23,
    "officeVersion": MessageLookupByLibrary.simpleMessage("Office 버전"),
    "office_odt_kms_badge": MessageLookupByLibrary.simpleMessage("ODT + KMS"),
    "office_odt_panel_title": MessageLookupByLibrary.simpleMessage(
      "Office 배포 도구",
    ),
    "office_pkg_desc_2019": MessageLookupByLibrary.simpleMessage(
      "PerpetualVL2019를 통한 볼륨 실행 간편 실행",
    ),
    "office_pkg_desc_2021": MessageLookupByLibrary.simpleMessage(
      "PerpetualVL2021 채널을 통한 간편 실행 볼륨",
    ),
    "office_pkg_desc_2024": MessageLookupByLibrary.simpleMessage(
      "PerpetualVL2024를 통한 간편 실행 볼륨 관리",
    ),
    "office_pkg_name_2019": MessageLookupByLibrary.simpleMessage(
      "오피스 프로 플러스 2019",
    ),
    "office_pkg_name_2021": MessageLookupByLibrary.simpleMessage(
      "오피스 LTSC 프로 플러스 2021",
    ),
    "office_pkg_name_2024": MessageLookupByLibrary.simpleMessage(
      "오피스 LTSC 프로 플러스 2024",
    ),
    "onlyWindows": MessageLookupByLibrary.simpleMessage(
      "Windows에서 단독으로 사용할 수 있습니다.",
    ),
    "packageStack": MessageLookupByLibrary.simpleMessage("스택 드 프로그래밍(Winget)"),
    "packagesDetected": m24,
    "partitionMode": MessageLookupByLibrary.simpleMessage("참여 방식"),
    "pkg_cat_apache_php_mysql": MessageLookupByLibrary.simpleMessage(
      "아파치 PHP MySQL",
    ),
    "pkg_cat_bi_desktop": MessageLookupByLibrary.simpleMessage("BI 데스크탑"),
    "pkg_cat_cliente_api": MessageLookupByLibrary.simpleMessage("클라이언트 API"),
    "pkg_cat_cliente_db": MessageLookupByLibrary.simpleMessage("클라이언트 DB"),
    "pkg_cat_compiladores_c": MessageLookupByLibrary.simpleMessage("컴파일러 C++"),
    "pkg_cat_compresor": MessageLookupByLibrary.simpleMessage("압축기"),
    "pkg_cat_comunicacion": MessageLookupByLibrary.simpleMessage("의사소통"),
    "pkg_cat_control_de_versiones": MessageLookupByLibrary.simpleMessage(
      "버전 제어",
    ),
    "pkg_cat_desktop": MessageLookupByLibrary.simpleMessage("데스크탑"),
    "pkg_cat_diagramas": MessageLookupByLibrary.simpleMessage("다이어그램"),
    "pkg_cat_distro_wsl": MessageLookupByLibrary.simpleMessage("디스트로 WSL"),
    "pkg_cat_editor": MessageLookupByLibrary.simpleMessage("편집자"),
    "pkg_cat_golang": MessageLookupByLibrary.simpleMessage("골랑"),
    "pkg_cat_gpu_compute": MessageLookupByLibrary.simpleMessage("GPU 컴퓨팅"),
    "pkg_cat_grabacion": MessageLookupByLibrary.simpleMessage("그라바시온"),
    "pkg_cat_ide_ai": MessageLookupByLibrary.simpleMessage("IDE AI"),
    "pkg_cat_ide_android": MessageLookupByLibrary.simpleMessage("IDE 안드로이드"),
    "pkg_cat_ide_completo": MessageLookupByLibrary.simpleMessage("IDE 완성"),
    "pkg_cat_instaladores": MessageLookupByLibrary.simpleMessage("인스탈라도레스"),
    "pkg_cat_javascript": MessageLookupByLibrary.simpleMessage("자바스크립트"),
    "pkg_cat_limpieza": MessageLookupByLibrary.simpleMessage("림피에자"),
    "pkg_cat_modelos_locales": MessageLookupByLibrary.simpleMessage("모델 로케일"),
    "pkg_cat_navegador": MessageLookupByLibrary.simpleMessage("나베가도르"),
    "pkg_cat_python_3": MessageLookupByLibrary.simpleMessage("파이썬 3"),
    "pkg_cat_runtime_c": MessageLookupByLibrary.simpleMessage("런타임 C++"),
    "pkg_cat_runtime_escritorio": MessageLookupByLibrary.simpleMessage(
      "런타임 기록",
    ),
    "pkg_cat_runtime_juegos": MessageLookupByLibrary.simpleMessage("런타임 게임"),
    "pkg_cat_runtime_php": MessageLookupByLibrary.simpleMessage("런타임 PHP"),
    "pkg_cat_rustup": MessageLookupByLibrary.simpleMessage("러스트업"),
    "pkg_cat_sdk__net": MessageLookupByLibrary.simpleMessage("SDK .NET"),
    "pkg_cat_servidor_db": MessageLookupByLibrary.simpleMessage("서비스 DB"),
    "pkg_cat_ssh_clasico": MessageLookupByLibrary.simpleMessage("SSH 클라시코"),
    "pkg_cat_ssh_moderno": MessageLookupByLibrary.simpleMessage("SSH 모던"),
    "pkg_cat_subsistema_linux": MessageLookupByLibrary.simpleMessage(
      "서브시스템 리눅스",
    ),
    "pkg_cat_temurin_21": MessageLookupByLibrary.simpleMessage("테무린 21"),
    "pkg_cat_terminal_moderno": MessageLookupByLibrary.simpleMessage(
      "터미널 모데르노",
    ),
    "prepareBridge": MessageLookupByLibrary.simpleMessage("초기 과정 준비"),
    "progress_button_reboot": MessageLookupByLibrary.simpleMessage(
      "레이니시아르 시스테마",
    ),
    "progress_footer_warning": MessageLookupByLibrary.simpleMessage(
      "NO DESCONECTE LA ENERGÍA NI 은퇴 EL MEDIO DE INSTALACIÓN",
    ),
    "progress_header_badge": MessageLookupByLibrary.simpleMessage(
      "DESPLIEGUE EN CURSO",
    ),
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
    "selectedFile": m25,
    "stableVersion": MessageLookupByLibrary.simpleMessage("안정적인 버전 v1.0.0"),
    "start": MessageLookupByLibrary.simpleMessage("엠페자르"),
    "startInstallation": MessageLookupByLibrary.simpleMessage("초기 설치"),
    "stopBridge": MessageLookupByLibrary.simpleMessage("디테너 푸엔테"),
    "systemConsole": MessageLookupByLibrary.simpleMessage("콘솔라 델 시스테마"),
    "systemDisk": MessageLookupByLibrary.simpleMessage("시스테마"),
    "systemLogs": MessageLookupByLibrary.simpleMessage("로그 델 시스템"),
    "tools_badge_iso_compatibility": MessageLookupByLibrary.simpleMessage(
      "BIOS + UEFI 보존",
    ),
    "tools_badge_kms_pending": MessageLookupByLibrary.simpleMessage("KMS 펜던트"),
    "tools_badge_package_count": m26,
    "tools_button_activate_kms": MessageLookupByLibrary.simpleMessage("활성 KMS"),
    "tools_button_install_all_packages": MessageLookupByLibrary.simpleMessage(
      "설치 할 일",
    ),
    "tools_button_install_office": MessageLookupByLibrary.simpleMessage(
      "설치 사무실",
    ),
    "tools_header_title": MessageLookupByLibrary.simpleMessage(
      "REQUIEM 마이그레이션 도구",
    ),
    "tools_kms_checking_connectivity": m27,
    "tools_kms_empty_host_error": MessageLookupByLibrary.simpleMessage(
      "오류: 호스트 KMS가 vacio입니다.",
    ),
    "tools_kms_error_log": m28,
    "tools_kms_no_products_selected": MessageLookupByLibrary.simpleMessage(
      "KMS 선택 건초 제품은 없습니다.",
    ),
    "tools_log_format": m29,
    "tools_logs_copied_snackbar": MessageLookupByLibrary.simpleMessage(
      "copiados al portapapeles를 기록합니다.",
    ),
    "tools_packages_detected_count": m30,
    "tools_packages_none_detected": MessageLookupByLibrary.simpleMessage(
      "탐지기는 날개와 함께 conocidos를 포장하지 않습니다.",
    ),
    "tools_packages_none_selected": MessageLookupByLibrary.simpleMessage(
      "선택과 같은 건초 프로그램은 없습니다.",
    ),
    "tools_section_activation_desc": MessageLookupByLibrary.simpleMessage(
      "KMS 로컬 또는 원격 활성 Windows 및 Office 서비스를 구성합니다.",
    ),
    "tools_section_activation_title": MessageLookupByLibrary.simpleMessage(
      "라이센스 활성화",
    ),
    "tools_section_iso_desc": MessageLookupByLibrary.simpleMessage(
      "WIM 통합을 통해 자동으로 IPv4를 설치하거나 배포할 수 있습니다.",
    ),
    "tools_section_iso_title": MessageLookupByLibrary.simpleMessage(
      "ISO y despligue por red",
    ),
    "tools_section_office_desc": MessageLookupByLibrary.simpleMessage(
      "Microsoft Office LTSC는 ODT를 사용하여 365개 자동 자동화 기능을 제공합니다.",
    ),
    "tools_section_office_title": MessageLookupByLibrary.simpleMessage(
      "사무실 설치",
    ),
    "tools_section_packages_desc": MessageLookupByLibrary.simpleMessage(
      "Windows 중앙 날개에 필요한 장치를 실제로 설치합니다.",
    ),
    "tools_section_packages_title": MessageLookupByLibrary.simpleMessage(
      "스택 드 애플리카시오네스",
    ),
    "tools_sidebar_app_name": MessageLookupByLibrary.simpleMessage("레퀴엠"),
    "tools_sidebar_mode_badge": MessageLookupByLibrary.simpleMessage(
      "로컬 도구 모드",
    ),
    "tools_sidebar_tab_iso": MessageLookupByLibrary.simpleMessage("ISO 및 푸엔테"),
    "tools_sidebar_tab_kms": MessageLookupByLibrary.simpleMessage("KMS 활성화"),
    "tools_sidebar_tab_office": MessageLookupByLibrary.simpleMessage("설치 사무실"),
    "tools_sidebar_tab_packages": MessageLookupByLibrary.simpleMessage(
      "스택 프로그램",
    ),
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
    "wifiConnectError": m31,
    "wifiConnected": m32,
    "wifiPassword": MessageLookupByLibrary.simpleMessage("콘트라세냐 Wi-Fi"),
    "wifi_connect_error": m33,
    "wifi_connected_log": m34,
    "wifi_connected_status": m35,
    "wifi_dialog_title": MessageLookupByLibrary.simpleMessage("Wi-Fi를 설치하는 연결"),
    "wifi_item_signal_security": m36,
    "wifi_none_found": MessageLookupByLibrary.simpleMessage(
      "더 이상 Wi-Fi를 무시할 수 없습니다.",
    ),
    "wifi_password_hint": MessageLookupByLibrary.simpleMessage("콘트라세냐 Wi-Fi"),
    "wifi_scanning": MessageLookupByLibrary.simpleMessage(
      "사용 가능한 Wi-Fi 네트워크 검색 중...",
    ),
    "wimIntegrated": MessageLookupByLibrary.simpleMessage("ISO에 WIM 통합"),
    "wim_bridge_connection_error": m37,
    "wim_bridge_ip_dialog_title": MessageLookupByLibrary.simpleMessage(
      "IP 델 푸엔테 레퀴엠",
    ),
    "wim_bridge_ip_placeholder": MessageLookupByLibrary.simpleMessage(
      "192.168.1.20",
    ),
    "wim_bridge_not_found": MessageLookupByLibrary.simpleMessage(
      "No se encontró ningún puente. Pruebe con la IP 매뉴얼.",
    ),
    "wim_bridge_search_error": m38,
    "wim_bridge_searching": MessageLookupByLibrary.simpleMessage(
      "로컬 IPv4 네트워크에서 레퀴엠 브리지를 검색하는 중...",
    ),
    "wim_bridge_section_header": MessageLookupByLibrary.simpleMessage(
      "Windows에서 레퀴엠을 준비하기 위해 설치를 완료하세요.",
    ),
    "wim_button_change_file": MessageLookupByLibrary.simpleMessage("캠비아 아카이브"),
    "wim_button_connect_wifi": MessageLookupByLibrary.simpleMessage(
      "커넥타 Wi-Fi",
    ),
    "wim_button_manual_ip": MessageLookupByLibrary.simpleMessage("USAR IP 매뉴얼"),
    "wim_button_rescan": MessageLookupByLibrary.simpleMessage(
      "Escanear unidades de nuevo",
    ),
    "wim_button_search_bridge": MessageLookupByLibrary.simpleMessage(
      "버스카르 푸엔테",
    ),
    "wim_manual_search_hint": MessageLookupByLibrary.simpleMessage(
      "WIM 설명서 보관소에 있는 \"Buscar\" para localizar를 사용하십시오.",
    ),
    "wim_picker_description": MessageLookupByLibrary.simpleMessage(
      "Windows 설치 이미지에 비례(install.wim 또는 install.swm)\\n",
    ),
    "wim_picker_title": MessageLookupByLibrary.simpleMessage("Windows 이미지 선택"),
    "wim_status_found": MessageLookupByLibrary.simpleMessage(
      "Imagen encontrada",
    ),
    "wim_status_not_found": MessageLookupByLibrary.simpleMessage(
      "No se detector ninguna imagen",
    ),
    "wim_status_searching": MessageLookupByLibrary.simpleMessage("부스칸도 이미지…"),
    "wim_status_searching_alt": MessageLookupByLibrary.simpleMessage(
      "부스칸도 이미지...",
    ),
    "wingetUnavailable": MessageLookupByLibrary.simpleMessage(
      "PATH에 설치하지 마십시오.",
    ),
  };
}
