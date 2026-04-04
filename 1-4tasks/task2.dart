import 'dart:io';

class A
{
  var a;
  void data(var a1)
  {
    a = a1;
  }
}
class B extends A
{
  var b;
  void data(var b1)
  {
    b = b1;
  }
}
class C extends A
{
  var c;
  void data(var c1)
  {
    c = c1;
  }
}
class D implements B,C
{
  void display()
  {
    var ans = a*b*c;
    print(ans);

  }

  @override
  var a;

  @override
  var b;

  @override
  var c;

  @override
  void data(a1)
  {
    a=a1;
  }

  @override
  void data2(b1)
  {
    b=b1;
  }

  @override
  void data3(c1)
  {
    c=c1;
  }


}

void main()
{
  var a,b,c;
  B b1 = B();
  C c1 = C();
  D d = D();

  print("Enter Your value of a");
  a = int.parse(stdin.readLineSync().toString());

  print("Enter Your value of b");
  b = int.parse(stdin.readLineSync().toString());

  print("Enter Your value of c");
  c = int.parse(stdin.readLineSync().toString());

  d.data(a);
  d.data2(b);
  d.data3(c);
  d.display();

}
