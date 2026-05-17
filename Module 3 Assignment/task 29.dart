import 'package:flutter/material.dart';

class StackScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        title: Text("Stack Overlay Example"),
      ),

      body: Center(

        child: Stack(
          alignment: Alignment.center,

          children: [

            // Background Image
            Container(
              height: 300,
              width: 300,

              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),

                child: Image.network(
                  "https://images.unsplash.com/photo-1506744038136-46273834b3fb",
                  fit: BoxFit.cover,
                ),
              ),
            ),

            // Transparent Overlay
            Container(
              height: 300,
              width: 300,

              decoration: BoxDecoration(
                color: Colors.black.withOpacity(0.5),
                borderRadius: BorderRadius.circular(20),
              ),
            ),

            // Text on Overlay
            Text(
              "Beautiful Nature",
              style: TextStyle(
                color: Colors.white,
                fontSize: 28,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}