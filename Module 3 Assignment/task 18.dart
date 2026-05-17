import 'package:flutter/material.dart';

class FeedbackForm extends StatefulWidget {
  @override
  State<FeedbackForm> createState() => _FeedbackFormState();
}

class _FeedbackFormState extends State<FeedbackForm> {
  final TextEditingController nameController = TextEditingController();
  final TextEditingController commentsController = TextEditingController();

  String selectedCategory = 'General';

  final List<String> categories = [
    'General',
    'Bug Report',
    'Suggestion',
    'Complaint',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Feedback Form'),
        backgroundColor: Colors.blue,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            // Name TextField
            TextField(
              controller: nameController,
              decoration: const InputDecoration(
                labelText: 'Enter Your Name',
                border: OutlineInputBorder(),
              ),
            ),

            const SizedBox(height: 20),
            DropdownButtonFormField<String>(
              value: selectedCategory,
              decoration: const InputDecoration(
                labelText: 'Feedback Category',
                border: OutlineInputBorder(),
              ),
              items: categories.map((String category) {
                return DropdownMenuItem(
                  value: category,
                  child: Text(category),
                );
              }).toList(),
              onChanged: (value) {
                setState(() {
                  selectedCategory = value!;
                });
              },
            ),

            const SizedBox(height: 20),

            TextField(
              controller: commentsController,
              maxLines: 4,
              decoration: const InputDecoration(
                labelText: 'Enter Comments',
                border: OutlineInputBorder(),
              ),
            ),

            const SizedBox(height: 20),

            ElevatedButton(
              onPressed: () {
                print("Name: ${nameController.text}");
                print("Category: $selectedCategory");
                print("Comments: ${commentsController.text}");
              },
              child: const Text('Submit Feedback'),
            ),
          ],
        ),
      ),
    );
  }
}