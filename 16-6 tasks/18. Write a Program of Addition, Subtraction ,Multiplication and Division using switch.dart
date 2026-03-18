import 'dart:io';

void main()
{

  int num;
  print("Enter your Choice");
  num= int.parse(stdin.readLineSync().toString());

  print("Enter your number");
  int a= int.parse(stdin.readLineSync().toString());

  print("Enter your number");
  int b= int.parse(stdin.readLineSync().toString());



  switch(num)

  {
    case 1: int add = a+b;
            print(add);

    case 2: int sub = a-b;
            print(sub);

    case 3: int mul = a*b;
            print(mul);

    case 4: var div = a/b;
            print(div);

  }
}