import 'dart:io';
import 'package:flutter/material.dart';
import 'package:path/path.dart' as p;

class CustomFileExplorer extends StatefulWidget {
  final List<String> allowedExtensions;
  final String title;

  const CustomFileExplorer({
    super.key,
    this.allowedExtensions = const ['wim', 'swm'],
    this.title = 'Seleccionar Imagen de Instalación de Windows',
  });

  @override
  State<CustomFileExplorer> createState() => _CustomFileExplorerState();
}

class _CustomFileExplorerState extends State<CustomFileExplorer> {
  late Directory _currentDir;
  List<FileSystemEntity> _entities = [];
  List<FileSystemEntity> _filteredEntities = [];
  final TextEditingController _pathController = TextEditingController();
  final TextEditingController _searchController = TextEditingController();
  String? _selectedFilePath;
  bool _isLoading = false;
  String? _errorMessage;

  List<String> _drives = [];

  @override
  void initState() {
    super.initState();
    _loadDrives();
    _initInitialDirectory();
  }

  @override
  void dispose() {
    _pathController.dispose();
    _searchController.dispose();
    super.dispose();
  }

  void _loadDrives() {
    final list = <String>[];
    if (Platform.isWindows) {
      // Check X drive first (often WinPE boot drive)
      if (Directory('X:\\').existsSync()) {
        list.add('X:\\');
      }
      for (int i = 67; i <= 90; i++) { // C to Z
        final drive = '${String.fromCharCode(i)}:\\';
        if (Directory(drive).existsSync()) {
          list.add(drive);
        }
      }
      // Check A and B just in case
      for (int i = 65; i <= 66; i++) {
        final drive = '${String.fromCharCode(i)}:\\';
        if (Directory(drive).existsSync()) {
          list.add(drive);
        }
      }
    } else {
      list.add('/');
      if (Directory('/media').existsSync()) {
        list.add('/media');
      }
      if (Directory('/mnt').existsSync()) {
        list.add('/mnt');
      }
    }
    setState(() {
      _drives = list;
    });
  }

  void _initInitialDirectory() {
    // Try to start from the first drive that isn't C or X, otherwise the first drive available.
    String startPath = '';
    if (_drives.isNotEmpty) {
      startPath = _drives.first;
      // Prefer a non-system/non-boot drive if possible for installing from USB
      for (final drv in _drives) {
        if (!drv.startsWith('C:') && !drv.startsWith('X:')) {
          startPath = drv;
          break;
        }
      }
    } else {
      startPath = Platform.isWindows ? 'C:\\' : '/';
    }

    _navigateTo(Directory(startPath));
  }

  Future<void> _navigateTo(Directory dir) async {
    setState(() {
      _isLoading = true;
      _errorMessage = null;
      _currentDir = dir;
      _pathController.text = dir.path;
      _searchController.clear();
      _entities = [];
      _filteredEntities = [];
    });

    try {
      if (!dir.existsSync()) {
        throw Exception('Directory does not exist');
      }

      final List<FileSystemEntity> list = [];
      await for (final entity in dir.list()) {
        // Filter out hidden files/folders
        final name = p.basename(entity.path);
        if (name.startsWith('.')) continue;

        if (entity is Directory) {
          list.add(entity);
        } else if (entity is File) {
          // We show all files, but we only make WIM/SWM selectable or highlight them
          list.add(entity);
        }
      }

      // Sort: Directories first, then Files
      list.sort((a, b) {
        if (a is Directory && b is! Directory) return -1;
        if (a is! Directory && b is Directory) return 1;
        return p.basename(a.path).toLowerCase().compareTo(p.basename(b.path).toLowerCase());
      });

      setState(() {
        _entities = list;
        _filteredEntities = list;
        _isLoading = false;
      });
    } catch (e) {
      setState(() {
        _errorMessage = 'No se pudo leer el contenido del directorio.\n$e';
        _isLoading = false;
      });
    }
  }

  void _filterEntities(String query) {
    if (query.isEmpty) {
      setState(() {
        _filteredEntities = _entities;
      });
      return;
    }

    setState(() {
      _filteredEntities = _entities.where((entity) {
        final name = p.basename(entity.path).toLowerCase();
        return name.contains(query.toLowerCase());
      }).toList();
    });
  }

  void _goUp() {
    final parent = _currentDir.parent;
    if (parent.path != _currentDir.path) {
      _navigateTo(parent);
    }
  }

  bool _isAllowedFile(String path) {
    final ext = p.extension(path).replaceAll('.', '').toLowerCase();
    return widget.allowedExtensions.contains(ext);
  }

  @override
  Widget build(BuildContext context) {
    final scheme = Theme.of(context).colorScheme;
    final isRoot = _currentDir.path == _currentDir.parent.path;

    return Dialog(
      backgroundColor: scheme.surface,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(24),
        side: BorderSide(color: Colors.white.withValues(alpha: 0.1), width: 1.5),
      ),
      child: Container(
        width: 960,
        height: 600,
        clipBehavior: Clip.antiAlias,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(24),
        ),
        child: Row(
          children: [
            // ── Sidebar: Drives & Shortcuts ───────────────────────────────
            Container(
              width: 220,
              color: Colors.black.withValues(alpha: 0.2),
              padding: const EdgeInsets.symmetric(vertical: 24, horizontal: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Icon(Icons.storage_rounded, color: scheme.primary, size: 20),
                      const SizedBox(width: 8),
                      const Text(
                        'UNIDADES',
                        style: TextStyle(
                          fontWeight: FontWeight.w900,
                          fontSize: 13,
                          letterSpacing: 1.5,
                          color: Colors.white70,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 16),
                  Expanded(
                    child: ListView.builder(
                      itemCount: _drives.length,
                      itemBuilder: (context, index) {
                        final drive = _drives[index];
                        final isCurrent = _currentDir.path.startsWith(drive);

                        // Icon selection
                        IconData iconData = Icons.dns_outlined;
                        if (drive.startsWith('X:')) {
                          iconData = Icons.bolt_rounded;
                        } else if (drive.startsWith('C:')) {
                          iconData = Icons.computer_rounded;
                        } else if (Platform.isLinux && drive == '/') {
                          iconData = Icons.terminal_rounded;
                        } else if (drive.startsWith('D:') || drive.startsWith('E:') || drive.startsWith('F:')) {
                          iconData = Icons.usb_rounded;
                        }

                        return Padding(
                          padding: const EdgeInsets.only(bottom: 6),
                          child: InkWell(
                            onTap: () => _navigateTo(Directory(drive)),
                            borderRadius: BorderRadius.circular(12),
                            child: AnimatedContainer(
                              duration: const Duration(milliseconds: 150),
                              padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 12),
                              decoration: BoxDecoration(
                                color: isCurrent ? scheme.primary.withValues(alpha: 0.15) : Colors.transparent,
                                border: Border.all(
                                  color: isCurrent ? scheme.primary.withValues(alpha: 0.3) : Colors.transparent,
                                ),
                                borderRadius: BorderRadius.circular(12),
                              ),
                              child: Row(
                                children: [
                                  Icon(
                                    iconData,
                                    color: isCurrent ? scheme.primary : Colors.white60,
                                    size: 18,
                                  ),
                                  const SizedBox(width: 12),
                                  Expanded(
                                    child: Text(
                                      drive,
                                      style: TextStyle(
                                        color: isCurrent ? Colors.white : Colors.white70,
                                        fontWeight: isCurrent ? FontWeight.bold : FontWeight.normal,
                                        fontSize: 14,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),

            // ── Main Content Area ─────────────────────────────────────────
            Expanded(
              child: Column(
                children: [
                  // Header
                  Padding(
                    padding: const EdgeInsets.fromLTRB(24, 24, 24, 12),
                    child: Row(
                      children: [
                        Text(
                          widget.title,
                          style: const TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const Spacer(),
                        // Search bar
                        SizedBox(
                          width: 220,
                          height: 38,
                          child: TextField(
                            controller: _searchController,
                            onChanged: _filterEntities,
                            decoration: InputDecoration(
                              contentPadding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                              hintText: 'Filtrar…',
                              prefixIcon: const Icon(Icons.search_rounded, size: 16, color: Colors.white38),
                              fillColor: Colors.white.withValues(alpha: 0.03),
                            ),
                            style: const TextStyle(fontSize: 13),
                          ),
                        ),
                      ],
                    ),
                  ),

                  // Navigation toolbar (Back, Up, Path text field)
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 4),
                    child: Row(
                      children: [
                        IconButton(
                          onPressed: isRoot ? null : _goUp,
                          icon: const Icon(Icons.arrow_upward_rounded),
                          tooltip: 'Subir un nivel',
                          style: IconButton.styleFrom(
                            backgroundColor: Colors.white.withValues(alpha: 0.05),
                            disabledBackgroundColor: Colors.transparent,
                          ),
                        ),
                        const SizedBox(width: 8),
                        Expanded(
                          child: Container(
                            height: 40,
                            decoration: BoxDecoration(
                              color: Colors.black.withValues(alpha: 0.15),
                              borderRadius: BorderRadius.circular(12),
                              border: Border.all(color: Colors.white.withValues(alpha: 0.05)),
                            ),
                            child: TextField(
                              controller: _pathController,
                              style: const TextStyle(fontSize: 13, fontFamily: 'monospace'),
                              decoration: const InputDecoration(
                                contentPadding: EdgeInsets.symmetric(horizontal: 12, vertical: 10),
                                isDense: true,
                                border: InputBorder.none,
                                focusedBorder: InputBorder.none,
                                filled: false,
                              ),
                              onSubmitted: (val) {
                                final d = Directory(val);
                                if (d.existsSync()) {
                                  _navigateTo(d);
                                } else {
                                  ScaffoldMessenger.of(context).showSnackBar(
                                    SnackBar(content: Text('Ruta inválida: $val')),
                                  );
                                }
                              },
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),

                  const SizedBox(height: 12),

                  // Folder Contents
                  Expanded(
                    child: Container(
                      margin: const EdgeInsets.symmetric(horizontal: 24),
                      decoration: BoxDecoration(
                        color: Colors.black.withValues(alpha: 0.15),
                        borderRadius: BorderRadius.circular(16),
                        border: Border.all(color: Colors.white.withValues(alpha: 0.05)),
                      ),
                      child: _isLoading
                          ? const Center(child: CircularProgressIndicator())
                          : _errorMessage != null
                              ? Center(
                                  child: Padding(
                                    padding: const EdgeInsets.all(24.0),
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        Icon(Icons.error_outline_rounded, color: scheme.error, size: 48),
                                        const SizedBox(height: 16),
                                        Text(
                                          _errorMessage!,
                                          textAlign: TextAlign.center,
                                          style: TextStyle(color: Colors.white.withValues(alpha: 0.7)),
                                        ),
                                      ],
                                    ),
                                  ),
                                )
                              : _filteredEntities.isEmpty
                                  ? Center(
                                      child: Column(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: [
                                          Icon(Icons.folder_open_rounded, color: Colors.white24, size: 48),
                                          const SizedBox(height: 12),
                                          Text(
                                            'Esta carpeta está vacía',
                                            style: TextStyle(color: Colors.white38),
                                          ),
                                        ],
                                      ),
                                    )
                                  : ListView.builder(
                                      padding: const EdgeInsets.symmetric(vertical: 8),
                                      itemCount: _filteredEntities.length,
                                      itemBuilder: (context, index) {
                                        final entity = _filteredEntities[index];
                                        final isDir = entity is Directory;
                                        final name = p.basename(entity.path);
                                        final isAllowedFile = !isDir && _isAllowedFile(entity.path);
                                        final isSelected = _selectedFilePath == entity.path;

                                        // Styling depending on type
                                        Color? iconColor;
                                        IconData iconData;

                                        if (isDir) {
                                          iconData = Icons.folder_rounded;
                                          iconColor = Colors.amber.shade700;
                                        } else if (isAllowedFile) {
                                          iconData = Icons.album_rounded; // package or disc image
                                          iconColor = scheme.primary;
                                        } else {
                                          iconData = Icons.insert_drive_file_outlined;
                                          iconColor = Colors.white38;
                                        }

                                        return ListTile(
                                          dense: true,
                                          horizontalTitleGap: 8,
                                          leading: Icon(iconData, color: iconColor, size: 20),
                                          title: Text(
                                            name,
                                            style: TextStyle(
                                              color: isDir
                                                  ? Colors.white
                                                  : isAllowedFile
                                                      ? Colors.white
                                                      : Colors.white30,
                                              fontWeight: isAllowedFile || isDir ? FontWeight.bold : FontWeight.normal,
                                              fontSize: 14,
                                            ),
                                          ),
                                          selected: isSelected,
                                          selectedTileColor: scheme.primary.withValues(alpha: 0.15),
                                          onTap: () {
                                            if (isDir) {
                                              _navigateTo(entity);
                                            } else if (isAllowedFile) {
                                              setState(() {
                                                _selectedFilePath = entity.path;
                                              });
                                            }
                                          },
                                        );
                                      },
                                    ),
                    ),
                  ),

                  // Bottom Action Bar
                  Padding(
                    padding: const EdgeInsets.all(24),
                    child: Row(
                      children: [
                        Expanded(
                          child: Text(
                            _selectedFilePath != null
                                ? 'Seleccionado: ${p.basename(_selectedFilePath!)}'
                                : 'Seleccione un archivo .wim o .swm',
                            style: TextStyle(
                              color: _selectedFilePath != null ? Colors.white70 : Colors.white38,
                              fontSize: 13,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                        ),
                        const SizedBox(width: 16),
                        TextButton(
                          onPressed: () => Navigator.of(context).pop(),
                          style: TextButton.styleFrom(
                            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
                          ),
                          child: const Text('CANCELAR'),
                        ),
                        const SizedBox(width: 12),
                        FilledButton(
                          onPressed: _selectedFilePath != null
                              ? () => Navigator.of(context).pop(_selectedFilePath)
                              : null,
                          style: FilledButton.styleFrom(
                            backgroundColor: scheme.primary,
                            padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
                          ),
                          child: const Text('SELECCIONAR'),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
