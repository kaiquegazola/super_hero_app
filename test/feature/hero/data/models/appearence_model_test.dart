import 'package:flutter_test/flutter_test.dart';
import 'package:super_hero_app/feature/hero/data/models/appearance_model.dart';

import 'abomb_hero_json.dart';

void main() {
  test('Should return a AppearanceModel when a valid json is provide', () {
    final appearanceModel =
        AppearanceModel.fromJson(aBombFullMap['appearance']);
    expect(appearanceModel, isA<AppearanceModel>());
    expect(appearanceModel, aBombFullModel.appearance);
  });

  test('Should return a valid Map when toJson is called', () {
    final result = (aBombFullModel.appearance as AppearanceModel).toJson();
    expect(result, isA<Map<String, dynamic>>());
    expect(result, aBombFullMap['appearance']);
  });
}
