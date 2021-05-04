import 'package:dartz/dartz.dart';
import 'package:super_hero_app/core/errors/failure.dart';
import 'package:super_hero_app/core/usecases/usecase.dart';
import 'package:super_hero_app/feature/hero/domain/entities/hero_entity.dart';
import 'package:super_hero_app/feature/hero/domain/repositories/hero_repository.dart';

class GetHeroByIdUseCase extends UseCase<HeroEntity, int> {
  GetHeroByIdUseCase({
    required this.repository,
  });

  final HeroRepository repository;

  @override
  Future<Either<Failure, HeroEntity>> call(int params) async {
    final result = await repository.getHero(params);
    return result;
  }
}
