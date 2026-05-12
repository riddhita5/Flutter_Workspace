import 'dart:io';

void main()
{
  int num;
  print("Enter Your Choice");
  num = int.parse(stdin.readLineSync().toString());

  print("Enter your Number");
  int a = int.parse(stdin.readLineSync().toString());

  print("Enter your Number");
  int b = int.parse(stdin.readLineSync().toString());

  switch(num)
  {
    case 1 : int add;
             add = a+b;
             print(add);

    case 2 : int sub;
             sub = a-b;
             print(sub);

    case 3 : int mul;
             mul = a*b;
             print(mul);

    case 4 : double div;
             div = a/b;
             print(div);
  }
}