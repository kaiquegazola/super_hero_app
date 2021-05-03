import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:super_hero_app/core/errors/failure.dart';
import 'package:super_hero_app/feature/hero/data/repositories/hero_repository.dart';
import 'package:super_hero_app/feature/hero/domain/datasources/hero_local_datasource.dart';
import 'package:super_hero_app/feature/hero/domain/datasources/hero_remote_datasource.dart';
import 'package:super_hero_app/feature/hero/domain/entities/hero_entity.dart';
import 'package:super_hero_app/feature/hero/domain/repositories/hero_repository.dart';

import '../heros_json.dart';

class MockHeroRemoteDatasource extends Mock implements HeroRemoteDatasource {}

class MockHeroLocalDatasource extends Mock implements HeroLocalDatasource {}

void main() {
  late MockHeroLocalDatasource heroLocalDatasource;
  late HeroRemoteDatasource heroRemoteDatasource;
  late HeroRepository heroRepository;

  setUp(() {
    heroLocalDatasource = MockHeroLocalDatasource();
    heroRemoteDatasource = MockHeroRemoteDatasource();
    heroRepository = HeroRepositoryImpl(
      remoteDatasource: heroRemoteDatasource,
      localDatasource: heroLocalDatasource,
    );
  });

  group('get hero by id', () {
    test('Should return Right<HeroEntity> when success request', () async {
      when(() => heroLocalDatasource.getHero(any())).thenAnswer(
        (_) async => aBombFullMap,
      );
      //act
      final result = await heroRepository.getHero(1);
      //assert
      expect(result, isA<Right<Failure, HeroEntity>>());
      verify(() => heroLocalDatasource.getHero(1));
      verifyNoMoreInteractions(heroRemoteDatasource);
    });

    test('Should return Left<Failure> when request is not successful',
        () async {
      when(
        () => heroLocalDatasource.getHero(any()),
      ).thenAnswer(
        (_) async => null,
      );
      //act
      final result = await heroRepository.getHero(1);
      //assert
      expect(result, isA<Left<Failure, HeroEntity>>());
      verify(() => heroLocalDatasource.getHero(1));
      verifyNoMoreInteractions(heroRemoteDatasource);
    });
  });
  group('get hero by name', () {
    test('Should return Right<HeroEntity> when success request', () async {
      when(() => heroLocalDatasource.getHeroByName(any())).thenAnswer(
        (_) async => heroSearchResultMap,
      );
      //act
      final result = await heroRepository.getHeroByName('iron');
      //assert
      expect(result, isA<Left<Failure, List<HeroEntity>>>());
      verify(() => heroLocalDatasource.getHeroByName('iron'));
      verifyNoMoreInteractions(heroRemoteDatasource);
    });

    test('Should return Left<Failure> when request is not successful',
        () async {
      when(
        () => heroLocalDatasource.getHeroByName(any()),
      ).thenAnswer(
        (_) async => null,
      );
      //act
      final result = await heroRepository.getHeroByName('iron');
      //assert
      expect(result, isA<Left<Failure, List<HeroEntity>>>());
      verify(() => heroLocalDatasource.getHeroByName('iron'));
      verifyNoMoreInteractions(heroRemoteDatasource);
    });
  });
}
