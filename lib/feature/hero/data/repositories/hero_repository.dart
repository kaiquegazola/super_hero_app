import 'package:dartz/dartz.dart';
import 'package:super_hero_app/core/errors/failure.dart';
import 'package:super_hero_app/feature/hero/data/models/hero_model.dart';
import 'package:super_hero_app/feature/hero/domain/datasources/hero_remote_datasource.dart';
import 'package:super_hero_app/feature/hero/domain/entities/hero_entity.dart';
import 'package:super_hero_app/feature/hero/domain/repositories/hero_repository.dart';

class HeroRepositoryImpl implements HeroRepository {
  HeroRepositoryImpl({
    required this.remoteDatasource,
  });

  final HeroRemoteDatasource remoteDatasource;

  @override
  Future<Either<Failure, HeroEntity>> getHero(int id) async {
    try {
      final json = await remoteDatasource.getHero(id);
      final hero = HeroModel.fromJson(json);
      return Right(hero);
    } catch (_) {
      return Left(
        Failure(message: 'Cannot get this hero'),
      );
    }
  }

  @override
  Future<Either<Failure, HeroEntity>> getHeroByName(String name) async {
    try {
      final json = await remoteDatasource.getHeroByName(name);
      final hero = HeroModel.fromJson(json);
      return Right(hero);
    } catch (_) {
      return Left(
        Failure(message: 'Hero $name not found!'),
      );
    }
  }
}
