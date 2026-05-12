import 'dart:io';

void main()
{
  var a,b;
  print("Enter Your Number");
  a = int.parse(stdin.readLineSync().toString());
  print("Enter Your Number");
  b = int.parse(stdin.readLineSync().toString());
  try
      {
        var c = a~/b;
        print(c);
      }
  catch(e)
  {
    print(e);
  }
}