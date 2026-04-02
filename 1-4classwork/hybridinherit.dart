class A
{
  void a()
  {
    print("Riddhita");
  }
}
class B extends A
{
  void b()
  {
    print("Vanshika");
  }
}
class C extends A
{
  void c()
  {
    print("Ami");
  }
}
class D implements B,C
{
  void d()
  {
    print("Rudrax");
  }

  @override
  void a()
  {
    print("Riddhita");
  }

  @override
  void b()
  {
    print("Vanshika");
  }

  @override
  void c()
  {
    print("Ami");
  }
}

void main()
{
  var d = D();
  d.a();
  d.b();
  d.c();
  d.d();
}
