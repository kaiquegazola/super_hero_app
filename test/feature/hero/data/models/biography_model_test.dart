import 'package:flutter_test/flutter_test.dart';
import 'package:super_hero_app/feature/hero/data/models/biography_model.dart';

import '../heros_json.dart';

void main() {
  test('Should return a BiographyModel when a valid json is provide', () {
    final biographyModel = BiographyModel.fromJson(aBombFullMap['biography']);
    expect(biographyModel, isA<BiographyModel>());
    expect(biographyModel, aBombFullModel.biography);
  });

  test('Should return a valid Map when toJson is called', () {
    final result = (aBombFullModel.biography as BiographyModel).toJson();
    expect(result, isA<Map<String, dynamic>>());
    expect(result, aBombFullMap['biography']);
  });
}
