import 'dart:io';

void main()
{
  int count=0;

  print("Enter Any Number");
  int num=int.parse(stdin.readLineSync().toString());

  while(num>0)
    {
      int digit =num%10;
      count = count*10+digit;
      num=num~/10;
    }
  print("reverse digits are =$count");
}

