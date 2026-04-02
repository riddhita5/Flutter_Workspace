import 'dart:io';

void main()
{
  int a;
  print("Enter Any Number");
  a = int.parse(stdin.readLineSync().toString());

  var ans = 4 * a;
  print("Circumference of a Rectangle = $ans");
}