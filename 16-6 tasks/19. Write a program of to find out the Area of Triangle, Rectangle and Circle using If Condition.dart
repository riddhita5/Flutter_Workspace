import 'dart:io';

void main()
{
  print("Enter your choice");
  int num =int.parse(stdin.readLineSync().toString());

  if(num == 1)
  {
    var pi = 3.14;

    print("Enter your radius");
    var r=int.parse(stdin.readLineSync().toString());
    var ans = pi*r*r;
    print(ans);
  }

  if(num==2)
    {
      var double()= 0.5;

      print("Enter your base");
      var a=int.parse(stdin.readLineSync().toString());

      print("Enter your height");
      var b=int.parse(stdin.readLineSync().toString());

      var ans = 0.5*a*b;
      print(ans);

    }
  if(num==3)
    {
      print("Enter your length");
      var l=int.parse(stdin.readLineSync().toString());

      print("Enter your width");
      var b=int.parse(stdin.readLineSync().toString());

      var ans = l*b;
      print(ans);

    }
  else
    {
      print("not valid number");
    }




}