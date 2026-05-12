void main()
{
    int a;
    for(a=1;a<=100;a++)
    {
      print(a);

      if(a%3==0 && a%5==0)
      {
        print("FizzBuzz");
      }
      else if (a%3==0)
      {
        print("Fizz");
      }
      else if(a%5==0)
      {
        print("Buzz");
      }
    }
}