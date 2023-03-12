import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Strol Zukan'),
        ),
        body: GoogleMap(
          initialCameraPosition: CameraPosition(
            zoom: 17,
            target: LatLng(35.0,135.0),
            tilt: 45.0,
            bearing: 90.0
          ),
        )
      ),
    );
  }
}
