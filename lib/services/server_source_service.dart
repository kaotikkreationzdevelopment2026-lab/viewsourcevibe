import 'dart:async';
import 'package:http/http.dart' as http;

class RedirectHop {
  final Uri from;
  final int status;
  final Uri to;
  const RedirectHop(this.from, this.status, this.to);
}

class ServerSourceResult {
  final Uri requestedUrl;
  final Uri finalUrl;
  final int statusCode;
  final String? reasonPhrase;
  final Map<String, String> headers;
  final String body;
  final int bodyBytes;
  final List<RedirectHop> redirects;
  final Duration elapsed;

  const ServerSourceResult({
    required this.requestedUrl,
    required this.finalUrl,
    required this.statusCode,
    required this.reasonPhrase,
    required this.headers,
    required this.body,
    required this.bodyBytes,
    required this.redirects,
    required this.elapsed,
  });
}

/// Fetches a URL like curl: no JavaScript, no cookies, redirects followed
/// by hand so every hop is visible.
class ServerSourceService {
  static const String defaultUserAgent =
      'Mozilla/5.0 (Linux; Android 14; SM-A156U) AppleWebKit/537.36 '
      '(KHTML, like Gecko) Chrome/124.0 Mobile Safari/537.36';

  static const _redirectCodes = {301, 302, 303, 307, 308};

  static Future<ServerSourceResult> fetch(
    String input, {
    String? userAgent,
    Map<String, String>? extraHeaders,
    int maxRedirects = 10,
  }) async {
    final text = input.trim();
    var uri = Uri.parse(text);
    if (!uri.hasScheme) uri = Uri.parse('https://$text');
    final requested = uri;
    final hops = <RedirectHop>[];
    final stopwatch = Stopwatch()..start();
    final client = http.Client();
    try {
      for (var i = 0; i <= maxRedirects; i++) {
        final request = http.Request('GET', uri)
          ..followRedirects = false
          ..headers.addAll({
            'User-Agent': userAgent ?? defaultUserAgent,
            'Accept': 'text/html,application/xhtml+xml,*/*;q=0.8',
            ...?extraHeaders,
          });
        final streamed =
            await client.send(request).timeout(const Duration(seconds: 30));
        final location = streamed.headers['location'];
        if (_redirectCodes.contains(streamed.statusCode) && location != null) {
          await streamed.stream.drain<void>();
          final next = uri.resolve(location);
          hops.add(RedirectHop(uri, streamed.statusCode, next));
          uri = next;
          continue;
        }
        final response = await http.Response.fromStream(streamed);
        stopwatch.stop();
        return ServerSourceResult(
          requestedUrl: requested,
          finalUrl: uri,
          statusCode: response.statusCode,
          reasonPhrase: response.reasonPhrase,
          headers: response.headers,
          body: response.body,
          bodyBytes: response.bodyBytes.length,
          redirects: hops,
          elapsed: stopwatch.elapsed,
        );
      }
      throw Exception('Too many redirects (more than $maxRedirects)');
    } finally {
      client.close();
    }
  }
}
