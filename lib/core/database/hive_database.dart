import 'dart:async';

import 'package:collection/collection.dart';

import 'package:hive/hive.dart';
import 'package:path_provider/path_provider.dart';

import 'boxes/appearance_box.dart';
import 'boxes/biography_box.dart';
import 'boxes/connection_box.dart';
import 'boxes/hero_box.dart';
import 'boxes/images_box.dart';
import 'boxes/powerstats_box.dart';
import 'boxes/work_box.dart';
import 'database.dart';

class HiveDatabase extends Database {
  HiveDatabase() {
    initialize();
  }

  final _completer = Completer<void>();

  @override
  Future initialize() async {
    final document = await getApplicationDocumentsDirectory();
    Hive
      ..init(document.path)
      ..registerAdapter(AppearanceBoxAdapter())
      ..registerAdapter(BiographyBoxAdapter())
      ..registerAdapter(ConnectionBoxAdapter())
      ..registerAdapter(HeroBoxAdapter())
      ..registerAdapter(ImagesBoxAdapter())
      ..registerAdapter(PowerstatsBoxAdapter())
      ..registerAdapter(WorkBoxAdapter());
    _completer.complete();
  }

  @override
  Future<Map<String, dynamic>?> firstWhere<T>(
      bool Function(dynamic element) where) async {
    final box = await _init<T>();
    if (box.isEmpty) {
      return null;
    }
    final dynamic result = box.values.firstWhereOrNull(where);
    return result?.toMap();
  }

  @override
  Future insert<T>(Map<String, dynamic> parameters) async {
    final box = await _init<T>();
    final hiveObject = _getHiveObject<T>(parameters);
    return box.add(hiveObject);
  }

  @override
  Future<List<Map<String, dynamic>>?> where<T>(
      bool Function(dynamic element) where,
      {int? limit}) async {
    final box = await _init<T>();
    final result = <Map<String, dynamic>>[];
    box.values
        .where((dynamic element) => where(element))
        .forEach((dynamic element) {
      final results = <String, dynamic>{};
      results.addAll(element.toMap());
      result.add(results);
    });
    if (limit != null && result.length >= limit) {
      return result.sublist(0, limit);
    }
    return result;
  }

  String _getTableName<T>() {
    if (T == HeroBox) {
      return HeroBox.tableName;
    }
    throw Exception('Error in finding table name.');
  }

  HiveObject _getHiveObject<T>(Map<String, dynamic> parameters) {
    if (T == HeroBox) {
      return HeroBox.create(parameters);
    }
    throw Exception('Error creating hive object.');
  }

  Future<Box> _init<T>() async {
    if (!_completer.isCompleted) {
      await _completer.future;
    }
    final tableName = _getTableName<T>();
    if (!Hive.isBoxOpen(tableName)) {
      final box = await Hive.openBox<T>(
        tableName,
      );
      return box;
    }
    return Hive.box<T>(tableName);
  }
}
