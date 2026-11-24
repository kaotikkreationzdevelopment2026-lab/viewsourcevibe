# Roadmap

One module per feature in `lib/features/`. (D) = Developer Mode only.

## Advanced features

- [ ] Full-text and regex search across source, DOM and assets  `full_text_regex_search`
- [ ] Side-by-side diff of two pages or two versions of one page  `page_diff`
- [ ] Page snapshot history, saved locally with timestamps  `snapshot_history`
- [ ] Tech stack detector (frameworks, CMS, CDN, analytics)  `tech_stack_detector`
- [ ] SEO audit (meta tags, headings, canonical, Open Graph)  `seo_audit`
- [ ] Accessibility audit (contrast, alt text, ARIA)  `accessibility_audit`
- [ ] Performance report (page weight, request count, load timeline)  `performance_report`
- [ ] Security headers analyzer (CSP, HSTS, X-Frame-Options)  `security_headers_analyzer`
- [ ] Cookie and storage inspector  `cookie_storage_inspector`
- [ ] Link extractor with broken-link checker  `link_extractor`
- [ ] Sitemap and robots.txt viewer  `sitemap_robots_viewer`
- [ ] Source map (.map) loader that shows the original source  `source_map_loader`
- [ ] JS/CSS beautifier and minifier toggle  `beautify_minify_toggle`
- [ ] Syntax-aware code folding and minimap  `code_folding_minimap`
- [ ] Structured data viewer (JSON-LD, schema.org, microdata)  `structured_data_viewer`
- [ ] Font and color palette extractor  `font_color_extractor`
- [ ] Image asset analyzer (size, format, dimensions, EXIF)  `image_asset_analyzer`
- [ ] Website tech timeline via the Wayback Machine  `wayback_timeline`
- [ ] Third-party tracker and domain map  `tracker_domain_map`
- [ ] Responsive preview at multiple viewport sizes  `responsive_preview`
- [ ] Offline page capture (full page as ZIP or MHTML)  `offline_page_capture`
- [ ] Export reports as PDF, HTML or Markdown  `report_export`
- [ ] DNS, WHOIS and SSL certificate info panel  `dns_whois_ssl_panel`
- [ ] Custom user-agent and header spoofing for fetching (D)  `ua_header_spoofing`
- [ ] Share-to-app intent handling for URLs, files and text  `share_intent_handling`

## Developer Mode features

- [ ] Live DOM tree editing (D)  `dev_dom_editor`
- [ ] Live CSS editing with instant preview (D)  `dev_css_editor`
- [ ] JavaScript console with command history (D)  `dev_js_console`
- [ ] Full network inspector (headers, payloads, timing, waterfall) (D)  `dev_network_inspector`
- [ ] Request replay and editing (a mini Postman) (D)  `dev_request_replay`
- [ ] Request interception and mocking (D)  `dev_request_mocking`
- [ ] HAR import and export (D)  `dev_har_import_export`
- [ ] WebSocket and SSE message viewer (D)  `dev_websocket_sse_viewer`
- [ ] Local/session storage and IndexedDB editor (D)  `dev_storage_editor`
- [ ] Service worker and cache inspector (D)  `dev_service_worker_inspector`
- [ ] CSS computed styles and box-model view (D)  `dev_computed_styles`
- [ ] Element picker (tap an element to jump to its source) (D)  `dev_element_picker`
- [ ] JS breakpoints via injected script (D)  `dev_js_breakpoints`
- [ ] Throttling profiles (3G, offline, high latency) (D)  `dev_throttling_profiles`
- [ ] Cookie editor with import and export (D)  `dev_cookie_editor`
- [ ] CORS and mixed-content diagnostics (D)  `dev_cors_diagnostics`
- [ ] Lighthouse-style scoring (D)  `dev_lighthouse_scoring`
- [ ] JS error and unhandled-promise log (D)  `dev_js_error_log`
- [ ] Event listener inspector (D)  `dev_event_listeners`
- [ ] Shadow DOM and iframe explorer (D)  `dev_shadow_dom_explorer`
- [ ] User-agent, geolocation and locale override (D)  `dev_device_overrides`
- [ ] Dark mode and media query emulation (D)  `dev_media_emulation`
- [ ] Remote debugging bridge (Chrome DevTools Protocol) (D)  `dev_remote_debugging`
- [ ] Script injection manager (userscript style) (D)  `dev_script_injection`
- [ ] API endpoint discovery from JS bundles, plus an OpenAPI export (D)  `dev_api_discovery`

## User features

- [ ] Bookmarks and favorites with folders  `user_bookmarks`
- [ ] Reading history with search  `user_history_search`
- [ ] Tabs with groups and session restore  `user_tabs_sessions`
- [ ] Multiple themes (AMOLED, solarized, Dracula, and so on)  `user_more_themes`
- [ ] Adjustable font, size and line wrapping  `user_font_wrap`
- [ ] Line numbers, with jump to line  `user_line_numbers_jump`
- [ ] Copy, select and share any code snippet  `user_snippet_share`
- [ ] Open local files and whole folders  `user_open_local_files`
- [ ] Quick open from the clipboard  `user_clipboard_quick_open`
- [ ] Home-screen widget for fast access  `user_home_widget`
- [ ] Share sheet as image (code card export)  `user_code_card_export`
- [ ] QR code scanner to open a URL  `user_qr_scanner`
- [ ] Voice or text command search  `user_voice_search`
- [ ] Annotations and highlights on source  `user_annotations`
- [ ] Cloud backup and sync of bookmarks and history  `user_cloud_sync`
- [ ] Tablet and foldable split-screen layout  `user_tablet_layout`
- [ ] Home-screen shortcuts for saved pages  `user_shortcuts`
- [ ] Built-in ad and tracker blocker toggle  `user_ad_blocker`
- [ ] Reader mode with a clean text view  `user_reader_mode`
- [ ] Page translation  `user_translation`
- [ ] Offline library for saved pages  `user_offline_library`
- [ ] Biometric lock for private tabs  `user_biometric_lock`
- [ ] Incognito mode with no history  `user_incognito`
- [ ] Tutorials and tips for beginners (explain this tag)  `user_tag_tutorials`
- [ ] Multi-language UI (localization)  `user_localization`
