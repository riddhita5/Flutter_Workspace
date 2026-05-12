import 'dart:io';

class Product
{
  String name;
  double price;

  Product(this.name, this.price);
}

class Cart
{
  List<Product> items = [];
  void addProduct(Product product)
  {
    items.add(product);
    print("${product.name} added to cart.");
  }

  double getTotal()
  {
    double total = 0;
    for (var product in items)
    {
      total += product.price;
    }
    return total;
  }

  void showCart()
  {
    print("\nProducts in Cart:");
    for (var product in items) {
      print("${product.name} - ₹${product.price}");
    }
  }
}


class Order
{
  Cart cart;

  Order(this.cart);

  void placeOrder()
  {
    cart.showCart();
    print("\nTotal Price: ₹${cart.getTotal()}");
    print("Order Placed Successfully!");
  }
}

void main()
{
  Cart cart = Cart();

  print("How many products do you want to add?");
  int n = int.parse(stdin.readLineSync()!);

  for (int i = 1; i <= n; i++) {
    print("\nEnter Product Name:");
    String name = stdin.readLineSync()!;

    print("Enter Product Price:");
    double price = double.parse(stdin.readLineSync()!);

    Product p = Product(name, price);
    cart.addProduct(p);
  }

  Order order = Order(cart);
  order.placeOrder();
}
