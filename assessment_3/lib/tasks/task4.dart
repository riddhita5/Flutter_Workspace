import 'package:flutter/material.dart';

class QuickBiteApp extends StatelessWidget {
  const QuickBiteApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'QuickBite',
      theme: ThemeData(
        primarySwatch: Colors.deepOrange,
        colorScheme: ColorScheme.fromSwatch(primarySwatch: Colors.deepOrange).copyWith(
          secondary: Colors.amber,
        ),
        textTheme: const TextTheme(
          displayLarge: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.black87),
          bodyLarge: TextStyle(fontSize: 16, color: Colors.black54),
        ),
      ),
      home: const HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('QuickBite'),
      ),
      body: ListView(
        padding: const EdgeInsets.all(16.0),
        children: const [
          RestaurantCard(
            name: 'Pizza Palace',
            rating: '4.5',
            icon: Icons.local_pizza,
          ),
          RestaurantCard(
            name: 'Burger Point',
            rating: '4.2',
            icon: Icons.lunch_dining,
          ),
          RestaurantCard(
            name: 'Tikka House',
            rating: '4.8',
            icon: Icons.kebab_dining,
          ),
        ],
      ),
    );
  }
}

class RestaurantCard extends StatelessWidget {
  final String name;
  final String rating;
  final IconData icon;

  const RestaurantCard({
    super.key,
    required this.name,
    required this.rating,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 16),
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.2),
            spreadRadius: 2,
            blurRadius: 5,
            offset: const Offset(0, 3),
          ),
        ],
      ),
      child: Row(
        children: [
          Container(
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.secondary.withOpacity(0.2),
              borderRadius: BorderRadius.circular(8),
            ),
            child: Icon(icon, size: 40, color: Theme.of(context).primaryColor),
          ),
          const SizedBox(width: 16),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  name,
                  style: Theme.of(context).textTheme.displayLarge?.copyWith(fontSize: 20),
                ),
                const SizedBox(height: 4),
                Row(
                  children: [
                    const Icon(Icons.star, color: Colors.amber, size: 18),
                    const SizedBox(width: 4),
                    Text(
                      rating,
                      style: Theme.of(context).textTheme.bodyLarge,
                    ),
                  ],
                ),
              ],
            ),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => RestaurantDetailScreen(restaurantName: name),
                ),
              );
            },
            child: const Text('View Menu'),
          ),
        ],
      ),
    );
  }
}

class RestaurantDetailScreen extends StatelessWidget {
  final String restaurantName;

  const RestaurantDetailScreen({super.key, required this.restaurantName});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(restaurantName),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.restaurant_menu, size: 100, color: Theme.of(context).primaryColor),
            const SizedBox(height: 20),
            Text(
              'Welcome to $restaurantName!',
              style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            const Text('Explore our delicious menu items.'),
          ],
        ),
      ),
    );
  }
}
