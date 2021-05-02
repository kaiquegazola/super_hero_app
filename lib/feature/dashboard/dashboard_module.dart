import 'package:flutter_modular/flutter_modular.dart';
import 'package:super_hero_app/feature/dashboard/presentation/dashboard/controllers/dashboard_controller.dart';

import 'dashboard_routing.dart';

class DashboardModule extends Module {
  @override
  List<Bind> get binds => [
        Bind.factory(
          (i) => DashboardController(),
        ),
      ];

  @override
  List<ModularRoute> get routes => DashboardRouting.routes;
}
