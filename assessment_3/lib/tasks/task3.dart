import 'package:flutter/material.dart';

class FoodQuantityCounter extends StatefulWidget {
  const FoodQuantityCounter({super.key});

  @override
  State<FoodQuantityCounter> createState() => _FoodQuantityCounterState();
}

class _FoodQuantityCounterState extends State<FoodQuantityCounter> {
  final String itemName = 'Margherita Pizza';
  final double unitPrice = 850.0;
  int quantity = 0;

  void _increment() {
    setState(() {
      quantity++;
    });
  }

  void _decrement() {
    setState(() {
      if (quantity > 0) {
        quantity--;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    double totalPrice = quantity * unitPrice;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Food Quantity Counter'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              itemName,
              style: const TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            Text(
              'Unit Price: Rs ${unitPrice.toStringAsFixed(2)}',
              style: const TextStyle(fontSize: 18, color: Colors.grey),
            ),
            const SizedBox(height: 40),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: _decrement,
                  style: ElevatedButton.styleFrom(
                    shape: const CircleBorder(),
                    padding: const EdgeInsets.all(16),
                  ),
                  child: const Icon(Icons.remove),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 24.0),
                  child: Text(
                    '$quantity',
                    style: const TextStyle(fontSize: 48, fontWeight: FontWeight.bold),
                  ),
                ),
                ElevatedButton(
                  onPressed: _increment,
                  style: ElevatedButton.styleFrom(
                    shape: const CircleBorder(),
                    padding: const EdgeInsets.all(16),
                  ),
                  child: const Icon(Icons.add),
                ),
              ],
            ),
            const SizedBox(height: 40),
            const Divider(),
            const SizedBox(height: 20),
            Text(
              'Total Price',
              style: TextStyle(fontSize: 16, color: Colors.grey[700]),
            ),
            Text(
              'Rs ${totalPrice.toStringAsFixed(2)}',
              style: const TextStyle(
                fontSize: 32,
                fontWeight: FontWeight.bold,
                color: Colors.green,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
