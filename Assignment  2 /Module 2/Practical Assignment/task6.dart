import 'dart:io';

void main()
{
  int marks;
  print("Enter Your Marks");
  marks = int.parse(stdin.readLineSync().toString());

  if(marks>=90)
    {
      print("Grade A");
    }
  else if(marks>=80)
    {
      print("Grade B");
    }
  else if(marks>=70)
    {
      print("Grade C");
    }
  else if(marks>=60)
    {
      print("Grade D");
    }
  else 
    {
      print("Fail");
    }
}