import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'book.dart';
import 'api_service.dart';
import 'auth_service.dart';
import 'firestore_service.dart';
import 'borrow_cubit.dart';
import 'catalogue_bloc.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  try {
    await Firebase.initializeApp();
  } catch (e) {
    debugPrint("Firebase initialization skipped: $e");
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
        BlocProvider(
          create: (context) => CatalogueBloc(
            apiService: ApiService(),
            firestoreService: FirestoreService(),
          )..add(FetchCatalogue()),
        ),
      ],
      child: MaterialApp(
        title: 'Smart Library',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.indigo),
          useMaterial3: true,
        ),
        home: const AuthWrapper(),
      ),
    );
  }
}

class AuthWrapper extends StatelessWidget {
  const AuthWrapper({super.key});

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<User?>(
      stream: AuthService().user,
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const Scaffold(body: Center(child: CircularProgressIndicator()));
        }
        if (snapshot.hasData) {
          return const HomeScreen();
        }
        return const LoginScreen();
      },
    );
  }
}

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  bool _isLogin = true;

  void _submit() async {
    final auth = AuthService();
    try {
      if (_isLogin) {
        await auth.signIn(_emailController.text, _passwordController.text);
      } else {
        await auth.signUp(_emailController.text, _passwordController.text);
      }
    } catch (e) {
      if (!mounted) return;
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(e.toString())));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(_isLogin ? 'Login' : 'Sign Up')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(controller: _emailController, decoration: const InputDecoration(labelText: 'Email')),
            TextField(
              controller: _passwordController,
              decoration: const InputDecoration(labelText: 'Password'),
              obscureText: true,
            ),
            const SizedBox(height: 20),
            ElevatedButton(onPressed: _submit, child: Text(_isLogin ? 'Login' : 'Sign Up')),
            TextButton(
              onPressed: () => setState(() => _isLogin = !_isLogin),
              child: Text(_isLogin ? 'Create an account' : 'Already have an account?'),
            ),
          ],
        ),
      ),
    );
  }
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _currentIndex = 0;
  final List<Widget> _pages = [
    const CataloguePage(),
    const ReadingListPage(),
    const BorrowSummaryPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (index) => setState(() => _currentIndex = index),
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.library_books), label: 'Catalogue'),
          BottomNavigationBarItem(icon: Icon(Icons.favorite), label: 'Reading List'),
          BottomNavigationBarItem(icon: Icon(Icons.shopping_basket), label: 'Borrow'),
        ],
      ),
    );
  }
}

class CataloguePage extends StatelessWidget {
  const CataloguePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Book Catalogue'),
        actions: [
          IconButton(
            icon: const Icon(Icons.logout),
            onPressed: () => AuthService().signOut(),
          )
        ],
      ),
      body: BlocBuilder<CatalogueBloc, CatalogueState>(
        builder: (context, state) {
          if (state is CatalogueLoading) {
            return const Center(child: CircularProgressIndicator());
          } else if (state is CatalogueError) {
            return Center(child: Text(state.message));
          } else if (state is CatalogueLoaded) {
            return Column(
              children: [
                if (state.isOffline)
                  Container(
                    width: double.infinity,
                    color: Colors.orange,
                    padding: const EdgeInsets.all(8),
                    child: const Text('Offline Mode - Using Cached Data', textAlign: TextAlign.center),
                  ),
                Expanded(
                  child: ListView.builder(
                    itemCount: state.books.length,
                    itemBuilder: (context, index) {
                      final book = state.books[index];
                      return ListTile(
                        leading: Image.network(book.imageUrl, width: 50, errorBuilder: (context, error, stackTrace) => const Icon(Icons.book)),
                        title: Text(book.title),
                        subtitle: Text(book.author),
                        onTap: () => Navigator.push(context, MaterialPageRoute(builder: (_) => BookDetailsScreen(book: book))),
                        trailing: IconButton(
                          icon: const Icon(Icons.add),
                          onPressed: () => context.read<BorrowCubit>().addBook(book),
                        ),
                      );
                    },
                  ),
                ),
              ],
            );
          }
          return const SizedBox();
        },
      ),
    );
  }
}

class BookDetailsScreen extends StatelessWidget {
  final Book book;
  const BookDetailsScreen({super.key, required this.book});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(book.title)),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            Image.network(book.imageUrl, height: 200, errorBuilder: (context, error, stackTrace) => const Icon(Icons.book, size: 100)),
            const SizedBox(height: 16),
            Text(book.author, style: Theme.of(context).textTheme.titleLarge),
            const SizedBox(height: 8),
            Text(book.description),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () async {
                await FirestoreService().addToReadingList(book);
                if (!context.mounted) return;
                ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text('Added to Reading List')));
              },
              child: const Text('Save to Reading List'),
            ),
          ],
        ),
      ),
    );
  }
}

class ReadingListPage extends StatelessWidget {
  const ReadingListPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('My Reading List')),
      body: StreamBuilder<List<Book>>(
        stream: FirestoreService().getReadingList(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(child: CircularProgressIndicator());
          }
          final books = snapshot.data ?? [];
          if (books.isEmpty) return const Center(child: Text('Your list is empty'));
          return ListView.builder(
            itemCount: books.length,
            itemBuilder: (context, index) {
              final book = books[index];
              return ListTile(
                title: Text(book.title),
                subtitle: Text(book.author),
                trailing: IconButton(
                  icon: const Icon(Icons.delete),
                  onPressed: () => FirestoreService().removeFromReadingList(book.id),
                ),
              );
            },
          );
        },
      ),
    );
  }
}

class BorrowSummaryPage extends StatelessWidget {
  const BorrowSummaryPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Borrowing Summary')),
      body: BlocBuilder<BorrowCubit, BorrowState>(
        builder: (context, state) {
          if (state is BorrowInitial || (state is BorrowUpdated && state.borrowedBooks.isEmpty)) {
            return const Center(child: Text('No books selected for borrowing'));
          }
          final books = (state as BorrowUpdated).borrowedBooks;
          return Column(
            children: [
              Expanded(
                child: ListView.builder(
                  itemCount: books.length,
                  itemBuilder: (context, index) {
                    final book = books[index];
                    return ListTile(
                      title: Text(book.title),
                      trailing: IconButton(
                        icon: const Icon(Icons.remove_circle),
                        onPressed: () => context.read<BorrowCubit>().removeBook(book),
                      ),
                    );
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: ElevatedButton(
                  onPressed: () {
                    context.read<BorrowCubit>().clear();
                    ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text('Borrowing request submitted!')));
                  },
                  child: const Text('Confirm Borrowing'),
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
