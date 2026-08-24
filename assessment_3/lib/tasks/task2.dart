class MenuItem {
  String name;
  double price;
  bool isAvailable;

  MenuItem(this.name, this.price, this.isAvailable);
}

void main() {
  // Create a List<MenuItem> containing at least 4 items
  List<MenuItem> menu = [
    MenuItem('Zinger Burger', 350.0, true),
    MenuItem('Chicken Tikka Pizza', 1200.0, true),
    MenuItem('Club Sandwich', 450.0, false),
    MenuItem('French Fries', 200.0, true),
    MenuItem('Cold Drink', 100.0, true),
  ];

  print('--- Restaurant Menu ---');
  // Use a for-in loop to print each item's details
  for (var item in menu) {
    print('Name: ${item.name}, Price: Rs ${item.price}, Available: ${item.isAvailable}');
  }

  print('\n--- Available Items ---');
  // Filter the list inside the loop and print only available items
  for (var item in menu) {
    if (item.isAvailable) {
      print('${item.name}: Rs ${item.price}');
    }
  }

  // Store the menu data in a Map<String, double>
  Map<String, double> menuMap = {
    for (var item in menu) item.name: item.price
  };

  print('\n--- Price Lookup ---');
  String searchItem = 'Chicken Tikka Pizza';
  if (menuMap.containsKey(searchItem)) {
    print('The price of $searchItem is Rs ${menuMap[searchItem]}');
  } else {
    print('$searchItem not found in menu.');
  }
}
