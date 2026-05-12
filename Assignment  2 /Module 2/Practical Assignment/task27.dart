import 'dart:async';

Future<String> fetchUser(int id) async {
  await Future.delayed(Duration(seconds: 2));
  return "User $id Loaded";
}

Future<void> fetchAllUsers() async {
  List<String> users = [];

  print("Loading users...\n");

  for (int i = 1; i <= 5; i++) {
    String user = await fetchUser(i);
    users.add(user);
  }

  print("All Data Loaded:");
  for (String user in users) {
    print(user);
  }
}

void main() async {
  await fetchAllUsers();
}
