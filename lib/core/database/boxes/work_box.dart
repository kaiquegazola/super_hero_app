import 'package:hive/hive.dart';
import 'package:super_hero_app/core/database/boxes_id.dart';

part 'work_box.g.dart';

@HiveType(typeId: Boxes.work)
class WorkBox extends HiveObject {
  WorkBox({
    this.occupation,
    this.base,
  });

  factory WorkBox.create(Map<String, dynamic> map) {
    return WorkBox(
      occupation: map['occupation'],
      base: map['base'],
    );
  }

  @HiveField(0)
  String? occupation;
  @HiveField(1)
  String? base;

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'occupation': occupation,
      'base': base,
    };
  }
}
