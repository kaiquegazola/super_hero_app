abstract class Http {
  Future<HttpResponse> post(
    String url,
    Map<String, dynamic> body, {
    Map<String, String>? headers,
  });

  Future<HttpResponse> get(
    String url, {
    Map<String, dynamic> body,
    Map<String, String>? headers,
  });
}

class HttpResponse {
  HttpResponse({
    this.body,
    this.headers,
    this.statusCode,
  });

  final Map<String, dynamic>? headers;
  final dynamic? body;
  final int? statusCode;
}
