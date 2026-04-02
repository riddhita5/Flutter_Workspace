import 'dart:io';

void main()
{
  int i,j,space;
  for(i=1;i<=5;i++)
    {
      for(space=1;space<=5-i;space++)
        {
          stdout.write(" ");
        }
      for(j=1;j<=i;j++)
        {
          stdout.write(" $i");
        }
      print("");
    }
}