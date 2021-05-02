import 'package:flutter_test/flutter_test.dart';
import 'package:super_hero_app/feature/hero/data/models/work_model.dart';

import '../abomb_hero_json.dart';

void main() {
  test('Should return a WorkModel when a valid json is provide', () {
    final workModel = WorkModel.fromJson(aBombFullMap['work']);
    expect(workModel, isA<WorkModel>());
    expect(workModel, aBombFullModel.work);
  });

  test('Should return a valid Map when toJson is called', () {
    final result = (aBombFullModel.work as WorkModel).toJson();
    expect(result, isA<Map<String, dynamic>>());
    expect(result, aBombFullMap['work']);
  });
}
