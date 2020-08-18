import 'package:flutter/material.dart';

import 'home/home.dart';

void main(List<String> args) {
  runApp(MyApp());
}


class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowMaterialGrid: false,
      theme: ThemeData.dark(),
      home: Home(),
    );
  }
}