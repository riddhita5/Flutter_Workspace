import 'dart:io';

void main() {
  int marks;
  print("Enter your marks");
  marks = int.parse(stdin.readLineSync().toString());

  if(marks>=75)
    {
        print("First Class");
    }
  else if(marks>=65)
    {
        print("Second Class");
    }
  else if(marks>=55)
    {
       print("Third Class");
    }
  else if(marks>45)
    {
        print("Fourth Class");
    }
  else
    {
        print("Fail");
    }




}