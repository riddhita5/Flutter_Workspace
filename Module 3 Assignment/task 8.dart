import 'package:flutter/material.dart';

class DynamicList extends StatefulWidget {
  const DynamicList({super.key});

  @override
  State<DynamicList> createState() => _DynamicListState();
}

class _DynamicListState extends State<DynamicList> {

  List list = [
    "Riddhita",
    "Jay",
    "Mansi",
    "Vanshika",
    "Vivek",
    "Suraj",
    "Priya",
    "Kuhu",
    "Parul",
    "Kavan",
    "Avni",
    "Avinash",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("List")),
      body: ListView.builder(
        //how to build items means it will follow your design
        itemBuilder: (BuildContext context, int index) {
          // return ListTile
          //   (
          //
          //     leading:Image.asset(iconlist[index],width: 250,height: 250,),
          //     title:Text(titlelist[index],style: TextStyle(fontSize: 20.00),)
          //   );
          return Padding(
            padding: const EdgeInsets.all(18.0),
            child: Card(
              color: Colors.lightBlue,
              child: Row(
                children: [
                  SizedBox(width: 10),
                 TextButton(onPressed: () {
                  print("Name Tapped");
                 }, child: Text(list[index],style: TextStyle(fontSize: 20.00)))
                 // Text(list[index], style: TextStyle(fontSize: 20.00)),
                ],
              ),
            ),
          );
        },
        //count for list
        itemCount: list.length,
      ),
    );
  }}