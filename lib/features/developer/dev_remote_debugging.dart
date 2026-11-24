import 'package:view_source_vibe/features/feature_module.dart';

const FeatureModule featureDevRemoteDebugging = FeatureModule(
  id: 'dev_remote_debugging',
  title: 'Remote debugging bridge (Chrome DevTools Protocol)',
  group: FeatureGroup.developer,
  developerOnly: true,
);
