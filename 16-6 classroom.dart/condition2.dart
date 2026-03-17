import 'dart:io';

void main()
{
  int age;
  print("Enter your age");
  age = int.parse(stdin.readLineSync().toString());

  if(age>=18)
    {
      print("Eligible to vote");
    }
  else
    {
      print("Not Eligible to vote");
    }
}