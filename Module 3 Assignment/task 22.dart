import 'package:flutter/material.dart';

void main() {
  runApp(MyApp2());
}

class MyApp2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      onGenerateRoute: (settings) {

        if (settings.name == '/details') {
          final String data = settings.arguments as String;

          return MaterialPageRoute(
            builder: (context) => DetailsScreen(message: data),
          );
        }

        if (settings.name == '/settings') {
          final String data = settings.arguments as String;

          return MaterialPageRoute(
            builder: (context) => SettingsScreen(info: data),
          );
        }


        return MaterialPageRoute(
          builder: (context) => HomeScreen(),
        );
      },
    );
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home Screen"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [


            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(
                  context,
                  '/details',
                  arguments: "Hello from Home Screen",
                );
              },
              child: Text("Go to Details"),
            ),

            SizedBox(height: 20),

            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(
                  context,
                  '/settings',
                  arguments: "User Settings Data",
                );
              },
              child: Text("Go to Settings"),
            ),
          ],
        ),
      ),
    );
  }
}

class DetailsScreen extends StatelessWidget {
  final String message;

  DetailsScreen({required this.message});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Details Screen"),
      ),
      body: Center(
        child: Text(
          message,
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}

class SettingsScreen extends StatelessWidget {
  final String info;

  SettingsScreen({required this.info});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Settings Screen"),
      ),
      body: Center(
        child: Text(
          info,
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}