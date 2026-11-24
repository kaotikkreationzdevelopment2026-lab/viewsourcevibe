import 'package:view_source_vibe/features/feature_module.dart';

const FeatureModule featureSecurityHeadersAnalyzer = FeatureModule(
  id: 'security_headers_analyzer',
  title: 'Security headers analyzer (CSP, HSTS, X-Frame-Options)',
  group: FeatureGroup.advanced,
  developerOnly: false,
);
