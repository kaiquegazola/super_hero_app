import 'package:dartz/dartz.dart';
import 'package:super_hero_app/core/errors/failure.dart';
import 'package:super_hero_app/feature/hero/data/models/hero_model.dart';
import 'package:super_hero_app/feature/hero/domain/datasources/hero_local_datasource.dart';
import 'package:super_hero_app/feature/hero/domain/datasources/hero_remote_datasource.dart';
import 'package:super_hero_app/feature/hero/domain/entities/hero_entity.dart';
import 'package:super_hero_app/feature/hero/domain/repositories/hero_repository.dart';

class HeroRepositoryImpl implements HeroRepository {
  HeroRepositoryImpl({
    required this.remoteDatasource,
    required this.localDatasource,
  });

  final HeroRemoteDatasource remoteDatasource;
  final HeroLocalDatasource localDatasource;

  @override
  Future<Either<Failure, HeroEntity>> getHero(int id) async {
    try {
      final json = await localDatasource.getHero(id);
      final hero = HeroModel.fromJson(json);
      return Right(hero);
    } catch (_) {
      return Left(
        Failure(message: 'Cannot get this hero'),
      );
    }
  }

  @override
  Future<Either<Failure, List<HeroEntity>>> getHeroByName(String name) async {
    try {
      final json = await localDatasource.getHeroByName(name);
      final heroes = HeroModel.fromListMap(json!);
      return Right(heroes);
    } catch (_) {
      return Left(
        Failure(message: 'Hero $name not found!'),
      );
    }
  }

  @override
  Future<Either<Failure, bool>> getAllHeroes() async {
    try {
      final heroesMap = await remoteDatasource.getAllHeroes();
      final heroes = HeroModel.fromListMap(heroesMap!);
      for (HeroModel hero in heroes) {
        await localDatasource.addHero(hero);
      }
      return Right(true);
    } catch (_) {
      return Left(
        Failure(message: 'Error getting/saving all heroes'),
      );
    }
  }
}
