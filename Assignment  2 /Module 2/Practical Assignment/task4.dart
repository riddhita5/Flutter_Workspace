import 'dart:io';

void main()
{
  int r;
  double pi = 3.14;

  print("Enter Your Radius");
  r = int.parse(stdin.readLineSync().toString());

  var ans = pi*r*r;
  print("Area of circle = $pi * $r * $r");
  print ("Answer =$ans");

}