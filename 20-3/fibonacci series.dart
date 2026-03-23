import 'dart:io';

void main()
{
  int a=0;
  int b=1;
  int num;

  for(int i=0;i<10;i++)
  {
    print(a);
    
    num = a + b;
    a = b;
    b = num;
  }
}
