import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:super_hero_app/core/errors/failure.dart';
import 'package:super_hero_app/feature/hero/data/repositories/hero_repository.dart';
import 'package:super_hero_app/feature/hero/domain/datasources/hero_remote_datasource.dart';
import 'package:super_hero_app/feature/hero/domain/entities/hero_entity.dart';
import 'package:super_hero_app/feature/hero/domain/repositories/hero_repository.dart';

import '../abomb_hero_json.dart';

class MockHeroRemoteDatasource extends Mock implements HeroRemoteDatasource {}

void main() {
  late HeroRemoteDatasource heroRemoteDatasource;
  late HeroRepository heroRepository;

  setUp(() {
    heroRemoteDatasource = MockHeroRemoteDatasource();
    heroRepository = HeroRepositoryImpl(
      remoteDatasource: heroRemoteDatasource,
    );
  });

  group('get hero by id', () {
    test('Should return Right<HeroEntity> when success request', () async {
      when(() => heroRemoteDatasource.getHero(any())).thenAnswer(
        (_) async => aBombFullMap,
      );
      //act
      final result = await heroRepository.getHero(1);
      //assert
      expect(result, isA<Right<Failure, HeroEntity>>());
      verify(() => heroRemoteDatasource.getHero(1));
      verifyNoMoreInteractions(heroRemoteDatasource);
    });

    test('Should return Left<Failure> when request is not successful',
        () async {
      when(
        () => heroRemoteDatasource.getHero(any()),
      ).thenAnswer(
        (_) async => null,
      );
      //act
      final result = await heroRepository.getHero(1);
      //assert
      expect(result, isA<Left<Failure, HeroEntity>>());
      verify(() => heroRemoteDatasource.getHero(1));
      verifyNoMoreInteractions(heroRemoteDatasource);
    });
  });
  group('get hero by name', () {
    test('Should return Right<HeroEntity> when success request', () async {
      when(() => heroRemoteDatasource.getHeroByName(any())).thenAnswer(
        (_) async => heroSearchResultMap['result'],
      );
      //act
      final result = await heroRepository.getHeroByName('iron');
      //assert
      expect(result, isA<Left<Failure, HeroEntity>>());
      verify(() => heroRemoteDatasource.getHeroByName('iron'));
      verifyNoMoreInteractions(heroRemoteDatasource);
    });

    test('Should return Left<Failure> when request is not successful',
        () async {
      when(
        () => heroRemoteDatasource.getHeroByName(any()),
      ).thenAnswer(
        (_) async => null,
      );
      //act
      final result = await heroRepository.getHeroByName('iron');
      //assert
      expect(result, isA<Left<Failure, HeroEntity>>());
      verify(() => heroRemoteDatasource.getHeroByName('iron'));
      verifyNoMoreInteractions(heroRemoteDatasource);
    });
  });
}
