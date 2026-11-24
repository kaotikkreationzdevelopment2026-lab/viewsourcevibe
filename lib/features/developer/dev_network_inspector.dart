import 'package:view_source_vibe/features/feature_module.dart';

const FeatureModule featureDevNetworkInspector = FeatureModule(
  id: 'dev_network_inspector',
  title: 'Full network inspector (headers, payloads, timing, waterfall)',
  group: FeatureGroup.developer,
  developerOnly: true,
);
