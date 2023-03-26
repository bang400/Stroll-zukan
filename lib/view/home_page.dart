import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:stroll_zukan/route_config.dart';
import 'package:stroll_zukan/view/my_cource_page.dart';
import 'walking_record_page.dart';
import 'dart:io' show Platform;

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Container(
        child: Center(
          child: Column(
            children: [
              Padding(padding: EdgeInsets.all(50),),
              Container(
                child: Text(
                  'StrollZukan',
                  style: TextStyle(
                    fontSize: 55.0,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                // color: Colors.grey,
                height: 300.0,
                width: 300.0,
              ),
              Padding(padding: EdgeInsets.all(10),),
              Container(
                child: SizedBox(
                  width: 300,
                  height: 50,
                  child: ElevatedButton(
                    onPressed:(){
                      Navigator.push(
                        context,
                        MyRoute.getRoute(MyCourcePage()),
                      );
                    },
                    child: Text(
                      'マイコース',
                      style: TextStyle(
                        // color: Colors.black87,
                        fontSize: 20,
                      ),),
                    style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(50),
                        )
                    ),
                  ),
                ),
              ),
              Padding(padding: EdgeInsets.all(10),),
              Container(
                child: SizedBox(
                  width: 300,
                  height: 50,
                  child: ElevatedButton(
                    onPressed:(){
                      Navigator.push(
                        context,
                        MyRoute.getRoute(WalkingRecordPage()),
                      );
                    },
                    child: Text(
                      '散歩を記録',
                      style: TextStyle(
                        // color: Colors.black87,
                        fontSize: 20,
                      ),),
                    style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(50),
                        )
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}