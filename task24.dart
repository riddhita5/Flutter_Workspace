import 'dart:io';

void main() {
  List<int> numbers = [];

  print("How many integers do you want to enter?");
  int n = int.parse(stdin.readLineSync()!);

  for (int i = 1; i <= n; i++) {
    while (true) {
      try {
        print("Enter integer $i:");
        int num = int.parse(stdin.readLineSync()!);

        numbers.add(num);
        break; // exit loop if valid input
      }
      catch (e) {
        print("Invalid input! Please enter integers only.");
      }
    }
  }

  print("\nList of Integers:");
  print(numbers);
}
