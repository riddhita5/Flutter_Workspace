import 'dart:io';
int factorial (int num)
{
  int fact = 1;
  for(int i = num;i >= 1;i--)
  {
    fact=fact*i;
  }
  return fact;
}

void main()
{
  print("Enter a num :");
  var num = int.parse(stdin.readLineSync().toString());

  int fact = factorial(num);
  print("factor of $num : $fact");
}