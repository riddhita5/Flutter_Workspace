import 'dart:io';

void main()
{
  int age;

  print("Enter your Name");
  String name = (stdin.readLineSync().toString());
  print("Enter your Age");
  age = int.parse(stdin.readLineSync().toString());

  print(" Welcome $name");
  if(age<=100)
    {
      print("your remaining age is : 100-$age");
      print(100-age);
    }
  else
    {
      print("Give a age less than 100");
    }


}
