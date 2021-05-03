import 'package:super_hero_app/core/http/http_dio.dart';
import 'package:super_hero_app/feature/hero/domain/datasources/hero_remote_datasource.dart';

class HeroRemoteDatasourceImpl extends HeroRemoteDatasource {
  HeroRemoteDatasourceImpl({
    required this.http,
  });

  final HttpDio http;

  @override
  Future<List<Map<String, dynamic>>?> getAllHeroes() async {
    final result = await http.get('all.json');
    return List<Map<String, dynamic>>.from(result.body);
  }
}
