import 'dart:io';

void main()
{
  int count=1;

  print("Enter Any Number");
  var num=int.parse(stdin.readLineSync().toString());

  for(int i = num; i>=1;i--)
  {
     count=count*i;
     print(" $i * $count");
  }

}