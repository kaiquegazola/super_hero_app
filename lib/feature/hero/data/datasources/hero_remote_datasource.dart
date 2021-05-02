import 'dart:convert';

import 'package:super_hero_app/core/http/http_dio.dart';
import 'package:super_hero_app/feature/hero/domain/datasources/hero_remote_datasource.dart';

class HeroRemoteDataSourceImpl extends HeroRemoteDatasource {
  HeroRemoteDataSourceImpl({
    required this.http,
  });

  final HttpDio http;

  @override
  Future<Map<String, dynamic>?> getHero(int id) async {
    final result = await http.get('$id');
    return result.body;
  }

  @override
  Future<List<Map<String, dynamic>>?> getHeroByName(String name) async {
    final result = await http.get('search/${utf8.encode(name)}');
    try {
      final List<Map<String, dynamic>> resultsMap = result.body!['results'];
      return resultsMap;
    } catch (_) {
      return null;
    }
  }
}
