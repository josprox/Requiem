// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: join_return_with_assignment, prefer_final_in_for_each
// ignore_for_file: avoid_redundant_argument_values, avoid_escaping_inner_quotes

class S {
  S();

  static S? _current;

  static S get current {
    assert(
      _current != null,
      'No instance of S was loaded. Try to initialize the S delegate before accessing S.current.',
    );
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<S> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false)
        ? locale.languageCode
        : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      final instance = S();
      S._current = instance;

      return instance;
    });
  }

  static S of(BuildContext context) {
    final instance = S.maybeOf(context);
    assert(
      instance != null,
      'No instance of S present in the widget tree. Did you add S.delegate in localizationsDelegates?',
    );
    return instance!;
  }

  static S? maybeOf(BuildContext context) {
    return Localizations.of<S>(context, S);
  }

  /// `Instalador de Réquiem`
  String get appTitleInstaller {
    return Intl.message(
      'Instalador de Réquiem',
      name: 'appTitleInstaller',
      desc: 'Título de la ventana en el instalador Live Linux.',
      args: [],
    );
  }

  /// `Herramientas de Réquiem`
  String get appTitleTools {
    return Intl.message(
      'Herramientas de Réquiem',
      name: 'appTitleTools',
      desc: 'Título de la ventana en modo herramientas de escritorio.',
      args: [],
    );
  }

  /// `Cancelar`
  String get actionCancel {
    return Intl.message(
      'Cancelar',
      name: 'actionCancel',
      desc: 'actionCancel',
      args: [],
    );
  }

  /// `Continuar`
  String get actionContinue {
    return Intl.message(
      'Continuar',
      name: 'actionContinue',
      desc: 'actionContinue',
      args: [],
    );
  }

  /// `Confirmar`
  String get actionConfirm {
    return Intl.message(
      'Confirmar',
      name: 'actionConfirm',
      desc: 'actionConfirm',
      args: [],
    );
  }

  /// `Instalar`
  String get actionInstall {
    return Intl.message(
      'Instalar',
      name: 'actionInstall',
      desc: 'actionInstall',
      args: [],
    );
  }

  /// `Actualizar`
  String get actionRefresh {
    return Intl.message(
      'Actualizar',
      name: 'actionRefresh',
      desc: 'actionRefresh',
      args: [],
    );
  }

  /// `Conectar`
  String get actionConnect {
    return Intl.message(
      'Conectar',
      name: 'actionConnect',
      desc: 'actionConnect',
      args: [],
    );
  }

  /// `Reiniciar el sistema`
  String get actionRestartSystem {
    return Intl.message(
      'Reiniciar el sistema',
      name: 'actionRestartSystem',
      desc: 'actionRestartSystem',
      args: [],
    );
  }

  /// `administracion de discotecas`
  String get diskManagement {
    return Intl.message(
      'administracion de discotecas',
      name: 'diskManagement',
      desc: 'diskManagement',
      args: [],
    );
  }

  /// `Progreso de instalación`
  String get installationProgress {
    return Intl.message(
      'Progreso de instalación',
      name: 'installationProgress',
      desc: 'installationProgress',
      args: [],
    );
  }

  /// `Seleccionar imagen de Windows`
  String get selectWindowsImage {
    return Intl.message(
      'Seleccionar imagen de Windows',
      name: 'selectWindowsImage',
      desc: 'selectWindowsImage',
      args: [],
    );
  }

  /// `Puente IPv4 de instalación`
  String get networkBridge {
    return Intl.message(
      'Puente IPv4 de instalación',
      name: 'networkBridge',
      desc: 'networkBridge',
      args: [],
    );
  }

  /// `Conectar Wi-Fi`
  String get connectWifi {
    return Intl.message(
      'Conectar Wi-Fi',
      name: 'connectWifi',
      desc: 'connectWifi',
      args: [],
    );
  }

  /// `activación de licencias`
  String get licenseActivation {
    return Intl.message(
      'activación de licencias',
      name: 'licenseActivation',
      desc: 'licenseActivation',
      args: [],
    );
  }

  /// `Instalador de oficina`
  String get officeInstaller {
    return Intl.message(
      'Instalador de oficina',
      name: 'officeInstaller',
      desc: 'officeInstaller',
      args: [],
    );
  }

  /// `Pila de aplicaciones`
  String get applicationStack {
    return Intl.message(
      'Pila de aplicaciones',
      name: 'applicationStack',
      desc: 'applicationStack',
      args: [],
    );
  }

  /// `Medio de instalación`
  String get mediaInstallation {
    return Intl.message(
      'Medio de instalación',
      name: 'mediaInstallation',
      desc: 'mediaInstallation',
      args: [],
    );
  }

  /// `Ocurrió un error: {error}`
  String errorGeneric(String error) {
    return Intl.message(
      'Ocurrió un error: $error',
      name: 'errorGeneric',
      desc: 'Mensaje genérico de error.',
      args: [error],
    );
  }

  /// `Empezar`
  String get start {
    return Intl.message('Empezar', name: 'start', desc: 'start', args: []);
  }

  /// `Registros del sistema`
  String get systemLogs {
    return Intl.message(
      'Registros del sistema',
      name: 'systemLogs',
      desc: 'systemLogs',
      args: [],
    );
  }

  /// `Versión estable v1.0.0`
  String get stableVersion {
    return Intl.message(
      'Versión estable v1.0.0',
      name: 'stableVersion',
      desc: 'stableVersion',
      args: [],
    );
  }

  /// `Compatible con arranque seguro`
  String get secureBootCompatible {
    return Intl.message(
      'Compatible con arranque seguro',
      name: 'secureBootCompatible',
      desc: 'secureBootCompatible',
      args: [],
    );
  }

  /// `Diseñado por Joss`
  String get designedBy {
    return Intl.message(
      'Diseñado por Joss',
      name: 'designedBy',
      desc: 'designedBy',
      args: [],
    );
  }

  /// `Despliegue de SO de próxima generación`
  String get nextGenerationDeployment {
    return Intl.message(
      'Despliegue de SO de próxima generación',
      name: 'nextGenerationDeployment',
      desc: 'nextGenerationDeployment',
      args: [],
    );
  }

  /// `Instalador de Windows de alta precisión para entornos de alto rendimiento. Experimente un despliegue rápido con orquestación directa de DISM y optimización automatizada del sistema.`
  String get landingDescription {
    return Intl.message(
      'Instalador de Windows de alta precisión para entornos de alto rendimiento. Experimente un despliegue rápido con orquestación directa de DISM y optimización automatizada del sistema.',
      name: 'landingDescription',
      desc: 'landingDescription',
      args: [],
    );
  }

  /// `Seleccionar`
  String get actionSelect {
    return Intl.message(
      'Seleccionar',
      name: 'actionSelect',
      desc: 'actionSelect',
      args: [],
    );
  }

  /// `Buscar`
  String get actionSearch {
    return Intl.message(
      'Buscar',
      name: 'actionSearch',
      desc: 'actionSearch',
      args: [],
    );
  }

  /// `Cambiar`
  String get actionChange {
    return Intl.message(
      'Cambiar',
      name: 'actionChange',
      desc: 'actionChange',
      args: [],
    );
  }

  /// `Escanear unidades de nueva`
  String get actionScanAgain {
    return Intl.message(
      'Escanear unidades de nueva',
      name: 'actionScanAgain',
      desc: 'actionScanAgain',
      args: [],
    );
  }

  /// `Seleccionar disco de destino`
  String get selectDestinationDisk {
    return Intl.message(
      'Seleccionar disco de destino',
      name: 'selectDestinationDisk',
      desc: 'selectDestinationDisk',
      args: [],
    );
  }

  /// `Elija la unidad física donde se instalará Windows.`
  String get destinationDiskDescription {
    return Intl.message(
      'Elija la unidad física donde se instalará Windows.',
      name: 'destinationDiskDescription',
      desc: 'destinationDiskDescription',
      args: [],
    );
  }

  /// `Iniciar instalación`
  String get startInstallation {
    return Intl.message(
      'Iniciar instalación',
      name: 'startInstallation',
      desc: 'startInstallation',
      args: [],
    );
  }

  /// `Esperando la detección de install.wim...`
  String get waitingForWim {
    return Intl.message(
      'Esperando la detección de install.wim...',
      name: 'waitingForWim',
      desc: 'waitingForWim',
      args: [],
    );
  }

  /// `No se detectaron discos físicos`
  String get noPhysicalDisks {
    return Intl.message(
      'No se detectaron discos físicos',
      name: 'noPhysicalDisks',
      desc: 'noPhysicalDisks',
      args: [],
    );
  }

  /// `sistema`
  String get systemDisk {
    return Intl.message(
      'sistema',
      name: 'systemDisk',
      desc: 'systemDisk',
      args: [],
    );
  }

  /// `Modo de partición`
  String get partitionMode {
    return Intl.message(
      'Modo de partición',
      name: 'partitionMode',
      desc: 'partitionMode',
      args: [],
    );
  }

  /// `Formatear GPT (recomendado)`
  String get formatGpt {
    return Intl.message(
      'Formatear GPT (recomendado)',
      name: 'formatGpt',
      desc: 'formatGpt',
      args: [],
    );
  }

  /// `Limpia la discoteca y crea diseño UEFI\nEFI (S:) + Windows (W:)`
  String get formatGptDescription {
    return Intl.message(
      'Limpia la discoteca y crea diseño UEFI\nEFI (S:) + Windows (W:)',
      name: 'formatGptDescription',
      desc: 'formatGptDescription',
      args: [],
    );
  }

  /// `No se pudo buscar el puente: {error}`
  String bridgeSearchError(String error) {
    return Intl.message(
      'No se pudo buscar el puente: $error',
      name: 'bridgeSearchError',
      desc: 'bridgeSearchError',
      args: [error],
    );
  }

  /// `No se pudo conectar: {error}`
  String bridgeConnectError(String error) {
    return Intl.message(
      'No se pudo conectar: $error',
      name: 'bridgeConnectError',
      desc: 'bridgeConnectError',
      args: [error],
    );
  }

  /// `Contraseña Wi-Fi`
  String get wifiPassword {
    return Intl.message(
      'Contraseña Wi-Fi',
      name: 'wifiPassword',
      desc: 'wifiPassword',
      args: [],
    );
  }

  /// `Conectado a {network}.`
  String wifiConnected(String network) {
    return Intl.message(
      'Conectado a $network.',
      name: 'wifiConnected',
      desc: 'wifiConnected',
      args: [network],
    );
  }

  /// `No se pudo conectar a Wi-Fi: {error}`
  String wifiConnectError(String error) {
    return Intl.message(
      'No se pudo conectar a Wi-Fi: $error',
      name: 'wifiConnectError',
      desc: 'wifiConnectError',
      args: [error],
    );
  }

  /// `No se encontraron redes Wi-Fi disponibles.`
  String get noWifiNetworks {
    return Intl.message(
      'No se encontraron redes Wi-Fi disponibles.',
      name: 'noWifiNetworks',
      desc: 'noWifiNetworks',
      args: [],
    );
  }

  /// `Conectar el instalador a Wi-Fi`
  String get connectInstallerWifi {
    return Intl.message(
      'Conectar el instalador a Wi-Fi',
      name: 'connectInstallerWifi',
      desc: 'connectInstallerWifi',
      args: [],
    );
  }

  /// `O reciba la instalación preparada desde Requiem para Windows`
  String get receiveInstallation {
    return Intl.message(
      'O reciba la instalación preparada desde Requiem para Windows',
      name: 'receiveInstallation',
      desc: 'receiveInstallation',
      args: [],
    );
  }

  /// `Activación de volumen (KMS)`
  String get kmsVolumeActivation {
    return Intl.message(
      'Activación de volumen (KMS)',
      name: 'kmsVolumeActivation',
      desc: 'kmsVolumeActivation',
      args: [],
    );
  }

  /// `Servidor KMS`
  String get kmsServer {
    return Intl.message(
      'Servidor KMS',
      name: 'kmsServer',
      desc: 'kmsServer',
      args: [],
    );
  }

  /// `Activar`
  String get activate {
    return Intl.message(
      'Activar',
      name: 'activate',
      desc: 'activate',
      args: [],
    );
  }

  /// `Activar KMS`
  String get activateKms {
    return Intl.message(
      'Activar KMS',
      name: 'activateKms',
      desc: 'activateKms',
      args: [],
    );
  }

  /// `Tarea 160 días`
  String get kmsTask160Days {
    return Intl.message(
      'Tarea 160 días',
      name: 'kmsTask160Days',
      desc: 'kmsTask160Days',
      args: [],
    );
  }

  /// `Renovación automática`
  String get automaticRenewal {
    return Intl.message(
      'Renovación automática',
      name: 'automaticRenewal',
      desc: 'automaticRenewal',
      args: [],
    );
  }

  /// `ventanas automáticas`
  String get automaticWindows {
    return Intl.message(
      'ventanas automáticas',
      name: 'automaticWindows',
      desc: 'automaticWindows',
      args: [],
    );
  }

  /// `Detecta edición y GVLK compatible`
  String get automaticWindowsDescription {
    return Intl.message(
      'Detecta edición y GVLK compatible',
      name: 'automaticWindowsDescription',
      desc: 'automaticWindowsDescription',
      args: [],
    );
  }

  /// `oficina automática`
  String get automaticOffice {
    return Intl.message(
      'oficina automática',
      name: 'automaticOffice',
      desc: 'automaticOffice',
      args: [],
    );
  }

  /// `Usa el GVLK de volumen ya instalado`
  String get automaticOfficeDescription {
    return Intl.message(
      'Usa el GVLK de volumen ya instalado',
      name: 'automaticOfficeDescription',
      desc: 'automaticOfficeDescription',
      args: [],
    );
  }

  /// `Error: el host KMS está vacío.`
  String get kmsHostEmpty {
    return Intl.message(
      'Error: el host KMS está vacío.',
      name: 'kmsHostEmpty',
      desc: 'kmsHostEmpty',
      args: [],
    );
  }

  /// `No hay productos KMS seleccionados.`
  String get noKmsProducts {
    return Intl.message(
      'No hay productos KMS seleccionados.',
      name: 'noKmsProducts',
      desc: 'noKmsProducts',
      args: [],
    );
  }

  /// `Comprobando conectividad con {host}:1688...`
  String checkingKms(String host) {
    return Intl.message(
      'Comprobando conectividad con $host:1688...',
      name: 'checkingKms',
      desc: 'checkingKms',
      args: [host],
    );
  }

  /// `Error KMS: {error}`
  String kmsError(String error) {
    return Intl.message(
      'Error KMS: $error',
      name: 'kmsError',
      desc: 'kmsError',
      args: [error],
    );
  }

  /// `Versión de oficina`
  String get officeVersion {
    return Intl.message(
      'Versión de oficina',
      name: 'officeVersion',
      desc: 'officeVersion',
      args: [],
    );
  }

  /// `Oficina de instalación`
  String get installOffice {
    return Intl.message(
      'Oficina de instalación',
      name: 'installOffice',
      desc: 'installOffice',
      args: [],
    );
  }

  /// `Descargar + activar`
  String get downloadAndActivate {
    return Intl.message(
      'Descargar + activar',
      name: 'downloadAndActivate',
      desc: 'downloadAndActivate',
      args: [],
    );
  }

  /// `Despliega Microsoft Office LTSC o 365 de manera automatizada usando ODT.`
  String get officeInstallDescription {
    return Intl.message(
      'Despliega Microsoft Office LTSC o 365 de manera automatizada usando ODT.',
      name: 'officeInstallDescription',
      desc: 'officeInstallDescription',
      args: [],
    );
  }

  /// `{product} / {channel} / {edition} bits. La renovación queda {status}.`
  String officeRenewalStatus(
    String product,
    String channel,
    String edition,
    String status,
  ) {
    return Intl.message(
      '$product / $channel / $edition bits. La renovación queda $status.',
      name: 'officeRenewalStatus',
      desc: 'officeRenewalStatus',
      args: [product, channel, edition, status],
    );
  }

  /// `Formatear MBR (BIOS heredado)`
  String get formatMbr {
    return Intl.message(
      'Formatear MBR (BIOS heredado)',
      name: 'formatMbr',
      desc: 'formatMbr',
      args: [],
    );
  }

  /// `Limpia el disco y crea diseño heredado\nSolo ventanas (C:)`
  String get formatMbrDescription {
    return Intl.message(
      'Limpia el disco y crea diseño heredado\nSolo ventanas (C:)',
      name: 'formatMbrDescription',
      desc: 'formatMbrDescription',
      args: [],
    );
  }

  /// `Usar particiones existentes`
  String get useExistingPartitions {
    return Intl.message(
      'Usar particiones existentes',
      name: 'useExistingPartitions',
      desc: 'useExistingPartitions',
      args: [],
    );
  }

  /// `Sin formatear — despliega en W: tal cual\nUsted gestiona las participaciones manualmente`
  String get useExistingPartitionsDescription {
    return Intl.message(
      'Sin formatear — despliega en W: tal cual\nUsted gestiona las participaciones manualmente',
      name: 'useExistingPartitionsDescription',
      desc: 'useExistingPartitionsDescription',
      args: [],
    );
  }

  /// `Acuerdo actual: {firmware}`
  String bootCurrent(String firmware) {
    return Intl.message(
      'Acuerdo actual: $firmware',
      name: 'bootCurrent',
      desc: 'bootCurrent',
      args: [firmware],
    );
  }

  /// `Modo compatible: {mode}`
  String compatibleMode(String mode) {
    return Intl.message(
      'Modo compatible: $mode',
      name: 'compatibleMode',
      desc: 'compatibleMode',
      args: [mode],
    );
  }

  /// `Confirmar destrucción de datos`
  String get confirmDataDestruction {
    return Intl.message(
      'Confirmar destrucción de datos',
      name: 'confirmDataDestruction',
      desc: 'confirmDataDestruction',
      args: [],
    );
  }

  /// `Confirmar instalación`
  String get confirmInstallation {
    return Intl.message(
      'Confirmar instalación',
      name: 'confirmInstallation',
      desc: 'confirmInstallation',
      args: [],
    );
  }

  /// `El disco seleccionado se formateará por completo. Se perderán todos los datos.`
  String get formatWarning {
    return Intl.message(
      'El disco seleccionado se formateará por completo. Se perderán todos los datos.',
      name: 'formatWarning',
      desc: 'formatWarning',
      args: [],
    );
  }

  /// `Windows se desplegará en W:\ sin formatear.`
  String get noFormatWarning {
    return Intl.message(
      'Windows se desplegará en W:\\ sin formatear.',
      name: 'noFormatWarning',
      desc: 'noFormatWarning',
      args: [],
    );
  }

  /// `Despliegue en curso`
  String get deploymentInProgress {
    return Intl.message(
      'Despliegue en curso',
      name: 'deploymentInProgress',
      desc: 'deploymentInProgress',
      args: [],
    );
  }

  /// `No desconecte la energía ni retire el medio de instalación`
  String get doNotDisconnect {
    return Intl.message(
      'No desconecte la energía ni retire el medio de instalación',
      name: 'doNotDisconnect',
      desc: 'doNotDisconnect',
      args: [],
    );
  }

  /// `Seleccionar imagen de instalación de Windows`
  String get selectWindowsImageFull {
    return Intl.message(
      'Seleccionar imagen de instalación de Windows',
      name: 'selectWindowsImageFull',
      desc: 'selectWindowsImageFull',
      args: [],
    );
  }

  /// `Proporcione la imagen de instalación de Windows (install.wim o install.swm)\ndesde una unidad USB o cualquier medio montado.`
  String get provideWindowsImage {
    return Intl.message(
      'Proporcione la imagen de instalación de Windows (install.wim o install.swm)\ndesde una unidad USB o cualquier medio montado.',
      name: 'provideWindowsImage',
      desc: 'provideWindowsImage',
      args: [],
    );
  }

  /// `Buscando imagen…`
  String get searchingImage {
    return Intl.message(
      'Buscando imagen…',
      name: 'searchingImage',
      desc: 'searchingImage',
      args: [],
    );
  }

  /// `Imagen encontrada`
  String get imageFound {
    return Intl.message(
      'Imagen encontrada',
      name: 'imageFound',
      desc: 'imageFound',
      args: [],
    );
  }

  /// `No se detectó ninguna imagen`
  String get noImageDetected {
    return Intl.message(
      'No se detectó ninguna imagen',
      name: 'noImageDetected',
      desc: 'noImageDetected',
      args: [],
    );
  }

  /// `Utilice "Buscar" para localizar su archivo WIM manualmente.`
  String get manualWimHint {
    return Intl.message(
      'Utilice "Buscar" para localizar su archivo WIM manualmente.',
      name: 'manualWimHint',
      desc: 'manualWimHint',
      args: [],
    );
  }

  /// `Seleccione un archivo .wim o .swm`
  String get selectFileHint {
    return Intl.message(
      'Seleccione un archivo .wim o .swm',
      name: 'selectFileHint',
      desc: 'selectFileHint',
      args: [],
    );
  }

  /// `Seleccionado: {file}`
  String selectedFile(String file) {
    return Intl.message(
      'Seleccionado: $file',
      name: 'selectedFile',
      desc: 'selectedFile',
      args: [file],
    );
  }

  /// `Esta carpeta está vacía`
  String get emptyFolder {
    return Intl.message(
      'Esta carpeta está vacía',
      name: 'emptyFolder',
      desc: 'emptyFolder',
      args: [],
    );
  }

  /// `Ruta inválida: {path}`
  String invalidPath(String path) {
    return Intl.message(
      'Ruta inválida: $path',
      name: 'invalidPath',
      desc: 'invalidPath',
      args: [path],
    );
  }

  /// `Filtrar…`
  String get filter {
    return Intl.message('Filtrar…', name: 'filter', desc: 'filter', args: []);
  }

  /// `Subir un nivel`
  String get goUpOneLevel {
    return Intl.message(
      'Subir un nivel',
      name: 'goUpOneLevel',
      desc: 'goUpOneLevel',
      args: [],
    );
  }

  /// `Unidades`
  String get drives {
    return Intl.message('Unidades', name: 'drives', desc: 'drives', args: []);
  }

  /// `IP del puente Réquiem`
  String get bridgeIp {
    return Intl.message(
      'IP del puente Réquiem',
      name: 'bridgeIp',
      desc: 'bridgeIp',
      args: [],
    );
  }

  /// `No se encontró ningún puente. Pruebe con el manual de IP.`
  String get noBridgeFound {
    return Intl.message(
      'No se encontró ningún puente. Pruebe con el manual de IP.',
      name: 'noBridgeFound',
      desc: 'noBridgeFound',
      args: [],
    );
  }

  /// `Registros copiados al portapapeles.`
  String get logsCopied {
    return Intl.message(
      'Registros copiados al portapapeles.',
      name: 'logsCopied',
      desc: 'logsCopied',
      args: [],
    );
  }

  /// `Actualización requerida`
  String get updateRequired {
    return Intl.message(
      'Actualización requerida',
      name: 'updateRequired',
      desc: 'updateRequired',
      args: [],
    );
  }

  /// `Para continuar usando Requiem Tools es necesario actualizar a la versión más reciente.`
  String get updateDescription {
    return Intl.message(
      'Para continuar usando Requiem Tools es necesario actualizar a la versión más reciente.',
      name: 'updateDescription',
      desc: 'updateDescription',
      args: [],
    );
  }

  /// `Versión disponible: {version}`
  String availableVersion(String version) {
    return Intl.message(
      'Versión disponible: $version',
      name: 'availableVersion',
      desc: 'availableVersion',
      args: [version],
    );
  }

  /// `Esta actualización es obligatoria y no puede omitirse.`
  String get mandatoryUpdate {
    return Intl.message(
      'Esta actualización es obligatoria y no puede omitirse.',
      name: 'mandatoryUpdate',
      desc: 'mandatoryUpdate',
      args: [],
    );
  }

  /// `Descargar instalador (.exe)`
  String get downloadInstaller {
    return Intl.message(
      'Descargar instalador (.exe)',
      name: 'downloadInstaller',
      desc: 'downloadInstaller',
      args: [],
    );
  }

  /// `Descargar portátil (.zip)`
  String get downloadPortable {
    return Intl.message(
      'Descargar portátil (.zip)',
      name: 'downloadPortable',
      desc: 'downloadPortable',
      args: [],
    );
  }

  /// `Esta función solo está disponible en Windows.`
  String get onlyWindows {
    return Intl.message(
      'Esta función solo está disponible en Windows.',
      name: 'onlyWindows',
      desc: 'onlyWindows',
      args: [],
    );
  }

  /// `Edición detectada: {name} ({edition})`
  String editionDetected(String name, String edition) {
    return Intl.message(
      'Edición detectada: $name ($edition)',
      name: 'editionDetected',
      desc: 'editionDetected',
      args: [name, edition],
    );
  }

  /// `Desconocido`
  String get unknown {
    return Intl.message(
      'Desconocido',
      name: 'unknown',
      desc: 'unknown',
      args: [],
    );
  }

  /// `Winget no está instalado o no está en PATH.`
  String get wingetUnavailable {
    return Intl.message(
      'Winget no está instalado o no está en PATH.',
      name: 'wingetUnavailable',
      desc: 'wingetUnavailable',
      args: [],
    );
  }

  /// `activa`
  String get renewalActive {
    return Intl.message(
      'activa',
      name: 'renewalActive',
      desc: 'renewalActive',
      args: [],
    );
  }

  /// `Desactivada`
  String get renewalDisabled {
    return Intl.message(
      'Desactivada',
      name: 'renewalDisabled',
      desc: 'renewalDisabled',
      args: [],
    );
  }

  /// `Pila de programas (Winget)`
  String get packageStack {
    return Intl.message(
      'Pila de programas (Winget)',
      name: 'packageStack',
      desc: 'packageStack',
      args: [],
    );
  }

  /// `Detectar`
  String get detect {
    return Intl.message('Detectar', name: 'detect', desc: 'detect', args: []);
  }

  /// `Instalar todo`
  String get installAll {
    return Intl.message(
      'Instalar todo',
      name: 'installAll',
      desc: 'installAll',
      args: [],
    );
  }

  /// `{count} programas`
  String applicationsCount(String count) {
    return Intl.message(
      '$count programas',
      name: 'applicationsCount',
      desc: 'applicationsCount',
      args: [count],
    );
  }

  /// `Instale y actualice herramientas de desarrollo esenciales para Windows mediante Winget.`
  String get applicationStackDescription {
    return Intl.message(
      'Instale y actualice herramientas de desarrollo esenciales para Windows mediante Winget.',
      name: 'applicationStackDescription',
      desc: 'applicationStackDescription',
      args: [],
    );
  }

  /// `No hay programas seleccionados.`
  String get noProgramsSelected {
    return Intl.message(
      'No hay programas seleccionados.',
      name: 'noProgramsSelected',
      desc: 'noProgramsSelected',
      args: [],
    );
  }

  /// `No se detectaron paquetes conocidos con Winget.`
  String get noWingetPackages {
    return Intl.message(
      'No se detectaron paquetes conocidos con Winget.',
      name: 'noWingetPackages',
      desc: 'noWingetPackages',
      args: [],
    );
  }

  /// `Paquetes detectados: {count}.`
  String packagesDetected(String count) {
    return Intl.message(
      'Paquetes detectados: $count.',
      name: 'packagesDetected',
      desc: 'packagesDetected',
      args: [count],
    );
  }

  /// `Seleccionar WIM`
  String get selectWim {
    return Intl.message(
      'Seleccionar WIM',
      name: 'selectWim',
      desc: 'selectWim',
      args: [],
    );
  }

  /// `Generar ISO`
  String get generateIso {
    return Intl.message(
      'Generar ISO',
      name: 'generateIso',
      desc: 'generateIso',
      args: [],
    );
  }

  /// `Obtener ISO para instalación solamente`
  String get getInstallOnlyIso {
    return Intl.message(
      'Obtener ISO para instalación solamente',
      name: 'getInstallOnlyIso',
      desc: 'getInstallOnlyIso',
      args: [],
    );
  }

  /// `Obtenga la base ISO para seleccionar un WIM al arrancar, o cree una ISO autónoma que ya incluya su imagen de Windows.`
  String get isoDescription {
    return Intl.message(
      'Obtenga la base ISO para seleccionar un WIM al arrancar, o cree una ISO autónoma que ya incluya su imagen de Windows.',
      name: 'isoDescription',
      desc: 'isoDescription',
      args: [],
    );
  }

  /// `WIM integrado en la ISO`
  String get wimIntegrated {
    return Intl.message(
      'WIM integrado en la ISO',
      name: 'wimIntegrated',
      desc: 'wimIntegrated',
      args: [],
    );
  }

  /// `Buscando imagen...`
  String get imageSearching {
    return Intl.message(
      'Buscando imagen...',
      name: 'imageSearching',
      desc: 'imageSearching',
      args: [],
    );
  }

  /// `Imagen detectada`
  String get imageDetected {
    return Intl.message(
      'Imagen detectada',
      name: 'imageDetected',
      desc: 'imageDetected',
      args: [],
    );
  }

  /// `Imagen no encontrada`
  String get imageNotFound {
    return Intl.message(
      'Imagen no encontrada',
      name: 'imageNotFound',
      desc: 'imageNotFound',
      args: [],
    );
  }

  /// `Preparar e iniciar puente`
  String get prepareBridge {
    return Intl.message(
      'Preparar e iniciar puente',
      name: 'prepareBridge',
      desc: 'prepareBridge',
      args: [],
    );
  }

  /// `puente detener`
  String get stopBridge {
    return Intl.message(
      'puente detener',
      name: 'stopBridge',
      desc: 'stopBridge',
      args: [],
    );
  }

  /// `Prepare el WIM una sola vez y lo transmita directamente a los clientes Requiem de la misma red. Los clientes no guardan el WIM antes de instalarlo.`
  String get bridgeDescription {
    return Intl.message(
      'Prepare el WIM una sola vez y lo transmita directamente a los clientes Requiem de la misma red. Los clientes no guardan el WIM antes de instalarlo.',
      name: 'bridgeDescription',
      desc: 'bridgeDescription',
      args: [],
    );
  }

  /// `Interfaz Wi‑Fi/LAN IPv4`
  String get networkInterface {
    return Intl.message(
      'Interfaz Wi‑Fi/LAN IPv4',
      name: 'networkInterface',
      desc: 'networkInterface',
      args: [],
    );
  }

  /// `Puerto HTTP 40124 · descubrimiento UDP 40123. Si pregunta Windows Defender, permita el acceso en redes privadas.`
  String get bridgePorts {
    return Intl.message(
      'Puerto HTTP 40124 · descubrimiento UDP 40123. Si pregunta Windows Defender, permita el acceso en redes privadas.',
      name: 'bridgePorts',
      desc: 'bridgePorts',
      args: [],
    );
  }

  /// `Seleccione un WIM y una interfaz IPv4 privada.`
  String get selectWimFirst {
    return Intl.message(
      'Seleccione un WIM y una interfaz IPv4 privada.',
      name: 'selectWimFirst',
      desc: 'selectWimFirst',
      args: [],
    );
  }

  /// `Consola del sistema`
  String get systemConsole {
    return Intl.message(
      'Consola del sistema',
      name: 'systemConsole',
      desc: 'systemConsole',
      args: [],
    );
  }

  /// `Copiar registros`
  String get copyLogs {
    return Intl.message(
      'Copiar registros',
      name: 'copyLogs',
      desc: 'copyLogs',
      args: [],
    );
  }

  /// `Limpiar troncos`
  String get clearLogs {
    return Intl.message(
      'Limpiar troncos',
      name: 'clearLogs',
      desc: 'clearLogs',
      args: [],
    );
  }

  /// `Esperando una acción...`
  String get waitingAction {
    return Intl.message(
      'Esperando una acción...',
      name: 'waitingAction',
      desc: 'waitingAction',
      args: [],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<S> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'es'),
      Locale.fromSubtags(languageCode: 'ar'),
      Locale.fromSubtags(languageCode: 'be'),
      Locale.fromSubtags(languageCode: 'bg'),
      Locale.fromSubtags(languageCode: 'bn'),
      Locale.fromSubtags(languageCode: 'cs'),
      Locale.fromSubtags(languageCode: 'da'),
      Locale.fromSubtags(languageCode: 'de'),
      Locale.fromSubtags(languageCode: 'el'),
      Locale.fromSubtags(languageCode: 'en'),
      Locale.fromSubtags(languageCode: 'fa'),
      Locale.fromSubtags(languageCode: 'fi'),
      Locale.fromSubtags(languageCode: 'fr'),
      Locale.fromSubtags(languageCode: 'hi'),
      Locale.fromSubtags(languageCode: 'hu'),
      Locale.fromSubtags(languageCode: 'id'),
      Locale.fromSubtags(languageCode: 'it'),
      Locale.fromSubtags(languageCode: 'ja'),
      Locale.fromSubtags(languageCode: 'ko'),
      Locale.fromSubtags(languageCode: 'ml'),
      Locale.fromSubtags(languageCode: 'nb'),
      Locale.fromSubtags(languageCode: 'nl'),
      Locale.fromSubtags(languageCode: 'no'),
      Locale.fromSubtags(languageCode: 'or'),
      Locale.fromSubtags(languageCode: 'pa'),
      Locale.fromSubtags(languageCode: 'pl'),
      Locale.fromSubtags(languageCode: 'pt'),
      Locale.fromSubtags(languageCode: 'pt', countryCode: 'BR'),
      Locale.fromSubtags(languageCode: 'ro'),
      Locale.fromSubtags(languageCode: 'ru'),
      Locale.fromSubtags(languageCode: 'sv'),
      Locale.fromSubtags(languageCode: 'th'),
      Locale.fromSubtags(languageCode: 'tr'),
      Locale.fromSubtags(languageCode: 'uk'),
      Locale.fromSubtags(languageCode: 'ur'),
      Locale.fromSubtags(languageCode: 'vi'),
      Locale.fromSubtags(languageCode: 'zh'),
      Locale.fromSubtags(languageCode: 'zh', scriptCode: 'Hans'),
      Locale.fromSubtags(languageCode: 'zh', scriptCode: 'Hant'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<S> load(Locale locale) => S.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    for (var supportedLocale in supportedLocales) {
      if (supportedLocale.languageCode == locale.languageCode) {
        return true;
      }
    }
    return false;
  }
}
