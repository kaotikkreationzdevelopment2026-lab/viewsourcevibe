/// Which list a feature belongs to.
enum FeatureGroup { advanced, developer, user }

enum FeatureStatus { planned, inProgress, done }

/// One self-contained feature. Each feature lives in its own file under
/// lib/features/<group>/ and is listed in feature_registry.dart.
/// Features with [developerOnly] are only reachable while
/// AppSettings.developerMode is on.
class FeatureModule {
  final String id;
  final String title;
  final FeatureGroup group;
  final bool developerOnly;
  final FeatureStatus status;

  const FeatureModule({
    required this.id,
    required this.title,
    required this.group,
    this.developerOnly = false,
    this.status = FeatureStatus.planned,
  });
}
