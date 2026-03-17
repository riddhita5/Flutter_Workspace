import 'dart:io';

void main()
{
  int marks;
  print("Enter your marks");
  marks = int.parse(stdin.readLineSync().toString());

  if(marks>=75)
    {
      print("A Grade");
    }
  if(marks>=65)
    {
      print("B Grade");
    }
  if(marks>=55)
    {
      print("C Grade");
    }
  if(marks>=45)
    {
      print("D Grade");
    }
  else
    {
      print("Fail");
    }

}