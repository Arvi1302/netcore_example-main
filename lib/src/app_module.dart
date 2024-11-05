import 'package:flutter_modular/flutter_modular.dart';

import 'modules/home/home_module.dart';
import 'modules/splash/splash_modules.dart';

class AppModule extends Module {
  @override
  void routes(RouteManager r) {
    r.module('/splash', module: SplashModule());
    r.module('/home', module: HomeModule());
  }
}
