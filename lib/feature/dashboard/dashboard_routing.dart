import 'package:flutter_modular/flutter_modular.dart';
import 'package:super_hero_app/feature/dashboard/presentation/dashboard/dashboard_screen.dart';

class DashboardRouting {
  static final List<ModularRoute> routes = [
    ChildRoute<dynamic>(
      '/',
      child: (_, __) => DashboardScreen(
        controller: Modular.get(),
      ),
    ),
  ];
}
