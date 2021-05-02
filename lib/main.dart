import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:super_hero_app/feature/app_module.dart';
import 'package:super_hero_app/feature/app_widget.dart';

Future<void> main() async {
  runApp(
    ModularApp(
      module: AppModule(),
      child: AppWidget(),
    ),
  );
}
