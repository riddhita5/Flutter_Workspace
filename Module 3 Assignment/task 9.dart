import 'package:flutter/material.dart';

void main() {
  runApp(const CalculatorApp());
}

class CalculatorApp extends StatelessWidget {
  const CalculatorApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const CalculatorScreen(),
    );
  }
}

class CalculatorScreen extends StatefulWidget {
  const CalculatorScreen({super.key});

  @override
  State<CalculatorScreen> createState() => _CalculatorScreenState();
}

class _CalculatorScreenState extends State<CalculatorScreen> {
  String output = "0";
  String number1 = "";
  String operand = "";

  void buttonPressed(String value) {
    setState(() {
      // CLEAR
      if (value == "C") {
        output = "0";
        number1 = "";
        operand = "";
      }

      // OPERATORS
      else if (value == "+" ){
        number1 = output;
        operand = value;
        output = "+";
      }
      else if (value == "-") {
        number1 = output;
        operand = value;
        output = "-";
      }
      else if (value == "*"){
        number1 = output;
        operand = value;
        output = "*";
      }
      else if (value == "/" )
      {
        number1 = output;
        operand = value;
        output = "/";
      }


      // EQUAL
      else if (value == "=") {
        double num1 = double.parse(number1);
        double num2 = double.parse(output);

        double result = 0;

        if (operand == "+") {
          result = num1 + num2;
        } else if (operand == "-") {
          result = num1 - num2;
        } else if (operand == "×") {
          result = num1 * num2;
        } else if (operand == "÷") {
          result = num1 / num2;
        }

        output = result.toString();

        // Remove .0
        if (output.endsWith(".0")) {
          output = output.replaceAll(".0", "");
        }
      }

      // DECIMAL
      else if (value == ".") {
        if (!output.contains(".")) {
          output += ".";
        }
      }

      // PERCENT
      else if (value == "%") {
        double num = double.parse(output);
        output = (num / 100).toString();

        if (output.endsWith(".0")) {
          output = output.replaceAll(".0", "");
        }
      }

      // NUMBERS
      else {
        if (output == "0") {
          output = value;
        } else {
          output += value;
        }
      }
    });
  }

  Widget calcButton(String text) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: ElevatedButton(
        onPressed: () => buttonPressed(text),
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          padding: const EdgeInsets.all(30),
        ),
        child: Text(
          text,
          style: const TextStyle(
            fontSize: 32,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,

      appBar: AppBar(
        backgroundColor: Colors.black,
        elevation: 0,
        centerTitle: true,
        title: const Text(
          "Calculator",
          style: TextStyle(
            color: Colors.white,
            fontSize: 28,
          ),
        ),
      ),

      body: Column(
        children: [
          // DISPLAY
          Expanded(
            child: Container(
              width: double.infinity,
              alignment: Alignment.bottomRight,
              padding: const EdgeInsets.all(25),
              child: Text(
                output,
                style: const TextStyle(
                  fontSize: 60,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),

          // BUTTONS
          Expanded(
            flex: 2,
            child: GridView.count(
              physics: const NeverScrollableScrollPhysics(),
              crossAxisCount: 4,
              childAspectRatio: 3.5,
              children: [
                calcButton("C"),
                calcButton("%"),
                calcButton("÷"),
                calcButton("×"),

                calcButton("7"),
                calcButton("8"),
                calcButton("9"),
                calcButton("-"),

                calcButton("4"),
                calcButton("5"),
                calcButton("6"),
                calcButton("+"),

                calcButton("1"),
                calcButton("2"),
                calcButton("3"),
                calcButton("="),

                calcButton("0"),
                calcButton("."),
              ],
            ),
          ),
        ],
      ),
    );
  }
}