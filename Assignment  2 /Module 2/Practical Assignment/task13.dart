import 'dart:io';

void main()
{
  print("Enter numbers separated by space:");
  List<int> numbers = stdin.readLineSync()!
      .split(' ')
      .map(int.parse)
      .toList();

  List<int> asc = List.from(numbers);
  for (int i = 0; i < asc.length; i++) {
    for (int j = 0; j < asc.length - i - 1; j++) {
      if (asc[j] > asc[j + 1]) {
        int temp = asc[j];
        asc[j] = asc[j + 1];
        asc[j + 1] = temp;
      }
    }
  }

  List<int> desc = List.from(numbers);
  for (int i = 0; i < desc.length; i++) {
    for (int j = 0; j < desc.length - i - 1; j++) {
      if (desc[j] < desc[j + 1]) {
        int temp = desc[j];
        desc[j] = desc[j + 1];
        desc[j + 1] = temp;
      }
    }
  }

  print("Ascending: $asc");
  print("Descending: $desc");
}
