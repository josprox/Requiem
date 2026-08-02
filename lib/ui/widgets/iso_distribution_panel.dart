import 'dart:io';

import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:path/path.dart' as p;

import '../../services/bridge_server_service.dart';
import '../../services/iso_packaging_service.dart';
import 'panel.dart';

class IsoDistributionPanel extends StatefulWidget {
  final ValueChanged<String> onLog;

  const IsoDistributionPanel({super.key, required this.onLog});

  @override
  State<IsoDistributionPanel> createState() => _IsoDistributionPanelState();
}

class _IsoDistributionPanelState extends State<IsoDistributionPanel> {
  final IsoPackagingService _isoService = IsoPackagingService();
  final BridgeServerService _bridgeService = BridgeServerService();
  bool _busy = false;
  double? _progress;
  String? _wimPath;
  List<InternetAddress> _addresses = const [];
  InternetAddress? _selectedAddress;

  @override
  void initState() {
    super.initState();
    _loadAddresses();
  }

  @override
  void dispose() {
    _bridgeService.stop();
    super.dispose();
  }

  Future<void> _loadAddresses() async {
    try {
      final addresses = await BridgeServerService.privateIpv4Addresses();
      if (!mounted) return;
      setState(() {
        _addresses = addresses;
        _selectedAddress = addresses.isEmpty ? null : addresses.first;
      });
    } catch (error) {
      widget.onLog('No se pudieron enumerar las interfaces IPv4: $error');
    }
  }

  Future<void> _run(Future<void> Function() action) async {
    if (_busy) return;
    setState(() {
      _busy = true;
      _progress = null;
    });
    try {
      await action();
    } catch (error) {
      widget.onLog('ERROR: $error');
      if (mounted) {
        ScaffoldMessenger.of(
          context,
        ).showSnackBar(SnackBar(content: Text(error.toString())));
      }
    } finally {
      if (mounted) {
        setState(() {
          _busy = false;
          _progress = null;
        });
      }
    }
  }

  void _setProgress(double value) {
    if (mounted) setState(() => _progress = value.clamp(0, 1));
  }

  Future<void> _pickWim() async {
    final result = await FilePicker.platform.pickFiles(
      type: FileType.custom,
      allowedExtensions: const ['wim'],
      dialogTitle: 'Seleccionar imagen WIM de Windows',
    );
    final path = result?.files.single.path;
    if (path == null || !mounted) return;
    setState(() => _wimPath = path);
    widget.onLog('WIM seleccionado: $path');
  }

  Future<void> _downloadSimpleIso() async {
    final destination = await FilePicker.platform.saveFile(
      dialogTitle: 'Guardar ISO simple de Requiem',
      fileName: 'Requiem-Installer-Simple.iso',
      type: FileType.custom,
      allowedExtensions: const ['iso'],
    );
    if (destination == null) return;
    await _isoService.copySimpleIso(
      destinationPath: _ensureExtension(destination, '.iso'),
      onLog: widget.onLog,
      onProgress: _setProgress,
    );
  }

  Future<void> _packageWim() async {
    final wimPath = _wimPath;
    if (wimPath == null) {
      await _pickWim();
      if (_wimPath == null) return;
    }
    final destination = await FilePicker.platform.saveFile(
      dialogTitle: 'Guardar ISO de Requiem con WIM',
      fileName: 'Requiem-Windows-${p.basenameWithoutExtension(_wimPath!)}.iso',
      type: FileType.custom,
      allowedExtensions: const ['iso'],
    );
    if (destination == null) return;
    await _isoService.createIsoWithWim(
      wimPath: _wimPath!,
      destinationPath: _ensureExtension(destination, '.iso'),
      onLog: widget.onLog,
      onProgress: _setProgress,
    );
  }

  Future<void> _toggleBridge() async {
    if (_bridgeService.isRunning) {
      await _bridgeService.stop(onLog: widget.onLog);
      if (mounted) setState(() {});
      return;
    }
    if (_wimPath == null) await _pickWim();
    final address = _selectedAddress;
    if (_wimPath == null || address == null) {
      throw StateError('Seleccione un WIM y una interfaz IPv4 privada.');
    }
    await _bridgeService.start(
      sourceWimPath: _wimPath!,
      address: address,
      onLog: widget.onLog,
      onChanged: () {
        if (mounted) setState(() {});
      },
    );
    if (mounted) setState(() {});
  }

  String _ensureExtension(String path, String extension) =>
      path.toLowerCase().endsWith(extension) ? path : '$path$extension';

  @override
  Widget build(BuildContext context) {
    final scheme = Theme.of(context).colorScheme;
    return Column(
      children: [
        if (_busy) ...[
          LinearProgressIndicator(value: _progress),
          const SizedBox(height: 14),
        ],
        RequiemPanel(
          icon: Icons.album_rounded,
          accent: scheme.tertiary,
          title: 'Medio de instalación',
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Obtenga la ISO base para seleccionar un WIM al arrancar, o cree una ISO autónoma que ya incluya su imagen de Windows.',
              ),
              const SizedBox(height: 18),
              Wrap(
                spacing: 12,
                runSpacing: 12,
                children: [
                  OutlinedButton.icon(
                    onPressed: _busy ? null : () => _run(_downloadSimpleIso),
                    icon: const Icon(Icons.download_rounded),
                    label: const Text('OBTENER ISO PARA INSTALACIÓN SOLAMENTE'),
                  ),
                  OutlinedButton.icon(
                    onPressed: _busy ? null : _pickWim,
                    icon: const Icon(Icons.folder_open_rounded),
                    label: const Text('SELECCIONAR WIM'),
                  ),
                  FilledButton.icon(
                    onPressed: _busy ? null : () => _run(_packageWim),
                    icon: const Icon(Icons.inventory_2_rounded),
                    label: const Text('GENERAR ISO'),
                  ),
                ],
              ),
              if (_wimPath != null) ...[
                const SizedBox(height: 12),
                Text(
                  _wimPath!,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(color: Colors.white.withValues(alpha: 0.55)),
                ),
              ],
            ],
          ),
        ),
        const SizedBox(height: 18),
        RequiemPanel(
          icon: Icons.wifi_tethering_rounded,
          accent: scheme.secondary,
          title: 'Puente IPv4 de instalación',
          trailing: _bridgeService.isRunning
              ? Chip(
                  avatar: const Icon(
                    Icons.circle,
                    size: 10,
                    color: Colors.greenAccent,
                  ),
                  label: Text('${_bridgeService.servedClients} conexiones'),
                )
              : null,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Prepara el WIM una sola vez y lo transmite directamente a los clientes Requiem de la misma red. Los clientes no guardan el WIM antes de instalar.',
              ),
              const SizedBox(height: 16),
              DropdownButtonFormField<InternetAddress>(
                initialValue: _selectedAddress,
                decoration: const InputDecoration(
                  labelText: 'Interfaz Wi‑Fi/LAN IPv4',
                  prefixIcon: Icon(Icons.lan_rounded),
                ),
                items: [
                  for (final address in _addresses)
                    DropdownMenuItem(
                      value: address,
                      child: Text(address.address),
                    ),
                ],
                onChanged: _bridgeService.isRunning
                    ? null
                    : (value) => setState(() => _selectedAddress = value),
              ),
              const SizedBox(height: 14),
              FilledButton.icon(
                onPressed: _busy ? null : () => _run(_toggleBridge),
                icon: Icon(
                  _bridgeService.isRunning
                      ? Icons.stop_circle_rounded
                      : Icons.play_circle_rounded,
                ),
                label: Text(
                  _bridgeService.isRunning
                      ? 'DETENER PUENTE'
                      : 'PREPARAR E INICIAR PUENTE',
                ),
              ),
              const SizedBox(height: 10),
              Text(
                'Puerto HTTP 40124 · descubrimiento UDP 40123. Si Windows Defender pregunta, permita acceso en redes privadas.',
                style: TextStyle(
                  color: Colors.white.withValues(alpha: 0.45),
                  fontSize: 12,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
