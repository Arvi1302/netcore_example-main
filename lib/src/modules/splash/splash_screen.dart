import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'splash_controller.dart';

class SplashScreen extends StatefulWidget {
  final SplashController controller;
  const SplashScreen({super.key, required this.controller});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    widget.controller.init().then((_) {
      Modular.to.pushNamed('/home');
    });
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            CircularProgressIndicator(),
            SizedBox(height: 20),
            Text('Loading...'),
          ],
        ),
      ),
    );
  }
}
