import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'task1/book_list_screen.dart';
import 'task2/login_screen.dart';
import 'task3/borrow_cubit.dart';
import 'task4/catalogue_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  try {
    // Note: Requires platform-specific Firebase configuration to work
    await Firebase.initializeApp();
  } catch (e) {
    debugPrint("Firebase initialization skipped or failed: $e");
  }
  runApp(const LibraryApp());
}

class LibraryApp extends StatelessWidget {
  const LibraryApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => BorrowCubit()),
      ],
      child: MaterialApp(
        title: 'Library Management App',
        theme: ThemeData(
          primarySwatch: Colors.indigo,
          useMaterial3: true,
        ),
        home: const DashboardScreen(),
      ),
    );
  }
}

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Library App Tasks')),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          _TaskCard(
            title: 'Task 1: Book Catalogue',
            subtitle: 'Fetch & Display from API',
            icon: Icons.library_books,
            onTap: () => Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const BookListScreen()),
            ),
          ),
          _TaskCard(
            title: 'Task 2: Reading List',
            subtitle: 'Firebase Auth & Firestore',
            icon: Icons.favorite,
            onTap: () => Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const LoginScreen()),
            ),
          ),
          _TaskCard(
            title: 'Task 4: Live Catalogue',
            subtitle: 'Bloc, Firestore Cache & Offline Fallback',
            icon: Icons.sync,
            onTap: () => Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const CatalogueScreen()),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(top: 20),
            child: Text(
              'Note: Task 3 (Borrowing Cubit) is integrated into Task 4 via the bookmark icon.',
              style: TextStyle(fontStyle: FontStyle.italic, color: Colors.grey),
            ),
          ),
        ],
      ),
    );
  }
}

class _TaskCard extends StatelessWidget {
  final String title;
  final String subtitle;
  final IconData icon;
  final VoidCallback onTap;

  const _TaskCard({
    required this.title,
    required this.subtitle,
    required this.icon,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.only(bottom: 12),
      child: ListTile(
        leading: CircleAvatar(child: Icon(icon)),
        title: Text(title),
        subtitle: Text(subtitle),
        trailing: const Icon(Icons.arrow_forward_ios, size: 16),
        onTap: onTap,
      ),
    );
  }
}
