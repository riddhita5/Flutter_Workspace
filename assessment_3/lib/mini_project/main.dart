import 'package:flutter/material.dart';
import 'food_item.dart';
import 'screens.dart';

void main() {
  runApp(const QuickBiteApp());
}

class QuickBiteApp extends StatefulWidget {
  const QuickBiteApp({super.key});

  @override
  State<QuickBiteApp> createState() => _QuickBiteAppState();
}

class _QuickBiteAppState extends State<QuickBiteApp> {
  // Global cart state managed here to share between Home and Cart screens
  final List<FoodItem> _cart = [];

  void _addToCart(FoodItem item) {
    setState(() {
      _cart.add(item);
    });
  }

  void _removeFromCart(int index) {
    setState(() {
      _cart.removeAt(index);
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'QuickBite',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.orange,
        colorScheme: ColorScheme.fromSwatch(primarySwatch: Colors.orange).copyWith(
          secondary: Colors.amber,
        ),
        appBarTheme: const AppBarTheme(
          centerTitle: true,
          elevation: 2,
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.orange,
            foregroundColor: Colors.white,
            padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
          ),
        ),
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => HomeScreen(
              cart: _cart,
              onAddToCart: _addToCart,
            ),
        '/cart': (context) => CartScreen(
              cart: _cart,
              onRemoveFromCart: _removeFromCart,
            ),
        '/order-summary': (context) => const OrderSummaryScreen(),
      },
    );
  }
}
