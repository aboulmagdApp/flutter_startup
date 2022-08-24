import 'package:flutter/material.dart';
import 'package:flutter_start/widgets/dialog.dart';
import 'package:flutter_start/widgets/dropdownsearch.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DropdownSearchTest(),
    );
  }
}
