class A
{
  void a()
  {
  }
}
class B
{
  void b()
  {

  }
}
class C implements A,B
{
  @override
  void a()
  {
    print("a1");
  }

  @override
  void b()
  {
    print("b1");
  }

}
void main()
{
  var c1 = C();
  c1.a();
  c1.b();
}