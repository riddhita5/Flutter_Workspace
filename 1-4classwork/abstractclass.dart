abstract class A
{
  void a();
  void a1()
  {

  }
}
abstract class B
{
  void b();
}
class C implements A,B
{
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
  void a1()
  {
    print("Ami");
  }
}

void main()
{
  var c1 = C();
  c1.a();
  c1.b();
  c1.a1();
}
