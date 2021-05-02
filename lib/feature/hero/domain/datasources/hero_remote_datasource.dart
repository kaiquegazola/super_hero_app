abstract class HeroRemoteDatasource {
  Future<Map<String, dynamic>?> getHero(int id);
  Future<List<Map<String, dynamic>>?> getHeroByName(String name);
}
