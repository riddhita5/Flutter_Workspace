import 'dart:io';

void main()
{
  int sum=0;
  print("Enter Your Number");
  int num = int.parse(stdin.readLineSync().toString());

  while(num>0)
  {
    int rem = num % 10;
    sum += rem;
    num = num ~/ 10;
  }

  print("Sum of all digits are : $sum");

}
