import 'package:flutter/material.dart';

class Container2 extends StatefulWidget {
  const Container2({super.key});

  @override
  State<Container2> createState() => _Container2State();
}

class _Container2State extends State<Container2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(""),backgroundColor: Colors.pink.shade50,),backgroundColor: Colors.pink.shade50,
     body:Center(child: Row(
       children: [
         SizedBox(height : 100,),Padding(padding: EdgeInsetsGeometry.all(18)),
       Container(
         height: 400,
         width: 300,
         color: Colors.blue,
       ),Padding(padding: EdgeInsets.all(18)),Container(
           height: 400,
           width: 200,
           color: Colors.black,
         ),Padding(padding: EdgeInsets.all(18)),Container(
           height: 400,
           width: 100,
           color: Colors.red,
         )],),
     ),);
  }
}
