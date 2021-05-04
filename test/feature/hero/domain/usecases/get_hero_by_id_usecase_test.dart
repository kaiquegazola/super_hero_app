import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:super_hero_app/core/errors/failure.dart';
import 'package:super_hero_app/core/usecases/usecase.dart';
import 'package:super_hero_app/feature/hero/domain/entities/hero_entity.dart';
import 'package:super_hero_app/feature/hero/domain/repositories/hero_repository.dart';
import 'package:super_hero_app/feature/hero/domain/usecases/get_hero_by_id_usecase.dart';

import '../../data/heros_json.dart';

class MockHeroRepository extends Mock implements HeroRepository {}

void main() {
  late HeroRepository heroRepository;
  late UseCase<HeroEntity, int> getHeroById;

  setUp(() {
    heroRepository = MockHeroRepository();
    getHeroById = GetHeroByIdUseCase(
      repository: heroRepository,
    );
  });

  test('Should return Right<HeroEntity> when successfull get a hero', () async {
    when(
      () => heroRepository.getHero(any()),
    ).thenAnswer(
      (_) async => Right(aBombFullModel),
    );

    final Either<Failure, HeroEntity> result = await getHeroById(1);

    expect(result, Right<dynamic, HeroEntity>(aBombFullModel));
    verify(() => heroRepository.getHero(1));
    verifyNoMoreInteractions(heroRepository);
  });

  test('Should return Left<Failure> when is not successfull get a hero',
      () async {
    when(
      () => heroRepository.getHero(any()),
    ).thenAnswer(
      (_) async => Left(
        Failure(
          message: 'can not get hero',
        ),
      ),
    );

    final Either<Failure, HeroEntity> result = await getHeroById(1);

    expect(result, isA<Left<Failure, HeroEntity>>());
    verify(() => heroRepository.getHero(1));
    verifyNoMoreInteractions(heroRepository);
  });
}
