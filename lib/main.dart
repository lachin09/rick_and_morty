import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:natiqa_app/modules/app_module.dart';
import 'package:natiqa_app/modules/navigation/routes.dart';

void main() {
  runApp(ModularApp(module: AppModule(), child: AppWidget()));
}

class AppWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Modular.setInitialRoute(Routes.character.getModule());
    return MaterialApp.router(
      title: 'Rick and Morty App',
      routeInformationParser: Modular.routeInformationParser,
      routerDelegate: Modular.routerDelegate,
    );
  }
}
