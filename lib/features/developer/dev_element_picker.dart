import 'package:view_source_vibe/features/feature_module.dart';

const FeatureModule featureDevElementPicker = FeatureModule(
  id: 'dev_element_picker',
  title: 'Element picker (tap an element to jump to its source)',
  group: FeatureGroup.developer,
  developerOnly: true,
);
