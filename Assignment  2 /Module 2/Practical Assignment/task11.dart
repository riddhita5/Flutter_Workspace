fibonacci(var num)
{
  var a=0;
  var b=1;
  for (int i = 0; i < 10; i++)
  {
    print(a);

    num = a + b;
    a = b;
    b = num;
  }
}
void main()
{
  fibonacci(num);
}