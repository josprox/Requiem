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

  static String m7(name, edition) => "Edição bloqueada: ${name} (${edition})";

  static String m8(error) => "Ocorreu um erro: ${error}";

  static String m9(path) => "Rota inválida: ${path}";

  static String m10(error) => "Erro KMS: ${error}";

  static String m11(product, channel, edition, status) =>
      "${product} / ${channel} / ${edition} bits. A reforma caiu ${status}.";

  static String m12(count) => "Pacotes detectados: ${count}.";

  static String m13(file) => "Selecionado: ${file}";

  static String m14(error) => "Não foi possível conectar ao Wi-Fi: ${error}";

  static String m15(network) => "Conectado a ${network}.";

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
    "editionDetected": m7,
    "emptyFolder": MessageLookupByLibrary.simpleMessage(
      "Esta pasta está vazia",
    ),
    "errorGeneric": m8,
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
    "invalidPath": m9,
    "isoDescription": MessageLookupByLibrary.simpleMessage(
      "Obtenha a base ISO para selecionar um WIM ao arrancar ou crie uma ISO autônoma que inclua sua imagem do Windows.",
    ),
    "kmsError": m10,
    "kmsHostEmpty": MessageLookupByLibrary.simpleMessage(
      "Erro: o host KMS está vazio.",
    ),
    "kmsServer": MessageLookupByLibrary.simpleMessage("Servidor KMS"),
    "kmsTask160Days": MessageLookupByLibrary.simpleMessage("Tarea 160 dias"),
    "kmsVolumeActivation": MessageLookupByLibrary.simpleMessage(
      "Ativação de volume (KMS)",
    ),
    "landingDescription": MessageLookupByLibrary.simpleMessage(
      "Instalador de janelas de alta precisão para ambientes de alto desempenho. Experimente um aplicativo rápido com solicitação direta do DISM e otimização automática do sistema.",
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
    "officeRenewalStatus": m11,
    "officeVersion": MessageLookupByLibrary.simpleMessage("Versão do Office"),
    "onlyWindows": MessageLookupByLibrary.simpleMessage(
      "Esta função só está disponível no Windows.",
    ),
    "packageStack": MessageLookupByLibrary.simpleMessage(
      "Pilha de programas (Winget)",
    ),
    "packagesDetected": m12,
    "partitionMode": MessageLookupByLibrary.simpleMessage("Modo de partição"),
    "prepareBridge": MessageLookupByLibrary.simpleMessage(
      "Preparar e iniciar ponte",
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
    "selectedFile": m13,
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
    "wifiConnectError": m14,
    "wifiConnected": m15,
    "wifiPassword": MessageLookupByLibrary.simpleMessage("Contrasenha Wi-Fi"),
    "wimIntegrated": MessageLookupByLibrary.simpleMessage(
      "WIM integrado na ISO",
    ),
    "wingetUnavailable": MessageLookupByLibrary.simpleMessage(
      "winget não está instalado ou não está em PATH.",
    ),
  };
}
