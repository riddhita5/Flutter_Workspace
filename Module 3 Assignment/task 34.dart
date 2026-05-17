import 'package:flutter/material.dart';

class ExpandCollapseScreen extends StatefulWidget {
  @override
  State<ExpandCollapseScreen> createState() =>
      _ExpandCollapseScreenState();
}

class _ExpandCollapseScreenState
    extends State<ExpandCollapseScreen> {

  bool isExpanded = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        title: Text("AnimatedContainer Example"),
      ),

      body: Center(

        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,

          children: [

            // Button
            ElevatedButton(
              onPressed: () {

                setState(() {
                  isExpanded = !isExpanded;
                });
              },

              child: Text(
                isExpanded ? "Collapse" : "Expand",
              ),
            ),

            SizedBox(height: 20),

            // Animated Container
            AnimatedContainer(

              duration: Duration(seconds: 1),

              width: 300,

              height: isExpanded ? 200 : 80,

              padding: EdgeInsets.all(20),

              decoration: BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.circular(20),
              ),

              child: Center(
                child: Text(
                  "This content expands and collapses using AnimatedContainer.",
                  textAlign: TextAlign.center,

                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}