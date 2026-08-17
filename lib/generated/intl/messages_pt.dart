// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a pt locale. All the
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
  String get localeName => 'pt';

  static String m0(count) => "${count} programas";

  static String m1(version) => "Versão disponível: ${version}";

  static String m2(firmware) => "Arranjo real: ${firmware}";

  static String m3(error) => "Não foi possível conectar: ${error}";

  static String m4(error) => "Não foi possível procurar a ponte: ${error}";

  static String m5(host) => "Comprovando conectividade com ${host}:1688...";

  static String m6(mode) => "Modo compatível: ${mode}";

  static String m7(firmware) => "Arranjo real: ${firmware}";

  static String m8(diskNumber, mediaType, busType) =>
      "DISCO ${diskNumber} · ${mediaType} · ${busType}";

  static String m9(recommended) => "Modo compatível: ${recommended}";

  static String m10(sizeGB) => "${sizeGB}GB";

  static String m11(imageName) =>
      "Ponte: \${controller.bridgeAnnouncement?.imageName ??";

  static String m12(name, edition) => "Edição bloqueada: ${name} (${edition})";

  static String m13(error) => "Ocorreu um erro: ${error}";

  static String m14(val) => "Rota inválida: ${val}";

  static String m15(error) =>
      "Não foi possível ler o conteúdo do diretório.\\n${error}";

  static String m16(path) => "Selecionado: ${path}";

  static String m17(path) => "Rota inválida: ${path}";

  static String m18(clients) => "${clients} conexões";

  static String m19(error) => "ERRO: ${error}";

  static String m20(error) =>
      "Não foi possível enumerar as interfaces IPv4: ${error}";

  static String m21(path) => "WIM selecionado: ${path}";

  static String m22(error) => "Erro KMS: ${error}";

  static String m23(product, channel, edition, status) =>
      "${product} / ${channel} / ${edition} bits. A reforma caiu ${status}.";

  static String m24(count) => "Pacotes detectados: ${count}.";

  static String m25(file) => "Selecionado: ${file}";

  static String m26(count) => "${count} programas";

  static String m27(host) => "Comprovando conectividade com ${host}:1688...";

  static String m28(error) => "ERRO KMS: ${error}";

  static String m29(time, message) => "[${time}] ${message}";

  static String m30(count) => "Pacotes detectados: ${count}.";

  static String m31(error) => "Não foi possível conectar ao Wi-Fi: ${error}";

  static String m32(network) => "Conectado a ${network}.";

  static String m33(error) => "Não foi possível conectar ao Wi-Fi: ${error}";

  static String m34(ssid, result) => "Wi-Fi conectado a ${ssid}. ${result}";

  static String m35(ssid) => "Conectado a ${ssid}.";

  static String m36(signal, security) => "${signal}% · ${security}";

  static String m37(error) => "Não foi possível conectar: ${error}";

  static String m38(error) => "Não foi possível procurar a ponte: ${error}";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
    "actionCancel": MessageLookupByLibrary.simpleMessage("Cancelar"),
    "actionChange": MessageLookupByLibrary.simpleMessage("Cambiar"),
    "actionConfirm": MessageLookupByLibrary.simpleMessage("Confirmar"),
    "actionConnect": MessageLookupByLibrary.simpleMessage("Conectar"),
    "actionContinue": MessageLookupByLibrary.simpleMessage("Continuar"),
    "actionInstall": MessageLookupByLibrary.simpleMessage("Instalar"),
    "actionRefresh": MessageLookupByLibrary.simpleMessage("Atualizar"),
    "actionRestartSystem": MessageLookupByLibrary.simpleMessage(
      "Reiniciar sistema",
    ),
    "actionScanAgain": MessageLookupByLibrary.simpleMessage(
      "Escanear unidades de novo",
    ),
    "actionSearch": MessageLookupByLibrary.simpleMessage("Buscar"),
    "actionSelect": MessageLookupByLibrary.simpleMessage("Selecionar"),
    "activate": MessageLookupByLibrary.simpleMessage("Ativar"),
    "activateKms": MessageLookupByLibrary.simpleMessage("Ativar KMS"),
    "appTitleInstaller": MessageLookupByLibrary.simpleMessage(
      "Instalador de Réquiem",
    ),
    "appTitleTools": MessageLookupByLibrary.simpleMessage(
      "Ferramentas de Réquiem",
    ),
    "app_title_installer": MessageLookupByLibrary.simpleMessage(
      "Instalador de Réquiem",
    ),
    "app_title_tools": MessageLookupByLibrary.simpleMessage(
      "Ferramentas de Réquiem",
    ),
    "applicationStack": MessageLookupByLibrary.simpleMessage(
      "Pilha de aplicativos",
    ),
    "applicationStackDescription": MessageLookupByLibrary.simpleMessage(
      "Instale e atualize ferramentas de desenvolvimento essenciais para Windows através do winget.",
    ),
    "applicationsCount": m0,
    "automaticOffice": MessageLookupByLibrary.simpleMessage(
      "Escritório automático",
    ),
    "automaticOfficeDescription": MessageLookupByLibrary.simpleMessage(
      "Use o volume GVLK que você instalou",
    ),
    "automaticRenewal": MessageLookupByLibrary.simpleMessage(
      "Renovação automática",
    ),
    "automaticWindows": MessageLookupByLibrary.simpleMessage(
      "Windows automático",
    ),
    "automaticWindowsDescription": MessageLookupByLibrary.simpleMessage(
      "Detecta edição e compatível com GVLK",
    ),
    "availableVersion": m1,
    "bootCurrent": m2,
    "bridgeConnectError": m3,
    "bridgeDescription": MessageLookupByLibrary.simpleMessage(
      "Prepare o WIM uma única vez e transmita diretamente aos clientes Requiem de la misma red. Os clientes não protegem o WIM antes de instalar.",
    ),
    "bridgeIp": MessageLookupByLibrary.simpleMessage("IP da ponte Réquiem"),
    "bridgePorts": MessageLookupByLibrary.simpleMessage(
      "Porto HTTP 40124 · descoberta UDP 40123. Se o Windows Defender tiver dúvidas, permita acesso a redes privadas.",
    ),
    "bridgeSearchError": m4,
    "checkingKms": m5,
    "clearLogs": MessageLookupByLibrary.simpleMessage("Registros limpários"),
    "common_cancel": MessageLookupByLibrary.simpleMessage("CANCELAR"),
    "common_change": MessageLookupByLibrary.simpleMessage("CÂMBIO"),
    "common_connect": MessageLookupByLibrary.simpleMessage("CONECTAR"),
    "common_continue": MessageLookupByLibrary.simpleMessage("CONTINUAR"),
    "common_label_disk": MessageLookupByLibrary.simpleMessage("DISCO"),
    "common_label_image": MessageLookupByLibrary.simpleMessage("IMAGEM"),
    "common_label_mode": MessageLookupByLibrary.simpleMessage("MODO"),
    "common_refresh": MessageLookupByLibrary.simpleMessage("ATUALIZAR"),
    "common_search": MessageLookupByLibrary.simpleMessage("ÔNIBUS"),
    "common_select": MessageLookupByLibrary.simpleMessage("SELECIONAR"),
    "compatibleMode": m6,
    "confirmDataDestruction": MessageLookupByLibrary.simpleMessage(
      "Confirmar destruição de dados",
    ),
    "confirmInstallation": MessageLookupByLibrary.simpleMessage(
      "Confirmar instalação",
    ),
    "connectInstallerWifi": MessageLookupByLibrary.simpleMessage(
      "Conectar o instalador ao Wi-Fi",
    ),
    "connectWifi": MessageLookupByLibrary.simpleMessage("Conectar Wi-Fi"),
    "console_title": MessageLookupByLibrary.simpleMessage("Consola do Sistema"),
    "console_tooltip_clear": MessageLookupByLibrary.simpleMessage(
      "Registros limpários",
    ),
    "console_tooltip_copy": MessageLookupByLibrary.simpleMessage(
      "Copiar registros",
    ),
    "console_waiting_action": MessageLookupByLibrary.simpleMessage(
      "Esperando uma ação...",
    ),
    "copyLogs": MessageLookupByLibrary.simpleMessage("Copiar registros"),
    "deploymentInProgress": MessageLookupByLibrary.simpleMessage(
      "Despliegue em curso",
    ),
    "designedBy": MessageLookupByLibrary.simpleMessage("Projetado por Joss"),
    "destinationDiskDescription": MessageLookupByLibrary.simpleMessage(
      "Elimine a unidade física onde o Windows será instalado.",
    ),
    "detect": MessageLookupByLibrary.simpleMessage("Detector"),
    "diskManagement": MessageLookupByLibrary.simpleMessage(
      "Administração de discotecas",
    ),
    "disk_badge_system": MessageLookupByLibrary.simpleMessage("SISTEMA"),
    "disk_boot_firmware_label": m7,
    "disk_button_confirm_and_install": MessageLookupByLibrary.simpleMessage(
      "CONFIRMAR E INSTALAR",
    ),
    "disk_dialog_confirm_destruction_title":
        MessageLookupByLibrary.simpleMessage("CONFIRMAR DESTRUCÇÃO DE DADOS"),
    "disk_dialog_confirm_install_title": MessageLookupByLibrary.simpleMessage(
      "CONFIRMAR INSTALAÇÃO",
    ),
    "disk_dialog_existing_notice": MessageLookupByLibrary.simpleMessage(
      "O Windows será desativado em W:\\\\ sem formatar.",
    ),
    "disk_dialog_format_warning": MessageLookupByLibrary.simpleMessage(
      "O disco selecionado será formato completo. Você perderá todos os dados.",
    ),
    "disk_empty_list": MessageLookupByLibrary.simpleMessage(
      "Não há detecção de discos físicos",
    ),
    "disk_item_header": m8,
    "disk_management_appbar_title": MessageLookupByLibrary.simpleMessage(
      "ADMINISTRAÇÃO DE DISCOS",
    ),
    "disk_partition_gpt_uefi": MessageLookupByLibrary.simpleMessage("GPT/UEFI"),
    "disk_partition_mbr_bios": MessageLookupByLibrary.simpleMessage("MBR/BIOS"),
    "disk_recommended_mode_label": m9,
    "disk_selection_button_start": MessageLookupByLibrary.simpleMessage(
      "INICIAR INSTALAÇÃO",
    ),
    "disk_selection_desc": MessageLookupByLibrary.simpleMessage(
      "Elimine a unidade física onde o Windows será instalado.",
    ),
    "disk_selection_title": MessageLookupByLibrary.simpleMessage(
      "Selecionar Disco de Destino",
    ),
    "disk_size_gb": m10,
    "disk_waiting_wim_hint": MessageLookupByLibrary.simpleMessage(
      "Esperando a detecção de install.wim...",
    ),
    "disk_wim_bridge_source": m11,
    "disk_wim_detected": MessageLookupByLibrary.simpleMessage(
      "Imagem bloqueada",
    ),
    "disk_wim_integrated_source": MessageLookupByLibrary.simpleMessage(
      "WIM integrado na ISO",
    ),
    "disk_wim_not_found": MessageLookupByLibrary.simpleMessage(
      "Imagem não encontrada",
    ),
    "doNotDisconnect": MessageLookupByLibrary.simpleMessage(
      "Não desconecte a energia nem retire o meio de instalação",
    ),
    "downloadAndActivate": MessageLookupByLibrary.simpleMessage(
      "Descargar + ativar",
    ),
    "downloadInstaller": MessageLookupByLibrary.simpleMessage(
      "Baixe o instalador (.exe)",
    ),
    "downloadPortable": MessageLookupByLibrary.simpleMessage(
      "Baixar portátil (.zip)",
    ),
    "drives": MessageLookupByLibrary.simpleMessage("Unidades"),
    "editionDetected": m12,
    "emptyFolder": MessageLookupByLibrary.simpleMessage(
      "Esta pasta está vazia",
    ),
    "errorGeneric": m13,
    "file_explorer_default_title": MessageLookupByLibrary.simpleMessage(
      "Selecionar imagem de instalação do Windows",
    ),
    "file_explorer_drives_header": MessageLookupByLibrary.simpleMessage(
      "UNIDADES",
    ),
    "file_explorer_empty_folder": MessageLookupByLibrary.simpleMessage(
      "Esta pasta está vazia",
    ),
    "file_explorer_filter_hint": MessageLookupByLibrary.simpleMessage(
      "Filtrar…",
    ),
    "file_explorer_go_up_tooltip": MessageLookupByLibrary.simpleMessage(
      "Subir um nível",
    ),
    "file_explorer_invalid_path_error": m14,
    "file_explorer_read_error": m15,
    "file_explorer_select_file_hint": MessageLookupByLibrary.simpleMessage(
      "Selecione um arquivo .wim ou .swm",
    ),
    "file_explorer_selected_file": m16,
    "filter": MessageLookupByLibrary.simpleMessage("Filtrar…"),
    "formatGpt": MessageLookupByLibrary.simpleMessage(
      "Formatar GPT (recomendado)",
    ),
    "formatGptDescription": MessageLookupByLibrary.simpleMessage(
      "Limpe o disco e crie o design UEFI\nEFI (S:) + Windows (W:)",
    ),
    "formatMbr": MessageLookupByLibrary.simpleMessage(
      "Formatar MBR (BIOS herdado)",
    ),
    "formatMbrDescription": MessageLookupByLibrary.simpleMessage(
      "Limpe o disco e crie um design herdado\nJanelas individuais (C:)",
    ),
    "formatWarning": MessageLookupByLibrary.simpleMessage(
      "O disco selecionado será formato completo. Você perderá todos os dados.",
    ),
    "generateIso": MessageLookupByLibrary.simpleMessage("Gerar ISO"),
    "getInstallOnlyIso": MessageLookupByLibrary.simpleMessage(
      "Obtenha ISO para instalação apenas",
    ),
    "goUpOneLevel": MessageLookupByLibrary.simpleMessage("Subir um nível"),
    "imageDetected": MessageLookupByLibrary.simpleMessage("Imagem bloqueada"),
    "imageFound": MessageLookupByLibrary.simpleMessage("Imagem encontrada"),
    "imageNotFound": MessageLookupByLibrary.simpleMessage(
      "Imagem não encontrada",
    ),
    "imageSearching": MessageLookupByLibrary.simpleMessage(
      "Buscando imagem...",
    ),
    "installAll": MessageLookupByLibrary.simpleMessage("Instalar tudo"),
    "installOffice": MessageLookupByLibrary.simpleMessage("Instalar o Office"),
    "installationProgress": MessageLookupByLibrary.simpleMessage(
      "Progresso da instalação",
    ),
    "invalidPath": m17,
    "isoDescription": MessageLookupByLibrary.simpleMessage(
      "Obtenha a base ISO para selecionar um WIM ao arrancar ou crie uma ISO autônoma que inclua sua imagem do Windows.",
    ),
    "iso_bridge_clients_count": m18,
    "iso_bridge_desc": MessageLookupByLibrary.simpleMessage(
      "Prepare o WIM uma única vez e transmita diretamente aos clientes Requiem de la misma red. Os clientes não protegem o WIM antes de instalar.",
    ),
    "iso_bridge_generic_error": m19,
    "iso_bridge_list_interfaces_error": m20,
    "iso_bridge_save_simple_iso_dialog": MessageLookupByLibrary.simpleMessage(
      "Guardar ISO simples de Requiem",
    ),
    "iso_bridge_save_wim_iso_dialog": MessageLookupByLibrary.simpleMessage(
      "Guardar ISO de Requiem com WIM",
    ),
    "iso_bridge_select_wim_dialog": MessageLookupByLibrary.simpleMessage(
      "Selecionar imagem WIM do Windows",
    ),
    "iso_bridge_simple_iso_filename": MessageLookupByLibrary.simpleMessage(
      "Requiem-Installer-Simple.iso",
    ),
    "iso_bridge_start_validation_error": MessageLookupByLibrary.simpleMessage(
      "Selecione um WIM e uma interface IPv4 privada.",
    ),
    "iso_bridge_wim_selected_log": m21,
    "iso_panel_button_generate_iso": MessageLookupByLibrary.simpleMessage(
      "GERAR ISO",
    ),
    "iso_panel_button_select_wim": MessageLookupByLibrary.simpleMessage(
      "SELECIONAR WIM",
    ),
    "iso_panel_button_simple_iso": MessageLookupByLibrary.simpleMessage(
      "OBTENHA ISO PARA INSTALAÇÃO SOLAMENTE",
    ),
    "iso_panel_desc_media": MessageLookupByLibrary.simpleMessage(
      "Obtenha a base ISO para selecionar um WIM ao arrancar ou crie uma ISO autônoma que inclua sua imagem do Windows.",
    ),
    "iso_panel_title_bridge": MessageLookupByLibrary.simpleMessage(
      "Ponte de instalação IPv4",
    ),
    "iso_panel_title_media": MessageLookupByLibrary.simpleMessage(
      "Meio de instalação",
    ),
    "kmsError": m22,
    "kmsHostEmpty": MessageLookupByLibrary.simpleMessage(
      "Erro: o host KMS está vazio.",
    ),
    "kmsServer": MessageLookupByLibrary.simpleMessage("Servidor KMS"),
    "kmsTask160Days": MessageLookupByLibrary.simpleMessage("Tarea 160 dias"),
    "kmsVolumeActivation": MessageLookupByLibrary.simpleMessage(
      "Ativação de volume (KMS)",
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
        MessageLookupByLibrary.simpleMessage("Office Profissional Plus 2013"),
    "kms_product_office_professional_plus_2016":
        MessageLookupByLibrary.simpleMessage("Office Profissional Plus 2016"),
    "kms_product_office_professional_plus_2019":
        MessageLookupByLibrary.simpleMessage("Office Profissional Plus 2019"),
    "kms_product_office_standard_2013": MessageLookupByLibrary.simpleMessage(
      "Padrão do Office 2013",
    ),
    "kms_product_windows_10_11_education": MessageLookupByLibrary.simpleMessage(
      "Educação do Windows 10/11",
    ),
    "kms_product_windows_10_11_education_n":
        MessageLookupByLibrary.simpleMessage("Windows 10/11 EducaçãoN"),
    "kms_product_windows_10_11_enterprise":
        MessageLookupByLibrary.simpleMessage("Windows 10/11 Empresarial"),
    "kms_product_windows_10_11_enterprise_g":
        MessageLookupByLibrary.simpleMessage("Windows 10/11 Empresa G"),
    "kms_product_windows_10_11_enterprise_g_n":
        MessageLookupByLibrary.simpleMessage("Windows 10/11 Enterprise G N"),
    "kms_product_windows_10_11_enterprise_n":
        MessageLookupByLibrary.simpleMessage("Windows 10/11 Empresa N"),
    "kms_product_windows_10_11_pro": MessageLookupByLibrary.simpleMessage(
      "Windows 10/11 Pró",
    ),
    "kms_product_windows_10_11_pro_education":
        MessageLookupByLibrary.simpleMessage("Windows 10/11 Pro Educação"),
    "kms_product_windows_10_11_pro_for_workstations":
        MessageLookupByLibrary.simpleMessage(
          "Windows 10/11 Pro para estações de trabalho",
        ),
    "kms_product_windows_10_11_pro_n": MessageLookupByLibrary.simpleMessage(
      "Windows 10/11 ProN",
    ),
    "kms_product_windows_10_11_pro_workstations":
        MessageLookupByLibrary.simpleMessage(
          "Estações de trabalho Windows 10/11 Pro",
        ),
    "kms_product_windows_8_1_enterprise": MessageLookupByLibrary.simpleMessage(
      "Windows 8.1 Empresarial",
    ),
    "kms_product_windows_8_1_pro": MessageLookupByLibrary.simpleMessage(
      "Windows 8.1 Pró",
    ),
    "kms_product_windows_8_enterprise": MessageLookupByLibrary.simpleMessage(
      "Windows 8 Empresarial",
    ),
    "kms_product_windows_8_pro": MessageLookupByLibrary.simpleMessage(
      "Windows 8 Pró",
    ),
    "kms_product_windows_server_2019_datacenter":
        MessageLookupByLibrary.simpleMessage(
          "Centro de dados do Windows Server 2019",
        ),
    "kms_product_windows_server_2019_standard":
        MessageLookupByLibrary.simpleMessage("Padrão do Windows Server 2019"),
    "kms_product_windows_server_2022_datacenter":
        MessageLookupByLibrary.simpleMessage(
          "Centro de dados do Windows Server 2022",
        ),
    "kms_product_windows_server_2022_standard":
        MessageLookupByLibrary.simpleMessage("Padrão do Windows Server 2022"),
    "kms_product_windows_server_2025_datacenter":
        MessageLookupByLibrary.simpleMessage(
          "Centro de dados do Windows Server 2025",
        ),
    "kms_product_windows_server_2025_standard":
        MessageLookupByLibrary.simpleMessage("Padrão do Windows Server 2025"),
    "kms_product_windows_subsystem_for_linux":
        MessageLookupByLibrary.simpleMessage("Subsistema Windows para Linux"),
    "kms_product_windows_terminal": MessageLookupByLibrary.simpleMessage(
      "Terminal do Windows",
    ),
    "landingDescription": MessageLookupByLibrary.simpleMessage(
      "Instalador de janelas de alta precisão para ambientes de alto desempenho. Experimente um aplicativo rápido com solicitação direta do DISM e otimização automática do sistema.",
    ),
    "landing_badge_author": MessageLookupByLibrary.simpleMessage(
      "DISEÑADO POR JOSS",
    ),
    "landing_badge_secure_boot": MessageLookupByLibrary.simpleMessage(
      "COMPATÍVEL COM INICIALIZAÇÃO SEGURA",
    ),
    "landing_badge_version": MessageLookupByLibrary.simpleMessage(
      "VERSÃO ESTÁVEL",
    ),
    "landing_button_logs": MessageLookupByLibrary.simpleMessage(
      "REGISTROS DO SISTEMA",
    ),
    "landing_button_start": MessageLookupByLibrary.simpleMessage("EMPEZAR"),
    "landing_description_part1": MessageLookupByLibrary.simpleMessage(
      "Instalador de janelas de alta precisão para ambientes de alto desempenho.",
    ),
    "landing_description_part2": MessageLookupByLibrary.simpleMessage(
      "Experimente um aplicativo rápido com solicitação direta do DISM e otimização automática do sistema.",
    ),
    "landing_subtitle": MessageLookupByLibrary.simpleMessage(
      "DESPLIEGUE DE SO DE PRÓXIMA GERAÇÃO",
    ),
    "landing_title_installer": MessageLookupByLibrary.simpleMessage(
      "INSTALADOR DE RÉQUIEM",
    ),
    "landing_title_tools": MessageLookupByLibrary.simpleMessage(
      "FERRAMENTAS DE RÉQUIEM",
    ),
    "licenseActivation": MessageLookupByLibrary.simpleMessage(
      "Ativação de licenças",
    ),
    "logsCopied": MessageLookupByLibrary.simpleMessage(
      "Logs copiados em portapapeles.",
    ),
    "mandatoryUpdate": MessageLookupByLibrary.simpleMessage(
      "Esta atualização é obrigatória e não pode ser omitida.",
    ),
    "manualWimHint": MessageLookupByLibrary.simpleMessage(
      "Use \"Buscar\" para localizar seu arquivo WIM manualmente.",
    ),
    "mediaInstallation": MessageLookupByLibrary.simpleMessage(
      "Meio de instalação",
    ),
    "networkBridge": MessageLookupByLibrary.simpleMessage(
      "Ponte de instalação IPv4",
    ),
    "networkInterface": MessageLookupByLibrary.simpleMessage(
      "Interface Wi‑Fi/LAN IPv4",
    ),
    "nextGenerationDeployment": MessageLookupByLibrary.simpleMessage(
      "Despliegue de SO da próxima geração",
    ),
    "noBridgeFound": MessageLookupByLibrary.simpleMessage(
      "Não se encontrou nenhuma ponte. Verifique o manual IP.",
    ),
    "noFormatWarning": MessageLookupByLibrary.simpleMessage(
      "O Windows será desativado em W:\\ sem formatar.",
    ),
    "noImageDetected": MessageLookupByLibrary.simpleMessage(
      "Nenhuma imagem foi detectada",
    ),
    "noKmsProducts": MessageLookupByLibrary.simpleMessage(
      "Nenhum produto KMS selecionado.",
    ),
    "noPhysicalDisks": MessageLookupByLibrary.simpleMessage(
      "Não há detecção de discos físicos",
    ),
    "noProgramsSelected": MessageLookupByLibrary.simpleMessage(
      "Nenhum programa selecionado.",
    ),
    "noWifiNetworks": MessageLookupByLibrary.simpleMessage(
      "Não foram encontradas redes Wi-Fi disponíveis.",
    ),
    "noWingetPackages": MessageLookupByLibrary.simpleMessage(
      "Não foram detectados pacotes conhecidos com winget.",
    ),
    "officeInstallDescription": MessageLookupByLibrary.simpleMessage(
      "Desplie o Microsoft Office LTSC ou 365 de forma automatizada usando ODT.",
    ),
    "officeInstaller": MessageLookupByLibrary.simpleMessage(
      "Instalador de Office",
    ),
    "officeRenewalStatus": m23,
    "officeVersion": MessageLookupByLibrary.simpleMessage("Versão do Office"),
    "office_odt_kms_badge": MessageLookupByLibrary.simpleMessage("ODT + KMS"),
    "office_odt_panel_title": MessageLookupByLibrary.simpleMessage(
      "Ferramenta de implantação do Office",
    ),
    "office_pkg_desc_2019": MessageLookupByLibrary.simpleMessage(
      "Click-to-Run de volume com canal PerpetualVL2019",
    ),
    "office_pkg_desc_2021": MessageLookupByLibrary.simpleMessage(
      "Click-to-Run de volume com canal PerpetualVL2021",
    ),
    "office_pkg_desc_2024": MessageLookupByLibrary.simpleMessage(
      "Click-to-Run de volume com canal PerpetualVL2024",
    ),
    "office_pkg_name_2019": MessageLookupByLibrary.simpleMessage(
      "Office Pro Plus 2019",
    ),
    "office_pkg_name_2021": MessageLookupByLibrary.simpleMessage(
      "Office LTSC Pro Plus 2021",
    ),
    "office_pkg_name_2024": MessageLookupByLibrary.simpleMessage(
      "Escritório LTSC Pro Plus 2024",
    ),
    "onlyWindows": MessageLookupByLibrary.simpleMessage(
      "Esta função só está disponível no Windows.",
    ),
    "packageStack": MessageLookupByLibrary.simpleMessage(
      "Pilha de programas (Winget)",
    ),
    "packagesDetected": m24,
    "partitionMode": MessageLookupByLibrary.simpleMessage("Modo de partição"),
    "pkg_cat_apache_php_mysql": MessageLookupByLibrary.simpleMessage(
      "Apache PHP MySQL",
    ),
    "pkg_cat_bi_desktop": MessageLookupByLibrary.simpleMessage(
      "Área de trabalho de BI",
    ),
    "pkg_cat_cliente_api": MessageLookupByLibrary.simpleMessage("API Cliente"),
    "pkg_cat_cliente_db": MessageLookupByLibrary.simpleMessage(
      "Banco de dados do cliente",
    ),
    "pkg_cat_compiladores_c": MessageLookupByLibrary.simpleMessage(
      "Compiladores C++",
    ),
    "pkg_cat_compresor": MessageLookupByLibrary.simpleMessage("Compressor"),
    "pkg_cat_comunicacion": MessageLookupByLibrary.simpleMessage("Comunicação"),
    "pkg_cat_control_de_versiones": MessageLookupByLibrary.simpleMessage(
      "Controle de versões",
    ),
    "pkg_cat_desktop": MessageLookupByLibrary.simpleMessage("Área de trabalho"),
    "pkg_cat_diagramas": MessageLookupByLibrary.simpleMessage("Diagramas"),
    "pkg_cat_distro_wsl": MessageLookupByLibrary.simpleMessage(
      "Distribuição WSL",
    ),
    "pkg_cat_editor": MessageLookupByLibrary.simpleMessage("Editor"),
    "pkg_cat_golang": MessageLookupByLibrary.simpleMessage("Golang"),
    "pkg_cat_gpu_compute": MessageLookupByLibrary.simpleMessage(
      "Computação GPU",
    ),
    "pkg_cat_grabacion": MessageLookupByLibrary.simpleMessage("Grabación"),
    "pkg_cat_ide_ai": MessageLookupByLibrary.simpleMessage("IDE IA"),
    "pkg_cat_ide_android": MessageLookupByLibrary.simpleMessage(
      "Ambiente de desenvolvimento integrado Android",
    ),
    "pkg_cat_ide_completo": MessageLookupByLibrary.simpleMessage(
      "IDE completo",
    ),
    "pkg_cat_instaladores": MessageLookupByLibrary.simpleMessage(
      "Instaladores",
    ),
    "pkg_cat_javascript": MessageLookupByLibrary.simpleMessage("JavaScript"),
    "pkg_cat_limpieza": MessageLookupByLibrary.simpleMessage("Limpieza"),
    "pkg_cat_modelos_locales": MessageLookupByLibrary.simpleMessage(
      "Locais de modelos",
    ),
    "pkg_cat_navegador": MessageLookupByLibrary.simpleMessage("Navegador"),
    "pkg_cat_python_3": MessageLookupByLibrary.simpleMessage("Pitão 3"),
    "pkg_cat_runtime_c": MessageLookupByLibrary.simpleMessage(
      "Tempo de execução C++",
    ),
    "pkg_cat_runtime_escritorio": MessageLookupByLibrary.simpleMessage(
      "Escritor em tempo de execução",
    ),
    "pkg_cat_runtime_juegos": MessageLookupByLibrary.simpleMessage(
      "Jogos de tempo de execução",
    ),
    "pkg_cat_runtime_php": MessageLookupByLibrary.simpleMessage(
      "PHP em tempo de execução",
    ),
    "pkg_cat_rustup": MessageLookupByLibrary.simpleMessage("Ferrugem"),
    "pkg_cat_sdk__net": MessageLookupByLibrary.simpleMessage("SDK.NET"),
    "pkg_cat_servidor_db": MessageLookupByLibrary.simpleMessage(
      "Servidor banco de dados",
    ),
    "pkg_cat_ssh_clasico": MessageLookupByLibrary.simpleMessage("SSH clássico"),
    "pkg_cat_ssh_moderno": MessageLookupByLibrary.simpleMessage("SSH moderno"),
    "pkg_cat_subsistema_linux": MessageLookupByLibrary.simpleMessage(
      "Subsistema Linux",
    ),
    "pkg_cat_temurin_21": MessageLookupByLibrary.simpleMessage("Temurin 21"),
    "pkg_cat_terminal_moderno": MessageLookupByLibrary.simpleMessage(
      "Terminal moderno",
    ),
    "prepareBridge": MessageLookupByLibrary.simpleMessage(
      "Preparar e iniciar ponte",
    ),
    "progress_button_reboot": MessageLookupByLibrary.simpleMessage(
      "REINICIAR SISTEMA",
    ),
    "progress_footer_warning": MessageLookupByLibrary.simpleMessage(
      "NÃO DESCONECTE A ENERGIA NI RETIRE O MEIO DE INSTALAÇÃO",
    ),
    "progress_header_badge": MessageLookupByLibrary.simpleMessage(
      "DESPLIEGUE NO CURSO",
    ),
    "provideWindowsImage": MessageLookupByLibrary.simpleMessage(
      "Proporcione a imagem de instalação do Windows (install.wim ou install.swm)\nde uma unidade USB ou de qualquer meio montado.",
    ),
    "receiveInstallation": MessageLookupByLibrary.simpleMessage(
      "O recebeu a instalação preparada desde Requiem para Windows",
    ),
    "renewalActive": MessageLookupByLibrary.simpleMessage("Ativo"),
    "renewalDisabled": MessageLookupByLibrary.simpleMessage("Desativado"),
    "searchingImage": MessageLookupByLibrary.simpleMessage("Buscando imagem…"),
    "secureBootCompatible": MessageLookupByLibrary.simpleMessage(
      "Compatível com inicialização segura",
    ),
    "selectDestinationDisk": MessageLookupByLibrary.simpleMessage(
      "Selecionar disco de destino",
    ),
    "selectFileHint": MessageLookupByLibrary.simpleMessage(
      "Selecione um arquivo .wim ou .swm",
    ),
    "selectWim": MessageLookupByLibrary.simpleMessage("Selecionar WIM"),
    "selectWimFirst": MessageLookupByLibrary.simpleMessage(
      "Selecione um WIM e uma interface IPv4 privada.",
    ),
    "selectWindowsImage": MessageLookupByLibrary.simpleMessage(
      "Selecionar imagem do Windows",
    ),
    "selectWindowsImageFull": MessageLookupByLibrary.simpleMessage(
      "Selecionar imagem de instalação do Windows",
    ),
    "selectedFile": m25,
    "stableVersion": MessageLookupByLibrary.simpleMessage(
      "Versão estável v1.0.0",
    ),
    "start": MessageLookupByLibrary.simpleMessage("Empézar"),
    "startInstallation": MessageLookupByLibrary.simpleMessage(
      "Iniciar instalação",
    ),
    "stopBridge": MessageLookupByLibrary.simpleMessage("Detener ponte"),
    "systemConsole": MessageLookupByLibrary.simpleMessage("Consola do sistema"),
    "systemDisk": MessageLookupByLibrary.simpleMessage("Sistema"),
    "systemLogs": MessageLookupByLibrary.simpleMessage("Registros do sistema"),
    "tools_badge_iso_compatibility": MessageLookupByLibrary.simpleMessage(
      "BIOS + UEFI preservados",
    ),
    "tools_badge_kms_pending": MessageLookupByLibrary.simpleMessage(
      "Pendente KMS",
    ),
    "tools_badge_package_count": m26,
    "tools_button_activate_kms": MessageLookupByLibrary.simpleMessage(
      "ATIVAR KMS",
    ),
    "tools_button_install_all_packages": MessageLookupByLibrary.simpleMessage(
      "INSTALAR TODOS",
    ),
    "tools_button_install_office": MessageLookupByLibrary.simpleMessage(
      "ESCRITÓRIO INSTALAR",
    ),
    "tools_header_title": MessageLookupByLibrary.simpleMessage(
      "FERRAMENTAS DE MIGRAÇÃO DE REQUIEM",
    ),
    "tools_kms_checking_connectivity": m27,
    "tools_kms_empty_host_error": MessageLookupByLibrary.simpleMessage(
      "ERRO: o host KMS está vacio.",
    ),
    "tools_kms_error_log": m28,
    "tools_kms_no_products_selected": MessageLookupByLibrary.simpleMessage(
      "Nenhum produto KMS selecionado.",
    ),
    "tools_log_format": m29,
    "tools_logs_copied_snackbar": MessageLookupByLibrary.simpleMessage(
      "Logs copiados em portapapeles.",
    ),
    "tools_packages_detected_count": m30,
    "tools_packages_none_detected": MessageLookupByLibrary.simpleMessage(
      "Não foram detectados pacotes conhecidos com winget.",
    ),
    "tools_packages_none_selected": MessageLookupByLibrary.simpleMessage(
      "Nenhum programa selecionado.",
    ),
    "tools_section_activation_desc": MessageLookupByLibrary.simpleMessage(
      "Configure o servidor KMS local ou remoto para ativar o Windows e o Office.",
    ),
    "tools_section_activation_title": MessageLookupByLibrary.simpleMessage(
      "Ativação de licenças",
    ),
    "tools_section_iso_desc": MessageLookupByLibrary.simpleMessage(
      "Crie meios autônomos com um WIM integrado ou distribua uma instalação diretamente por IPv4.",
    ),
    "tools_section_iso_title": MessageLookupByLibrary.simpleMessage(
      "ISO e despliegue por red",
    ),
    "tools_section_office_desc": MessageLookupByLibrary.simpleMessage(
      "Desplie o Microsoft Office LTSC ou 365 de forma automatizada usando ODT.",
    ),
    "tools_section_office_title": MessageLookupByLibrary.simpleMessage(
      "Instalador de Office",
    ),
    "tools_section_packages_desc": MessageLookupByLibrary.simpleMessage(
      "Instale e atualize ferramentas de desenvolvimento essenciais para Windows através do winget.",
    ),
    "tools_section_packages_title": MessageLookupByLibrary.simpleMessage(
      "Pilha de aplicativos",
    ),
    "tools_sidebar_app_name": MessageLookupByLibrary.simpleMessage("RÉQUIÉM"),
    "tools_sidebar_mode_badge": MessageLookupByLibrary.simpleMessage(
      "Modo de ferramentas locais",
    ),
    "tools_sidebar_tab_iso": MessageLookupByLibrary.simpleMessage(
      "ISO e Ponte",
    ),
    "tools_sidebar_tab_kms": MessageLookupByLibrary.simpleMessage(
      "Ativação KMS",
    ),
    "tools_sidebar_tab_office": MessageLookupByLibrary.simpleMessage(
      "Escritório de instalação",
    ),
    "tools_sidebar_tab_packages": MessageLookupByLibrary.simpleMessage(
      "Programas de pilha",
    ),
    "unknown": MessageLookupByLibrary.simpleMessage("Desconocido"),
    "updateDescription": MessageLookupByLibrary.simpleMessage(
      "Para continuar usando o Requiem Tools é necessário atualizar a versão mais recente.",
    ),
    "updateRequired": MessageLookupByLibrary.simpleMessage(
      "Atualização necessária",
    ),
    "useExistingPartitions": MessageLookupByLibrary.simpleMessage(
      "Usar partições existentes",
    ),
    "useExistingPartitionsDescription": MessageLookupByLibrary.simpleMessage(
      "Sem formatar — despliega em W: tal cual\nVocê gerencia as partições manualmente",
    ),
    "waitingAction": MessageLookupByLibrary.simpleMessage(
      "Esperando uma ação...",
    ),
    "waitingForWim": MessageLookupByLibrary.simpleMessage(
      "Esperando a detecção de install.wim...",
    ),
    "wifiConnectError": m31,
    "wifiConnected": m32,
    "wifiPassword": MessageLookupByLibrary.simpleMessage("Contrasenha Wi-Fi"),
    "wifi_connect_error": m33,
    "wifi_connected_log": m34,
    "wifi_connected_status": m35,
    "wifi_dialog_title": MessageLookupByLibrary.simpleMessage(
      "Conectar o instalador ao Wi-Fi",
    ),
    "wifi_item_signal_security": m36,
    "wifi_none_found": MessageLookupByLibrary.simpleMessage(
      "Não foram encontradas redes Wi-Fi disponíveis.",
    ),
    "wifi_password_hint": MessageLookupByLibrary.simpleMessage(
      "Contrasenha Wi-Fi",
    ),
    "wifi_scanning": MessageLookupByLibrary.simpleMessage(
      "Verificando redes Wi-Fi disponíveis...",
    ),
    "wimIntegrated": MessageLookupByLibrary.simpleMessage(
      "WIM integrado na ISO",
    ),
    "wim_bridge_connection_error": m37,
    "wim_bridge_ip_dialog_title": MessageLookupByLibrary.simpleMessage(
      "IP da ponte Réquiem",
    ),
    "wim_bridge_ip_placeholder": MessageLookupByLibrary.simpleMessage(
      "192.168.1.20",
    ),
    "wim_bridge_not_found": MessageLookupByLibrary.simpleMessage(
      "Não se encontrou nenhuma ponte. Verifique o manual IP.",
    ),
    "wim_bridge_search_error": m38,
    "wim_bridge_searching": MessageLookupByLibrary.simpleMessage(
      "Procurando pontes Requiem na rede IPv4 local...",
    ),
    "wim_bridge_section_header": MessageLookupByLibrary.simpleMessage(
      "O recebeu a instalação preparada desde Requiem para Windows",
    ),
    "wim_button_change_file": MessageLookupByLibrary.simpleMessage(
      "ARQUIVO CÂMBIO",
    ),
    "wim_button_connect_wifi": MessageLookupByLibrary.simpleMessage(
      "CONECTAR WI-FI",
    ),
    "wim_button_manual_ip": MessageLookupByLibrary.simpleMessage(
      "MANUAL DE USAR IP",
    ),
    "wim_button_rescan": MessageLookupByLibrary.simpleMessage(
      "Escanear unidades de novo",
    ),
    "wim_button_search_bridge": MessageLookupByLibrary.simpleMessage(
      "BUSCAR PUENTE",
    ),
    "wim_manual_search_hint": MessageLookupByLibrary.simpleMessage(
      "Use \"Buscar\" para localizar seu arquivo WIM manualmente.",
    ),
    "wim_picker_description": MessageLookupByLibrary.simpleMessage(
      "Proporcione a imagem de instalação do Windows (install.wim ou install.swm)\\n",
    ),
    "wim_picker_title": MessageLookupByLibrary.simpleMessage(
      "Selecionar imagem do Windows",
    ),
    "wim_status_found": MessageLookupByLibrary.simpleMessage(
      "Imagem encontrada",
    ),
    "wim_status_not_found": MessageLookupByLibrary.simpleMessage(
      "Nenhuma imagem foi detectada",
    ),
    "wim_status_searching": MessageLookupByLibrary.simpleMessage(
      "Buscando imagem…",
    ),
    "wim_status_searching_alt": MessageLookupByLibrary.simpleMessage(
      "Buscando imagem...",
    ),
    "wingetUnavailable": MessageLookupByLibrary.simpleMessage(
      "winget não está instalado ou não está em PATH.",
    ),
  };
}
