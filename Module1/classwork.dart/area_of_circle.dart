import 'dart:io';

void main()
{

  var pi = 3.14;

  print("Enter your Radius");
  var r=int.parse(stdin.readLineSync().toString());

  var ans = pi*r*r;
  print(ans);

}
