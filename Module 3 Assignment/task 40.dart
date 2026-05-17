import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class AuthProvider extends ChangeNotifier {

  bool isLoggedIn = false;

  // Login
  void login() {

    isLoggedIn = true;

    notifyListeners();
  }

  // Logout
  void logout() {

    isLoggedIn = false;

    notifyListeners();
  }
}

class LoginScreen12 extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    AuthProvider authProvider =
    Provider.of<AuthProvider>(context);

    return Scaffold(

      appBar: AppBar(
        title: Text("Login Screen"),
      ),

      body: Center(

        child: ElevatedButton(

          onPressed: () {

            authProvider.login();
          },

          child: Text("Login"),
        ),
      ),
    );
  }
}
class HomeScreen76 extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    AuthProvider authProvider =
    Provider.of<AuthProvider>(context);

    return Scaffold(

      appBar: AppBar(
        title: Text("Home Screen"),
      ),

      body: Center(

        child: ElevatedButton(

          onPressed: () {

            authProvider.logout();
          },

          child: Text("Logout"),
        ),
      ),
    );
  }
}