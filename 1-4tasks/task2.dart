import 'dart:io';

class A
{
  void a()
  {
    int a,b,c;
    print("Enter Your value of a");
    a = int.parse(stdin.readLineSync().toString());

    print("Enter Your value of b");
    b = int.parse(stdin.readLineSync().toString());

    print("Enter Your value of c");
    c = int.parse(stdin.readLineSync().toString());

    var ans = a*b*c;
    print("$a * $b * $c = $ans");
  }
}
class B extends A
{
  void b()
  {
  }
}
class C extends A
{
  void c()
  {
  }
}
class D implements B,C
{
  void d()
  {
  }

  @override
  void a()
  {
    print("Answer");
  }

  @override
  void b()
  {
    print("Answer");
  }

  @override
  void c()
  {
    print("Answer");
  }
}

void main()
{
  B b = B();
  C c = C();
  b.b();
  c.a();
}
