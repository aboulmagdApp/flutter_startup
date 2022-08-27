import 'package:flutter/material.dart';
import 'package:flutter_start/widgets/geolocator.dart';
import 'package:flutter_start/widgets/googlemap.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: GoogleMapTest(),
    );
  }
}
