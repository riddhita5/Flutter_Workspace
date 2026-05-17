import 'dart:async';

import 'package:flutter/material.dart';

class ImageCarousel extends StatefulWidget {
  const ImageCarousel({super.key});

  @override
  State<ImageCarousel> createState() => _ImageCarouselState();
}

class _ImageCarouselState extends State<ImageCarousel> {

  PageController pageController = PageController();

  int currentPage = 0;

  List images = [

    "https://images.unsplash.com/photo-1506744038136-46273834b3fb?w=500",

    "https://images.unsplash.com/photo-1518791841217-8f162f1e1131?w=500",

    "https://images.unsplash.com/photo-1493246507139-91e8fad9978e?w=500",

    "https://images.unsplash.com/photo-1500530855697-b586d89ba3ee?w=500",

    "https://images.unsplash.com/photo-1470770841072-f978cf4d019e?w=500",
  ];

  @override
  void initState() {
    super.initState();

    // Auto Slide Every 3 Seconds
    Timer.periodic(
      const Duration(seconds: 3),

          (Timer timer) {

        if (currentPage < images.length - 1) {

          currentPage++;

        } else {

          currentPage = 0;
        }

        pageController.animateToPage(

          currentPage,

          duration: const Duration(milliseconds: 500),

          curve: Curves.easeIn,
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(

      appBar: AppBar(
        backgroundColor: Colors.orange,

        title: const Text(
          "Image Carousel",
          style: TextStyle(color: Colors.white),
        ),
      ),

      body: Center(

        child: SizedBox(
          height: 800,

          child: PageView.builder(

            controller: pageController,

            itemCount: images.length,

            itemBuilder: (context, index) {

              return Padding(
                padding: const EdgeInsets.all(10),

                child: ClipRRect(

                  borderRadius: BorderRadius.circular(20),

                  child: Image.network(

                    images[index],

                    fit: BoxFit.cover,
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}