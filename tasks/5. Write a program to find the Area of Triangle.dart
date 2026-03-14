import 'dart:io';

void main()
{
  var double()= 0.5;

  print("Enter your base");
  var a=int.parse(stdin.readLineSync().toString());

  print("Enter your height");
  var b=int.parse(stdin.readLineSync().toString());

  var ans = 0.5*a*b;
  print(ans);

}
