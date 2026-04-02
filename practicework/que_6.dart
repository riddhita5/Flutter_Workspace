import 'dart:io';

void main()
{
  int a,b,c;
  print("Enter Your Number");
  a = int.parse(stdin.readLineSync().toString());

  print("Enter Your Number");
  b = int.parse(stdin.readLineSync().toString());

  print("Enter Your Number");
  c = int.parse(stdin.readLineSync().toString());

  var ans = a+b+c;
  print("Circumference of triangle = $ans");
}