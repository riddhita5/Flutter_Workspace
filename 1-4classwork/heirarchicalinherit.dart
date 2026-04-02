class Bank
{
  void bank()
  {
    print("Bank Balance");
  }
}
class Current extends Bank
{
  void current()
  {
    print("Current Balance");
  }
}
class Save extends Bank
{
  void save()
  {
    print("Saved Balance");
  }
}

void main()
{
  Current c = Current();
  Save s = Save();

  c.current();
  c.bank();
  s.save();
}