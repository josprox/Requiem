import 'dart:convert';
import 'dart:io';

import 'package:path/path.dart' as p;

import '../models/post_install_config.dart';
import 'process_service.dart';

class PostInstallService {
  final ProcessService _processService = ProcessService();

  Future<bool> get hasWinget async {
    final result = await _processService.run('where.exe', ['winget']);
    return result.exitCode == 0;
  }

  Stream<String> activateWindowsKms({
    required String kmsHost,
    required KmsProduct product,
    required bool createRenewalTask,
  }) async* {
    if (!Platform.isWindows) {
      yield 'Windows KMS solo se ejecuta en Windows.';
      return;
    }

    final slmgr = p.join(
      Platform.environment['WINDIR'] ?? r'C:\Windows',
      'System32',
      'slmgr.vbs',
    );
    yield 'Configurando Windows KMS: ${product.name} -> $kmsHost';

    yield* _runAndYield('cscript.exe', [
      '//nologo',
      slmgr,
      '/ipk',
      product.key,
    ]);
    yield* _runAndYield('cscript.exe', [
      '//nologo',
      slmgr,
      '/skms',
      '$kmsHost:1688',
    ]);
    yield* _runAndYield('cscript.exe', ['//nologo', slmgr, '/ato']);

    if (createRenewalTask) {
      yield* createKmsRenewalTask(kmsHost: kmsHost);
    }
  }

  Stream<String> activateOfficeKms({
    required String kmsHost,
    required KmsProduct product,
    required bool createRenewalTask,
  }) async* {
    if (!Platform.isWindows) {
      yield 'Office KMS solo se ejecuta en Windows.';
      return;
    }

    final osppFiles = _findOsppScripts();
    if (osppFiles.isEmpty) {
      yield 'No se encontró ospp.vbs. Office de volumen no parece estar instalado.';
      return;
    }

    for (final ospp in osppFiles) {
      yield 'Configurando Office KMS: ${product.name} -> $kmsHost';
      yield 'Usando $ospp';
      yield* _runAndYield('cscript.exe', [
        '//nologo',
        ospp,
        '/sethst:$kmsHost',
      ]);
      yield* _runAndYield('cscript.exe', ['//nologo', ospp, '/setprt:1688']);
      yield* _runAndYield('cscript.exe', [
        '//nologo',
        ospp,
        '/inpkey:${product.key}',
      ]);
      yield* _runAndYield('cscript.exe', ['//nologo', ospp, '/act']);
    }

    if (createRenewalTask) {
      yield* createKmsRenewalTask(kmsHost: kmsHost);
    }
  }

  Stream<String> installOfficeWithOdt({
    required OfficeDeploymentOption option,
    required String kmsHost,
    required bool createRenewalTask,
  }) async* {
    if (!Platform.isWindows) {
      yield 'Office ODT solo se ejecuta en Windows.';
      return;
    }

    final programData =
        Platform.environment['ProgramData'] ?? r'C:\ProgramData';
    final workDir = Directory(
      p.join(programData, 'JossRed', 'MigrationTools', 'OfficeODT', option.id),
    );
    await workDir.create(recursive: true);

    final odtExe = File(p.join(workDir.path, 'officedeploymenttool.exe'));
    final setupExe = File(p.join(workDir.path, 'setup.exe'));
    final configFile = File(p.join(workDir.path, 'configuration.xml'));

    yield 'Preparando Office ODT en ${workDir.path}';

    if (!setupExe.existsSync()) {
      if (odtExe.existsSync() && odtExe.lengthSync() > 0) {
        yield 'ODT ya descargado: ${odtExe.path}';
      } else {
        yield 'Descargando Office Deployment Tool desde Microsoft...';
        try {
          final downloadUrl = await _fetchOdtDownloadUrl();
          if (downloadUrl == null) {
            yield 'ERROR: No se pudo obtener el enlace de descarga de ODT desde Microsoft.';
            return;
          }
          yield 'Enlace de descarga ODT encontrado: $downloadUrl';
          await _downloadFile(downloadUrl, odtExe.path);
          yield 'Descarga de ODT: OK';
        } catch (e) {
          yield 'ERROR al descargar ODT: $e';
          return;
        }
      }

      yield* _runAndYield(
        odtExe.path,
        ['/quiet', '/extract:${workDir.path}'],
        label: 'Extrayendo Office Deployment Tool',
        timeout: const Duration(minutes: 10),
        workingDirectory: workDir.path,
      );
    }

    if (!setupExe.existsSync()) {
      yield 'ERROR: setup.exe no aparecio despues de extraer ODT.';
      return;
    }

    await configFile.writeAsString(_officeConfigurationXml(option));
    yield 'Configuracion Office escrita: ${configFile.path}';
    yield '${option.name}: descargando archivos necesarios...';
    yield* _runAndYield(
      setupExe.path,
      ['/download', configFile.path],
      label: 'ODT download ${option.name}',
      timeout: const Duration(hours: 6),
      workingDirectory: workDir.path,
    );

    yield '${option.name}: instalando Office...';
    yield* _runAndYield(
      setupExe.path,
      ['/configure', configFile.path],
      label: 'ODT configure ${option.name}',
      timeout: const Duration(hours: 6),
      workingDirectory: workDir.path,
    );

    yield* activateOfficeKms(
      kmsHost: kmsHost,
      product: option.kmsProduct,
      createRenewalTask: createRenewalTask,
    );
  }

  Stream<String> createKmsRenewalTask({required String kmsHost}) async* {
    final programData =
        Platform.environment['ProgramData'] ?? r'C:\ProgramData';
    final targetDir = Directory(
      p.join(programData, 'JossRed', 'MigrationTools'),
    );
    await targetDir.create(recursive: true);

    final script = File(p.join(targetDir.path, 'kms-renew.cmd'));
    await script.writeAsString(_kmsRenewalScript(kmsHost));
    yield 'Script de renovación KMS creado: ${script.path}';

    final result = await _processService.run('schtasks.exe', [
      '/Create',
      '/TN',
      r'\JossRed\KMS Renewal',
      '/TR',
      'cmd.exe /c "${script.path}"',
      '/SC',
      'DAILY',
      '/MO',
      '160',
      '/RU',
      'SYSTEM',
      '/RL',
      'HIGHEST',
      '/F',
    ]);
    yield _formatResult('schtasks', result);
  }

  Stream<String> installPackages(List<PostInstallPackage> packages) async* {
    if (!Platform.isWindows) {
      yield 'La instalación de programas con winget solo se ejecuta en Windows.';
      return;
    }

    if (!await hasWinget) {
      yield 'winget no está instalado o no está en PATH.';
      return;
    }

    for (final package in packages) {
      yield 'Instalando ${package.name} (${package.wingetId})...';
      final result = await _processService.run('winget', [
        'install',
        '--id',
        package.wingetId,
        '--exact',
        '--silent',
        '--accept-source-agreements',
        '--accept-package-agreements',
      ], timeout: const Duration(hours: 2));
      yield _formatResult(package.name, result);
    }
  }

  Future<Set<String>> detectInstalledDefaults() async {
    if (!Platform.isWindows || !await hasWinget) return {};

    final installedText = await _installedPackagesText();
    final tempFile = File(
      p.join(
        Directory.systemTemp.path,
        'joss_winget_export_${DateTime.now().millisecondsSinceEpoch}.json',
      ),
    );
    try {
      final result = await _processService.run('winget', [
        'export',
        '-o',
        tempFile.path,
        '--accept-source-agreements',
      ]);
      if (result.exitCode != 0 || !tempFile.existsSync()) {
        return {
          for (final package in defaultPostInstallPackages)
            if (_isPackageDetected(package, const {}, installedText))
              package.id,
        };
      }

      final data = jsonDecode(await tempFile.readAsString());
      final ids = <String>{};
      final sources = data['Sources'] as List<dynamic>? ?? [];
      for (final source in sources) {
        final packages = source['Packages'] as List<dynamic>? ?? [];
        for (final package in packages) {
          final id = package['PackageIdentifier']?.toString();
          if (id != null) ids.add(id.toLowerCase());
        }
      }

      return {
        for (final package in defaultPostInstallPackages)
          if (_isPackageDetected(package, ids, installedText)) package.id,
      };
    } finally {
      if (tempFile.existsSync()) {
        try {
          await tempFile.delete();
        } catch (_) {}
      }
    }
  }

  Future<String> _installedPackagesText() async {
    final parts = <String>[];

    final wingetResult = await _processService.run('winget', [
      'list',
      '--accept-source-agreements',
    ], timeout: const Duration(minutes: 5));
    parts.add(wingetResult.stdout);
    parts.add(wingetResult.stderr);

    final registryResult = await _processService.run('powershell.exe', [
      '-NoProfile',
      '-ExecutionPolicy',
      'Bypass',
      '-Command',
      r'''
$paths = @(
  'HKLM:\Software\Microsoft\Windows\CurrentVersion\Uninstall\*',
  'HKLM:\Software\WOW6432Node\Microsoft\Windows\CurrentVersion\Uninstall\*',
  'HKCU:\Software\Microsoft\Windows\CurrentVersion\Uninstall\*'
)
Get-ItemProperty $paths -ErrorAction SilentlyContinue |
  Where-Object { $_.DisplayName } |
  ForEach-Object { $_.DisplayName }
''',
    ], timeout: const Duration(minutes: 5));
    parts.add(registryResult.stdout);
    parts.add(registryResult.stderr);

    return parts.join('\n').toLowerCase();
  }

  bool _isPackageDetected(
    PostInstallPackage package,
    Set<String> exportedIds,
    String installedText,
  ) {
    final wingetId = package.wingetId.toLowerCase();
    if (exportedIds.contains(wingetId)) return true;
    if (installedText.contains(wingetId)) return true;
    if (installedText.contains(package.name.toLowerCase())) return true;
    for (final name in package.detectNames) {
      if (installedText.contains(name.toLowerCase())) return true;
    }
    return false;
  }

  List<String> _findOsppScripts() {
    final roots = [
      Platform.environment['ProgramFiles'],
      Platform.environment['ProgramFiles(x86)'],
    ].whereType<String>();

    final candidates = <String>[];
    for (final root in roots) {
      for (final version in const ['Office16', 'Office15']) {
        candidates.add(p.join(root, 'Microsoft Office', version, 'ospp.vbs'));
        candidates.add(
          p.join(root, 'Microsoft Office', 'root', version, 'ospp.vbs'),
        );
      }
    }

    return candidates.where((path) => File(path).existsSync()).toSet().toList();
  }

  Stream<String> _runAndYield(
    String executable,
    List<String> arguments, {
    String? label,
    String? workingDirectory,
    Duration timeout = const Duration(minutes: 30),
  }) async* {
    final result = await _processService.run(
      executable,
      arguments,
      workingDirectory: workingDirectory,
      timeout: timeout,
    );
    yield _formatResult(label ?? '$executable ${arguments.join(' ')}', result);
  }

  String _formatResult(String label, ProcessResult result) {
    final output = [
      if (result.stdout.trim().isNotEmpty) result.stdout.trim(),
      if (result.stderr.trim().isNotEmpty) result.stderr.trim(),
    ].join('\n');
    final status = result.exitCode == 0 ? 'OK' : 'ERROR ${result.exitCode}';
    if (output.isEmpty) return '$label: $status';
    return '$label: $status\n$output';
  }

  String _kmsRenewalScript(String kmsHost) {
    return '''@echo off
setlocal
set KMS_HOST=$kmsHost
set KMS_PORT=1688
set LOG_DIR=%ProgramData%\\JossRed\\MigrationTools
if not exist "%LOG_DIR%" mkdir "%LOG_DIR%"
set LOG_FILE=%LOG_DIR%\\kms-renew.log

echo [%date% %time%] Starting KMS renewal >> "%LOG_FILE%"

if exist "%windir%\\System32\\slmgr.vbs" (
  cscript //nologo "%windir%\\System32\\slmgr.vbs" /skms %KMS_HOST%:%KMS_PORT% >> "%LOG_FILE%" 2>&1
  cscript //nologo "%windir%\\System32\\slmgr.vbs" /ato >> "%LOG_FILE%" 2>&1
)

for %%P in (
  "%ProgramFiles%\\Microsoft Office\\Office16"
  "%ProgramFiles%\\Microsoft Office\\Office15"
  "%ProgramFiles%\\Microsoft Office\\root\\Office16"
  "%ProgramFiles(x86)%\\Microsoft Office\\Office16"
  "%ProgramFiles(x86)%\\Microsoft Office\\Office15"
  "%ProgramFiles(x86)%\\Microsoft Office\\root\\Office16"
) do (
  if exist "%%~P\\ospp.vbs" (
    cscript //nologo "%%~P\\ospp.vbs" /sethst:%KMS_HOST% >> "%LOG_FILE%" 2>&1
    cscript //nologo "%%~P\\ospp.vbs" /setprt:%KMS_PORT% >> "%LOG_FILE%" 2>&1
    cscript //nologo "%%~P\\ospp.vbs" /act >> "%LOG_FILE%" 2>&1
  )
)

echo [%date% %time%] Finished KMS renewal >> "%LOG_FILE%"
endlocal
''';
  }


  String _officeConfigurationXml(OfficeDeploymentOption option) {
    final languages = option.languages
        .map((language) => '      <Language ID="${_xmlAttribute(language)}" />')
        .join('\n');
    return '''<Configuration>
  <Add OfficeClientEdition="${_xmlAttribute(option.clientEdition)}" Channel="${_xmlAttribute(option.channel)}">
    <Product ID="${_xmlAttribute(option.productId)}" PIDKEY="${_xmlAttribute(option.kmsProduct.key)}">
$languages
    </Product>
  </Add>
  <RemoveMSI />
  <Display Level="None" AcceptEULA="TRUE" />
  <Property Name="AUTOACTIVATE" Value="1" />
</Configuration>
''';
  }


  String _xmlAttribute(String value) {
    return value
        .replaceAll('&', '&amp;')
        .replaceAll('"', '&quot;')
        .replaceAll('<', '&lt;')
        .replaceAll('>', '&gt;');
  }

  Future<String?> _fetchOdtDownloadUrl() async {
    final client = HttpClient();
    try {
      final request = await client.getUrl(Uri.parse('https://www.microsoft.com/en-us/download/details.aspx?id=49117'));
      request.headers.set(HttpHeaders.userAgentHeader, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36');
      final response = await request.close();
      if (response.statusCode == 200) {
        final html = await response.transform(utf8.decoder).join();
        final regExp = RegExp(r'https://download\.microsoft\.com/[^\s"''<>]*?officedeploymenttool[^\s"''<>]*?\.exe');
        final match = regExp.firstMatch(html);
        return match?.group(0);
      }
    } catch (_) {
      // ignore
    } finally {
      client.close();
    }
    return null;
  }

  Future<void> _downloadFile(String url, String savePath) async {
    final client = HttpClient();
    try {
      final request = await client.getUrl(Uri.parse(url));
      final response = await request.close();
      if (response.statusCode != 200) {
        throw HttpException('Status code: ${response.statusCode}');
      }
      final file = File(savePath);
      final sink = file.openWrite();
      await response.pipe(sink);
    } finally {
      client.close();
    }
  }
}
