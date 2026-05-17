import 'package:flutter/material.dart';

class FirstScreen10 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        title: Text("First Screen"),
      ),

      body: Center(

        child: ElevatedButton(

          onPressed: () {

            Navigator.push(
              context,

              PageRouteBuilder(

                pageBuilder:
                    (context, animation, secondaryAnimation) =>
                    SecondScreen10(),

                transitionsBuilder:
                    (context, animation, secondaryAnimation, child) {

                  // Slide Animation
                  const begin = Offset(1.0, 0.0);
                  const end = Offset.zero;

                  var tween = Tween(
                    begin: begin,
                    end: end,
                  );

                  var offsetAnimation =
                  animation.drive(tween);

                  return SlideTransition(
                    position: offsetAnimation,
                    child: child,
                  );
                },
              ),
            );
          },

          child: Text("Go to Second Screen"),
        ),
      ),
    );
  }
}

class SecondScreen10 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        title: Text("Second Screen"),
      ),

      body: Center(
        child: Text(
          "Slide Transition Animation",
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}