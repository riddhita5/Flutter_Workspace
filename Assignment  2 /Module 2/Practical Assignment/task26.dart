import 'dart:convert';
import 'package:http/http.dart' as http;

void main() async {
  // Fake API URL
  String url = 'https://jsonplaceholder.typicode.com/posts/1';

  try {
    print('Loading data...\n');

    // Send GET request
    final response = await http.get(Uri.parse(url));

    // Check status code
    if (response.statusCode == 200) {
      // Decode JSON data
      Map<String, dynamic> data = jsonDecode(response.body);

      // Display data
      print('Data loaded successfully!\n');

      print('User ID : ${data['userId']}');
      print('ID      : ${data['id']}');
      print('Title   : ${data['title']}');
      print('Body    : ${data['body']}');
    } else {
      print('Request failed.');
      print('Status Code: ${response.statusCode}');
    }
  } catch (e) {
    print('Error occurred: $e');
  }
}