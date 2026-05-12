import 'dart:io';

void main() {
  int? choice;

  while (choice == null) {
    try {
      print("\nCalculator Menu");
      print("1. Addition");
      print("2. Subtraction");
      print("3. Multiplication");
      print("4. Division");
      print("5. Modulus");

      print("Enter your choice:");
      choice = int.parse(stdin.readLineSync()!);

      if (choice < 1 || choice > 5) {
        print("Invalid choice! Enter 1 to 5.");
        choice = null;
      }
    } catch (e) {
      print("Invalid input! Please enter a number.");
    }
  }

  int? a;
  int? b;


  while (a == null) {
    try {
      print("Enter First Number:");
      a = int.parse(stdin.readLineSync()!);
    } catch (e) {
      print("Please enter numbers only.");
    }
  }


  while (b == null) {
    try {
      print("Enter Second Number:");
      b = int.parse(stdin.readLineSync()!);
    } catch (e) {
      print("Please enter numbers only.");
    }
  }

  switch (choice) {
    case 1:
      print("Addition = ${a + b}");
      break;

    case 2:
      print("Subtraction = ${a - b}");
      break;

    case 3:
      print("Multiplication = ${a * b}");
      break;

    case 4:
      if (b == 0) {
        print("Cannot divide by zero.");
      } else {
        print("Division = ${a / b}");
      }
      break;

    case 5:
      print("Modulus = ${a % b}");
      break;
  }
}
