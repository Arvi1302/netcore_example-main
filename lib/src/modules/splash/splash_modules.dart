import 'package:flutter_modular/flutter_modular.dart';

import 'splash_controller.dart';
import 'splash_screen.dart';

class SplashModule extends Module {
  @override
  void binds(Injector i) {
    i.add(SplashController.new);
  }

  @override
  void routes(RouteManager r) {
    r.child(
      '/',
      child: (context) =>
          SplashScreen(controller: Modular.get<SplashController>()),
    );
  }
}
