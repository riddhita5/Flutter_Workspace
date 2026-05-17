import 'package:flutter/material.dart';

class TodoScreen extends StatefulWidget {
  @override
  State<TodoScreen> createState() => _TodoScreenState();
}

class _TodoScreenState extends State<TodoScreen> {

  TextEditingController taskController = TextEditingController();

  List tasks = [];

  // Add Task
  void addTask() {
    if (taskController.text.isNotEmpty) {
      setState(() {
        tasks.add(taskController.text);
      });

      taskController.clear();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        title: Text("To-Do List App"),
      ),

      body: Padding(
        padding: EdgeInsets.all(15),
        child: Column(
          children: [

            // TextField
            TextField(
              controller: taskController,
              decoration: InputDecoration(
                hintText: "Enter Task",
                border: OutlineInputBorder(),
              ),
            ),

            SizedBox(height: 15),

            // Add Button
            ElevatedButton(
              onPressed: addTask,
              child: Text("Add Task"),
            ),

            SizedBox(height: 15),

            // Task List
            Expanded(
              child: ListView.builder(
                itemCount: tasks.length,

                itemBuilder: (context, index) {
                  return Dismissible(

                    key: Key(tasks[index]),

                    // Swipe to delete
                    onDismissed: (direction) {
                      setState(() {
                        tasks.removeAt(index);
                      });

                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          content: Text("Task Removed"),
                        ),
                      );
                    },

                    background: Container(
                      color: Colors.red,
                      alignment: Alignment.centerRight,
                      padding: EdgeInsets.only(right: 20),
                      child: Icon(
                        Icons.delete,
                        color: Colors.white,
                      ),
                    ),

                    child: Card(
                      child: ListTile(
                        title: Text(tasks[index]),
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}