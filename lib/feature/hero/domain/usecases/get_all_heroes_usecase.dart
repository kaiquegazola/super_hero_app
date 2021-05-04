import 'package:dartz/dartz.dart';
import 'package:super_hero_app/core/errors/failure.dart';
import 'package:super_hero_app/core/usecases/usecase.dart';
import 'package:super_hero_app/feature/hero/domain/entities/hero_entity.dart';
import 'package:super_hero_app/feature/hero/domain/repositories/hero_repository.dart';

class GetAllHeroesUseCase extends UseCase<List<HeroEntity>, Null> {
  GetAllHeroesUseCase({
    required this.repository,
  });

  final HeroRepository repository;

  @override
  Future<Either<Failure, List<HeroEntity>>> call(Null params) async {
    final result = await repository.getAllHeroes();
    return result;
  }
}
