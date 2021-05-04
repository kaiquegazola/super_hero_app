import 'package:dio/dio.dart';
import 'package:super_hero_app/core/http/http.dart';

class HttpDio extends Http {
  HttpDio({
    required Dio dio,
  }) : _dio = dio;

  final Dio _dio;

  @override
  Future<HttpResponse> get(String url,
      {Map<String, dynamic>? body, Map<String, String>? headers}) async {
    try {
      final response = await _dio.get<dynamic>(
        url,
        options: Options(headers: headers),
      );

      if (response.statusCode == 204 && response.data == '') {
        response.data = null;
      }

      return HttpResponse(
        body: response.data,
        headers: response.headers.map,
        statusCode: response.statusCode,
      );
    } on DioError catch (_) {
      rethrow;
    }
  }

  @override
  Future<HttpResponse> post(String url, Map<String, dynamic> body,
      {Map<String, String>? headers}) async {
    try {
      final response = await _dio.post<dynamic>(
        url,
        data: body,
        options: Options(headers: headers),
      );

      if (response.statusCode == 204 && response.data == '') {
        response.data = null;
      }

      return HttpResponse(
        body: response.data,
        headers: response.headers.map,
        statusCode: response.statusCode,
      );
    } on DioError catch (_) {
      rethrow;
    }
  }
}
