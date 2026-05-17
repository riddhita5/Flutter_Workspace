import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => CounterProvider(),
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen56(),
    );
  }
}
class CounterProvider extends ChangeNotifier {

  int counter = 0;

  void increment() {
    counter++;
    notifyListeners();
  }
}

class HomeScreen56 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    int value =
        Provider.of<CounterProvider>(context).counter;

    return Scaffold(

      appBar: AppBar(
        title: Text("Provider Counter App"),
      ),

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,

          children: [

            // Counter Value
            Text(
              "Counter Value: $value",
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
              ),
            ),

            SizedBox(height: 20),

            // Message
            Text(
              value >= 5
                  ? "Counter is greater than 5"
                  : "Counter is less than 5",

              style: TextStyle(
                fontSize: 20,
                color: Colors.blue,
              ),
            ),

            SizedBox(height: 20),

            // Button
            ElevatedButton(

              onPressed: () {

                Provider.of<CounterProvider>(
                  context,
                  listen: false,
                ).increment();
              },

              child: Text("Increment"),
            ),
          ],
        ),
      ),
    );
  }
}