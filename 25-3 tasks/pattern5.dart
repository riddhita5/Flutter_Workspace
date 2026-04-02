import 'dart:io';

void main()
{
  int row,col,space;
  for(row=10;row>=1;row--)
  {
    for(space=1;space<=5-row;space++)
    {
      stdout.write(" ");
    }
    for(col=10;col>=row;col--)
    {
      stdout.write("* ");
    }
    print("");
  }
}