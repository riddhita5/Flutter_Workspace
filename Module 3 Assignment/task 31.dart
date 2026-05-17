
import 'package:flutter/material.dart';

class CardUIScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        title: Text("Card UI Example"),
      ),

      body: Center(

        child: Stack(
          clipBehavior: Clip.none,

          children: [

            // Card
            Container(
              width: 320,
              height: 200,

              padding: EdgeInsets.all(20),

              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.shade300,
                    blurRadius: 10,
                    spreadRadius: 2,
                  ),
                ],
              ),

              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,

                children: [

                  Text(
                    "Flutter UI Design",
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),

                  SizedBox(height: 10),

                  Text(
                    "Create beautiful mobile applications using Flutter widgets and layouts.",
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.grey[700],
                    ),
                  ),
                ],
              ),
            ),

            // Floating Action Button using Positioned
            Positioned(
              bottom: -20,
              right: 20,

              child: FloatingActionButton(
                onPressed: () {},

                child: Icon(Icons.add),
              ),
            ),
          ],
        ),
      ),
    );
  }
}