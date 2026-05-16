import 'package:flutter/material.dart';

class Progreess extends StatefulWidget {
  const Progreess({super.key});

  @override
  State<Progreess> createState() => _Progreess();
}

class _Progreess extends State<Progreess> {
  int completedSteps = 2000;


  int totalGoal = 10000;

  @override
  Widget build(BuildContext context) {

    double progress = completedSteps / totalGoal;

    return Scaffold(

      appBar: AppBar(
        backgroundColor: Colors.teal,

        title: const Text(
          "Step Progress",
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),

      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20),

          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [

              const Text(
                "Daily Step Goal",
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
              ),

              const SizedBox(height: 30),
              LinearProgressIndicator(
                value: progress,
                backgroundColor: Colors.grey.shade300,
                valueColor: AlwaysStoppedAnimation<Color>(

                  progress < 0.4
                      ? Colors.red
                      : progress < 0.7
                      ? Colors.orange
                      : Colors.green,
                ),

                minHeight: 12,
              ),

              const SizedBox(height: 20),
              Text(
                "$completedSteps / $totalGoal Steps",
                style: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),

              const SizedBox(height: 20),
              Text(
                "${(progress * 100).toInt()} %",
                style: const TextStyle(
                  fontSize: 18,
                ),
              ),

              const SizedBox(height: 30),
              ElevatedButton(

                onPressed: () {

                  setState(() {
                    if (completedSteps < totalGoal) {

                      completedSteps += 1000;

                    }

                  });
                },

                child: const Text(
                  "Complete 1000 Steps",
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}