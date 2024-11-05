import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:smartech_nudges/px_widget.dart';
import 'package:smartech_nudges/tracker/route_obersver.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({super.key});

  @override
  Widget build(BuildContext context) {
    Modular.setInitialRoute('/splash/');
    Modular.setObservers([PxNavigationObserver()]);
    return SmartechPxWidget(
      child: MaterialApp.router(
        debugShowCheckedModeBanner: false,
        title: 'Farmácias APP',
        routerConfig: Modular.routerConfig,
      ),
    );
  }
}
