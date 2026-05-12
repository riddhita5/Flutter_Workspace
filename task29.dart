void main() {

  List<int> a = [5,2,8];
  List<int> b = [3,8,1];
  List<int> c = [2,7,1];

  List<int> list = [...a, ...b, ...c];

  list = list.toSet().toList();

  list.sort();

  print(list);
}
