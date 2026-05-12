import 'dart:convert';
import 'dart:io';

void main()
{
  try
      {
        String text = File('C:\New folder\sample\task').readAsStringSync();
        print(text);
      }
  catch(e)
  {
    print("File Not Found");
  }
}