import 'dart:io';

void main()
{

  print("Enter first number:");
  var a = int.parse(stdin.readLineSync().toString());

  print("Enter second number:");
  var b = int.parse(stdin.readLineSync().toString());

  int add = a+b;
  print(add);

  int sub = a-b;
  print(sub);

  int mul = a*b;
  print(mul);

  var div = a/b;
  print(div);

}
