import 'dart:io';

void main()
{
  int a;
  print("Enter Your Number");
  a = int.parse(stdin.readLineSync().toString());

  var ans = 6*a*a;
  print("Area of Cube = $ans");
}