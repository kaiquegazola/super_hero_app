import 'package:flutter_test/flutter_test.dart';
import 'package:super_hero_app/feature/hero/data/models/powerstats_model.dart';

import 'abomb_hero_json.dart';

void main() {
  test('Should return a PowerstatsModel when a valid json is provide', () {
    final powerstatsModel =
        PowerstatsModel.fromJson(aBombFullMap['powerstats']);
    expect(powerstatsModel, isA<PowerstatsModel>());
    expect(powerstatsModel, aBombFullModel.powerstats);
  });

  test('Should return a valid Map when toJson is called', () {
    final result = (aBombFullModel.powerstats as PowerstatsModel).toJson();
    expect(result, isA<Map<String, dynamic>>());
    expect(result, aBombFullMap['powerstats']);
  });
}
