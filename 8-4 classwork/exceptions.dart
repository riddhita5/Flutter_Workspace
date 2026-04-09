void main()
{
  int num = 10;
  try
      {
        var num2 = num ~/10;
        print(num2);
      }
  catch(e)
  {
    print(e);
  }
  finally
      {
        print("Code Executed");
      }
}