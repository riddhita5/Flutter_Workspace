import 'package:flutter/material.dart';

class Page2 extends StatefulWidget {
  const Page2({super.key});

  @override
  State<Page2> createState() => _Page2State();
}

class _Page2State extends State<Page2> {

  @override
  Widget build(BuildContext context) {

    return Scaffold(

      appBar: AppBar(
        title: const Text("Images"),
      ),

      body: SingleChildScrollView(
        child: Column(
          children: [

            Container(
              height: 200,
              width: 300,
              color: Colors.grey,
        
              child: Image.asset(
                "assets/img.png",
        
                fit: BoxFit.cover,
              ),
            ),
        
            const SizedBox(height: 20),

            Container(
              height: 200,
              width: 300,
              color: Colors.grey,
        
              child: Image.asset(
                "assets/img.png",
        
                fit: BoxFit.contain,
              ),
            ),
        
            const SizedBox(height: 20),

            Container(
              height: 200,
              width: 300,
              color: Colors.grey,
        
              child: Image.asset(
                "assets/img.png",
        
                fit: BoxFit.fill,
              ),
            ),
          ],
        ),
      ),
    );
  }
}