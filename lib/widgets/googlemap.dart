import 'dart:async';

import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:geolocator/geolocator.dart';
import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:geocoding/geocoding.dart';

class GoogleMapTest extends StatefulWidget {
  const GoogleMapTest({super.key});

  @override
  State<GoogleMapTest> createState() => _GoogleMapTestState();
}

Completer<GoogleMapController> _controller = Completer();
CameraPosition _kGooglePlex = CameraPosition(
  target: LatLng(24.696434, 46.673228),
  zoom: 8,
);

class _GoogleMapTestState extends State<GoogleMapTest> {
  late Position cl;
  var lat;
  var long;

  Future getper() async {
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
    }

    print("permition ${per} in your device");
    return per;
  }

  Future getLatAndLong() async {
    cl = await Geolocator.getCurrentPosition().then((value) => value);
    lat = cl.altitude;
    long = cl.longitude;
    _kGooglePlex = CameraPosition(target: LatLng(lat, long), zoom: 10.0);
  }

  late GoogleMapController gmc;

  late Set<Marker> mymarker = {
    Marker(
        markerId: MarkerId("1"),
        onTap: () {
          print("tap marker");
        },
        draggable: true,
        onDragEnd: (LatLng t) {
          print("drag end");
        },
        icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueGreen),
        infoWindow: InfoWindow(
            title: "1",
            onTap: () {
              print("tap info marker");
            }),
        position: LatLng(21.422390, 39.722958))
  };

  setMarkerCustomeImage() async {
    mymarker.add(Marker(
        markerId: MarkerId("1"),
        onTap: () {
          print("tap marker");
        },
        draggable: true,
        onDragEnd: (LatLng t) {
          print("drag end");
        },
        icon: await BitmapDescriptor.fromAssetImage(
            ImageConfiguration.empty, 'assets/image/logo.png'),
        infoWindow: InfoWindow(
            title: "1",
            onTap: () {
              print("tap info marker");
            }),
        position: LatLng(21.422390, 39.722958)));
  }

  @override
  void initState() {
    getper();
    //getLatAndLong();
    setMarkerCustomeImage();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        _kGooglePlex == null
            ? CircularProgressIndicator()
            : Container(
                height: 500,
                width: double.infinity,
                child: GoogleMap(
                  onTap: (value) {
                    print(value);
                    mymarker
                        .add(Marker(markerId: MarkerId("1"), position: value));
                    setState(() {});
                  },
                  markers: mymarker,
                  mapType: MapType.normal,
                  initialCameraPosition: _kGooglePlex,
                  onMapCreated: (GoogleMapController controller) {
                    gmc = controller;
                  },
                ),
              ),
        RaisedButton(
          onPressed: () async {
            LatLng latLng = LatLng(21.422390, 39.722958);
            gmc.animateCamera(CameraUpdate.newCameraPosition(CameraPosition(
                target: latLng, zoom: 8, tilt: 45, bearing: 45)));
          },
          child: Text('google map'),
        )
      ],
    );
  }
}


// AIzaSyCM8mFhfRel9CKA8_WBS2GJ0AMUhq879pM