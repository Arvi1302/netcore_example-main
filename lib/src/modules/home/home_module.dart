import 'package:flutter_modular/flutter_modular.dart';

import 'home_controller.dart';
import 'home_screen.dart';

class HomeModule extends Module {
  @override
  void binds(Injector i) {
    i.add(HomeController.new);
  }

  @override
  void routes(RouteManager r) {
    r.child(
      '/',
      child: (context) => HomeScreen(controller: Modular.get<HomeController>()),
    );
  }
}
