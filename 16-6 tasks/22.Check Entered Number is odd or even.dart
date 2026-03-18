import 'dart:io';

void main()
{
  int num;
  print("Enter Your number");
  num = int.parse(stdin.readLineSync().toString());

  if(num%2==0)
  {
    print("It is an even number");
  }
  else
  {
    print("It is an odd number");
  }

}