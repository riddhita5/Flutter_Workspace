import 'package:flutter/material.dart';

class ImageChangeScreen extends StatefulWidget {
  const ImageChangeScreen({super.key});

  @override
  State<ImageChangeScreen> createState() => _ImageChangeScreenState();
}

class _ImageChangeScreenState extends State<ImageChangeScreen> {

  int currentIndex = 0;

  List images = [

    "https://images.unsplash.com/photo-1506744038136-46273834b3fb",

    "https://images.unsplash.com/photo-1518791841217-8f162f1e1131",

    "https://images.unsplash.com/photo-1493246507139-91e8fad9978e",

    "https://images.unsplash.com/photo-1500530855697-b586d89ba3ee",

    "https://images.unsplash.com/photo-1470770841072-f978cf4d019e",

    "https://images.unsplash.com/photo-1507525428034-b723cf961d3e",

    "https://images.unsplash.com/photo-1519985176271-adb1088fa94c",
  ];

  void changeImage() {

    setState(() {

      currentIndex++;

      if (currentIndex >= images.length) {
        currentIndex = 0;
      }

    });
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(

      appBar: AppBar(
        backgroundColor: Colors.orange,

        title: const Text(
          "Network Images",
          style: TextStyle(color: Colors.white),
        ),
      ),

      body: Center(

        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,

          children: [

            Image.network(
              images[currentIndex],

              height: 250,
              width: 320,

              fit: BoxFit.cover,
            ),

            const SizedBox(height: 20),

            ElevatedButton(

              onPressed: changeImage,

              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.orange,
              ),

              child: const Text(
                "Change Image",
                style: TextStyle(color: Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }
}