import 'dart:io';

void main()
{
  int a;
  print("Enter Any Number");
  a = int.parse(stdin.readLineSync().toString());

  var ans = a*a;
  print("Area Of Square = $ans");
}
