import 'package:dartz/dartz.dart';
import 'package:super_hero_app/core/errors/failure.dart';
import 'package:super_hero_app/feature/hero/domain/entities/hero_entity.dart';

abstract class HeroRepository {
  Future<Either<Failure, HeroEntity>> getHero(int id);
  Future<Either<Failure, HeroEntity>> getHeroByName(String name);
}
