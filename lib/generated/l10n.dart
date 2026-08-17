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

  /// `Instalador de Réquiem`
  String get app_title_installer {
    return Intl.message(
      'Instalador de Réquiem',
      name: 'app_title_installer',
      desc: 'app_title_installer',
      args: [],
    );
  }

  /// `Herramientas de Réquiem`
  String get app_title_tools {
    return Intl.message(
      'Herramientas de Réquiem',
      name: 'app_title_tools',
      desc: 'app_title_tools',
      args: [],
    );
  }

  /// `Windows 8.1 Pro`
  String get kms_product_windows_8_1_pro {
    return Intl.message(
      'Windows 8.1 Pro',
      name: 'kms_product_windows_8_1_pro',
      desc: 'kms_product_windows_8_1_pro',
      args: [],
    );
  }

  /// `Windows 8.1 Empresa`
  String get kms_product_windows_8_1_enterprise {
    return Intl.message(
      'Windows 8.1 Empresa',
      name: 'kms_product_windows_8_1_enterprise',
      desc: 'kms_product_windows_8_1_enterprise',
      args: [],
    );
  }

  /// `Windows 8 Pro`
  String get kms_product_windows_8_pro {
    return Intl.message(
      'Windows 8 Pro',
      name: 'kms_product_windows_8_pro',
      desc: 'kms_product_windows_8_pro',
      args: [],
    );
  }

  /// `Windows 8 Empresa`
  String get kms_product_windows_8_enterprise {
    return Intl.message(
      'Windows 8 Empresa',
      name: 'kms_product_windows_8_enterprise',
      desc: 'kms_product_windows_8_enterprise',
      args: [],
    );
  }

  /// `Estándar de Windows Server 2025`
  String get kms_product_windows_server_2025_standard {
    return Intl.message(
      'Estándar de Windows Server 2025',
      name: 'kms_product_windows_server_2025_standard',
      desc: 'kms_product_windows_server_2025_standard',
      args: [],
    );
  }

  /// `Centro de datos de Windows Server 2025`
  String get kms_product_windows_server_2025_datacenter {
    return Intl.message(
      'Centro de datos de Windows Server 2025',
      name: 'kms_product_windows_server_2025_datacenter',
      desc: 'kms_product_windows_server_2025_datacenter',
      args: [],
    );
  }

  /// `Estándar de Windows Server 2022`
  String get kms_product_windows_server_2022_standard {
    return Intl.message(
      'Estándar de Windows Server 2022',
      name: 'kms_product_windows_server_2022_standard',
      desc: 'kms_product_windows_server_2022_standard',
      args: [],
    );
  }

  /// `Centro de datos de Windows Server 2022`
  String get kms_product_windows_server_2022_datacenter {
    return Intl.message(
      'Centro de datos de Windows Server 2022',
      name: 'kms_product_windows_server_2022_datacenter',
      desc: 'kms_product_windows_server_2022_datacenter',
      args: [],
    );
  }

  /// `Estándar del servidor de Windows 2019`
  String get kms_product_windows_server_2019_standard {
    return Intl.message(
      'Estándar del servidor de Windows 2019',
      name: 'kms_product_windows_server_2019_standard',
      desc: 'kms_product_windows_server_2019_standard',
      args: [],
    );
  }

  /// `Centro de datos de Windows Server 2019`
  String get kms_product_windows_server_2019_datacenter {
    return Intl.message(
      'Centro de datos de Windows Server 2019',
      name: 'kms_product_windows_server_2019_datacenter',
      desc: 'kms_product_windows_server_2019_datacenter',
      args: [],
    );
  }

  /// `Windows 10/11 Pro`
  String get kms_product_windows_10_11_pro {
    return Intl.message(
      'Windows 10/11 Pro',
      name: 'kms_product_windows_10_11_pro',
      desc: 'kms_product_windows_10_11_pro',
      args: [],
    );
  }

  /// `Windows 10/11 Pro N`
  String get kms_product_windows_10_11_pro_n {
    return Intl.message(
      'Windows 10/11 Pro N',
      name: 'kms_product_windows_10_11_pro_n',
      desc: 'kms_product_windows_10_11_pro_n',
      args: [],
    );
  }

  /// `Windows 10/11 Pro para estaciones de trabajo`
  String get kms_product_windows_10_11_pro_for_workstations {
    return Intl.message(
      'Windows 10/11 Pro para estaciones de trabajo',
      name: 'kms_product_windows_10_11_pro_for_workstations',
      desc: 'kms_product_windows_10_11_pro_for_workstations',
      args: [],
    );
  }

  /// `Windows 10/11 Pro Educación`
  String get kms_product_windows_10_11_pro_education {
    return Intl.message(
      'Windows 10/11 Pro Educación',
      name: 'kms_product_windows_10_11_pro_education',
      desc: 'kms_product_windows_10_11_pro_education',
      args: [],
    );
  }

  /// `Windows 10/11 Educación`
  String get kms_product_windows_10_11_education {
    return Intl.message(
      'Windows 10/11 Educación',
      name: 'kms_product_windows_10_11_education',
      desc: 'kms_product_windows_10_11_education',
      args: [],
    );
  }

  /// `Windows 10/11 Educación N`
  String get kms_product_windows_10_11_education_n {
    return Intl.message(
      'Windows 10/11 Educación N',
      name: 'kms_product_windows_10_11_education_n',
      desc: 'kms_product_windows_10_11_education_n',
      args: [],
    );
  }

  /// `Windows 10/11 empresarial`
  String get kms_product_windows_10_11_enterprise {
    return Intl.message(
      'Windows 10/11 empresarial',
      name: 'kms_product_windows_10_11_enterprise',
      desc: 'kms_product_windows_10_11_enterprise',
      args: [],
    );
  }

  /// `Windows 10/11 Empresa N`
  String get kms_product_windows_10_11_enterprise_n {
    return Intl.message(
      'Windows 10/11 Empresa N',
      name: 'kms_product_windows_10_11_enterprise_n',
      desc: 'kms_product_windows_10_11_enterprise_n',
      args: [],
    );
  }

  /// `Windows 10/11 Empresa G`
  String get kms_product_windows_10_11_enterprise_g {
    return Intl.message(
      'Windows 10/11 Empresa G',
      name: 'kms_product_windows_10_11_enterprise_g',
      desc: 'kms_product_windows_10_11_enterprise_g',
      args: [],
    );
  }

  /// `Windows 10/11 Enterprise G N`
  String get kms_product_windows_10_11_enterprise_g_n {
    return Intl.message(
      'Windows 10/11 Enterprise G N',
      name: 'kms_product_windows_10_11_enterprise_g_n',
      desc: 'kms_product_windows_10_11_enterprise_g_n',
      args: [],
    );
  }

  /// `Estaciones de trabajo Windows 10/11 Pro`
  String get kms_product_windows_10_11_pro_workstations {
    return Intl.message(
      'Estaciones de trabajo Windows 10/11 Pro',
      name: 'kms_product_windows_10_11_pro_workstations',
      desc: 'kms_product_windows_10_11_pro_workstations',
      args: [],
    );
  }

  /// `Oficina LTSC Profesional Plus 2024`
  String get kms_product_office_ltsc_professional_plus_2024 {
    return Intl.message(
      'Oficina LTSC Profesional Plus 2024',
      name: 'kms_product_office_ltsc_professional_plus_2024',
      desc: 'kms_product_office_ltsc_professional_plus_2024',
      args: [],
    );
  }

  /// `Oficina LTSC Profesional Plus 2021`
  String get kms_product_office_ltsc_professional_plus_2021 {
    return Intl.message(
      'Oficina LTSC Profesional Plus 2021',
      name: 'kms_product_office_ltsc_professional_plus_2021',
      desc: 'kms_product_office_ltsc_professional_plus_2021',
      args: [],
    );
  }

  /// `Oficina Profesional Plus 2019`
  String get kms_product_office_professional_plus_2019 {
    return Intl.message(
      'Oficina Profesional Plus 2019',
      name: 'kms_product_office_professional_plus_2019',
      desc: 'kms_product_office_professional_plus_2019',
      args: [],
    );
  }

  /// `Office Profesional Plus 2016`
  String get kms_product_office_professional_plus_2016 {
    return Intl.message(
      'Office Profesional Plus 2016',
      name: 'kms_product_office_professional_plus_2016',
      desc: 'kms_product_office_professional_plus_2016',
      args: [],
    );
  }

  /// `Office Profesional Plus 2013`
  String get kms_product_office_professional_plus_2013 {
    return Intl.message(
      'Office Profesional Plus 2013',
      name: 'kms_product_office_professional_plus_2013',
      desc: 'kms_product_office_professional_plus_2013',
      args: [],
    );
  }

  /// `Estándar de oficina 2013`
  String get kms_product_office_standard_2013 {
    return Intl.message(
      'Estándar de oficina 2013',
      name: 'kms_product_office_standard_2013',
      desc: 'kms_product_office_standard_2013',
      args: [],
    );
  }

  /// `Oficina LTSC Pro Plus 2024`
  String get office_pkg_name_2024 {
    return Intl.message(
      'Oficina LTSC Pro Plus 2024',
      name: 'office_pkg_name_2024',
      desc: 'office_pkg_name_2024',
      args: [],
    );
  }

  /// `Haga clic y ejecute el volumen con canal PerpetualVL2024`
  String get office_pkg_desc_2024 {
    return Intl.message(
      'Haga clic y ejecute el volumen con canal PerpetualVL2024',
      name: 'office_pkg_desc_2024',
      desc: 'office_pkg_desc_2024',
      args: [],
    );
  }

  /// `Oficina LTSC Pro Plus 2021`
  String get office_pkg_name_2021 {
    return Intl.message(
      'Oficina LTSC Pro Plus 2021',
      name: 'office_pkg_name_2021',
      desc: 'office_pkg_name_2021',
      args: [],
    );
  }

  /// `Haga clic y ejecute el volumen con canal PerpetualVL2021`
  String get office_pkg_desc_2021 {
    return Intl.message(
      'Haga clic y ejecute el volumen con canal PerpetualVL2021',
      name: 'office_pkg_desc_2021',
      desc: 'office_pkg_desc_2021',
      args: [],
    );
  }

  /// `Oficina Pro Plus 2019`
  String get office_pkg_name_2019 {
    return Intl.message(
      'Oficina Pro Plus 2019',
      name: 'office_pkg_name_2019',
      desc: 'office_pkg_name_2019',
      args: [],
    );
  }

  /// `Haga clic y ejecute el volumen con canal PerpetualVL2019`
  String get office_pkg_desc_2019 {
    return Intl.message(
      'Haga clic y ejecute el volumen con canal PerpetualVL2019',
      name: 'office_pkg_desc_2019',
      desc: 'office_pkg_desc_2019',
      args: [],
    );
  }

  /// `Redactor`
  String get pkg_cat_editor {
    return Intl.message(
      'Redactor',
      name: 'pkg_cat_editor',
      desc: 'pkg_cat_editor',
      args: [],
    );
  }

  /// `Control de versiones`
  String get pkg_cat_control_de_versiones {
    return Intl.message(
      'Control de versiones',
      name: 'pkg_cat_control_de_versiones',
      desc: 'pkg_cat_control_de_versiones',
      args: [],
    );
  }

  /// `javascript`
  String get pkg_cat_javascript {
    return Intl.message(
      'javascript',
      name: 'pkg_cat_javascript',
      desc: 'pkg_cat_javascript',
      args: [],
    );
  }

  /// `Pitón 3`
  String get pkg_cat_python_3 {
    return Intl.message(
      'Pitón 3',
      name: 'pkg_cat_python_3',
      desc: 'pkg_cat_python_3',
      args: [],
    );
  }

  /// `PHP en tiempo de ejecución`
  String get pkg_cat_runtime_php {
    return Intl.message(
      'PHP en tiempo de ejecución',
      name: 'pkg_cat_runtime_php',
      desc: 'pkg_cat_runtime_php',
      args: [],
    );
  }

  /// `Servidor DB`
  String get pkg_cat_servidor_db {
    return Intl.message(
      'Servidor DB',
      name: 'pkg_cat_servidor_db',
      desc: 'pkg_cat_servidor_db',
      args: [],
    );
  }

  /// `golang`
  String get pkg_cat_golang {
    return Intl.message(
      'golang',
      name: 'pkg_cat_golang',
      desc: 'pkg_cat_golang',
      args: [],
    );
  }

  /// `Oxidado`
  String get pkg_cat_rustup {
    return Intl.message(
      'Oxidado',
      name: 'pkg_cat_rustup',
      desc: 'pkg_cat_rustup',
      args: [],
    );
  }

  /// `Temurín 21`
  String get pkg_cat_temurin_21 {
    return Intl.message(
      'Temurín 21',
      name: 'pkg_cat_temurin_21',
      desc: 'pkg_cat_temurin_21',
      args: [],
    );
  }

  /// `Escritorio`
  String get pkg_cat_desktop {
    return Intl.message(
      'Escritorio',
      name: 'pkg_cat_desktop',
      desc: 'pkg_cat_desktop',
      args: [],
    );
  }

  /// `Terminal de Windows`
  String get kms_product_windows_terminal {
    return Intl.message(
      'Terminal de Windows',
      name: 'kms_product_windows_terminal',
      desc: 'kms_product_windows_terminal',
      args: [],
    );
  }

  /// `terminal moderna`
  String get pkg_cat_terminal_moderno {
    return Intl.message(
      'terminal moderna',
      name: 'pkg_cat_terminal_moderno',
      desc: 'pkg_cat_terminal_moderno',
      args: [],
    );
  }

  /// `subsistema linux`
  String get pkg_cat_subsistema_linux {
    return Intl.message(
      'subsistema linux',
      name: 'pkg_cat_subsistema_linux',
      desc: 'pkg_cat_subsistema_linux',
      args: [],
    );
  }

  /// `Subsistema de Windows para Linux`
  String get kms_product_windows_subsystem_for_linux {
    return Intl.message(
      'Subsistema de Windows para Linux',
      name: 'kms_product_windows_subsystem_for_linux',
      desc: 'kms_product_windows_subsystem_for_linux',
      args: [],
    );
  }

  /// `Distribución WSL`
  String get pkg_cat_distro_wsl {
    return Intl.message(
      'Distribución WSL',
      name: 'pkg_cat_distro_wsl',
      desc: 'pkg_cat_distro_wsl',
      args: [],
    );
  }

  /// `Navegador`
  String get pkg_cat_navegador {
    return Intl.message(
      'Navegador',
      name: 'pkg_cat_navegador',
      desc: 'pkg_cat_navegador',
      args: [],
    );
  }

  /// `IDEAndroid`
  String get pkg_cat_ide_android {
    return Intl.message(
      'IDEAndroid',
      name: 'pkg_cat_ide_android',
      desc: 'pkg_cat_ide_android',
      args: [],
    );
  }

  /// `IDE completo`
  String get pkg_cat_ide_completo {
    return Intl.message(
      'IDE completo',
      name: 'pkg_cat_ide_completo',
      desc: 'pkg_cat_ide_completo',
      args: [],
    );
  }

  /// `Compiladores C++`
  String get pkg_cat_compiladores_c {
    return Intl.message(
      'Compiladores C++',
      name: 'pkg_cat_compiladores_c',
      desc: 'pkg_cat_compiladores_c',
      args: [],
    );
  }

  /// `SDK .NET`
  String get pkg_cat_sdk__net {
    return Intl.message(
      'SDK .NET',
      name: 'pkg_cat_sdk__net',
      desc: 'pkg_cat_sdk__net',
      args: [],
    );
  }

  /// `Escritorio en tiempo de ejecución`
  String get pkg_cat_runtime_escritorio {
    return Intl.message(
      'Escritorio en tiempo de ejecución',
      name: 'pkg_cat_runtime_escritorio',
      desc: 'pkg_cat_runtime_escritorio',
      args: [],
    );
  }

  /// `Apache PHP MySQL`
  String get pkg_cat_apache_php_mysql {
    return Intl.message(
      'Apache PHP MySQL',
      name: 'pkg_cat_apache_php_mysql',
      desc: 'pkg_cat_apache_php_mysql',
      args: [],
    );
  }

  /// `Base de datos del cliente`
  String get pkg_cat_cliente_db {
    return Intl.message(
      'Base de datos del cliente',
      name: 'pkg_cat_cliente_db',
      desc: 'pkg_cat_cliente_db',
      args: [],
    );
  }

  /// `API de cliente`
  String get pkg_cat_cliente_api {
    return Intl.message(
      'API de cliente',
      name: 'pkg_cat_cliente_api',
      desc: 'pkg_cat_cliente_api',
      args: [],
    );
  }

  /// `SSH clásico`
  String get pkg_cat_ssh_clasico {
    return Intl.message(
      'SSH clásico',
      name: 'pkg_cat_ssh_clasico',
      desc: 'pkg_cat_ssh_clasico',
      args: [],
    );
  }

  /// `SSH moderno`
  String get pkg_cat_ssh_moderno {
    return Intl.message(
      'SSH moderno',
      name: 'pkg_cat_ssh_moderno',
      desc: 'pkg_cat_ssh_moderno',
      args: [],
    );
  }

  /// `Modelos locales`
  String get pkg_cat_modelos_locales {
    return Intl.message(
      'Modelos locales',
      name: 'pkg_cat_modelos_locales',
      desc: 'pkg_cat_modelos_locales',
      args: [],
    );
  }

  /// `Computación GPU`
  String get pkg_cat_gpu_compute {
    return Intl.message(
      'Computación GPU',
      name: 'pkg_cat_gpu_compute',
      desc: 'pkg_cat_gpu_compute',
      args: [],
    );
  }

  /// `compresor`
  String get pkg_cat_compresor {
    return Intl.message(
      'compresor',
      name: 'pkg_cat_compresor',
      desc: 'pkg_cat_compresor',
      args: [],
    );
  }

  /// `Instaladores`
  String get pkg_cat_instaladores {
    return Intl.message(
      'Instaladores',
      name: 'pkg_cat_instaladores',
      desc: 'pkg_cat_instaladores',
      args: [],
    );
  }

  /// `limpieza`
  String get pkg_cat_limpieza {
    return Intl.message(
      'limpieza',
      name: 'pkg_cat_limpieza',
      desc: 'pkg_cat_limpieza',
      args: [],
    );
  }

  /// `diagramas`
  String get pkg_cat_diagramas {
    return Intl.message(
      'diagramas',
      name: 'pkg_cat_diagramas',
      desc: 'pkg_cat_diagramas',
      args: [],
    );
  }

  /// `IDE IA`
  String get pkg_cat_ide_ai {
    return Intl.message(
      'IDE IA',
      name: 'pkg_cat_ide_ai',
      desc: 'pkg_cat_ide_ai',
      args: [],
    );
  }

  /// `comunicación`
  String get pkg_cat_comunicacion {
    return Intl.message(
      'comunicación',
      name: 'pkg_cat_comunicacion',
      desc: 'pkg_cat_comunicacion',
      args: [],
    );
  }

  /// `Grabación`
  String get pkg_cat_grabacion {
    return Intl.message(
      'Grabación',
      name: 'pkg_cat_grabacion',
      desc: 'pkg_cat_grabacion',
      args: [],
    );
  }

  /// `Escritorio de BI`
  String get pkg_cat_bi_desktop {
    return Intl.message(
      'Escritorio de BI',
      name: 'pkg_cat_bi_desktop',
      desc: 'pkg_cat_bi_desktop',
      args: [],
    );
  }

  /// `juegos en tiempo de ejecución`
  String get pkg_cat_runtime_juegos {
    return Intl.message(
      'juegos en tiempo de ejecución',
      name: 'pkg_cat_runtime_juegos',
      desc: 'pkg_cat_runtime_juegos',
      args: [],
    );
  }

  /// `Tiempo de ejecución C++`
  String get pkg_cat_runtime_c {
    return Intl.message(
      'Tiempo de ejecución C++',
      name: 'pkg_cat_runtime_c',
      desc: 'pkg_cat_runtime_c',
      args: [],
    );
  }

  /// `ADMINISTRACIÓN DE DISCOS`
  String get disk_management_appbar_title {
    return Intl.message(
      'ADMINISTRACIÓN DE DISCOS',
      name: 'disk_management_appbar_title',
      desc: 'disk_management_appbar_title',
      args: [],
    );
  }

  /// `ACTUALIZAR`
  String get common_refresh {
    return Intl.message(
      'ACTUALIZAR',
      name: 'common_refresh',
      desc: 'common_refresh',
      args: [],
    );
  }

  /// `Seleccionar Disco de Destino`
  String get disk_selection_title {
    return Intl.message(
      'Seleccionar Disco de Destino',
      name: 'disk_selection_title',
      desc: 'disk_selection_title',
      args: [],
    );
  }

  /// `Elija la unidad física donde se instalará Windows.`
  String get disk_selection_desc {
    return Intl.message(
      'Elija la unidad física donde se instalará Windows.',
      name: 'disk_selection_desc',
      desc: 'disk_selection_desc',
      args: [],
    );
  }

  /// `INICIAR INSTALACIÓN`
  String get disk_selection_button_start {
    return Intl.message(
      'INICIAR INSTALACIÓN',
      name: 'disk_selection_button_start',
      desc: 'disk_selection_button_start',
      args: [],
    );
  }

  /// `Esperando la detección de install.wim...`
  String get disk_waiting_wim_hint {
    return Intl.message(
      'Esperando la detección de install.wim...',
      name: 'disk_waiting_wim_hint',
      desc: 'disk_waiting_wim_hint',
      args: [],
    );
  }

  /// `CONFIRMAR DESTRUCCIÓN DE DATOS`
  String get disk_dialog_confirm_destruction_title {
    return Intl.message(
      'CONFIRMAR DESTRUCCIÓN DE DATOS',
      name: 'disk_dialog_confirm_destruction_title',
      desc: 'disk_dialog_confirm_destruction_title',
      args: [],
    );
  }

  /// `CONFIRMAR INSTALACIÓN`
  String get disk_dialog_confirm_install_title {
    return Intl.message(
      'CONFIRMAR INSTALACIÓN',
      name: 'disk_dialog_confirm_install_title',
      desc: 'disk_dialog_confirm_install_title',
      args: [],
    );
  }

  /// `El disco seleccionado se formateará por completo. Se perderán todos los datos.`
  String get disk_dialog_format_warning {
    return Intl.message(
      'El disco seleccionado se formateará por completo. Se perderán todos los datos.',
      name: 'disk_dialog_format_warning',
      desc: 'disk_dialog_format_warning',
      args: [],
    );
  }

  /// `Windows se desplegará en W:\\ sin formatear.`
  String get disk_dialog_existing_notice {
    return Intl.message(
      'Windows se desplegará en W:\\\\ sin formatear.',
      name: 'disk_dialog_existing_notice',
      desc: 'disk_dialog_existing_notice',
      args: [],
    );
  }

  /// `DISCO`
  String get common_label_disk {
    return Intl.message(
      'DISCO',
      name: 'common_label_disk',
      desc: 'common_label_disk',
      args: [],
    );
  }

  /// `MODO`
  String get common_label_mode {
    return Intl.message(
      'MODO',
      name: 'common_label_mode',
      desc: 'common_label_mode',
      args: [],
    );
  }

  /// `IMAGEN`
  String get common_label_image {
    return Intl.message(
      'IMAGEN',
      name: 'common_label_image',
      desc: 'common_label_image',
      args: [],
    );
  }

  /// `CANCELAR`
  String get common_cancel {
    return Intl.message(
      'CANCELAR',
      name: 'common_cancel',
      desc: 'common_cancel',
      args: [],
    );
  }

  /// `CONFIRMAR E INSTALAR`
  String get disk_button_confirm_and_install {
    return Intl.message(
      'CONFIRMAR E INSTALAR',
      name: 'disk_button_confirm_and_install',
      desc: 'disk_button_confirm_and_install',
      args: [],
    );
  }

  /// `DESPLIEGUE EN CURSO`
  String get progress_header_badge {
    return Intl.message(
      'DESPLIEGUE EN CURSO',
      name: 'progress_header_badge',
      desc: 'progress_header_badge',
      args: [],
    );
  }

  /// `NO DESCONECTE LA ENERGÍA NI RETIRE EL MEDIO DE INSTALACIÓN`
  String get progress_footer_warning {
    return Intl.message(
      'NO DESCONECTE LA ENERGÍA NI RETIRE EL MEDIO DE INSTALACIÓN',
      name: 'progress_footer_warning',
      desc: 'progress_footer_warning',
      args: [],
    );
  }

  /// `GPT/UEFI`
  String get disk_partition_gpt_uefi {
    return Intl.message(
      'GPT/UEFI',
      name: 'disk_partition_gpt_uefi',
      desc: 'disk_partition_gpt_uefi',
      args: [],
    );
  }

  /// `MBR/BIOS`
  String get disk_partition_mbr_bios {
    return Intl.message(
      'MBR/BIOS',
      name: 'disk_partition_mbr_bios',
      desc: 'disk_partition_mbr_bios',
      args: [],
    );
  }

  /// `Acuerdo actual: {firmware}`
  String disk_boot_firmware_label(String firmware) {
    return Intl.message(
      'Acuerdo actual: $firmware',
      name: 'disk_boot_firmware_label',
      desc: 'disk_boot_firmware_label',
      args: [firmware],
    );
  }

  /// `Modo compatible: {recommended}`
  String disk_recommended_mode_label(String recommended) {
    return Intl.message(
      'Modo compatible: $recommended',
      name: 'disk_recommended_mode_label',
      desc: 'disk_recommended_mode_label',
      args: [recommended],
    );
  }

  /// `No se detectaron discos físicos`
  String get disk_empty_list {
    return Intl.message(
      'No se detectaron discos físicos',
      name: 'disk_empty_list',
      desc: 'disk_empty_list',
      args: [],
    );
  }

  /// `SISTEMA`
  String get disk_badge_system {
    return Intl.message(
      'SISTEMA',
      name: 'disk_badge_system',
      desc: 'disk_badge_system',
      args: [],
    );
  }

  /// `DISCO {diskNumber} · {mediaType} · {busType}`
  String disk_item_header(String diskNumber, String mediaType, String busType) {
    return Intl.message(
      'DISCO $diskNumber · $mediaType · $busType',
      name: 'disk_item_header',
      desc: 'disk_item_header',
      args: [diskNumber, mediaType, busType],
    );
  }

  /// `{sizeGB} ES`
  String disk_size_gb(String sizeGB) {
    return Intl.message(
      '$sizeGB ES',
      name: 'disk_size_gb',
      desc: 'disk_size_gb',
      args: [sizeGB],
    );
  }

  /// `No se pudo enumerar las interfaces IPv4: {error}`
  String iso_bridge_list_interfaces_error(String error) {
    return Intl.message(
      'No se pudo enumerar las interfaces IPv4: $error',
      name: 'iso_bridge_list_interfaces_error',
      desc: 'iso_bridge_list_interfaces_error',
      args: [error],
    );
  }

  /// `ERROR: {error}`
  String iso_bridge_generic_error(String error) {
    return Intl.message(
      'ERROR: $error',
      name: 'iso_bridge_generic_error',
      desc: 'iso_bridge_generic_error',
      args: [error],
    );
  }

  /// `Seleccionar imagen WIM de Windows`
  String get iso_bridge_select_wim_dialog {
    return Intl.message(
      'Seleccionar imagen WIM de Windows',
      name: 'iso_bridge_select_wim_dialog',
      desc: 'iso_bridge_select_wim_dialog',
      args: [],
    );
  }

  /// `WIM seleccionado: {path}`
  String iso_bridge_wim_selected_log(String path) {
    return Intl.message(
      'WIM seleccionado: $path',
      name: 'iso_bridge_wim_selected_log',
      desc: 'iso_bridge_wim_selected_log',
      args: [path],
    );
  }

  /// `Guardar ISO simple de Réquiem`
  String get iso_bridge_save_simple_iso_dialog {
    return Intl.message(
      'Guardar ISO simple de Réquiem',
      name: 'iso_bridge_save_simple_iso_dialog',
      desc: 'iso_bridge_save_simple_iso_dialog',
      args: [],
    );
  }

  /// `Requiem-Instalador-Simple.iso`
  String get iso_bridge_simple_iso_filename {
    return Intl.message(
      'Requiem-Instalador-Simple.iso',
      name: 'iso_bridge_simple_iso_filename',
      desc: 'iso_bridge_simple_iso_filename',
      args: [],
    );
  }

  /// `Guardar ISO de Réquiem con WIM`
  String get iso_bridge_save_wim_iso_dialog {
    return Intl.message(
      'Guardar ISO de Réquiem con WIM',
      name: 'iso_bridge_save_wim_iso_dialog',
      desc: 'iso_bridge_save_wim_iso_dialog',
      args: [],
    );
  }

  /// `Seleccione un WIM y una interfaz IPv4 privada.`
  String get iso_bridge_start_validation_error {
    return Intl.message(
      'Seleccione un WIM y una interfaz IPv4 privada.',
      name: 'iso_bridge_start_validation_error',
      desc: 'iso_bridge_start_validation_error',
      args: [],
    );
  }

  /// `Medio de instalación`
  String get iso_panel_title_media {
    return Intl.message(
      'Medio de instalación',
      name: 'iso_panel_title_media',
      desc: 'iso_panel_title_media',
      args: [],
    );
  }

  /// `Obtenga la base ISO para seleccionar un WIM al arrancar, o cree una ISO autónoma que ya incluya su imagen de Windows.`
  String get iso_panel_desc_media {
    return Intl.message(
      'Obtenga la base ISO para seleccionar un WIM al arrancar, o cree una ISO autónoma que ya incluya su imagen de Windows.',
      name: 'iso_panel_desc_media',
      desc: 'iso_panel_desc_media',
      args: [],
    );
  }

  /// `OBTENER ISO PARA INSTALACIÓN SOLAMENTE`
  String get iso_panel_button_simple_iso {
    return Intl.message(
      'OBTENER ISO PARA INSTALACIÓN SOLAMENTE',
      name: 'iso_panel_button_simple_iso',
      desc: 'iso_panel_button_simple_iso',
      args: [],
    );
  }

  /// `SELECCIONAR WIM`
  String get iso_panel_button_select_wim {
    return Intl.message(
      'SELECCIONAR WIM',
      name: 'iso_panel_button_select_wim',
      desc: 'iso_panel_button_select_wim',
      args: [],
    );
  }

  /// `ISO GENERAR`
  String get iso_panel_button_generate_iso {
    return Intl.message(
      'ISO GENERAR',
      name: 'iso_panel_button_generate_iso',
      desc: 'iso_panel_button_generate_iso',
      args: [],
    );
  }

  /// `Puente IPv4 de instalación`
  String get iso_panel_title_bridge {
    return Intl.message(
      'Puente IPv4 de instalación',
      name: 'iso_panel_title_bridge',
      desc: 'iso_panel_title_bridge',
      args: [],
    );
  }

  /// `{clients} conexiones`
  String iso_bridge_clients_count(String clients) {
    return Intl.message(
      '$clients conexiones',
      name: 'iso_bridge_clients_count',
      desc: 'iso_bridge_clients_count',
      args: [clients],
    );
  }

  /// `Prepare el WIM una sola vez y lo transmita directamente a los clientes Requiem de la misma red. Los clientes no guardan el WIM antes de instalarlo.`
  String get iso_bridge_desc {
    return Intl.message(
      'Prepare el WIM una sola vez y lo transmita directamente a los clientes Requiem de la misma red. Los clientes no guardan el WIM antes de instalarlo.',
      name: 'iso_bridge_desc',
      desc: 'iso_bridge_desc',
      args: [],
    );
  }

  /// `Herramienta de implementación de Office`
  String get office_odt_panel_title {
    return Intl.message(
      'Herramienta de implementación de Office',
      name: 'office_odt_panel_title',
      desc: 'office_odt_panel_title',
      args: [],
    );
  }

  /// `ODT + KMS`
  String get office_odt_kms_badge {
    return Intl.message(
      'ODT + KMS',
      name: 'office_odt_kms_badge',
      desc: 'office_odt_kms_badge',
      args: [],
    );
  }

  /// `SISTEMA REINICIAR`
  String get progress_button_reboot {
    return Intl.message(
      'SISTEMA REINICIAR',
      name: 'progress_button_reboot',
      desc: 'progress_button_reboot',
      args: [],
    );
  }

  /// `INSTALADOR DE REQUIEM`
  String get landing_title_installer {
    return Intl.message(
      'INSTALADOR DE REQUIEM',
      name: 'landing_title_installer',
      desc: 'landing_title_installer',
      args: [],
    );
  }

  /// `HERRAMIENTAS DE REQUIEM`
  String get landing_title_tools {
    return Intl.message(
      'HERRAMIENTAS DE REQUIEM',
      name: 'landing_title_tools',
      desc: 'landing_title_tools',
      args: [],
    );
  }

  /// `DESPLIEGUE DE SO DE PRÓXIMA GENERACIÓN`
  String get landing_subtitle {
    return Intl.message(
      'DESPLIEGUE DE SO DE PRÓXIMA GENERACIÓN',
      name: 'landing_subtitle',
      desc: 'landing_subtitle',
      args: [],
    );
  }

  /// `Instalador de Windows de alta precisión para entornos de alto rendimiento.`
  String get landing_description_part1 {
    return Intl.message(
      'Instalador de Windows de alta precisión para entornos de alto rendimiento.',
      name: 'landing_description_part1',
      desc: 'landing_description_part1',
      args: [],
    );
  }

  /// `Experimente un despliegue rápido con orquestación directa de DISM y optimización automatizada del sistema.`
  String get landing_description_part2 {
    return Intl.message(
      'Experimente un despliegue rápido con orquestación directa de DISM y optimización automatizada del sistema.',
      name: 'landing_description_part2',
      desc: 'landing_description_part2',
      args: [],
    );
  }

  /// `EMPEZAR`
  String get landing_button_start {
    return Intl.message(
      'EMPEZAR',
      name: 'landing_button_start',
      desc: 'landing_button_start',
      args: [],
    );
  }

  /// `REGISTROS DEL SISTEMA`
  String get landing_button_logs {
    return Intl.message(
      'REGISTROS DEL SISTEMA',
      name: 'landing_button_logs',
      desc: 'landing_button_logs',
      args: [],
    );
  }

  /// `VERSIÓN ESTABLE`
  String get landing_badge_version {
    return Intl.message(
      'VERSIÓN ESTABLE',
      name: 'landing_badge_version',
      desc: 'landing_badge_version',
      args: [],
    );
  }

  /// `COMPATIBLE CON BOTA SEGURA`
  String get landing_badge_secure_boot {
    return Intl.message(
      'COMPATIBLE CON BOTA SEGURA',
      name: 'landing_badge_secure_boot',
      desc: 'landing_badge_secure_boot',
      args: [],
    );
  }

  /// `DISEÑADO POR JOSS`
  String get landing_badge_author {
    return Intl.message(
      'DISEÑADO POR JOSS',
      name: 'landing_badge_author',
      desc: 'landing_badge_author',
      args: [],
    );
  }

  /// `ERROR: el host KMS está vacío.`
  String get tools_kms_empty_host_error {
    return Intl.message(
      'ERROR: el host KMS está vacío.',
      name: 'tools_kms_empty_host_error',
      desc: 'tools_kms_empty_host_error',
      args: [],
    );
  }

  /// `[{time}] {message}`
  String tools_log_format(String time, String message) {
    return Intl.message(
      '[$time] $message',
      name: 'tools_log_format',
      desc: 'tools_log_format',
      args: [time, message],
    );
  }

  /// `No hay productos KMS seleccionados.`
  String get tools_kms_no_products_selected {
    return Intl.message(
      'No hay productos KMS seleccionados.',
      name: 'tools_kms_no_products_selected',
      desc: 'tools_kms_no_products_selected',
      args: [],
    );
  }

  /// `Comprobando conectividad con {host}:1688...`
  String tools_kms_checking_connectivity(String host) {
    return Intl.message(
      'Comprobando conectividad con $host:1688...',
      name: 'tools_kms_checking_connectivity',
      desc: 'tools_kms_checking_connectivity',
      args: [host],
    );
  }

  /// `ERROR DE KMS: {error}`
  String tools_kms_error_log(String error) {
    return Intl.message(
      'ERROR DE KMS: $error',
      name: 'tools_kms_error_log',
      desc: 'tools_kms_error_log',
      args: [error],
    );
  }

  /// `No hay programas seleccionados.`
  String get tools_packages_none_selected {
    return Intl.message(
      'No hay programas seleccionados.',
      name: 'tools_packages_none_selected',
      desc: 'tools_packages_none_selected',
      args: [],
    );
  }

  /// `No se detectaron paquetes conocidos con Winget.`
  String get tools_packages_none_detected {
    return Intl.message(
      'No se detectaron paquetes conocidos con Winget.',
      name: 'tools_packages_none_detected',
      desc: 'tools_packages_none_detected',
      args: [],
    );
  }

  /// `Paquetes detectados: {count}.`
  String tools_packages_detected_count(String count) {
    return Intl.message(
      'Paquetes detectados: $count.',
      name: 'tools_packages_detected_count',
      desc: 'tools_packages_detected_count',
      args: [count],
    );
  }

  /// `Registros copiados al portapapeles.`
  String get tools_logs_copied_snackbar {
    return Intl.message(
      'Registros copiados al portapapeles.',
      name: 'tools_logs_copied_snackbar',
      desc: 'tools_logs_copied_snackbar',
      args: [],
    );
  }

  /// `HERRAMIENTAS DE MIGRACIÓN DE REQUIEM`
  String get tools_header_title {
    return Intl.message(
      'HERRAMIENTAS DE MIGRACIÓN DE REQUIEM',
      name: 'tools_header_title',
      desc: 'tools_header_title',
      args: [],
    );
  }

  /// `Activación de Licencias`
  String get tools_section_activation_title {
    return Intl.message(
      'Activación de Licencias',
      name: 'tools_section_activation_title',
      desc: 'tools_section_activation_title',
      args: [],
    );
  }

  /// `Configure el servidor KMS local o remoto para activar Windows y Office.`
  String get tools_section_activation_desc {
    return Intl.message(
      'Configure el servidor KMS local o remoto para activar Windows y Office.',
      name: 'tools_section_activation_desc',
      desc: 'tools_section_activation_desc',
      args: [],
    );
  }

  /// `KMS pendiente`
  String get tools_badge_kms_pending {
    return Intl.message(
      'KMS pendiente',
      name: 'tools_badge_kms_pending',
      desc: 'tools_badge_kms_pending',
      args: [],
    );
  }

  /// `ACTIVAR KMS`
  String get tools_button_activate_kms {
    return Intl.message(
      'ACTIVAR KMS',
      name: 'tools_button_activate_kms',
      desc: 'tools_button_activate_kms',
      args: [],
    );
  }

  /// `Instalador de oficina`
  String get tools_section_office_title {
    return Intl.message(
      'Instalador de oficina',
      name: 'tools_section_office_title',
      desc: 'tools_section_office_title',
      args: [],
    );
  }

  /// `Despliega Microsoft Office LTSC o 365 de manera automatizada usando ODT.`
  String get tools_section_office_desc {
    return Intl.message(
      'Despliega Microsoft Office LTSC o 365 de manera automatizada usando ODT.',
      name: 'tools_section_office_desc',
      desc: 'tools_section_office_desc',
      args: [],
    );
  }

  /// `OFICINA INSTALARIA`
  String get tools_button_install_office {
    return Intl.message(
      'OFICINA INSTALARIA',
      name: 'tools_button_install_office',
      desc: 'tools_button_install_office',
      args: [],
    );
  }

  /// `Pila de aplicaciones`
  String get tools_section_packages_title {
    return Intl.message(
      'Pila de aplicaciones',
      name: 'tools_section_packages_title',
      desc: 'tools_section_packages_title',
      args: [],
    );
  }

  /// `Instale y actualice herramientas de desarrollo esenciales para Windows mediante Winget.`
  String get tools_section_packages_desc {
    return Intl.message(
      'Instale y actualice herramientas de desarrollo esenciales para Windows mediante Winget.',
      name: 'tools_section_packages_desc',
      desc: 'tools_section_packages_desc',
      args: [],
    );
  }

  /// `{count} programas`
  String tools_badge_package_count(String count) {
    return Intl.message(
      '$count programas',
      name: 'tools_badge_package_count',
      desc: 'tools_badge_package_count',
      args: [count],
    );
  }

  /// `INSTALAR TODO`
  String get tools_button_install_all_packages {
    return Intl.message(
      'INSTALAR TODO',
      name: 'tools_button_install_all_packages',
      desc: 'tools_button_install_all_packages',
      args: [],
    );
  }

  /// `ISO y despliegue por rojo`
  String get tools_section_iso_title {
    return Intl.message(
      'ISO y despliegue por rojo',
      name: 'tools_section_iso_title',
      desc: 'tools_section_iso_title',
      args: [],
    );
  }

  /// `Cree medios autónomos con un WIM integrado o distribuya una instalación directamente por IPv4.`
  String get tools_section_iso_desc {
    return Intl.message(
      'Cree medios autónomos con un WIM integrado o distribuya una instalación directamente por IPv4.',
      name: 'tools_section_iso_desc',
      desc: 'tools_section_iso_desc',
      args: [],
    );
  }

  /// `Conservadores BIOS + UEFI`
  String get tools_badge_iso_compatibility {
    return Intl.message(
      'Conservadores BIOS + UEFI',
      name: 'tools_badge_iso_compatibility',
      desc: 'tools_badge_iso_compatibility',
      args: [],
    );
  }

  /// `RÉQUIEM`
  String get tools_sidebar_app_name {
    return Intl.message(
      'RÉQUIEM',
      name: 'tools_sidebar_app_name',
      desc: 'tools_sidebar_app_name',
      args: [],
    );
  }

  /// `Activación KMS`
  String get tools_sidebar_tab_kms {
    return Intl.message(
      'Activación KMS',
      name: 'tools_sidebar_tab_kms',
      desc: 'tools_sidebar_tab_kms',
      args: [],
    );
  }

  /// `Instalación Oficina`
  String get tools_sidebar_tab_office {
    return Intl.message(
      'Instalación Oficina',
      name: 'tools_sidebar_tab_office',
      desc: 'tools_sidebar_tab_office',
      args: [],
    );
  }

  /// `Programas de pila`
  String get tools_sidebar_tab_packages {
    return Intl.message(
      'Programas de pila',
      name: 'tools_sidebar_tab_packages',
      desc: 'tools_sidebar_tab_packages',
      args: [],
    );
  }

  /// `ISO y Puente`
  String get tools_sidebar_tab_iso {
    return Intl.message(
      'ISO y Puente',
      name: 'tools_sidebar_tab_iso',
      desc: 'tools_sidebar_tab_iso',
      args: [],
    );
  }

  /// `Modo de herramientas locales`
  String get tools_sidebar_mode_badge {
    return Intl.message(
      'Modo de herramientas locales',
      name: 'tools_sidebar_mode_badge',
      desc: 'tools_sidebar_mode_badge',
      args: [],
    );
  }

  /// `Buscando puentes Requiem en la red IPv4 local...`
  String get wim_bridge_searching {
    return Intl.message(
      'Buscando puentes Requiem en la red IPv4 local...',
      name: 'wim_bridge_searching',
      desc: 'wim_bridge_searching',
      args: [],
    );
  }

  /// `No se encontró ningún puente. Pruebe con el manual de IP.`
  String get wim_bridge_not_found {
    return Intl.message(
      'No se encontró ningún puente. Pruebe con el manual de IP.',
      name: 'wim_bridge_not_found',
      desc: 'wim_bridge_not_found',
      args: [],
    );
  }

  /// `No se pudo buscar el puente: {error}`
  String wim_bridge_search_error(String error) {
    return Intl.message(
      'No se pudo buscar el puente: $error',
      name: 'wim_bridge_search_error',
      desc: 'wim_bridge_search_error',
      args: [error],
    );
  }

  /// `IP del puente Réquiem`
  String get wim_bridge_ip_dialog_title {
    return Intl.message(
      'IP del puente Réquiem',
      name: 'wim_bridge_ip_dialog_title',
      desc: 'wim_bridge_ip_dialog_title',
      args: [],
    );
  }

  /// `192.168.1.20`
  String get wim_bridge_ip_placeholder {
    return Intl.message(
      '192.168.1.20',
      name: 'wim_bridge_ip_placeholder',
      desc: 'wim_bridge_ip_placeholder',
      args: [],
    );
  }

  /// `CONECTAR`
  String get common_connect {
    return Intl.message(
      'CONECTAR',
      name: 'common_connect',
      desc: 'common_connect',
      args: [],
    );
  }

  /// `No se pudo conectar: {error}`
  String wim_bridge_connection_error(String error) {
    return Intl.message(
      'No se pudo conectar: $error',
      name: 'wim_bridge_connection_error',
      desc: 'wim_bridge_connection_error',
      args: [error],
    );
  }

  /// `Buscando redes Wi-Fi disponibles...`
  String get wifi_scanning {
    return Intl.message(
      'Buscando redes Wi-Fi disponibles...',
      name: 'wifi_scanning',
      desc: 'wifi_scanning',
      args: [],
    );
  }

  /// `No se encontraron redes Wi-Fi disponibles.`
  String get wifi_none_found {
    return Intl.message(
      'No se encontraron redes Wi-Fi disponibles.',
      name: 'wifi_none_found',
      desc: 'wifi_none_found',
      args: [],
    );
  }

  /// `Conectar el instalador a Wi-Fi`
  String get wifi_dialog_title {
    return Intl.message(
      'Conectar el instalador a Wi-Fi',
      name: 'wifi_dialog_title',
      desc: 'wifi_dialog_title',
      args: [],
    );
  }

  /// `{signal}% · {security}`
  String wifi_item_signal_security(String signal, String security) {
    return Intl.message(
      '$signal% · $security',
      name: 'wifi_item_signal_security',
      desc: 'wifi_item_signal_security',
      args: [signal, security],
    );
  }

  /// `Contraseña Wi-Fi`
  String get wifi_password_hint {
    return Intl.message(
      'Contraseña Wi-Fi',
      name: 'wifi_password_hint',
      desc: 'wifi_password_hint',
      args: [],
    );
  }

  /// `Wi-Fi conectado a {ssid}. {result}`
  String wifi_connected_log(String ssid, String result) {
    return Intl.message(
      'Wi-Fi conectado a $ssid. $result',
      name: 'wifi_connected_log',
      desc: 'wifi_connected_log',
      args: [ssid, result],
    );
  }

  /// `Conectado a {ssid}.`
  String wifi_connected_status(String ssid) {
    return Intl.message(
      'Conectado a $ssid.',
      name: 'wifi_connected_status',
      desc: 'wifi_connected_status',
      args: [ssid],
    );
  }

  /// `No se pudo conectar a Wi-Fi: {error}`
  String wifi_connect_error(String error) {
    return Intl.message(
      'No se pudo conectar a Wi-Fi: $error',
      name: 'wifi_connect_error',
      desc: 'wifi_connect_error',
      args: [error],
    );
  }

  /// `Seleccionar Imagen de Windows`
  String get wim_picker_title {
    return Intl.message(
      'Seleccionar Imagen de Windows',
      name: 'wim_picker_title',
      desc: 'wim_picker_title',
      args: [],
    );
  }

  /// `Proporcione la imagen de instalación de Windows (install.wim o install.swm)\n`
  String get wim_picker_description {
    return Intl.message(
      'Proporcione la imagen de instalación de Windows (install.wim o install.swm)\\n',
      name: 'wim_picker_description',
      desc: 'wim_picker_description',
      args: [],
    );
  }

  /// `Buscando imagen…`
  String get wim_status_searching {
    return Intl.message(
      'Buscando imagen…',
      name: 'wim_status_searching',
      desc: 'wim_status_searching',
      args: [],
    );
  }

  /// `Imagen encontrada`
  String get wim_status_found {
    return Intl.message(
      'Imagen encontrada',
      name: 'wim_status_found',
      desc: 'wim_status_found',
      args: [],
    );
  }

  /// `No se detectó ninguna imagen`
  String get wim_status_not_found {
    return Intl.message(
      'No se detectó ninguna imagen',
      name: 'wim_status_not_found',
      desc: 'wim_status_not_found',
      args: [],
    );
  }

  /// `Utilice "Buscar" para localizar su archivo WIM manualmente.`
  String get wim_manual_search_hint {
    return Intl.message(
      'Utilice "Buscar" para localizar su archivo WIM manualmente.',
      name: 'wim_manual_search_hint',
      desc: 'wim_manual_search_hint',
      args: [],
    );
  }

  /// `CAMBIAR ARCHIVO`
  String get wim_button_change_file {
    return Intl.message(
      'CAMBIAR ARCHIVO',
      name: 'wim_button_change_file',
      desc: 'wim_button_change_file',
      args: [],
    );
  }

  /// `BUSCAR`
  String get common_search {
    return Intl.message(
      'BUSCAR',
      name: 'common_search',
      desc: 'common_search',
      args: [],
    );
  }

  /// `CONTINUAR`
  String get common_continue {
    return Intl.message(
      'CONTINUAR',
      name: 'common_continue',
      desc: 'common_continue',
      args: [],
    );
  }

  /// `Escanear unidades de nueva`
  String get wim_button_rescan {
    return Intl.message(
      'Escanear unidades de nueva',
      name: 'wim_button_rescan',
      desc: 'wim_button_rescan',
      args: [],
    );
  }

  /// `O reciba la instalación preparada desde Requiem para Windows`
  String get wim_bridge_section_header {
    return Intl.message(
      'O reciba la instalación preparada desde Requiem para Windows',
      name: 'wim_bridge_section_header',
      desc: 'wim_bridge_section_header',
      args: [],
    );
  }

  /// `CONECTAR WI-FI`
  String get wim_button_connect_wifi {
    return Intl.message(
      'CONECTAR WI-FI',
      name: 'wim_button_connect_wifi',
      desc: 'wim_button_connect_wifi',
      args: [],
    );
  }

  /// `BUSCAR PUENTE`
  String get wim_button_search_bridge {
    return Intl.message(
      'BUSCAR PUENTE',
      name: 'wim_button_search_bridge',
      desc: 'wim_button_search_bridge',
      args: [],
    );
  }

  /// `MANUAL IP USAR`
  String get wim_button_manual_ip {
    return Intl.message(
      'MANUAL IP USAR',
      name: 'wim_button_manual_ip',
      desc: 'wim_button_manual_ip',
      args: [],
    );
  }

  /// `consola del sistema`
  String get console_title {
    return Intl.message(
      'consola del sistema',
      name: 'console_title',
      desc: 'console_title',
      args: [],
    );
  }

  /// `Copiar registros`
  String get console_tooltip_copy {
    return Intl.message(
      'Copiar registros',
      name: 'console_tooltip_copy',
      desc: 'console_tooltip_copy',
      args: [],
    );
  }

  /// `Limpiar troncos`
  String get console_tooltip_clear {
    return Intl.message(
      'Limpiar troncos',
      name: 'console_tooltip_clear',
      desc: 'console_tooltip_clear',
      args: [],
    );
  }

  /// `Esperando una acción...`
  String get console_waiting_action {
    return Intl.message(
      'Esperando una acción...',
      name: 'console_waiting_action',
      desc: 'console_waiting_action',
      args: [],
    );
  }

  /// `Seleccionar Imagen de Instalación de Windows`
  String get file_explorer_default_title {
    return Intl.message(
      'Seleccionar Imagen de Instalación de Windows',
      name: 'file_explorer_default_title',
      desc: 'file_explorer_default_title',
      args: [],
    );
  }

  /// `No se pudo leer el contenido del directorio.\n{error}`
  String file_explorer_read_error(String error) {
    return Intl.message(
      'No se pudo leer el contenido del directorio.\\n$error',
      name: 'file_explorer_read_error',
      desc: 'file_explorer_read_error',
      args: [error],
    );
  }

  /// `UNIDADES`
  String get file_explorer_drives_header {
    return Intl.message(
      'UNIDADES',
      name: 'file_explorer_drives_header',
      desc: 'file_explorer_drives_header',
      args: [],
    );
  }

  /// `Filtrar…`
  String get file_explorer_filter_hint {
    return Intl.message(
      'Filtrar…',
      name: 'file_explorer_filter_hint',
      desc: 'file_explorer_filter_hint',
      args: [],
    );
  }

  /// `Subir un nivel`
  String get file_explorer_go_up_tooltip {
    return Intl.message(
      'Subir un nivel',
      name: 'file_explorer_go_up_tooltip',
      desc: 'file_explorer_go_up_tooltip',
      args: [],
    );
  }

  /// `Ruta inválida: {val}`
  String file_explorer_invalid_path_error(String val) {
    return Intl.message(
      'Ruta inválida: $val',
      name: 'file_explorer_invalid_path_error',
      desc: 'file_explorer_invalid_path_error',
      args: [val],
    );
  }

  /// `Esta carpeta está vacía`
  String get file_explorer_empty_folder {
    return Intl.message(
      'Esta carpeta está vacía',
      name: 'file_explorer_empty_folder',
      desc: 'file_explorer_empty_folder',
      args: [],
    );
  }

  /// `Seleccionado: {path}`
  String file_explorer_selected_file(String path) {
    return Intl.message(
      'Seleccionado: $path',
      name: 'file_explorer_selected_file',
      desc: 'file_explorer_selected_file',
      args: [path],
    );
  }

  /// `Seleccione un archivo .wim o .swm`
  String get file_explorer_select_file_hint {
    return Intl.message(
      'Seleccione un archivo .wim o .swm',
      name: 'file_explorer_select_file_hint',
      desc: 'file_explorer_select_file_hint',
      args: [],
    );
  }

  /// `SELECCIONAR`
  String get common_select {
    return Intl.message(
      'SELECCIONAR',
      name: 'common_select',
      desc: 'common_select',
      args: [],
    );
  }

  /// `WIM integrado en la ISO`
  String get disk_wim_integrated_source {
    return Intl.message(
      'WIM integrado en la ISO',
      name: 'disk_wim_integrated_source',
      desc: 'disk_wim_integrated_source',
      args: [],
    );
  }

  /// `Puente: {imageName}`
  String disk_wim_bridge_source(String imageName) {
    return Intl.message(
      'Puente: $imageName',
      name: 'disk_wim_bridge_source',
      desc: 'disk_wim_bridge_source',
      args: [imageName],
    );
  }

  /// `Buscando imagen...`
  String get wim_status_searching_alt {
    return Intl.message(
      'Buscando imagen...',
      name: 'wim_status_searching_alt',
      desc: 'wim_status_searching_alt',
      args: [],
    );
  }

  /// `Imagen detectada`
  String get disk_wim_detected {
    return Intl.message(
      'Imagen detectada',
      name: 'disk_wim_detected',
      desc: 'disk_wim_detected',
      args: [],
    );
  }

  /// `Imagen no encontrada`
  String get disk_wim_not_found {
    return Intl.message(
      'Imagen no encontrada',
      name: 'disk_wim_not_found',
      desc: 'disk_wim_not_found',
      args: [],
    );
  }

  /// `CAMBIAR`
  String get common_change {
    return Intl.message(
      'CAMBIAR',
      name: 'common_change',
      desc: 'common_change',
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
