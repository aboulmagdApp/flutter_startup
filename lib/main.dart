import 'package:flutter/material.dart';
import 'package:flutter_start/widgets/datetime.dart';
import 'package:flutter_start/widgets/httptest.dart';
import 'package:flutter_start/widgets/imagepicker.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HttpTest(),
    );
  }
}
