import 'dart:io';

void main()
{
  int age;
  print("Enter your age");
  age = int.parse(stdin.readLineSync().toString());

  if (age >= 18) {
    print("Eligible to vote");

    if (age >= 60) {
      print("Senior Citizen");
    }
    else {
      print("Adults");
    }
  }
  else
    {
      print("Not Eligible to vote");
    }

}
