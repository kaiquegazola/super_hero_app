import 'package:flutter_modular/flutter_modular.dart';
import 'package:super_hero_app/feature/hero/presentation/hero_details/hero_details_screen.dart';

class HeroRouting {
  static final List<ModularRoute> routes = [
    ChildRoute<dynamic>(
      '/',
      child: (_, args) => HeroDetailsScreen(
        hero: args.data,
      ),
    ),
  ];
}
