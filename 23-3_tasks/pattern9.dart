import 'dart:io';

void main()
{
  int row,col;
  for(row=1;row<=5;row++)
  {
    for (col=0;col<=row;col++)
    {
      stdout.write(col);
    }
    print("");
  }
}