void main()
{
  Map<String,String> map = Map();
  var newEntries =
      [
        MapEntry("Riddhita","101"),
        MapEntry("Vanshika","102"),
      ];
  map.addEntries(newEntries);
  print(map);
  print(map.keys);
  print(map.values);
}