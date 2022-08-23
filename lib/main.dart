import 'package:flutter/material.dart';
import 'package:flutter_start/one.dart';
import 'package:flutter_start/test.dart';
import 'package:flutter_start/three.dart';
import 'package:flutter_start/two.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Test(),
      routes: {
        "One": (context) => One(),
        "two": (context) => Two(),
        "three": (context) => Three(),
        "home": (context) => Test()
      },
    );
  }
}
