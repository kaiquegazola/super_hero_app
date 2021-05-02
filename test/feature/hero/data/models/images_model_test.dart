import 'package:flutter_test/flutter_test.dart';
import 'package:super_hero_app/feature/hero/data/models/images_model.dart';

import 'abomb_hero_json.dart';

void main() {
  test('Should return a ImagesModel when a valid json is provide', () {
    final imagesModel = ImagesModel.fromJson(aBombFullMap['images']);
    expect(imagesModel, isA<ImagesModel>());
    expect(imagesModel, aBombFullModel.images);
    expect(imagesModel.props, aBombFullModel.images!.props);
  });

  test('Should return a valid Map when toJson is called', () {
    final result = (aBombFullModel.images as ImagesModel).toJson();
    expect(result, isA<Map<String, dynamic>>());
    expect(result, aBombFullMap['images']);
  });
}
