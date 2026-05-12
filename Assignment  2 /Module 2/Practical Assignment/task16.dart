import 'dart:io';

void main() {
  Map<String, String> addressBook = {};

  for (int i = 1; i <= 3; i++) {
    print("Enter Name:");
    String name = stdin.readLineSync()!;

    print("Enter Phone Number:");
    String number = stdin.readLineSync()!;

    addressBook[name] = number; // Add entry
  }

  print("\nAddress Book:");
  print(addressBook);


  print("\nEnter name to update:");
  String updateName = stdin.readLineSync()!;

  if (addressBook.containsKey(updateName)) {
    print("Enter new phone number:");
    String newNumber = stdin.readLineSync()!;

    addressBook.update(updateName, (value) => newNumber);
    print("Updated Successfully!");
  } else {
    print("Name not found.");
  }

  print("\nEnter name to remove:");
  String removeName = stdin.readLineSync()!;

  addressBook.remove(removeName);

  print("\nFinal Address Book:");
  for (String key in addressBook.keys) {
    print("$key : ${addressBook[key]}");
  }
}
