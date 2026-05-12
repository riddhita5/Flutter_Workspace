import 'dart:io';

details( var num)
{
  var ldigit=0;
  var sdigit=9;

  while(num>0)
  {
    int rem=num%10;

    if(rem>ldigit)
    {
      ldigit=rem;
    }


    if(rem<sdigit)
    {
      sdigit=rem;
    }
    num=num~/10;
  }
  print("Larger Number is :- $ldigit");
  print("Smaller Number is :- $sdigit");
}
void main()
{
  print("Enter Any Number");
  int num=int.parse(stdin.readLineSync().toString());
  details(num);
}

