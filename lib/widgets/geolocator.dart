import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:geocoding/geocoding.dart';

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
  // services Location
  var cl;
  Future getPosition() async {
    bool services;
    LocationPermission per;

    services = await Geolocator.isLocationServiceEnabled();
    if (services == false) {
      AwesomeDialog(
              context: context,
              title: "services",
              body: Text('services not enable'))
          .show();
    }
    print("location is ${services} in your device");

    per = await Geolocator.checkPermission();
    if (per == LocationPermission.denied) {
      per = await Geolocator.requestPermission();
      if (per == LocationPermission.whileInUse) {
        getLatAndLong();
      }
    }

    print("permition ${per} in your device");
  }

  Future<Position> getLatAndLong() async {
    return await Geolocator.getCurrentPosition().then((value) => value);
  }

  @override
  void initState() {
    getPosition();
    super.initState();
  }

  // permission
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Geolocator'),
        ),
        body: Center(
          child: RaisedButton(
            onPressed: () async {
              cl = await getLatAndLong();
              print(cl);
              print(cl.latitude);
              print(cl.longitude);
              List<Placemark> placemarks =
                  await placemarkFromCoordinates(24.626305, 46.743371);
              print(placemarks[0].street);
            },
            child: Text('show lat and long'),
          ),
        ));
  }
}
