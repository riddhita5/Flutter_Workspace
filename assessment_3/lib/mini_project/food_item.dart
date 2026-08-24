class FoodItem {
  final String name;
  final double price;
  final bool isAvailable;

  FoodItem({
    required this.name,
    required this.price,
    this.isAvailable = true,
  });
}

// Predefined food items
final List<FoodItem> mockFoodItems = [
  FoodItem(name: 'Classic Burger', price: 250.0),
  FoodItem(name: 'Pepperoni Pizza', price: 1200.0),
  FoodItem(name: 'Veggie Pasta', price: 450.0),
  FoodItem(name: 'Garlic Bread', price: 150.0),
  FoodItem(name: 'Ice Cream', price: 100.0, isAvailable: false),
];
