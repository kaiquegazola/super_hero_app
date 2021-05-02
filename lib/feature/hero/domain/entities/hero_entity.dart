import 'package:equatable/equatable.dart';
import 'package:super_hero_app/feature/hero/domain/entities/appearance_entity.dart';
import 'package:super_hero_app/feature/hero/domain/entities/biography_entity.dart';
import 'package:super_hero_app/feature/hero/domain/entities/connection_entity.dart';
import 'package:super_hero_app/feature/hero/domain/entities/powerstats_entity.dart';
import 'package:super_hero_app/feature/hero/domain/entities/work_entity.dart';

class HeroEntity extends Equatable {
  const HeroEntity({
    this.id,
    this.name,
    this.slug,
    this.image,
    this.powerstats,
    this.appearance,
    this.biography,
    this.work,
    this.connections,
  });

  final int? id;
  final String? name;
  final String? slug;
  final String? image;
  final PowerstatsEntity? powerstats;
  final AppearanceEntity? appearance;
  final BiographyEntity? biography;
  final WorkEntity? work;
  final ConnectionEntity? connections;

  @override
  List<Object?> get props => [
        id,
        name,
        slug,
        powerstats,
        appearance,
        biography,
        work,
        connections,
    image,
      ];
}
