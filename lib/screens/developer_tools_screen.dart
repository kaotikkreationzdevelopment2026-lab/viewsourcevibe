import 'package:material_ui/material_ui.dart';
import 'package:provider/provider.dart';
import 'package:view_source_vibe/features/feature_module.dart';
import 'package:view_source_vibe/features/feature_registry.dart';
import 'package:view_source_vibe/models/settings.dart';

/// Home for developer-only tools. Reachable only while
/// [AppSettings.developerMode] is on.
class DeveloperToolsScreen extends StatelessWidget {
  const DeveloperToolsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final settings = context.watch<AppSettings>();
    final features = allFeatures.where((f) => f.developerOnly).toList();
    return Scaffold(
      appBar: AppBar(title: const Text('Developer tools')),
      body: !settings.developerMode
          ? const Center(child: Text('Developer mode is off'))
          : ListView.builder(
              itemCount: features.length,
              itemBuilder: (context, index) {
                final f = features[index];
                return ListTile(
                  leading: const Icon(Icons.terminal),
                  title: Text(f.title),
                  trailing: Text(f.status.name),
                );
              },
            ),
    );
  }
}
