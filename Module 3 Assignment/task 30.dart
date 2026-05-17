import 'package:flutter/material.dart';

class ProfileScreen5 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        title: Text("Profile Page"),
      ),

      body: SingleChildScrollView(
        child: Column(
          children: [

            // Stack Section
            Stack(
              clipBehavior: Clip.none,
              alignment: Alignment.center,

              children: [

                // Background Container
                Container(
                  height: 220,
                  width: double.infinity,
                  color: Colors.blue,
                ),

                // Profile Image using Positioned
                Positioned(
                  bottom: -50,

                  child: CircleAvatar(
                    radius: 50,
                    backgroundImage: AssetImage("image.jpg"),),
                    ),

              ],
            ),

            SizedBox(height: 70),

            // Name
            Text(
              "Riddhita Gosai",
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
              ),
            ),

            SizedBox(height: 10),

            // Bio
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),

              child: Text(
                "Flutter Developer | UI Designer | Learning Mobile App Development",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.grey[700],
                ),
              ),
            ),

            SizedBox(height: 30),

            // Extra Details
            Card(
              margin: EdgeInsets.all(15),
              elevation: 5,

              child: ListTile(
                leading: Icon(Icons.email),
                title: Text("riddhita@gmail.com"),
              ),
            ),

            Card(
              margin: EdgeInsets.symmetric(horizontal: 15),
              elevation: 5,

              child: ListTile(
                leading: Icon(Icons.phone),
                title: Text("+91 7600257052"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}