import 'package:dio/dio.dart';

abstract class DioCreator {
  static Dio create() {
    final Dio dioCreator = Dio()
      ..options.baseUrl =
          'https://cdn.jsdelivr.net/gh/akabab/superhero-api@0.3.0/api/'
      ..options.connectTimeout = 15000
      ..options.receiveTimeout = 15000;
    return dioCreator;
  }
}
