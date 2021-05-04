import 'package:dartz/dartz.dart';
import 'package:super_hero_app/core/errors/failure.dart';

abstract class UseCase<Type, Dynamic> {
  Future<Either<Failure, Type>> call(Dynamic params);
}
