import 'package:flutter/material.dart';

class CustomListScreen extends StatefulWidget {
  @override
  State<CustomListScreen> createState() => _CustomListScreenState();
}

class _CustomListScreenState extends State<CustomListScreen> {

  List tasks = [
    "Complete Flutter Assignment",
    "Study Dart",
    "Go to Gym",
    "Buy Groceries",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        title: Text("Custom Styled List"),
      ),

      body: ListView.builder(

        itemCount: tasks.length,

        itemBuilder: (context, index) {

          return Card(
            margin: EdgeInsets.symmetric(
              horizontal: 10,
              vertical: 6,
            ),

            elevation: 5,

            child: ListTile(

              // Leading Icon
              leading: CircleAvatar(
                child: Icon(Icons.task),
              ),

              // Title
              title: Text(
                tasks[index],
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),

              // Subtitle
              subtitle: Text("Task ${index + 1}"),

              // Trailing Icon
              trailing: IconButton(
                icon: Icon(
                  Icons.delete,
                  color: Colors.red,
                ),

                onPressed: () {

                  setState(() {
                    tasks.removeAt(index);
                  });

                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text("Task Deleted"),
                    ),
                  );
                },
              ),
            ),
          );
        },
      ),
    );
  }
}