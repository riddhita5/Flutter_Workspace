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
class C extends B
{
  void c()
  {
    print("Ami");
  }
}

void main()
{
  C c1 = C();
  c1.a();
  c1.b();
  c1.c();
}