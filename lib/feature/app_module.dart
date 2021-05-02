import 'package:flutter_modular/flutter_modular.dart';

import 'app_routing.dart';

class AppModule extends Module {
  @override
  List<Bind> get binds => [];

  @override
  List<ModularRoute> get routes => AppRouting.routes;
}
