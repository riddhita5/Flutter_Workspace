// import 'package:flutter/material.dart';
// import 'package:my_firstamulapp/profilescreen.dart';
// void main()
// {
//   runApp(my_firstamulapp());
// }
//
// class my_firstamulapp extends StatelessWidget
// {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(home: FirstScreen());
//   }
// }
// class FirstScreen extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("Welcome to Amul Products"),
//         backgroundColor: Colors.white,
//         foregroundColor: Colors.black,
//       ),
//       body: Column(
//         children: [
//           Center(
//             child: Text(
//               "Product List",
//               style: TextStyle(
//                 fontSize: 20.00,
//                 color: Colors.blue,
//                 fontWeight: FontWeight.bold,
//               ),
//             ),
//           ),
//           Profilescreen()
//         ],
//       ),
//     );
//   }
// }
import 'package:flutter/material.dart';
import 'package:my_firstamulapp/profilescreen.dart';

void main() {
  runApp(my_firstamulapp());
}

class my_firstamulapp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: FirstScreen(),
    );
  }
}

class FirstScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Product List"),
      ),


      body: Column(
        children: [
          SizedBox(height: 10),
          Text(
            "Welcome to Amul Products",
            style: TextStyle(fontSize: 20),
          ),
          SizedBox(height: 10),

          Expanded(
            child: Profilescreen(),
          ),
        ],
      ),
    );
  }
}
