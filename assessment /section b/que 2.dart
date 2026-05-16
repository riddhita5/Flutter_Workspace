import 'package:flutter/material.dart';

class ActivityScreen extends StatefulWidget {
  const ActivityScreen({super.key});

  @override
  State<ActivityScreen> createState() => _ActivityScreenState();
}

class _ActivityScreenState extends State<ActivityScreen> {

  String workoutType = "Running";

  TextEditingController durationController = TextEditingController();

  @override
  Widget build(BuildContext context) {

    return Scaffold(

      appBar: AppBar(
        title: Text("Workout App"),
      ),

      floatingActionButton: FloatingActionButton(

        onPressed: () {

          showModalBottomSheet(

            context: context,

            builder: (context) {

              return Padding(
                padding: const EdgeInsets.all(20),

                child: Column(
                  mainAxisSize: MainAxisSize.min,

                  children: [

                    DropdownButton(
                      value: workoutType,

                      items: [
                        DropdownMenuItem(
                          value: "Running",
                          child: Text("Running"),
                        ),

                        DropdownMenuItem(
                          value: "Yoga",
                          child: Text("Yoga"),
                        ),
                      ],

                      onChanged: (value) {

                        setState(() {

                          workoutType = value!;

                        });
                      },
                    ),

                    SizedBox(height: 20),

                    TextField(
                      controller: durationController,

                      decoration: InputDecoration(
                        hintText: "Enter Duration",
                        border: OutlineInputBorder(),
                      ),
                    ),
                  ],
                ),
              );
            },
          );
        },

        child: Icon(Icons.add),
      ),
    );
  }
}