import 'dart:io';

class Shape
{
  void shape()
  {
    int a,b;
    print("Enter Your value of a");
    a = int.parse(stdin.readLineSync().toString());

    print("Enter Your value of b");
    b = int.parse(stdin.readLineSync().toString());

    var ans = a*b;
    print("Area of rectangle = $ans");

    var answer = 0.5*a*b;
    print("Area of Triangle = $answer");

  }
}

class Rectangle extends Shape
{
  void rect()
  {
  }
}

class Triangle extends Shape
{
  void triangle()
  {

  }
}

void main()
{
  Rectangle rect = Rectangle();
  Triangle triangle = Triangle();

  rect.shape();
  rect.rect();
  triangle.triangle();
}
