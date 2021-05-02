import 'package:flutter_test/flutter_test.dart';
import 'package:super_hero_app/feature/hero/data/models/hero_model.dart';

import 'abomb_hero_json.dart';

void main() {
  test('Should return a HeroModel when a valid json is provide', () {
    final hero = HeroModel.fromJson(aBombFullMap);
    expect(hero, isA<HeroModel>());
    expect(hero, aBombFullModel);
  });

  test('Should return a valid Map when toJson is called', () {
    final result = aBombFullModel.toJson();
    expect(result, isA<Map<String, dynamic>>());
    expect(result, aBombFullMap);
  });
}
