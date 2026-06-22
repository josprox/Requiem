import 'package:flutter/material.dart';

class RequiemConsolePanel extends StatelessWidget {
  final List<String> logs;
  final bool busy;
  final ScrollController controller;
  final VoidCallback onCopy;
  final VoidCallback onClear;

  const RequiemConsolePanel({
    super.key,
    required this.logs,
    required this.busy,
    required this.controller,
    required this.onCopy,
    required this.onClear,
  });

  @override
  Widget build(BuildContext context) {
    final scheme = Theme.of(context).colorScheme;

    return Container(
      decoration: BoxDecoration(
        color: Colors.black.withValues(alpha: 0.15),
        border: Border(
          left: BorderSide(
            color: Colors.white.withValues(alpha: 0.05),
            width: 1,
          ),
        ),
      ),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(20, 16, 12, 10),
            child: Row(
              children: [
                Icon(
                  busy ? Icons.sync_rounded : Icons.terminal_rounded,
                  size: 18,
                  color: busy ? Colors.amberAccent : Colors.tealAccent,
                ),
                const SizedBox(width: 10),
                const Expanded(
                  child: Text(
                    'Consola del Sistema',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      letterSpacing: -0.2,
                    ),
                  ),
                ),
                Tooltip(
                  message: 'Copiar logs',
                  child: IconButton(
                    onPressed: logs.isEmpty ? null : onCopy,
                    icon: const Icon(Icons.copy_all_rounded, size: 20),
                  ),
                ),
                Tooltip(
                  message: 'Limpiar logs',
                  child: IconButton(
                    onPressed: logs.isEmpty ? null : onClear,
                    icon: const Icon(Icons.clear_all_rounded, size: 20),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Container(
              margin: const EdgeInsets.fromLTRB(16, 0, 16, 16),
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.black.withValues(alpha: 0.35),
                borderRadius: BorderRadius.circular(12),
                border: Border.all(
                  color: Colors.white.withValues(alpha: 0.06),
                  width: 1,
                ),
              ),
              child: logs.isEmpty
                  ? Center(
                      child: Text(
                        'Esperando una acción...',
                        style: TextStyle(
                          color: Colors.white.withValues(alpha: 0.3),
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    )
                  : Scrollbar(
                      controller: controller,
                      thumbVisibility: true,
                      child: ListView.builder(
                        controller: controller,
                        itemCount: logs.length,
                        itemBuilder: (context, index) {
                          final log = logs[index];
                          final isError = log.contains('ERROR') ||
                              log.contains('no se') ||
                              log.contains('no esta');
                          final isOk = log.contains('OK') ||
                              log.contains('Configuracion') ||
                              log.contains('descargado');
                          return Padding(
                            padding: const EdgeInsets.only(right: 12, bottom: 8),
                            child: Text(
                              log,
                              style: TextStyle(
                                fontFamily: 'monospace',
                                fontSize: 11.5,
                                height: 1.4,
                                color: isError
                                    ? Colors.redAccent.shade100
                                    : isOk
                                        ? Colors.tealAccent
                                        : Colors.white.withValues(alpha: 0.65),
                              ),
                            ),
                          );
                        },
                      ),
                    ),
            ),
          ),
        ],
      ),
    );
  }
}
