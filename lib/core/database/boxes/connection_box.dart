import 'package:hive/hive.dart';
import 'package:super_hero_app/core/database/boxes_id.dart';

part 'connection_box.g.dart';

@HiveType(typeId: Boxes.connection)
class ConnectionBox extends HiveObject {
  ConnectionBox({
    this.groupAffiliation,
    this.relatives,
  });

  factory ConnectionBox.create(Map<String, dynamic> map) {
    return ConnectionBox(
      groupAffiliation: map['groupAffiliation'],
      relatives: map['relatives'],
    );
  }

  @HiveField(0)
  String? groupAffiliation;
  @HiveField(1)
  String? relatives;

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'groupAffiliation': groupAffiliation,
      'relatives': relatives,
    };
  }
}
