import 'package:flutter/material.dart';

class HelloWorld extends StatefulWidget {
  const HelloWorld({super.key});

  @override
  State<HelloWorld> createState() => _HelloWorldState();
}

class _HelloWorldState extends State<HelloWorld> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(""),backgroundColor: Colors.lightBlue,),
      backgroundColor: Colors.lightBlue,
      body: Center(
        child: Column(
          children: [
            SizedBox(height: 300),
            Text(
              "Helloo World !!!",style: TextStyle(color: Colors.black),
            ),
          ],
        ),
      ),
    );
  }
}
