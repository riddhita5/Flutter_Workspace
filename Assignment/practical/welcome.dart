import 'package:flutter/material.dart';

void main()
{
  runApp(MaterialApp(home:Welcome()));
}

class Welcome extends StatefulWidget {
  const Welcome({super.key});

  @override
  State<Welcome> createState() => _WelcomeState();
}

class _WelcomeState extends State<Welcome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "My App",
          style: TextStyle(
            fontSize: 20.00,
            fontWeight: FontWeight.bold,
            color: Colors.deepPurpleAccent,
          ),
        ), backgroundColor: Colors.black,
      ),

      body: Center(
        child: Text(
          "Welcome User From Tops",
          style: TextStyle(
            backgroundColor: Colors.black,
            fontSize: 15.00,
            fontWeight: FontWeight.w100,
            color: Colors.pinkAccent,
          ),
        ),
      ),
      backgroundColor: Colors.blueAccent,
    );
  }
}
