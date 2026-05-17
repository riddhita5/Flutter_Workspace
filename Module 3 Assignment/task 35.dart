import 'package:flutter/material.dart';

class PulseButtonScreen extends StatefulWidget {
  @override
  State<PulseButtonScreen> createState() => _PulseButtonScreenState();
}

class _PulseButtonScreenState extends State<PulseButtonScreen> {

  bool animate = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        title: Text("Pulsing Button"),
      ),

      body: Center(

        child: GestureDetector(

          onTap: () {
            setState(() {
              animate = !animate;
            });
          },

          child: TweenAnimationBuilder<double>(

            tween: Tween<double>(
              begin: 100,
              end: animate ? 140 : 100,
            ),

            duration: Duration(milliseconds: 700),

            curve: Curves.easeInOut,

            builder: (context, size, child) {

              return Container(
                width: size,
                height: size,

                decoration: BoxDecoration(
                  color: Colors.blue,
                  shape: BoxShape.circle,
                ),

                child: Center(
                  child: Text(
                    "Tap",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                    ),
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