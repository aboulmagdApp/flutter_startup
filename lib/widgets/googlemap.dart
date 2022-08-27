import 'dart:async';

import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class GoogleMapTest extends StatefulWidget {
  const GoogleMapTest({super.key});

  @override
  State<GoogleMapTest> createState() => _GoogleMapTestState();
}

Completer<GoogleMapController> _controller = Completer();
final CameraPosition _kGooglePlex = CameraPosition(
  target: LatLng(37.42796133580664, -122.085749655962),
  zoom: 14.4746,
);

class _GoogleMapTestState extends State<GoogleMapTest> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 500,
          width: double.infinity,
          child: GoogleMap(
            mapType: MapType.normal,
            initialCameraPosition: _kGooglePlex,
            onMapCreated: (GoogleMapController controller) {
              _controller.complete(controller);
            },
          ),
        ),
        RaisedButton(
          onPressed: () {},
          child: Text('google map'),
        )
      ],
    );
  }
}


// AIzaSyCM8mFhfRel9CKA8_WBS2GJ0AMUhq879pM