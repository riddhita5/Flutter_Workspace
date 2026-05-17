import 'package:flutter/material.dart';

class SwitchScreen extends StatefulWidget {
  const SwitchScreen({super.key});

  @override
  State<SwitchScreen> createState() => _SwitchScreenState();
}

class _SwitchScreenState extends State<SwitchScreen> {

  bool isSwitchOn = false;

  @override
  Widget build(BuildContext context) {

    return Scaffold(

      backgroundColor:
      isSwitchOn ? Colors.black : Colors.white,

      appBar: AppBar(
        backgroundColor: Colors.orange,

        title: const Text(
          "Toggle Switch",
          style: TextStyle(color: Colors.white),
        ),
      ),

      body: Center(

        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,

          children: [

            Switch(

              value: isSwitchOn,

              onChanged: (value) {

                setState(() {
                  isSwitchOn = value;
                });
              },

              activeColor: Colors.green,
            ),

            const SizedBox(height: 20),

            Text(

              isSwitchOn
                  ? "Dark Mode ON"
                  : "Light Mode OFF",

              style: TextStyle(
                fontSize: 22,
                color: isSwitchOn
                    ? Colors.white
                    : Colors.black,
              ),
            ),
          ],
        ),
      ),
    );
  }
}