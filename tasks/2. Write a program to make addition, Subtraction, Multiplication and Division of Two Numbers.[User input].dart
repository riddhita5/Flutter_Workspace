import 'dart:io';

void main()
{

  print("Enter first number:");
  int a = int.parse(stdin.readLineSync()!);

  print("Enter second number:");
  int b = int.parse(stdin.readLineSync()!);

  int add = a+b;
  print(add);

  int sub = a-b;
  print(sub);

  int mul = a*b;
  print(mul);

  var div = a/b;
  print(div);

}
