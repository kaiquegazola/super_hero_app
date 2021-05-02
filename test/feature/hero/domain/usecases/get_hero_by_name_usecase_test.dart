import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:super_hero_app/core/errors/failure.dart';
import 'package:super_hero_app/core/usecases/usecase.dart';
import 'package:super_hero_app/feature/hero/domain/entities/hero_entity.dart';
import 'package:super_hero_app/feature/hero/domain/repositories/hero_repository.dart';
import 'package:super_hero_app/feature/hero/domain/usecases/get_hero_by_name_usecase.dart';

import '../../data/heros_json.dart';

class MockHeroRepository extends Mock implements HeroRepository {}

void main() {
  late HeroRepository heroRepository;
  late UseCase<List<HeroEntity>, String> getHeroByName;

  setUp(() {
    heroRepository = MockHeroRepository();
    getHeroByName = GetHeroByNameUseCase(
      repository: heroRepository,
    );
  });

  test('Should return Right<List<HeroEntity> when successfull get a hero by name', () async {
    when(
      () => heroRepository.getHeroByName(any()),
    ).thenAnswer(
      (_) async => Right(listHeroSearchResultModel),
    );

    final Either<Failure, List<HeroEntity>> result = await getHeroByName('iron');

    expect(result, Right<Failure, List<HeroEntity>>(listHeroSearchResultModel));
    verify(() => heroRepository.getHeroByName('iron'));
    verifyNoMoreInteractions(heroRepository);
  });

  test('Should return Left<Failure> when is not successfull get a hero by name',
      () async {
    when(
      () => heroRepository.getHeroByName(any()),
    ).thenAnswer(
      (_) async => Left(
        Failure(
          message: 'can not get hero',
        ),
      ),
    );

    final Either<Failure, List<HeroEntity>> result = await getHeroByName('iron');

    expect(result, isA<Left<Failure, List<HeroEntity>>>());
    verify(() => heroRepository.getHeroByName('iron'));
    verifyNoMoreInteractions(heroRepository);
  });
}
