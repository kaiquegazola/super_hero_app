import 'package:hive/hive.dart';
import 'package:super_hero_app/core/database/boxes_id.dart';

part 'images_box.g.dart';

@HiveType(typeId: Boxes.images)
class ImagesBox extends HiveObject {
  ImagesBox({
    this.xs,
    this.sm,
    this.md,
    this.lg,
  });

  factory ImagesBox.create(Map<String, dynamic> map) {
    return ImagesBox(
      xs: map['xs'],
      sm: map['sm'],
      md: map['md'],
      lg: map['lg'],
    );
  }

  String? xs;
  String? sm;
  String? md;
  String? lg;

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'xs': xs,
      'sm': sm,
      'md': md,
      'lg': lg,
    };
  }
}
