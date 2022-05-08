import 'package:flutter_modular/flutter_modular.dart';

import 'dashboard/dashboard_module.dart';
import 'hero/hero_module.dart';

class AppRouting {
  static final List<ModularRoute> routes = [
    ModuleRoute<void>(
      '/dashboard',
      module: DashboardModule(),
    ),
    ModuleRoute<void>(
      '/hero',
      module: HeroModule(),
    ),
  ];
}
