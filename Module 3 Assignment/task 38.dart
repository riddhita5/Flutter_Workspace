import 'package:flutter/material.dart';
import 'package:provider/provider.dart';


void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => CartProvider(),
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: CartScreen(),
    );
  }
}
class CartProvider extends ChangeNotifier {

  List cartItems = [];

  double totalPrice = 0;

  // Add Item
  void addItem(String name, double price) {

    cartItems.add({
      "name": name,
      "price": price,
    });

    totalPrice += price;

    notifyListeners();
  }

  // Remove Item
  void removeItem(int index) {

    totalPrice -= cartItems[index]["price"];

    cartItems.removeAt(index);

    notifyListeners();
  }
}


class CartScreen extends StatelessWidget {

  List products = [
    {
      "name": "Laptop",
      "price": 50000.0,
    },
    {
      "name": "Mobile",
      "price": 25000.0,
    },
    {
      "name": "Headphones",
      "price": 2000.0,
    },
  ];

  @override
  Widget build(BuildContext context) {

    CartProvider cartProvider =
    Provider.of<CartProvider>(context);

    return Scaffold(

      appBar: AppBar(
        title: Text("Shopping Cart"),
      ),

      body: Padding(
        padding: EdgeInsets.all(15),

        child: Column(
          children: [

            // Product List
            Expanded(
              child: ListView.builder(

                itemCount: products.length,

                itemBuilder: (context, index) {

                  return Card(
                    child: ListTile(

                      title: Text(
                        products[index]["name"],
                      ),

                      subtitle: Text(
                        "₹${products[index]["price"]}",
                      ),

                      trailing: ElevatedButton(

                        onPressed: () {

                          cartProvider.addItem(
                            products[index]["name"],
                            products[index]["price"],
                          );
                        },

                        child: Text("Add"),
                      ),
                    ),
                  );
                },
              ),
            ),

            Divider(),

            // Cart Items
            Text(
              "Cart Items",
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),

            SizedBox(height: 10),

            Expanded(
              child: ListView.builder(

                itemCount: cartProvider.cartItems.length,

                itemBuilder: (context, index) {

                  return Card(
                    child: ListTile(

                      title: Text(
                        cartProvider.cartItems[index]["name"],
                      ),

                      subtitle: Text(
                        "₹${cartProvider.cartItems[index]["price"]}",
                      ),

                      trailing: IconButton(

                        icon: Icon(
                          Icons.delete,
                          color: Colors.red,
                        ),

                        onPressed: () {

                          cartProvider.removeItem(index);
                        },
                      ),
                    ),
                  );
                },
              ),
            ),

            SizedBox(height: 10),

            // Total Price
            Text(
              "Total Price: ₹${cartProvider.totalPrice}",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.blue,
              ),
            ),
          ],
        ),
      ),
    );
  }
}