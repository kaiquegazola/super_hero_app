import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:super_hero_app/core/database/boxes/hero_box.dart';
import 'package:super_hero_app/core/database/database.dart';
import 'package:super_hero_app/feature/hero/data/datasources/hero_local_datasource.dart';
import 'package:super_hero_app/feature/hero/domain/datasources/hero_local_datasource.dart';

import '../heros_json.dart';

class MockDatabase extends Mock implements Database {}

void main() {
  late MockDatabase database;
  late HeroLocalDatasource heroRemoteDataSource;

  setUp(() {
    database = MockDatabase();
    heroRemoteDataSource = HeroLocalDatasourceImpl(
      database: database,
    );
  });

  group('get hero by id', () {
    test('Should return Map when valid response has get', () async {
      when(
        () => database.firstWhere<HeroBox>(
          any(),
        ),
      ).thenAnswer(
        (_) async => aBombFullMap,
      );

      final result = await heroRemoteDataSource.getHero(1);
      expect(result, isA<Map<String, dynamic>>());
    });

    test('Should return Null when invalid response has get', () async {
      when(
        () => database.firstWhere<HeroBox>(
          any(),
        ),
      ).thenAnswer((_) async => null);

      final result = await heroRemoteDataSource.getHero(1);
      expect(result, null);
    });
  });

  group('get hero by name', () {
    test('Should return Map when valid response has get', () async {
      when(
        () => database.where<HeroBox>(
          any(),
        ),
      ).thenAnswer(
        (_) async => heroSearchResultMap,
      );

      final result = await heroRemoteDataSource.getHeroByName('iron');
      expect(result, isA<List<Map<String, dynamic>>>());
    });

    test('Should return Null when invalid response has get', () async {
      when(
        () => database.where<HeroBox>(
          any(),
        ),
      ).thenAnswer(
        (_) async => null,
      );

      final result = await heroRemoteDataSource.getHeroByName('iron');
      expect(result, null);
    });
  });
}
