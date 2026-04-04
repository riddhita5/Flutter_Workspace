import 'dart:io';

class Shape
{
  var a,b;
  void shape(var a1,var b1)
  {
    a = a1;
    b = b1;
  }
}

class Rectangle extends Shape
{
  void rect()
  {
    var ans = a*b;
    print("Area of Rectangle is $ans");
  }
}

class Triangle extends Shape
{
  void triangle()
  {
    var ans = 0.5*a*b;
    print("Area of Triangle is $ans");
  }
}

void main()
{
  var a,b;
  Rectangle rect = Rectangle();
  Triangle triangle = Triangle();

  print("Enter Your value of a");
  a = int.parse(stdin.readLineSync().toString());

  print("Enter Your value of b");
  b = int.parse(stdin.readLineSync().toString());
  rect.shape(a,b);
  rect.rect();

  triangle.shape(a,b);
  triangle.triangle();
}
