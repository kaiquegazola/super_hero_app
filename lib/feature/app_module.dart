import 'package:flutter_modular/flutter_modular.dart';
import 'package:super_hero_app/core/database/hive_database.dart';
import 'package:super_hero_app/core/http/dio_creator.dart';
import 'package:super_hero_app/core/http/http_dio.dart';

import 'app_routing.dart';

class AppModule extends Module {
  @override
  List<Bind> get binds => [
        Bind.singleton(
          (i) => HiveDatabase()..initialize(),
        ),
        Bind.lazySingleton(
          (i) => DioCreator.create(),
        ),
        Bind.lazySingleton(
          (i) => HttpDio(
            dio: i.get(),
          ),
        )
      ];

  @override
  List<ModularRoute> get routes => AppRouting.routes;
}
