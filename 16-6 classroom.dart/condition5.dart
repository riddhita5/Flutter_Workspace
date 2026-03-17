import 'dart:io';

void main()
{
  String uname = "riddhita";
  String pass = "1809";

  print("Enter Your Username");
  var un = stdin.readLineSync().toString();
  print("Enter Your Password");
  var ps = stdin.readLineSync().toString();

  if(un==uname)
    {
      print("Username is Correct");
    }
  if(ps==pass)
    {
      print("Password is Correct");
    }

}
