import 'dart:io';

void main()
{
  int num;
  print("Enter your Number");
  num = int.parse(stdin.readLineSync().toString());

  if(num%2==0)
    {
      print("Number is Even");
    }
  else
    {
      print("Number is Odd");
    }
}