import 'package:super_hero_app/feature/hero/domain/entities/work_entity.dart';

class WorkModel extends WorkEntity {
  const WorkModel({
    String? occupation,
    String? base,
  }) : super(
          occupation: occupation,
          base: base,
        );

  factory WorkModel.fromJson(dynamic json) => WorkModel(
        occupation: json['occupation'],
        base: json['base'],
      );

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      'occupation': occupation,
      'base': base,
    };
  }
}
