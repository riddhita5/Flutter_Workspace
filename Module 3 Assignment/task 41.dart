import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: RatingScreen(),
    );
  }
}

class RatingScreen extends StatefulWidget {

  @override
  State<RatingScreen> createState() => _RatingScreenState();
}

class _RatingScreenState extends State<RatingScreen> {

  int rating = 0;

  @override
  Widget build(BuildContext context) {

    return Scaffold(

      appBar: AppBar(
        title: Text("Custom Rating Widget"),
      ),

      body: Center(

        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,

          children: [

            // Rating Widget
            RatingWidget(

              selectedRating: rating,

              onRatingChanged: (value) {

                setState(() {
                  rating = value;
                });
              },
            ),

            SizedBox(height: 20),

            Text(
              "Selected Rating: $rating",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// CUSTOM RATING WIDGET
class RatingWidget extends StatelessWidget {

  final int selectedRating;

  final Function(int) onRatingChanged;

  RatingWidget({
    required this.selectedRating,
    required this.onRatingChanged,
  });

  @override
  Widget build(BuildContext context) {

    return Row(
      mainAxisAlignment: MainAxisAlignment.center,

      children: List.generate(5, (index) {

        return IconButton(

          onPressed: () {

            onRatingChanged(index + 1);
          },

          icon: Icon(

            index < selectedRating
                ? Icons.star
                : Icons.star_border,

            color: Colors.amber,
            size: 40,
          ),
        );
      }),
    );
  }
}