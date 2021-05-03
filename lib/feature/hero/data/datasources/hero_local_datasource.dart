import 'package:super_hero_app/core/database/boxes/hero_box.dart';
import 'package:super_hero_app/core/database/database.dart';
import 'package:super_hero_app/feature/hero/data/models/hero_model.dart';
import 'package:super_hero_app/feature/hero/domain/datasources/hero_local_datasource.dart';

class HeroLocalDatasourceImpl extends HeroLocalDatasource {
  HeroLocalDatasourceImpl({
    required this.database,
  });

  final Database database;

  @override
  Future<Map<String, dynamic>?> getHero(int id) async {
    final result = await database
        .firstWhere<HeroBox>((dynamic element) => element.id == id);
    return result;
  }

  @override
  Future<List<Map<String, dynamic>>?> getHeroByName(String name) async {
    final result = await database.where<HeroBox>(
        (dynamic element) => (element.name as String).contains(name));
    return result;
  }

  @override
  Future<bool> addHero(HeroModel hero) async {
    final int result = await database.insert<HeroBox>(hero.toJson());
    return result > 0;
  }
}
