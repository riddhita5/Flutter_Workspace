import 'package:flutter/material.dart';

// Model for ordered items
class OrderItem {
  final String name;
  final int quantity;
  final double unitPrice;

  OrderItem({required this.name, required this.quantity, required this.unitPrice});
}

class OrderScreen extends StatefulWidget {
  const OrderScreen({super.key});

  @override
  State<OrderScreen> createState() => _OrderScreenState();
}

class _OrderScreenState extends State<OrderScreen> {
  // Initial list of items
  final List<OrderItem> _items = [
    OrderItem(name: "Burger", quantity: 2, unitPrice: 250.0),
    OrderItem(name: "Pizza", quantity: 1, unitPrice: 1200.0),
    OrderItem(name: "Pasta", quantity: 3, unitPrice: 450.0),
  ];

  String _status = "";

  // Dynamic total computation
  double get _totalAmount {
    return _items.fold(0, (sum, item) => sum + (item.unitPrice * item.quantity));
  }

  void _placeOrder() {
    setState(() {
      _status = "Order Placed ›";
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Order Summary")),
      body: _items.isEmpty
          ? const Center(child: Text("Your cart is empty", style: TextStyle(fontSize: 18)))
          : Column(
              children: [
                Expanded(
                  child: ListView.builder(
                    itemCount: _items.length,
                    itemBuilder: (context, index) {
                      final item = _items[index];
                      return ListTile(
                        title: Text(item.name),
                        subtitle: Text("Qty: ${item.quantity} x Rs ${item.unitPrice}"),
                        trailing: Text("Rs ${item.quantity * item.unitPrice}"),
                      );
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    children: [
                      Text("Total: Rs $_totalAmount",
                          style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                      const SizedBox(height: 10),
                      Text(_status,
                          style: const TextStyle(fontSize: 24, color: Colors.green, fontWeight: FontWeight.bold)),
                      const SizedBox(height: 10),
                      ElevatedButton(
                        onPressed: _placeOrder,
                        child: const Text("Place Order"),
                      ),
                    ],
                  ),
                ),
              ],
            ),
    );
  }
}
