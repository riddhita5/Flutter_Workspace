import 'dart:io';

void main()
{
  int length,width;
  print("Enter Your Length");
  length = int.parse(stdin.readLineSync().toString());

  print("Enter Your Width");
  width = int.parse(stdin.readLineSync().toString());

  var ans = length * width;
  print("Area of Rectangle = $ans");
}