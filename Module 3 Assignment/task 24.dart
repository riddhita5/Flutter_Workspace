import 'package:flutter/material.dart';

class BottomNavScreen extends StatefulWidget {
  @override
  State<BottomNavScreen> createState() => _BottomNavScreenState();
}

class _BottomNavScreenState extends State<BottomNavScreen> {

  int currentIndex = 0;

  List pages = [

    // News Screen
    Center(
      child: Text(
        "News Screen",
        style: TextStyle(fontSize: 25),
      ),
    ),

    // Messages Screen
    Center(
      child: Text(
        "Messages Screen",
        style: TextStyle(fontSize: 25),
      ),
    ),

    // Profile Screen
    Center(
      child: Text(
        "Profile Screen",
        style: TextStyle(fontSize: 25),
      ),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        title: Text("Bottom Navigation Bar"),
      ),

      body: pages[currentIndex],

      bottomNavigationBar: BottomNavigationBar(

        currentIndex: currentIndex,

        onTap: (index) {
          setState(() {
            currentIndex = index;
          });
        },

        items: [

          BottomNavigationBarItem(
            icon: Icon(Icons.newspaper),
            label: "News",
          ),

          BottomNavigationBarItem(
            icon: Icon(Icons.message),
            label: "Messages",
          ),

          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: "Profile",
          ),
        ],
      ),
    );
  }
}