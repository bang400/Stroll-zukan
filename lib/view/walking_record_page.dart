import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class WalkingRecordPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Stroll Zukan'),
        ),
        body: GoogleMap(
          initialCameraPosition: CameraPosition(
              zoom: 17,
              target: LatLng(35.0, 135.0),
              tilt: 45.0,
              bearing: 90.0
          ),
        )
    );
  }

}