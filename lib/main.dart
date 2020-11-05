import 'package:flutter/material.dart';

import 'package:device_simulator/device_simulator.dart';

import 'package:flex_example/home_page/home_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DeviceSimulator(
        brightness: Brightness.dark,
        enable: true,
        child: MyHomePage(),
      ),
    );
  }
}