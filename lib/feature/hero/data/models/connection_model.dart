import 'package:super_hero_app/feature/hero/domain/entities/connection_entity.dart';

class ConnectionModel extends ConnectionEntity {
  const ConnectionModel({
    String? groupAffiliation,
    String? relatives,
  }) : super(
          groupAffiliation: groupAffiliation,
          relatives: relatives,
        );

  factory ConnectionModel.fromJson(dynamic json) => ConnectionModel(
        groupAffiliation: json['groupAffiliation'],
        relatives: json['relatives'],
      );

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      'groupAffiliation': groupAffiliation,
      'relatives': relatives,
    };
  }
}
