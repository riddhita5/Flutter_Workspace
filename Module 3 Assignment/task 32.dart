import 'package:flutter/material.dart';

class CustomButtonScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        title: Text("Custom Button UI"),
      ),

      body: Center(

        child: Stack(
          clipBehavior: Clip.none,
          alignment: Alignment.topCenter,

          children: [

            // Button Container
            Container(
              width: 180,
              height: 120,

              margin: EdgeInsets.only(top: 30),

              decoration: BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.circular(20),
              ),

              child: Center(
                child: Text(
                  "Upload",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),

            // Icon Positioned Above Text
            Positioned(
              top: 0,

              child: CircleAvatar(
                radius: 30,
                backgroundColor: Colors.white,

                child: Icon(
                  Icons.cloud_upload,
                  size: 35,
                  color: Colors.blue,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}