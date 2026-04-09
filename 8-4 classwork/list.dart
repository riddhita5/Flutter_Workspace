void main()
{
  List<String> data = ["Riddhita","Vanshika"];
  print(data);
  data.add("Bhumi");
  List<String> data2 = ["Suraj","Vivek","Parth"];
  data.addAll(data2);
  data.remove("Parth");
  data.remove(3);

  for(var name in data)
    {
      print(name);
    }
}