import 'package:super_hero_app/feature/hero/data/models/hero_model.dart';

abstract class HeroLocalDatasource {
  Future<Map<String, dynamic>?> getHero(int id);
  Future<List<Map<String, dynamic>>?> getAllHeroes();
  Future<List<Map<String, dynamic>>?> getHeroByName(String name);
  Future<bool> addHero(HeroModel hero);
}
