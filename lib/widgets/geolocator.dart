import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';

// we will add the permition for Android in the following path :-
// - android -> app -> src -> main -> AndroidManifest.xml
// above application tag add your permission
// ios
// ios => Runner => Info.plist
// any place add your permission

class GeolocatorTest extends StatefulWidget {
  const GeolocatorTest({super.key});

  @override
  State<GeolocatorTest> createState() => _GeolocatorTestState();
}

class _GeolocatorTestState extends State<GeolocatorTest> {
  Future getData() async {
    var a;
    print('start function');
    await Future.delayed(Duration(seconds: 3), () {
      a = 10;
      print('aboulmagd');
    });
    print('end function $a');
  }

  @override
  void initState() {
    getData();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Geolocator'),
        ),
        body: Text('Geolocator'));
  }
}
