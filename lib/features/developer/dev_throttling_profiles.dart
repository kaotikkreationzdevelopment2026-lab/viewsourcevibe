import 'package:view_source_vibe/features/feature_module.dart';

const FeatureModule featureDevThrottlingProfiles = FeatureModule(
  id: 'dev_throttling_profiles',
  title: 'Throttling profiles (3G, offline, high latency)',
  group: FeatureGroup.developer,
  developerOnly: true,
);
