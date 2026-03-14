import 'dart:io';

void main()
{
  var PI = 3.14;

  print("Enter your radius");
  var r=int.parse(stdin.readLineSync().toString());
  var ans = PI*r*r;
  print(ans);

}
