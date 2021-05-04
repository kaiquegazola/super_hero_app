import 'package:hive/hive.dart';
import 'package:super_hero_app/core/database/boxes_id.dart';

import 'appearance_box.dart';
import 'biography_box.dart';
import 'connection_box.dart';
import 'images_box.dart';
import 'powerstats_box.dart';
import 'work_box.dart';

part 'hero_box.g.dart';

@HiveType(typeId: Boxes.hero)
class HeroBox extends HiveObject {
  HeroBox({
    this.id,
    this.name,
    this.slug,
    this.powerstats,
    this.appearance,
    this.biography,
    this.work,
    this.connections,
    this.images,
  });

  factory HeroBox.create(Map<String, dynamic> map) {
    return HeroBox(
      id: map['id'],
      name: map['name'],
      slug: map['slug'],
      images: map['images'] != null ? ImagesBox.create(map['images']) : null,
      powerstats: map['powerstats'] != null
          ? PowerstatsBox.create(map['powerstats'])
          : null,
      appearance: map['appearance'] != null
          ? AppearanceBox.create(map['appearance'])
          : null,
      biography: map['biography'] != null
          ? BiographyBox.create(map['biography'])
          : null,
      work: map['work'] != null ? WorkBox.create(map['work']) : null,
      connections: map['connections'] != null
          ? ConnectionBox.create(map['connections'])
          : null,
    );
  }

  @HiveField(0)
  int? id;
  @HiveField(1)
  String? name;
  @HiveField(2)
  String? slug;
  @HiveField(3)
  PowerstatsBox? powerstats;
  @HiveField(4)
  AppearanceBox? appearance;
  @HiveField(5)
  BiographyBox? biography;
  @HiveField(6)
  WorkBox? work;
  @HiveField(7)
  ConnectionBox? connections;
  @HiveField(8)
  ImagesBox? images;

  static const String tableName = 'UserTable';

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'name': name,
      'slug': slug,
      'powerstats': powerstats != null ? powerstats!.toMap() : null,
      'appearance': appearance != null ? appearance!.toMap() : null,
      'biography': biography != null ? biography!.toMap() : null,
      'work': work != null ? work!.toMap() : null,
      'connections': connections != null ? connections!.toMap() : null,
      'images': images != null ? images!.toMap() : null,
    };
  }
}
