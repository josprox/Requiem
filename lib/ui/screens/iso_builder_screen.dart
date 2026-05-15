import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import 'package:file_picker/file_picker.dart';
import 'package:window_manager/window_manager.dart';
import '../../services/main_controller.dart';

class IsoBuilderScreen extends StatefulWidget {
  const IsoBuilderScreen({super.key});

  @override
  State<IsoBuilderScreen> createState() => _IsoBuilderScreenState();
}

class _IsoBuilderScreenState extends State<IsoBuilderScreen> {
  final ScrollController _scrollController = ScrollController();

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  void _scrollToBottom() {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (_scrollController.hasClients) {
        _scrollController.animateTo(
          _scrollController.position.maxScrollExtent,
          duration: const Duration(milliseconds: 300),
          curve: Curves.easeOut,
        );
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    final controller = context.watch<MainController>();
    
    // Auto-scroll when logs change
    if (controller.logs.isNotEmpty) {
      _scrollToBottom();
    }

    return Scaffold(
      body: Column(
        children: [
          // Custom Title Bar for Windows
          const SizedBox(
            height: 32,
            child: DragToMoveArea(
              child: WindowCaption(
                brightness: Brightness.dark,
                backgroundColor: Colors.transparent,
                title: Text(
                  'JOSS RED ISO BUILDER',
                  style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold, letterSpacing: 1),
                ),
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.fromLTRB(64, 32, 64, 64),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Left Side: Configuration
                  Expanded(
                    flex: 1,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Build Your Custom ISO',
                          style: Theme.of(context).textTheme.displaySmall?.copyWith(fontWeight: FontWeight.w900),
                        ),
                        const SizedBox(height: 12),
                        Text(
                          'Automate the creation of a bootable WinPE media with Joss Red Installer pre-injected.',
                          style: TextStyle(color: Colors.white.withValues(alpha: 0.5), fontSize: 18),
                        ),
                        const SizedBox(height: 64),
                        
                        // WIM Selection
                        _buildSectionHeader(context, 'SOURCE WINDOWS IMAGE', Icons.file_open_rounded),
                        const SizedBox(height: 16),
                        _buildPathSelector(
                          context,
                          path: controller.selectedWimPath,
                          label: 'Select install.wim or install.swm',
                          onTap: () async {
                            FilePickerResult? result = await FilePicker.platform.pickFiles(
                              type: FileType.custom,
                              allowedExtensions: ['wim', 'swm'],
                            );
                            if (result != null) controller.setWimPath(result.files.single.path!);
                          },
                        ),
                        
                        const SizedBox(height: 48),
                        
                        // Output Selection
                        _buildSectionHeader(context, 'OUTPUT DESTINATION', Icons.save_rounded),
                        const SizedBox(height: 16),
                        _buildPathSelector(
                          context,
                          path: controller.outputIsoPath,
                          label: 'Select where to save the ISO',
                          onTap: () async {
                            String? result = await FilePicker.platform.saveFile(
                              fileName: 'JossRedInstaller.iso',
                              allowedExtensions: ['iso'],
                            );
                            if (result != null) controller.setOutputPath(result);
                          },
                        ),
                        
                        const Spacer(),
                        
                        // Action Button
                        SizedBox(
                          width: double.infinity,
                          child: FilledButton.icon(
                            onPressed: controller.isBuildingIso || controller.selectedWimPath == null || controller.outputIsoPath == null
                                ? null
                                : () => controller.buildFinalIso(),
                            icon: controller.isBuildingIso 
                                ? const SizedBox(width: 20, height: 20, child: CircularProgressIndicator(strokeWidth: 2, color: Colors.white))
                                : const Icon(Icons.auto_fix_high_rounded),
                            label: Text(controller.isBuildingIso ? 'CONSTRUCTING...' : 'BUILD ISO NOW'),
                            style: FilledButton.styleFrom(
                              padding: const EdgeInsets.all(24),
                              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  
                  const SizedBox(width: 64),
                  
                  // Right Side: Progress Logs
                  Expanded(
                    flex: 1,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text('BUILD CONSOLE', style: TextStyle(fontWeight: FontWeight.bold, letterSpacing: 2)),
                            IconButton(
                              onPressed: () {
                                final allLogs = controller.logs.join('\n');
                                Clipboard.setData(ClipboardData(text: allLogs));
                                ScaffoldMessenger.of(context).showSnackBar(
                                  const SnackBar(content: Text('Logs copied to clipboard!')),
                                );
                              },
                              icon: const Icon(Icons.copy_all_rounded, size: 20),
                              tooltip: 'Copy logs to clipboard',
                              style: IconButton.styleFrom(
                                backgroundColor: Colors.white.withValues(alpha: 0.05),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 16),
                        Expanded(
                          child: Container(
                            width: double.infinity,
                            padding: const EdgeInsets.all(24),
                            decoration: BoxDecoration(
                              color: Colors.black.withValues(alpha: 0.3),
                              borderRadius: BorderRadius.circular(24),
                              border: Border.all(color: Colors.white.withValues(alpha: 0.05)),
                            ),
                            child: Scrollbar(
                              controller: _scrollController,
                              thumbVisibility: true,
                              child: ListView.builder(
                                controller: _scrollController,
                                itemCount: controller.logs.length,
                                itemBuilder: (context, index) {
                                  final log = controller.logs[index];
                                  final isError = log.contains('ERROR') || log.contains('CRITICAL');
                                  return Padding(
                                    padding: const EdgeInsets.only(bottom: 8.0, right: 12.0),
                                    child: Row(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          '[${DateTime.now().hour.toString().padLeft(2, '0')}:${DateTime.now().minute.toString().padLeft(2, '0')}:${DateTime.now().second.toString().padLeft(2, '0')}] ',
                                          style: TextStyle(fontFamily: 'monospace', fontSize: 11, color: Colors.white.withValues(alpha: 0.3)),
                                        ),
                                        Expanded(
                                          child: Text(
                                            log,
                                            style: TextStyle(
                                              fontFamily: 'monospace', 
                                              fontSize: 13, 
                                              color: isError ? Colors.redAccent : Colors.white70,
                                              fontWeight: isError ? FontWeight.bold : FontWeight.normal,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  );
                                },
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildSectionHeader(BuildContext context, String title, IconData icon) {
    return Row(
      children: [
        Icon(icon, size: 18, color: Theme.of(context).colorScheme.primary),
        const SizedBox(width: 8),
        Text(
          title,
          style: const TextStyle(fontWeight: FontWeight.bold, letterSpacing: 1),
        ),
      ],
    );
  }

  Widget _buildPathSelector(BuildContext context, {required String? path, required String label, required VoidCallback onTap}) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(16),
      child: Container(
        padding: const EdgeInsets.all(20),
        decoration: BoxDecoration(
          color: Colors.white.withValues(alpha: 0.05),
          borderRadius: BorderRadius.circular(16),
          border: Border.all(color: Colors.white.withValues(alpha: 0.1)),
        ),
        child: Row(
          children: [
            Expanded(
              child: Text(
                path ?? label,
                style: TextStyle(
                  color: path != null ? Colors.white : Colors.white.withValues(alpha: 0.3),
                  fontStyle: path != null ? FontStyle.normal : FontStyle.italic,
                ),
                overflow: TextOverflow.ellipsis,
              ),
            ),
            Icon(Icons.add_circle_outline_rounded, color: Theme.of(context).colorScheme.primary),
          ],
        ),
      ),
    );
  }
}
