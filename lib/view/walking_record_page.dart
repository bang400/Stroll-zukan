import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class WalkingRecordPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('散歩を記録'),
        ),
        body: GoogleMap(
          initialCameraPosition: CameraPosition(
              zoom:17,  // カメラのズームレベル
              target: LatLng(35.6811673, 139.7670516), // カメラが指している地理的な場所。
              tilt: 45.0, // 地底からのカメラアングルの角度
              bearing: 90.0 //北から時計回りに測定された、度単位のカメラの方位。
          ),
        )
    );
  }

}