import 'package:view_source_vibe/features/advanced/accessibility_audit.dart';
import 'package:view_source_vibe/features/advanced/beautify_minify_toggle.dart';
import 'package:view_source_vibe/features/advanced/code_folding_minimap.dart';
import 'package:view_source_vibe/features/advanced/cookie_storage_inspector.dart';
import 'package:view_source_vibe/features/advanced/dns_whois_ssl_panel.dart';
import 'package:view_source_vibe/features/advanced/font_color_extractor.dart';
import 'package:view_source_vibe/features/advanced/full_text_regex_search.dart';
import 'package:view_source_vibe/features/advanced/image_asset_analyzer.dart';
import 'package:view_source_vibe/features/advanced/link_extractor.dart';
import 'package:view_source_vibe/features/advanced/offline_page_capture.dart';
import 'package:view_source_vibe/features/advanced/page_diff.dart';
import 'package:view_source_vibe/features/advanced/performance_report.dart';
import 'package:view_source_vibe/features/advanced/report_export.dart';
import 'package:view_source_vibe/features/advanced/responsive_preview.dart';
import 'package:view_source_vibe/features/advanced/security_headers_analyzer.dart';
import 'package:view_source_vibe/features/advanced/seo_audit.dart';
import 'package:view_source_vibe/features/advanced/share_intent_handling.dart';
import 'package:view_source_vibe/features/advanced/sitemap_robots_viewer.dart';
import 'package:view_source_vibe/features/advanced/snapshot_history.dart';
import 'package:view_source_vibe/features/advanced/source_map_loader.dart';
import 'package:view_source_vibe/features/advanced/structured_data_viewer.dart';
import 'package:view_source_vibe/features/advanced/tech_stack_detector.dart';
import 'package:view_source_vibe/features/advanced/tracker_domain_map.dart';
import 'package:view_source_vibe/features/advanced/ua_header_spoofing.dart';
import 'package:view_source_vibe/features/advanced/wayback_timeline.dart';
import 'package:view_source_vibe/features/developer/dev_api_discovery.dart';
import 'package:view_source_vibe/features/developer/dev_computed_styles.dart';
import 'package:view_source_vibe/features/developer/dev_cookie_editor.dart';
import 'package:view_source_vibe/features/developer/dev_cors_diagnostics.dart';
import 'package:view_source_vibe/features/developer/dev_css_editor.dart';
import 'package:view_source_vibe/features/developer/dev_device_overrides.dart';
import 'package:view_source_vibe/features/developer/dev_dom_editor.dart';
import 'package:view_source_vibe/features/developer/dev_element_picker.dart';
import 'package:view_source_vibe/features/developer/dev_event_listeners.dart';
import 'package:view_source_vibe/features/developer/dev_har_import_export.dart';
import 'package:view_source_vibe/features/developer/dev_js_breakpoints.dart';
import 'package:view_source_vibe/features/developer/dev_js_console.dart';
import 'package:view_source_vibe/features/developer/dev_js_error_log.dart';
import 'package:view_source_vibe/features/developer/dev_lighthouse_scoring.dart';
import 'package:view_source_vibe/features/developer/dev_media_emulation.dart';
import 'package:view_source_vibe/features/developer/dev_network_inspector.dart';
import 'package:view_source_vibe/features/developer/dev_remote_debugging.dart';
import 'package:view_source_vibe/features/developer/dev_request_mocking.dart';
import 'package:view_source_vibe/features/developer/dev_request_replay.dart';
import 'package:view_source_vibe/features/developer/dev_script_injection.dart';
import 'package:view_source_vibe/features/developer/dev_service_worker_inspector.dart';
import 'package:view_source_vibe/features/developer/dev_shadow_dom_explorer.dart';
import 'package:view_source_vibe/features/developer/dev_storage_editor.dart';
import 'package:view_source_vibe/features/developer/dev_throttling_profiles.dart';
import 'package:view_source_vibe/features/developer/dev_websocket_sse_viewer.dart';
import 'package:view_source_vibe/features/user/user_ad_blocker.dart';
import 'package:view_source_vibe/features/user/user_annotations.dart';
import 'package:view_source_vibe/features/user/user_biometric_lock.dart';
import 'package:view_source_vibe/features/user/user_bookmarks.dart';
import 'package:view_source_vibe/features/user/user_clipboard_quick_open.dart';
import 'package:view_source_vibe/features/user/user_cloud_sync.dart';
import 'package:view_source_vibe/features/user/user_code_card_export.dart';
import 'package:view_source_vibe/features/user/user_font_wrap.dart';
import 'package:view_source_vibe/features/user/user_history_search.dart';
import 'package:view_source_vibe/features/user/user_home_widget.dart';
import 'package:view_source_vibe/features/user/user_incognito.dart';
import 'package:view_source_vibe/features/user/user_line_numbers_jump.dart';
import 'package:view_source_vibe/features/user/user_localization.dart';
import 'package:view_source_vibe/features/user/user_more_themes.dart';
import 'package:view_source_vibe/features/user/user_offline_library.dart';
import 'package:view_source_vibe/features/user/user_open_local_files.dart';
import 'package:view_source_vibe/features/user/user_qr_scanner.dart';
import 'package:view_source_vibe/features/user/user_reader_mode.dart';
import 'package:view_source_vibe/features/user/user_shortcuts.dart';
import 'package:view_source_vibe/features/user/user_snippet_share.dart';
import 'package:view_source_vibe/features/user/user_tablet_layout.dart';
import 'package:view_source_vibe/features/user/user_tabs_sessions.dart';
import 'package:view_source_vibe/features/user/user_tag_tutorials.dart';
import 'package:view_source_vibe/features/user/user_translation.dart';
import 'package:view_source_vibe/features/user/user_voice_search.dart';
import 'package:view_source_vibe/features/feature_module.dart';

/// Every planned feature. Add new modules here.
const List<FeatureModule> allFeatures = [
  featureFullTextRegexSearch,
  featurePageDiff,
  featureSnapshotHistory,
  featureTechStackDetector,
  featureSeoAudit,
  featureAccessibilityAudit,
  featurePerformanceReport,
  featureSecurityHeadersAnalyzer,
  featureCookieStorageInspector,
  featureLinkExtractor,
  featureSitemapRobotsViewer,
  featureSourceMapLoader,
  featureBeautifyMinifyToggle,
  featureCodeFoldingMinimap,
  featureStructuredDataViewer,
  featureFontColorExtractor,
  featureImageAssetAnalyzer,
  featureWaybackTimeline,
  featureTrackerDomainMap,
  featureResponsivePreview,
  featureOfflinePageCapture,
  featureReportExport,
  featureDnsWhoisSslPanel,
  featureUaHeaderSpoofing,
  featureShareIntentHandling,
  featureDevDomEditor,
  featureDevCssEditor,
  featureDevJsConsole,
  featureDevNetworkInspector,
  featureDevRequestReplay,
  featureDevRequestMocking,
  featureDevHarImportExport,
  featureDevWebsocketSseViewer,
  featureDevStorageEditor,
  featureDevServiceWorkerInspector,
  featureDevComputedStyles,
  featureDevElementPicker,
  featureDevJsBreakpoints,
  featureDevThrottlingProfiles,
  featureDevCookieEditor,
  featureDevCorsDiagnostics,
  featureDevLighthouseScoring,
  featureDevJsErrorLog,
  featureDevEventListeners,
  featureDevShadowDomExplorer,
  featureDevDeviceOverrides,
  featureDevMediaEmulation,
  featureDevRemoteDebugging,
  featureDevScriptInjection,
  featureDevApiDiscovery,
  featureUserBookmarks,
  featureUserHistorySearch,
  featureUserTabsSessions,
  featureUserMoreThemes,
  featureUserFontWrap,
  featureUserLineNumbersJump,
  featureUserSnippetShare,
  featureUserOpenLocalFiles,
  featureUserClipboardQuickOpen,
  featureUserHomeWidget,
  featureUserCodeCardExport,
  featureUserQrScanner,
  featureUserVoiceSearch,
  featureUserAnnotations,
  featureUserCloudSync,
  featureUserTabletLayout,
  featureUserShortcuts,
  featureUserAdBlocker,
  featureUserReaderMode,
  featureUserTranslation,
  featureUserOfflineLibrary,
  featureUserBiometricLock,
  featureUserIncognito,
  featureUserTagTutorials,
  featureUserLocalization,
];

/// Features the user may open right now.
List<FeatureModule> featuresVisible({required bool developerMode}) =>
    allFeatures.where((f) => !f.developerOnly || developerMode).toList();
