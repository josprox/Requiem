import 'dart:io';

import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:path/path.dart' as p;

import '../../services/bridge_server_service.dart';
import '../../services/iso_packaging_service.dart';
import '../../core/localizations.dart';
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
      if (mounted) {
        widget.onLog(context.l10n.iso_bridge_list_interfaces_error(error.toString()));
      }
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
    final t = context.l10n;
    final result = await FilePicker.platform.pickFiles(
      type: FileType.custom,
      allowedExtensions: const ['wim'],
      dialogTitle: t.iso_bridge_select_wim_dialog,
    );
    final path = result?.files.single.path;
    if (path == null || !mounted) return;
    setState(() => _wimPath = path);
    widget.onLog(t.iso_bridge_wim_selected_log(path));
  }

  Future<void> _downloadSimpleIso() async {
    final t = context.l10n;
    final destination = await FilePicker.platform.saveFile(
      dialogTitle: t.iso_bridge_save_simple_iso_dialog,
      fileName: t.iso_bridge_simple_iso_filename,
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
    final t = context.l10n;
    final wimPath = _wimPath;
    if (wimPath == null) {
      await _pickWim();
      if (_wimPath == null) return;
    }
    final destination = await FilePicker.platform.saveFile(
      dialogTitle: t.iso_bridge_save_wim_iso_dialog,
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
    final t = context.l10n;
    if (_bridgeService.isRunning) {
      await _bridgeService.stop(onLog: widget.onLog);
      if (mounted) setState(() {});
      return;
    }
    if (_wimPath == null) await _pickWim();
    final address = _selectedAddress;
    if (_wimPath == null || address == null) {
      throw StateError(t.iso_bridge_start_validation_error);
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
    final t = context.l10n;
    return Column(
      children: [
        if (_busy) ...[
          LinearProgressIndicator(value: _progress),
          const SizedBox(height: 14),
        ],
        RequiemPanel(
          icon: Icons.album_rounded,
          accent: scheme.tertiary,
          title: t.iso_panel_title_media,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                t.iso_panel_desc_media,
              ),
              const SizedBox(height: 18),
              Wrap(
                spacing: 12,
                runSpacing: 12,
                children: [
                  OutlinedButton.icon(
                    onPressed: _busy ? null : () => _run(_downloadSimpleIso),
                    icon: const Icon(Icons.download_rounded),
                    label: Text(t.iso_panel_button_simple_iso),
                  ),
                  OutlinedButton.icon(
                    onPressed: _busy ? null : _pickWim,
                    icon: const Icon(Icons.folder_open_rounded),
                    label: Text(t.iso_panel_button_select_wim),
                  ),
                  FilledButton.icon(
                    onPressed: _busy ? null : () => _run(_packageWim),
                    icon: const Icon(Icons.inventory_2_rounded),
                    label: Text(t.iso_panel_button_generate_iso),
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
          title: t.iso_panel_title_bridge,
          trailing: _bridgeService.isRunning
              ? Chip(
                  avatar: const Icon(
                    Icons.circle,
                    size: 10,
                    color: Colors.greenAccent,
                  ),
                  label: Text(t.iso_bridge_clients_count('${_bridgeService.servedClients}')),
                )
              : null,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                t.iso_bridge_desc,
              ),
              const SizedBox(height: 16),
              DropdownButtonFormField<InternetAddress>(
                initialValue: _selectedAddress,
                decoration: InputDecoration(
                  labelText: t.networkInterface,
                  prefixIcon: const Icon(Icons.lan_rounded),
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
                      ? t.stopBridge.toUpperCase()
                      : t.prepareBridge.toUpperCase(),
                ),
              ),
              const SizedBox(height: 10),
              Text(
                t.bridgePorts,
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
