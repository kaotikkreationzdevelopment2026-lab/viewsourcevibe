import 'package:flutter/services.dart';
import 'package:material_ui/material_ui.dart';
import 'package:view_source_vibe/services/server_source_service.dart';

/// Shows the raw response a plain HTTP GET returns for [url].
class ServerSourceScreen extends StatefulWidget {
  final String url;
  const ServerSourceScreen({super.key, required this.url});

  @override
  State<ServerSourceScreen> createState() => _ServerSourceScreenState();
}

class _ServerSourceScreenState extends State<ServerSourceScreen> {
  static const int _maxChars = 500000;
  late Future<ServerSourceResult> _future;

  @override
  void initState() {
    super.initState();
    _future = ServerSourceService.fetch(widget.url);
  }

  void _reload() {
    setState(() => _future = ServerSourceService.fetch(widget.url));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Server source'),
        actions: [
          IconButton(
            icon: const Icon(Icons.refresh),
            tooltip: 'Fetch again',
            onPressed: _reload,
          ),
        ],
      ),
      body: FutureBuilder<ServerSourceResult>(
        future: _future,
        builder: (context, snapshot) {
          if (snapshot.connectionState != ConnectionState.done) {
            return const Center(child: CircularProgressIndicator());
          }
          if (snapshot.hasError) {
            return Center(
              child: Padding(
                padding: const EdgeInsets.all(24),
                child: Text('Could not fetch the page:\n${snapshot.error}'),
              ),
            );
          }
          return _buildResult(context, snapshot.data!);
        },
      ),
    );
  }

  Widget _buildResult(BuildContext context, ServerSourceResult r) {
    final mono = const TextStyle(fontFamily: 'monospace', fontSize: 12);
    final truncated = r.body.length > _maxChars;
    final shown = truncated ? r.body.substring(0, _maxChars) : r.body;
    return DefaultTabController(
      length: 3,
      child: Column(
        children: [
          ListTile(
            dense: true,
            title: Text('${r.statusCode} ${r.reasonPhrase ?? ''}'),
            subtitle: Text(
              '${r.finalUrl}\n${r.bodyBytes} bytes in '
              '${r.elapsed.inMilliseconds} ms',
            ),
            isThreeLine: true,
            trailing: IconButton(
              icon: const Icon(Icons.copy),
              tooltip: 'Copy source',
              onPressed: () {
                Clipboard.setData(ClipboardData(text: r.body));
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text('Source copied')),
                );
              },
            ),
          ),
          const TabBar(tabs: [
            Tab(text: 'Source'),
            Tab(text: 'Headers'),
            Tab(text: 'Redirects'),
          ]),
          Expanded(
            child: TabBarView(children: [
              SingleChildScrollView(
                padding: const EdgeInsets.all(12),
                child: SelectableText(
                  truncated
                      ? '$shown\n\n[Truncated at $_maxChars characters. '
                          'Use Copy for the full source.]'
                      : shown,
                  style: mono,
                ),
              ),
              ListView(
                children: [
                  for (final e in r.headers.entries)
                    ListTile(
                      dense: true,
                      title: Text(e.key),
                      subtitle: SelectableText(e.value),
                    ),
                ],
              ),
              r.redirects.isEmpty
                  ? const Center(child: Text('No redirects'))
                  : ListView(
                      children: [
                        for (final h in r.redirects)
                          ListTile(
                            dense: true,
                            title: Text('${h.status}'),
                            subtitle: Text('${h.from}\n→ ${h.to}'),
                            isThreeLine: true,
                          ),
                      ],
                    ),
            ]),
          ),
        ],
      ),
    );
  }
}
