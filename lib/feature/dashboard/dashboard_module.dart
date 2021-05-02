import 'package:flutter_modular/flutter_modular.dart';
import 'package:super_hero_app/feature/dashboard/presentation/dashboard/controllers/dashboard_controller.dart';
import 'package:super_hero_app/feature/hero/data/datasources/hero_remote_datasource.dart';
import 'package:super_hero_app/feature/hero/data/repositories/hero_repository.dart';
import 'package:super_hero_app/feature/hero/domain/usecases/get_hero_by_id_usecase.dart';
import 'package:super_hero_app/feature/hero/domain/usecases/get_hero_by_name_usecase.dart';

import 'dashboard_routing.dart';

class DashboardModule extends Module {
  @override
  List<Bind> get binds => [
        Bind.factory(
          (i) => HeroRemoteDatasourceImpl(
            http: i.get(),
          ),
        ),
        Bind.factory(
          (i) => HeroRepositoryImpl(
            remoteDatasource: i.get(),
          ),
        ),
        Bind.factory(
          (i) => GetHeroByIdUseCase(
            repository: i.get(),
          ),
        ),
        Bind.factory(
          (i) => GetHeroByNameUseCase(
            repository: i.get(),
          ),
        ),
        Bind.factory(
          (i) => DashboardController(
            getHeroById: i.get<GetHeroByIdUseCase>(),
            getHeroByName: i.get<GetHeroByNameUseCase>(),
          ),
        ),
      ];

  @override
  List<ModularRoute> get routes => DashboardRouting.routes;
}
