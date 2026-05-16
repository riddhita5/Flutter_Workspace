import 'package:flutter/material.dart';

class HealthDashboard extends StatelessWidget {
  const HealthDashboard({super.key});

  @override
  Widget build(BuildContext context) {

    List healthData = [
      {"icon": Icons.favorite, "label": "Heart Rate", "value": "72 BPM"},
      {"icon": Icons.water_drop, "label": "Blood Pressure", "value": "120/80"},
      {"icon": Icons.monitor_heart, "label": "Pulse", "value": "98"},
    ];

    return Scaffold(
      appBar: AppBar(
        title: Text("Vital Signs"),
      ),

      body: ListView.builder(

        itemCount: healthData.length,

        itemBuilder: (context, index) {

          return Card(

            margin: EdgeInsets.all(10),

            child: Padding(
              padding: const EdgeInsets.all(15),

              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,

                children: [

                  Icon(
                    healthData[index]["icon"],
                    color: Colors.red,
                  ),

                  Text(
                    healthData[index]["label"],
                    style: TextStyle(fontSize: 18),
                  ),

                  Text(
                    healthData[index]["value"],
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}