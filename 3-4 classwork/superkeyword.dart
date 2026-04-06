class MyColor
{
  String color = "black";
}
class Mycolor2 extends MyColor
{
  String color = "white";

  display()
  {
    print(color);
    print(super.color);
}
}
void main()
{
  Mycolor2 m = Mycolor2();
  m.display();
}