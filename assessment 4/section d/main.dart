import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'book.dart';
import 'api_service.dart';
import 'catalogue_bloc.dart';

void main() {
  runApp(const LibraryApp());
}

class LibraryApp extends StatelessWidget {
  const LibraryApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'AI Library Catalogue',
      theme: ThemeData(primarySwatch: Colors.blue, useMaterial3: true),
      home: BlocProvider(
        create: (context) => CatalogueBloc(apiService: ApiService())..add(FetchCatalogue()),
        child: const CatalogueScreen(),
      ),
    );
  }
}

class CatalogueScreen extends StatelessWidget {
  const CatalogueScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Book Catalogue')),
      body: BlocBuilder<CatalogueBloc, CatalogueState>(
        builder: (context, state) {
          if (state is CatalogueLoading) {
            return const Center(child: CircularProgressIndicator());
          } else if (state is CatalogueError) {
            return Center(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Icon(Icons.error_outline, color: Colors.red, size: 60),
                    const SizedBox(height: 16),
                    Text(
                      'Oops! ${state.message}',
                      textAlign: TextAlign.center,
                      style: const TextStyle(fontSize: 16),
                    ),
                    const SizedBox(height: 16),
                    ElevatedButton(
                      onPressed: () => context.read<CatalogueBloc>().add(FetchCatalogue()),
                      child: const Text('Retry'),
                    ),
                  ],
                ),
              ),
            );
          } else if (state is CatalogueEmpty) {
            return const Center(child: Text('No books available at the moment.'));
          } else if (state is CatalogueLoaded) {
            return ListView.builder(
              itemCount: state.books.length,
              itemBuilder: (context, index) {
                final book = state.books[index];
                return ListTile(
                  leading: const Icon(Icons.book),
                  title: Text(book.title),
                  subtitle: Text(book.author),
                );
              },
            );
          }
          return const Center(child: Text('Start fetching...'));
        },
      ),
    );
  }
}
