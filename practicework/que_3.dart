import 'dart:io';

void main()
{
  int base, height;
  print("Enter Your Base");
  base = int.parse(stdin.readLineSync().toString());
  print("Enter Your Height");
  height = int.parse(stdin.readLineSync().toString());

  var ans= 0.5*base*height;
  print("Area of Triangle = $ans");
}