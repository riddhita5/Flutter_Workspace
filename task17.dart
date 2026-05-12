import 'dart:io';

class Book
{
  var title,author;
  var year;
  void display()
  {
    print("Enter Your Book Name");
    title = stdin.readLineSync().toString();
    print("Enter Author Name of Your Book");
    author = stdin.readLineSync().toString();
    print("Enter Publication Year");
    year = int.parse(stdin.readLineSync().toString());
  }

  void check()
  {
    if (2026-year>=10)
      {
        print("$title, \n $author, \n $year");
        print("Your Book is over 10 Years Old");
      }
    else
      {
        print("$title, \n $author, \n $year");
      }
  }
}
void main()
{
  Book b = Book();

  b.display();
  b.check();
}