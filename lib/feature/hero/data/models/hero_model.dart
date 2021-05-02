import 'package:super_hero_app/feature/hero/data/models/appearance_model.dart';
import 'package:super_hero_app/feature/hero/data/models/biography_model.dart';
import 'package:super_hero_app/feature/hero/data/models/connection_model.dart';
import 'package:super_hero_app/feature/hero/data/models/powerstats_model.dart';
import 'package:super_hero_app/feature/hero/data/models/work_model.dart';
import 'package:super_hero_app/feature/hero/domain/entities/appearance_entity.dart';
import 'package:super_hero_app/feature/hero/domain/entities/biography_entity.dart';
import 'package:super_hero_app/feature/hero/domain/entities/connection_entity.dart';
import 'package:super_hero_app/feature/hero/domain/entities/hero_entity.dart';
import 'package:super_hero_app/feature/hero/domain/entities/powerstats_entity.dart';
import 'package:super_hero_app/feature/hero/domain/entities/work_entity.dart';

class HeroModel extends HeroEntity {
  const HeroModel({
    int? id,
    String? name,
    String? slug,
    PowerstatsEntity? powerstats,
    AppearanceEntity? appearance,
    BiographyEntity? biography,
    WorkEntity? work,
    ConnectionEntity? connections,
    String? image,
  }) : super(
          id: id,
          name: name,
          slug: slug,
          powerstats: powerstats,
          appearance: appearance,
          biography: biography,
          work: work,
          connections: connections,
          image: image,
        );

  factory HeroModel.fromJson(dynamic json) => HeroModel(
        id: int.parse(json['id']),
        name: json['name'],
        slug: json['slug'],
        image: json['image'] != null && json['image']['url'] != null
            ? json['image']['url']
            : null,
        powerstats: json['powerstats'] != null
            ? PowerstatsModel.fromJson(json['powerstats'])
            : null,
        appearance: json['appearance'] != null
            ? AppearanceModel.fromJson(json['appearance'])
            : null,
        biography: json['biography'] != null
            ? BiographyModel.fromJson(json['biography'])
            : null,
        work: json['work'] != null ? WorkModel.fromJson(json['work']) : null,
        connections: json['connections'] != null
            ? ConnectionModel.fromJson(json['connections'])
            : null,
      );

  static List<HeroModel> fromListMap(List<Map<String, dynamic>> items) {
    return items
        .map<HeroModel>((Map<String, dynamic> e) => HeroModel.fromJson(e))
        .toList();
  }

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      'id': id.toString(),
      'name': name,
      'slug': slug,
      'powerstats':
          powerstats != null ? (powerstats as PowerstatsModel).toJson() : null,
      'appearance':
          appearance != null ? (appearance as AppearanceModel).toJson() : null,
      'biography':
          biography != null ? (biography as BiographyModel).toJson() : null,
      'work': work != null ? (work as WorkModel).toJson() : null,
      'connections': connections != null
          ? (connections as ConnectionModel).toJson()
          : null,
      'image': image != null
          ? <String, dynamic>{
              'url': image,
            }
          : null,
    };
  }
}
