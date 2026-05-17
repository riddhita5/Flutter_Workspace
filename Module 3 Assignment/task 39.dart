import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => ThemeProvider(),
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    ThemeProvider themeProvider =
    Provider.of<ThemeProvider>(context);

    return MaterialApp(
      debugShowCheckedModeBanner: false,

      themeMode:
      themeProvider.isDarkMode
          ? ThemeMode.dark
          : ThemeMode.light,

      darkTheme: ThemeData.dark(),

      theme: ThemeData.light(),

      home: HomeScreen48(),
    );
  }
}
class ThemeProvider extends ChangeNotifier {

  bool isDarkMode = false;

  void toggleTheme() {

    isDarkMode = !isDarkMode;

    notifyListeners();
  }
}
class HomeScreen48 extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    ThemeProvider themeProvider =
    Provider.of<ThemeProvider>(context);

    return Scaffold(

      appBar: AppBar(
        title: Text("Theme Switcher"),
      ),

      body: Center(

        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,

          children: [

            Text(
              themeProvider.isDarkMode
                  ? "Dark Mode"
                  : "Light Mode",

              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
              ),
            ),

            SizedBox(height: 20),

            Switch(

              value: themeProvider.isDarkMode,

              onChanged: (value) {

                themeProvider.toggleTheme();
              },
            ),
          ],
        ),
      ),
    );
  }
}