import 'dart:io';

void main()
{
  print("Enter first number");
  int a = int.parse(stdin.readLineSync()!);


  int square = a*a;
  print(square);

  int cube = a*a*a;
  print(cube);

}