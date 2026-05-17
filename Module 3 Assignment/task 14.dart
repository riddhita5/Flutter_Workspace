import 'package:flutter/material.dart';

class GalleryApp extends StatefulWidget {
  const GalleryApp({super.key});

  @override
  State<GalleryApp> createState() => _GalleryAppState();
}

class _GalleryAppState extends State<GalleryApp> {

  List images = [

    "https://images.unsplash.com/photo-1506744038136-46273834b3fb?w=500",

    "https://images.unsplash.com/photo-1518791841217-8f162f1e1131?w=500",

    "https://images.unsplash.com/photo-1493246507139-91e8fad9978e?w=500",

    "https://images.unsplash.com/photo-1500530855697-b586d89ba3ee?w=500",

    "https://images.unsplash.com/photo-1470770841072-f978cf4d019e?w=500",

    "https://images.unsplash.com/photo-1506744038136-46273834b3fb?w=500",

    "https://images.unsplash.com/photo-1518791841217-8f162f1e1131?w=500",

    "https://images.unsplash.com/photo-1493246507139-91e8fad9978e?w=500",

    "https://images.unsplash.com/photo-1500530855697-b586d89ba3ee?w=500",

    "https://images.unsplash.com/photo-1470770841072-f978cf4d019e?w=500",
    "https://images.unsplash.com/photo-1506744038136-46273834b3fb?w=500",

    "https://images.unsplash.com/photo-1518791841217-8f162f1e1131?w=500",

    "https://images.unsplash.com/photo-1493246507139-91e8fad9978e?w=500",

    "https://images.unsplash.com/photo-1500530855697-b586d89ba3ee?w=500",

    "https://images.unsplash.com/photo-1470770841072-f978cf4d019e?w=500",
    "https://images.unsplash.com/photo-1506744038136-46273834b3fb?w=500",

    "https://images.unsplash.com/photo-1518791841217-8f162f1e1131?w=500",

    "https://images.unsplash.com/photo-1493246507139-91e8fad9978e?w=500",

    "https://images.unsplash.com/photo-1500530855697-b586d89ba3ee?w=500",

    "https://images.unsplash.com/photo-1470770841072-f978cf4d019e?w=500",
    "https://images.unsplash.com/photo-1506744038136-46273834b3fb?w=500",

    "https://images.unsplash.com/photo-1518791841217-8f162f1e1131?w=500",

    "https://images.unsplash.com/photo-1493246507139-91e8fad9978e?w=500",

    "https://images.unsplash.com/photo-1500530855697-b586d89ba3ee?w=500",

    "https://images.unsplash.com/photo-1470770841072-f978cf4d019e?w=500",
    "https://images.unsplash.com/photo-1506744038136-46273834b3fb?w=500",

    "https://images.unsplash.com/photo-1518791841217-8f162f1e1131?w=500",

    "https://images.unsplash.com/photo-1493246507139-91e8fad9978e?w=500",

    "https://images.unsplash.com/photo-1500530855697-b586d89ba3ee?w=500",

    "https://images.unsplash.com/photo-1470770841072-f978cf4d019e?w=500",
    "https://images.unsplash.com/photo-1506744038136-46273834b3fb?w=500",

    "https://images.unsplash.com/photo-1518791841217-8f162f1e1131?w=500",

    "https://images.unsplash.com/photo-1493246507139-91e8fad9978e?w=500",

    "https://images.unsplash.com/photo-1500530855697-b586d89ba3ee?w=500",

    "https://images.unsplash.com/photo-1470770841072-f978cf4d019e?w=500",
    "https://images.unsplash.com/photo-1506744038136-46273834b3fb?w=500",

    "https://images.unsplash.com/photo-1518791841217-8f162f1e1131?w=500",

    "https://images.unsplash.com/photo-1493246507139-91e8fad9978e?w=500",

    "https://images.unsplash.com/photo-1500530855697-b586d89ba3ee?w=500",

    "https://images.unsplash.com/photo-1470770841072-f978cf4d019e?w=500",
    "https://images.unsplash.com/photo-1506744038136-46273834b3fb?w=500",

    "https://images.unsplash.com/photo-1518791841217-8f162f1e1131?w=500",

    "https://images.unsplash.com/photo-1493246507139-91e8fad9978e?w=500",

    "https://images.unsplash.com/photo-1500530855697-b586d89ba3ee?w=500",

    "https://images.unsplash.com/photo-1470770841072-f978cf4d019e?w=500",








    "https://images.unsplash.com/photo-1507525428034-b723cf961d3e?w=500",
  ];

  @override
  Widget build(BuildContext context) {

    return Scaffold(

      appBar: AppBar(
        backgroundColor: Colors.orange,

        title: const Text(
          "Gallery App",
          style: TextStyle(color: Colors.white),
        ),
      ),

      body: GridView.builder(

        padding: const EdgeInsets.all(10),

        itemCount: images.length,

        gridDelegate:
        const SliverGridDelegateWithFixedCrossAxisCount(

          crossAxisCount: 4,

          crossAxisSpacing: 4,
          mainAxisSpacing: 3,
        ),

        itemBuilder: (context, index) {

          return ClipRRect(

            borderRadius: BorderRadius.circular(15),

            child: Image.network(

              images[index],

              fit: BoxFit.cover,

              // LOADING INDICATOR
              loadingBuilder: (
                  BuildContext context,
                  Widget child,
                  ImageChunkEvent? loadingProgress,
                  ) {

                // Image loaded
                if (loadingProgress == null) {
                  return child;
                }

                // While loading
                return const Center(
                  child: CircularProgressIndicator(),
                );
              },

              // Error Handle
              errorBuilder:
                  (context, error, stackTrace) {

                return const Center(
                  child: Icon(
                    Icons.error,
                    size: 40,
                    color: Colors.red,
                  ),
                );
              },
            ),
          );
        },
      ),
    );
  }
}