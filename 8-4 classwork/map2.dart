void main()
{
  Map<String, int> countryDialingCode =
      {
        "USA" : 1,
        "INDIA" : 91,
        "PAKISTAN" : 92
      };

  Map<String, String> Fruits = Map();
  Fruits["Apple"] = "red";
  Fruits["Banana"] = "yellow";
  Fruits["guava"] = "green";

  Fruits.containsKey("Apple");
  Fruits.update("Apple", (value) => "green");
  Fruits.remove("Apple");
  Fruits.isEmpty;
  Fruits.length;

  print(Fruits["Apple"]);
  print("\n");
  for(String key in Fruits.keys)
    {
      print(key);
    }
}