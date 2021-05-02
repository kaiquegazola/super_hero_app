import 'package:flutter_test/flutter_test.dart';
import 'package:super_hero_app/feature/hero/data/models/connection_model.dart';

import '../abomb_hero_json.dart';

void main() {
  test('Should return a ConnectionModel when a valid json is provide', () {
    final connectionsModel =
        ConnectionModel.fromJson(aBombFullMap['connections']);
    expect(connectionsModel, isA<ConnectionModel>());
    expect(connectionsModel, aBombFullModel.connections);
  });

  test('Should return a valid Map when toJson is called', () {
    final result = (aBombFullModel.connections as ConnectionModel).toJson();
    expect(result, isA<Map<String, dynamic>>());
    expect(result, aBombFullMap['connections']);
  });
}
