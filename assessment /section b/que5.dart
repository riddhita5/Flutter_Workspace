import 'package:flutter/material.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {

    return Scaffold(

      appBar: AppBar(
        title: const Text("Dashboard"),
        centerTitle: true,
      ),

      body: Center(

        child: ElevatedButton(

          onPressed: () {

            Navigator.push(
              context,

              MaterialPageRoute(
                builder: (context) => const WizardScreen(),
              ),
            );
          },

          child: const Text("Start Workout Wizard"),
        ),
      ),
    );
  }
}

class WizardScreen extends StatelessWidget {
  const WizardScreen({super.key});

  @override
  Widget build(BuildContext context) {

    return Scaffold(

      appBar: AppBar(
        title: const Text("Workout Wizard"),
      ),

      body: Center(

        child: ElevatedButton(

          onPressed: () {

            Navigator.popUntil(
              context,
              ModalRoute.withName('/dashboard'),
            );
          },

          child: const Text("Finish Wizard"),
        ),
      ),
    );
  }
}