import 'dart:io';

void main()
{
  int row,col,num=0;
  for(row=1;row<=5;row++)
    {
      for(col=1;col<=row;col++)
        {
          num++;
          stdout.write(num);
        }
        print("");
    }
}