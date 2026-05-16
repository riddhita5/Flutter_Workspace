import 'package:flutter/material.dart';

class DashboardScreen1 extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    String greeting = "";

    int hour = DateTime.now().hour;

    if (hour < 12) {
      greeting = "Good Morning";
    } else if (hour < 17) {
      greeting = "Good Afternoon";
    } else {
      greeting = "Good Evening";
    }

    return DefaultTabController(

      length: 2,

      child: Scaffold(

        appBar: AppBar(

          title: const Text("PulseFit Dashboard"),

          centerTitle: true,

          bottom: const TabBar(

            tabs: [

              Tab(text: "Daily"),

              Tab(text: "Weekly"),
            ],
          ),
        ),

        body: TabBarView(

          children: [

            // Daily Stats
            SingleChildScrollView(

              child: Column(

                children: [

                  Padding(
                    padding: const EdgeInsets.all(10),

                    child: Column(

                      crossAxisAlignment: CrossAxisAlignment.start,

                      children: [

                        Text(
                          greeting,
                          style: const TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),

                        Text(
                          DateTime.now().toString(),
                          style: const TextStyle(fontSize: 12),
                        ),
                      ],
                    ),
                  ),

                  GridView.count(

                    crossAxisCount: 2,

                    shrinkWrap: true,

                    physics: const NeverScrollableScrollPhysics(),

                    childAspectRatio: 1.3,

                    children: [

                      HealthCardScreen(
                        title: "Cardio",
                        icon: Icons.favorite,
                        color: Colors.red,
                      ),

                      HealthCardScreen(
                        title: "Strength",
                        icon: Icons.fitness_center,
                        color: Colors.orange,
                      ),

                      HealthCardScreen(
                        title: "Flexibility",
                        icon: Icons.self_improvement,
                        color: Colors.green,
                      ),

                      HealthCardScreen(
                        title: "Diet",
                        icon: Icons.restaurant,
                        color: Colors.blue,
                      ),
                    ],
                  ),
                ],
              ),
            ),

            // Weekly Trends
            Center(
              child: Text(
                "Weekly Trends",
                style: TextStyle(fontSize: 20),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class HealthCardScreen extends StatelessWidget {

  final String title;
  final IconData icon;
  final Color color;

  const HealthCardScreen({
    super.key,
    required this.title,
    required this.icon,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {

    return GestureDetector(

      onTap: () {

        Navigator.push(
          context,

          MaterialPageRoute(
            builder: (context) => DetailScreen1(title: title, activities: [],),
          ),
        );
      },

      child: Card(

        color: color,

        margin: const EdgeInsets.all(10),

        child: Column(

          mainAxisAlignment: MainAxisAlignment.center,

          children: [

            Icon(
              icon,
              color: Colors.white,
              size: 35,
            ),

            SizedBox(height: 8),

            Text(
              title,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 16,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
class DetailScreen1 extends StatelessWidget {

  final String title;

  const DetailScreen1({
    super.key,
    required this.title, required List<dynamic> activities,
  });

  @override
  Widget build(BuildContext context) {

    return Scaffold(

      appBar: AppBar(
        title: Text(title),
      ),

      body: ListView(

        children: [

          ListTile(
            leading: Icon(Icons.access_time),
            title: Text("$title Activity 1"),
            subtitle: Text("7:00 AM"),
            trailing: Text("Good"),
          ),

          ListTile(
            leading: Icon(Icons.access_time),
            title: Text("$title Activity 2"),
            subtitle: Text("5:00 PM"),
            trailing: Text("Better"),
          ),
        ],
      ),
    );
  }
}
