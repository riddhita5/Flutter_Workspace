import 'dart:io';

void main()
{
  print("Enter Your English marks");
  int a=int.parse(stdin.readLineSync().toString());
  print("Enter Your Hindi marks");
  int b=int.parse(stdin.readLineSync().toString());
  print("Enter Your Maths marks");
  int c=int.parse(stdin.readLineSync().toString());
  print("Enter Your Science marks");
  int d=int.parse(stdin.readLineSync().toString());
  print("Enter Your Social marks");
  int e=int.parse(stdin.readLineSync().toString());

  var total= a+b+c+d+e;
  print(total);
  var ans = (a+b+c+d+e)*100/500;
  print(ans);

}
