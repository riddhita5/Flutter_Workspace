import 'package:flutter/material.dart';

void main()
{
  runApp(MaterialApp(home:HelloWorld()));
}
class HelloWorld extends StatefulWidget {
  const HelloWorld({super.key});

  @override
  State<HelloWorld> createState() => _helloworldState();
}

class _helloworldState extends State<HelloWorld> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Hello World !!  \nIt's Riddhita Gosai")),
      // body: Center(child: Text(" From Tops Technologies")),
    );
  }
}
