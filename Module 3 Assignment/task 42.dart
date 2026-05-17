import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ProgressScreen(),
    );
  }
}

class ProgressScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    return Scaffold(

      appBar: AppBar(
        title: Text("Custom Progress Bar"),
      ),

      body: Center(

        child: Padding(
          padding: EdgeInsets.all(20),

          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,

            children: [

              // Progress Bar Widget
              ProgressBar(
                percentage: 70,
              ),

              SizedBox(height: 20),

              Text(
                "70% Completed",
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// CUSTOM PROGRESS BAR WIDGET
class ProgressBar extends StatelessWidget {

  final double percentage;

  ProgressBar({
    required this.percentage,
  });

  @override
  Widget build(BuildContext context) {

    return Container(

      width: double.infinity,
      height: 30,

      decoration: BoxDecoration(
        color: Colors.grey[300],
        borderRadius: BorderRadius.circular(20),
      ),

      child: Stack(
        children: [

          // Progress Indicator
          Container(

            width:
            (percentage / 100) *
                MediaQuery.of(context).size.width,

            decoration: BoxDecoration(
              color: Colors.blue,
              borderRadius: BorderRadius.circular(20),
            ),
          ),

          // Percentage Text
          Center(
            child: Text(
              "${percentage.toInt()}%",
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
    );
  }
}