import 'package:flutter/material.dart';

class HomeController {
  final ValueNotifier<int> counter = ValueNotifier(0);

  void incrementCounter() {
    counter.value++;
  }
}
