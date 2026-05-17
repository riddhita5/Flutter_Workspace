import 'package:flutter/material.dart';

class Text1 extends StatefulWidget {
  const Text1({super.key});

  @override
  State<Text1> createState() => _Text1State();
}

class _Text1State extends State<Text1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(""),backgroundColor: Colors.pink.shade100,),backgroundColor: Colors.pink.shade100,
      body: Center(child: Column(children: [SizedBox(height: 200,),
        Text("Hieee!! Its Riddhita Gosai  \n ",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.purple),),
        Text("From Tops Technologies",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.purple),)
      ],),),
    );
  }
}
