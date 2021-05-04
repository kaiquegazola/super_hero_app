import 'package:flutter_modular/flutter_modular.dart';

import 'hero_routing.dart';

class HeroModule extends Module {
  @override
  List<Bind> get binds => [];

  @override
  List<ModularRoute> get routes => HeroRouting.routes;
}
