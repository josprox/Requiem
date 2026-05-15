import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../services/main_controller.dart';

class InstallationProgressScreen extends StatefulWidget {
  const InstallationProgressScreen({super.key});

  @override
  State<InstallationProgressScreen> createState() => _InstallationProgressScreenState();
}

class _InstallationProgressScreenState extends State<InstallationProgressScreen> with SingleTickerProviderStateMixin {
  late AnimationController _pulseController;
  final ScrollController _scrollController = ScrollController();

  @override
  void initState() {
    super.initState();
    _pulseController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 1500),
    )..repeat(reverse: true);

    WidgetsBinding.instance.addPostFrameCallback((_) {
      final ctrl = context.read<MainController>();
      ctrl.startInstallation(
        partitionMode: ctrl.pendingPartitionMode,
      );
    });
  }

  @override
  void dispose() {
    _pulseController.dispose();
    _scrollController.dispose();
    super.dispose();
  }

  void _scrollToBottom() {
    if (_scrollController.hasClients) {
      _scrollController.animateTo(
        _scrollController.position.maxScrollExtent,
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeOut,
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    final controller = context.watch<MainController>();
    final scheme = Theme.of(context).colorScheme;
    
    // Auto-scroll logs
    WidgetsBinding.instance.addPostFrameCallback((_) => _scrollToBottom());

    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(64),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Header Info
            Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'DEPLOYMENT IN PROGRESS',
                      style: TextStyle(
                        color: scheme.primary,
                        fontWeight: FontWeight.w900,
                        letterSpacing: 4,
                        fontSize: 14,
                      ),
                    ),
                    const SizedBox(height: 8),
                    Text(
                      controller.currentStatus.toUpperCase(),
                      style: Theme.of(context).textTheme.displaySmall?.copyWith(fontWeight: FontWeight.w900),
                    ),
                  ],
                ),
                const Spacer(),
                Text(
                  '${(controller.installProgress * 100).toInt()}%',
                  style: Theme.of(context).textTheme.displayLarge?.copyWith(
                    color: scheme.primary,
                    fontWeight: FontWeight.w900,
                  ),
                ),
              ],
            ),
            
            const SizedBox(height: 32),
            
            // Progress Bar Stack
            Stack(
              children: [
                Container(
                  height: 12,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: scheme.surfaceContainerHighest,
                    borderRadius: BorderRadius.circular(6),
                  ),
                ),
                AnimatedContainer(
                  duration: const Duration(milliseconds: 500),
                  height: 12,
                  width: MediaQuery.of(context).size.width * controller.installProgress,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [scheme.primary, scheme.secondary],
                    ),
                    borderRadius: BorderRadius.circular(6),
                    boxShadow: [
                      BoxShadow(
                        color: scheme.primary.withValues(alpha: 0.3),
                        blurRadius: 10,
                        offset: const Offset(0, 4),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            
            const SizedBox(height: 64),
            
            // Log Viewer
            Expanded(
              child: Container(
                padding: const EdgeInsets.all(24),
                decoration: BoxDecoration(
                  color: Colors.black.withValues(alpha: 0.3),
                  borderRadius: BorderRadius.circular(24),
                  border: Border.all(color: Colors.white.withValues(alpha: 0.05)),
                ),
                child: ListView.builder(
                  controller: _scrollController,
                  itemCount: controller.logs.length,
                  itemBuilder: (context, index) {
                    final log = controller.logs[index];
                    Color logColor = Colors.white.withValues(alpha: 0.7);
                    IconData icon = Icons.chevron_right_rounded;

                    if (log.contains('ERROR') || log.contains('failed')) {
                      logColor = scheme.error;
                      icon = Icons.error_outline_rounded;
                    } else if (log.contains('SUCCESS') || log.contains('completed')) {
                      logColor = Colors.greenAccent;
                      icon = Icons.check_circle_outline_rounded;
                    } else if (log.contains('WARNING')) {
                      logColor = Colors.orangeAccent;
                      icon = Icons.warning_amber_rounded;
                    }

                    return Padding(
                      padding: const EdgeInsets.only(bottom: 8.0),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Icon(icon, size: 18, color: logColor.withValues(alpha: 0.5)),
                          const SizedBox(width: 12),
                          Expanded(
                            child: Text(
                              log,
                              style: TextStyle(
                                color: logColor,
                                fontFamily: 'monospace',
                                fontSize: 14,
                                height: 1.4,
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
            
            const SizedBox(height: 32),
            
            // Footer Info
            Row(
              children: [
                Icon(Icons.info_outline_rounded, size: 16, color: Colors.white.withValues(alpha: 0.3)),
                const SizedBox(width: 8),
                Text(
                  'DO NOT DISCONNECT POWER OR REMOVE INSTALLATION MEDIA',
                  style: TextStyle(
                    color: Colors.white.withValues(alpha: 0.3),
                    fontSize: 12,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 1,
                  ),
                ),
                const Spacer(),
                if (controller.installProgress >= 1.0)
                  FilledButton.icon(
                    onPressed: () => controller.reboot(),
                    icon: const Icon(Icons.restart_alt_rounded),
                    label: const Text('RESTART SYSTEM'),
                  ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
