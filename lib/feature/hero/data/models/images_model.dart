import 'package:super_hero_app/feature/hero/domain/entities/images_entity.dart';

class ImagesModel extends ImagesEntity {
  const ImagesModel({
    String? xs,
    String? sm,
    String? md,
    String? lg,
  }) : super(
          xs: xs,
          sm: sm,
          md: md,
          lg: lg,
        );

  factory ImagesModel.fromJson(dynamic json) => ImagesModel(
        xs: json['xs'],
        sm: json['sm'],
        md: json['md'],
        lg: json['lg'],
      );

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      'xs': xs,
      'sm': sm,
      'md': md,
      'lg': lg,
    };
  }
}
