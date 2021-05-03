import 'package:dartz/dartz.dart';
import 'package:super_hero_app/core/errors/failure.dart';
import 'package:super_hero_app/core/usecases/usecase.dart';
import 'package:super_hero_app/feature/hero/domain/repositories/hero_repository.dart';

class GetAllHeroesUseCase extends UseCase<bool, Null> {
  GetAllHeroesUseCase({
    required this.repository,
  });

  final HeroRepository repository;

  @override
  Future<Either<Failure, bool>> call(Null params) async {
    final result = await repository.getAllHeroes();
    return result;
  }
}
