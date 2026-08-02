import 'dart:convert';
import 'dart:io';

import 'package:crypto/crypto.dart';
import 'package:path/path.dart' as p;
import 'package:path_provider/path_provider.dart';

import 'process_service.dart';

class ReleaseIsoAsset {
  final String name;
  final Uri downloadUri;
  final String tag;

  const ReleaseIsoAsset({
    required this.name,
    required this.downloadUri,
    required this.tag,
  });
}

class IsoPackagingService {
  static const repository = 'josprox/Constructor-de-ISO';
  static final _isoAssetPattern = RegExp(
    r'^Requiem-Installer-ISO-v.+\.iso$',
    caseSensitive: false,
  );

  final ProcessService _processService;
  final HttpClient _httpClient;

  IsoPackagingService({ProcessService? processService, HttpClient? httpClient})
    : _processService = processService ?? ProcessService(),
      _httpClient = httpClient ?? HttpClient();

  static ReleaseIsoAsset? selectIsoAsset(Map<String, dynamic> release) {
    final assets = release['assets'];
    if (assets is! List) return null;
    for (final entry in assets) {
      if (entry is! Map<String, dynamic>) continue;
      final name = entry['name'];
      final url = entry['browser_download_url'];
      if (name is String && url is String && _isoAssetPattern.hasMatch(name)) {
        return ReleaseIsoAsset(
          name: name,
          downloadUri: Uri.parse(url),
          tag: release['tag_name']?.toString() ?? 'latest',
        );
      }
    }
    return null;
  }

  Future<ReleaseIsoAsset> latestIsoAsset() async {
    final request = await _httpClient.getUrl(
      Uri.https('api.github.com', '/repos/$repository/releases/latest'),
    );
    request.headers
      ..set(HttpHeaders.acceptHeader, 'application/vnd.github+json')
      ..set(HttpHeaders.userAgentHeader, 'Requiem-Tools');
    final response = await request.close();
    final body = await utf8.decodeStream(response);
    if (response.statusCode != HttpStatus.ok) {
      throw StateError(
        'GitHub respondió HTTP ${response.statusCode} al consultar el lanzamiento.',
      );
    }
    final json = jsonDecode(body);
    if (json is! Map<String, dynamic>) {
      throw const FormatException('Respuesta de lanzamiento no válida.');
    }
    final asset = selectIsoAsset(json);
    if (asset == null) {
      throw StateError(
        'El último lanzamiento no contiene la ISO base de Requiem.',
      );
    }
    return asset;
  }

  Future<File> downloadBaseIso({
    required void Function(String message) onLog,
    void Function(double progress)? onProgress,
  }) async {
    final asset = await latestIsoAsset();
    final cacheRoot = await getApplicationCacheDirectory();
    final cacheDir = Directory(p.join(cacheRoot.path, 'iso-cache'));
    await cacheDir.create(recursive: true);
    final destination = File(p.join(cacheDir.path, asset.name));
    if (await destination.exists() &&
        await destination.length() > 64 * 1024 * 1024) {
      onLog('Usando ISO base ${asset.tag} desde la caché local.');
      onProgress?.call(1);
      return destination;
    }

    onLog('Descargando ISO base ${asset.tag} desde GitHub Releases...');
    final partial = File('${destination.path}.part');
    final request = await _httpClient.getUrl(asset.downloadUri);
    request.headers.set(HttpHeaders.userAgentHeader, 'Requiem-Tools');
    final response = await request.close();
    if (response.statusCode != HttpStatus.ok) {
      throw StateError(
        'No se pudo descargar la ISO: HTTP ${response.statusCode}.',
      );
    }
    final total = response.contentLength;
    var received = 0;
    final sink = partial.openWrite();
    try {
      await for (final chunk in response) {
        sink.add(chunk);
        received += chunk.length;
        if (total > 0) onProgress?.call(received / total);
      }
      await sink.flush();
    } finally {
      await sink.close();
    }
    await partial.rename(destination.path);
    onProgress?.call(1);
    onLog('ISO base descargada correctamente.');
    return destination;
  }

  Future<void> copySimpleIso({
    required String destinationPath,
    required void Function(String message) onLog,
    void Function(double progress)? onProgress,
  }) async {
    final baseIso = await downloadBaseIso(onLog: onLog, onProgress: onProgress);
    await _copyFile(baseIso, File(destinationPath), onProgress);
    onLog('ISO simple guardada en $destinationPath');
  }

  Future<void> createIsoWithWim({
    required String wimPath,
    required String destinationPath,
    required void Function(String message) onLog,
    void Function(double progress)? onProgress,
  }) async {
    final wim = File(wimPath);
    if (!await wim.exists()) {
      throw ArgumentError('El WIM seleccionado no existe.');
    }
    final baseIso = await downloadBaseIso(
      onLog: onLog,
      onProgress: (value) => onProgress?.call(value * 0.35),
    );
    final xorriso = await _findBundledTool(
      relativeParts: ['tools', 'xorriso', 'xorriso.exe'],
      fallbackNames: ['xorriso.exe', 'xorriso'],
    );
    if (xorriso == null) {
      throw StateError(
        'No se encontró xorriso. Reinstale Requiem con el paquete de distribución completo.',
      );
    }

    onLog('Calculando SHA-256 del WIM...');
    final digest = await sha256.bind(wim.openRead()).first;
    final temp = await getTemporaryDirectory();
    final workingDir = Directory(
      p.join(temp.path, 'requiem-iso-${DateTime.now().microsecondsSinceEpoch}'),
    );
    final tree = Directory(p.join(workingDir.path, 'tree'));
    final manifest = File(p.join(workingDir.path, 'manifest.json'));
    await tree.create(recursive: true);
    try {
      await manifest.writeAsString(
        const JsonEncoder.withIndent('  ').convert({
          'schema': 1,
          'kind': 'embedded-wim',
          'originalName': p.basename(wim.path),
          'size': await wim.length(),
          'sha256': digest.toString(),
          'imageIndex': 1,
          'createdAt': DateTime.now().toUtc().toIso8601String(),
        }),
      );

      onLog('Extrayendo la estructura de la ISO base...');
      onProgress?.call(0.40);
      final extraction = await _processService.run(xorriso, [
        '-osirrox',
        'on',
        '-indev',
        toXorrisoCompoundPath(baseIso.path),
        '-extract',
        '/',
        toXorrisoCompoundPath(tree.path),
      ], timeout: const Duration(hours: 1));
      if (!extraction.success) {
        throw StateError(
          'xorriso no pudo extraer la ISO base: ${extraction.stderr.trim()}',
        );
      }

      final destination = File(destinationPath);
      if (await destination.exists()) await destination.delete();
      final basePath = toXorrisoCompoundPath(baseIso.path);
      final treePath = toXorrisoCompoundPath(tree.path);
      final wimInput = toXorrisoCompoundPath(wim.path);
      final manifestInput = toXorrisoCompoundPath(manifest.path);

      onLog('Empaquetando WIM y reconstruyendo el arranque híbrido...');
      onProgress?.call(0.55);
      final result = await _processService.run(xorriso, [
        '-as',
        'mkisofs',
        '-V',
        'REQUIEM',
        '-iso-level',
        '3',
        '--grub2-mbr',
        '--interval:local_fs:0s-15s:zero_mbrpt,zero_gpt,zero_apm:$basePath',
        '--protective-msdos-label',
        '-partition_cyl_align',
        'off',
        '-partition_offset',
        '0',
        '-partition_hd_cyl',
        '64',
        '-partition_sec_hd',
        '32',
        '-apm-block-size',
        '2048',
        '-hfsplus',
        '-efi-boot-part',
        '--efi-boot-image',
        '-c',
        '/boot.catalog',
        '-b',
        '/boot/grub/i386-pc/eltorito.img',
        '-no-emul-boot',
        '-boot-load-size',
        '4',
        '-boot-info-table',
        '--grub2-boot-info',
        '-eltorito-alt-boot',
        '-e',
        '/efi.img',
        '-no-emul-boot',
        '-boot-load-size',
        '5760',
        '-o',
        destination.path,
        '-graft-points',
        '/=$treePath',
        '/requiem/payload/install.wim=$wimInput',
        '/requiem/payload/manifest.json=$manifestInput',
      ], timeout: const Duration(hours: 4));
      if (!result.success) {
        throw StateError(
          'xorriso no pudo generar la ISO: ${result.stderr.trim()}',
        );
      }

      final payloadValidation = await _processService.run(xorriso, [
        '-indev',
        destination.path,
        '-ls',
        '/requiem/payload/install.wim',
      ], timeout: const Duration(minutes: 10));
      final bootValidation = await _processService.run(xorriso, [
        '-indev',
        destination.path,
        '-report_el_torito',
        'plain',
      ], timeout: const Duration(minutes: 10));
      final payloadText =
          '${payloadValidation.stdout}\n${payloadValidation.stderr}';
      final bootText = '${bootValidation.stdout}\n${bootValidation.stderr}';
      if (!payloadValidation.success ||
          !bootValidation.success ||
          !payloadText.contains('/requiem/payload/install.wim') ||
          !bootText.contains('BIOS') ||
          !bootText.contains('UEFI')) {
        if (await destination.exists()) await destination.delete();
        throw StateError(
          'La ISO fue escrita, pero no superó la validación de payload y arranque BIOS/UEFI.',
        );
      }
      onProgress?.call(1);
      onLog('ISO con WIM creada y validada en ${destination.path}');
    } finally {
      try {
        await _deleteWorkingDirectory(workingDir);
      } catch (error) {
        onLog('Advertencia: no se pudo limpiar el directorio temporal: $error');
      }
    }
  }

  static String toXorrisoCompoundPath(String value, {bool? windows}) {
    if (!(windows ?? Platform.isWindows)) return value;
    final normalized = value.replaceAll('\\', '/');
    final drivePath = RegExp(r'^([A-Za-z]):/(.*)$').firstMatch(normalized);
    if (drivePath == null) return normalized;
    final drive = drivePath.group(1)!.toLowerCase();
    final rest = drivePath.group(2)!;
    return '/cygdrive/$drive/$rest';
  }

  Future<void> _deleteWorkingDirectory(Directory directory) async {
    if (!await directory.exists()) return;
    if (Platform.isWindows) {
      await _processService.run('attrib.exe', [
        '-R',
        '-S',
        '-H',
        p.join(directory.path, '*'),
        '/S',
        '/D',
      ], timeout: const Duration(minutes: 10));
    }
    await directory.delete(recursive: true);
  }

  Future<String?> _findBundledTool({
    required List<String> relativeParts,
    required List<String> fallbackNames,
  }) async {
    final executableDir = p.dirname(Platform.resolvedExecutable);
    final bundled = File(p.joinAll([executableDir, ...relativeParts]));
    if (await bundled.exists()) return bundled.path;
    for (final name in fallbackNames) {
      final result = await _processService.run(
        Platform.isWindows ? 'where.exe' : 'which',
        [name],
        timeout: const Duration(seconds: 10),
      );
      if (result.success && result.stdout.trim().isNotEmpty) {
        return result.stdout.trim().split(RegExp(r'[\r\n]+')).first;
      }
    }
    return null;
  }

  Future<void> _copyFile(
    File source,
    File destination,
    void Function(double progress)? onProgress,
  ) async {
    final total = await source.length();
    var copied = 0;
    final sink = destination.openWrite();
    try {
      await for (final chunk in source.openRead()) {
        sink.add(chunk);
        copied += chunk.length;
        if (total > 0) onProgress?.call(copied / total);
      }
      await sink.flush();
    } finally {
      await sink.close();
    }
  }
}
