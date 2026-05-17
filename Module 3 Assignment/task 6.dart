import 'package:flutter/material.dart';

class CardScreen extends StatelessWidget {
  const CardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(""),),
      body: Center(child: Column(children: [Row(children: [SizedBox(height: 10,),Padding(padding: EdgeInsets.all(20)),
        Container
          (height: 190,
          color: Colors.pink.shade100,
          padding: EdgeInsets.all(20.00),
          child: Row
            (
            children:
            [
              CircleAvatar(radius: 40,backgroundImage: AssetImage("img.jpg"),),
              SizedBox(width: 16),
              Column
                (
                children:
                [
                  SizedBox(height: 30,),
                  Text("Riddhita Gosai",style: TextStyle(fontSize: 20.00,fontWeight: FontWeight.bold),),
                  SizedBox(height: 10,),
                  Text(" Graduated  \nCurrently doing my Flutter Development \nCourse in Tops Technologies ",style: TextStyle(fontSize: 15.00,fontWeight: FontWeight.w200),)
                ],
              ),


            ],
          ),
        ),
      ],)],),),
    );
  }
}
