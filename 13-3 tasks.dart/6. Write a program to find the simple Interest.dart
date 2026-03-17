import 'dart:io';

void main()
{

  var int()= 100;

  print("Enter Your Principle");
  var p=int.parse(stdin.readLineSync().toString());

  print("Enter Rate of interest");
  var r=int.parse(stdin.readLineSync().toString());

  print("Enter No. of years");
  var n=int.parse(stdin.readLineSync().toString());

  var ans = p*r*n/100;
  print(ans);
}
