import 'package:flutter/material.dart';

class FadeImageScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        title: Text("Fade In Image Example"),
      ),

      body: Center(

        child: FadeInImage.assetNetwork(

          // Placeholder Image
          placeholder: "assets/img.png",

          // Network Image
          image:
          "https://images.unsplash.com/photo-1506744038136-46273834b3fb",

          width: 300,
          height: 300,

          fit: BoxFit.cover,

          // Fade Animation Duration
          fadeInDuration: Duration(seconds: 2),
        ),
      ),
    );
  }
}