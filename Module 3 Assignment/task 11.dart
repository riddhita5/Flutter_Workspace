import 'package:flutter/material.dart';

class MyHomePage2 extends StatefulWidget {
  const MyHomePage2({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage2> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage2> {

  int _counter = 0;

  // Increment
  void incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  // Decrement
  void decrementCounter() {
    setState(() {

      if (_counter > 0) {
        _counter--;
      }

    });
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(

      appBar: AppBar(
        backgroundColor: Colors.orange,
        title: Text(widget.title),
      ),

      body: Center(

        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,

          children: [

            const Text(
              'Counter Value',
              style: TextStyle(fontSize: 25),
            ),

            const SizedBox(height: 20),

            Text(
              '$_counter',
              style: const TextStyle(
                fontSize: 50,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 30),

            // Buttons Row
            Row(
              mainAxisAlignment: MainAxisAlignment.center,

              children: [

                // Decrement Button
                FloatingActionButton(
                  onPressed: decrementCounter,
                  backgroundColor: Colors.red,

                  child: const Icon(Icons.remove),
                ),

                const SizedBox(width: 30),

                // Increment Button
                FloatingActionButton(
                  onPressed: incrementCounter,
                  backgroundColor: Colors.green,

                  child: const Icon(Icons.add),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}