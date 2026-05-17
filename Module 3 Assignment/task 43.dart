import 'package:flutter/material.dart';

class ProfileScreen67 extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    return Scaffold(

      appBar: AppBar(
        title: Text("Custom Profile Card"),
      ),

      body: Center(

        child: ProfileCard(

          name: "Riddhita Gosai",

          image : "assets/image.jpg",

          bio:
          "Flutter Developer | UI Designer | Learning Mobile App Development",
        ),
      ),
    );
  }
}

// CUSTOM PROFILE CARD WIDGET
class ProfileCard extends StatelessWidget {

  final String name;
  final String image;
  final String bio;

  ProfileCard({
    required this.name,
    required this.image,
    required this.bio,
  });

  @override
  Widget build(BuildContext context) {

    return Card(

      elevation: 8,

      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),

      margin: EdgeInsets.all(20),

      child: Padding(
        padding: EdgeInsets.all(20),

        child: Column(
          mainAxisSize: MainAxisSize.min,

          children: [

            // Profile Image
            CircleAvatar(
              radius: 50,
              backgroundImage: NetworkImage(image),
            ),

            SizedBox(height: 15),

            // Name
            Text(
              name,
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),

            SizedBox(height: 10),

            // Bio
            Text(
              bio,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 16,
                color: Colors.grey[700],
              ),
            ),
          ],
        ),
      ),
    );
  }
}