void main()
{
  Set data = Set();

  data.add("Riddhita");
  data.add("Vanshika");
  data.add("Bhumi");

  print(data);

  for(var name in data)
    {
      print(name);
    }
}
