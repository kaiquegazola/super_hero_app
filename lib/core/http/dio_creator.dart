import 'package:dio/dio.dart';

abstract class DioCreator {
  static Dio create() {
    final Dio dioCreator = Dio()
      ..options.baseUrl = 'https://superheroapi.com/api/1704439183072328/'
      ..options.connectTimeout = 15000
      ..options.receiveTimeout = 15000;
    return dioCreator;
  }
}
