    import 'package:flutter/material.dart';
    class SearchScreen extends StatefulWidget {
    @override
    State<SearchScreen> createState() => _SearchScreenState();
    }

    class _SearchScreenState extends State<SearchScreen> {
    final TextEditingController searchController = TextEditingController();
    
    final List<String> allSuggestions = [
    'Apple',
    'Banana',
    'Orange',
    'Mango',
    'Grapes',
    'Pineapple',
    'Watermelon',
    'Papaya',
    'Strawberry',
    'Kiwi',
    ];

    List<String> filteredSuggestions = [];

    @override
    void initState() {
    super.initState();
    filteredSuggestions = allSuggestions;
    }

    // Filter suggestions based on input
    void filterSearch(String query) {
    List<String> results = [];

    if (query.isEmpty) {
    results = allSuggestions;
    } else {
    results = allSuggestions
        .where((item) =>
    item.toLowerCase().contains(query.toLowerCase()))
        .toList();
    }

    setState(() {
    filteredSuggestions = results;
    });
    }

    @override
    Widget build(BuildContext context) {
    return Scaffold(
    appBar: AppBar(
    title: const Text('Search Bar Example'),
    backgroundColor: Colors.blue,
    ),
    body: Padding(
    padding: const EdgeInsets.all(16.0),
    child: Column(
    children: [
    TextField(
    controller: searchController,
    onChanged: filterSearch,
    decoration: InputDecoration(
    hintText: 'Search...',
    prefixIcon: const Icon(Icons.search),
    border: OutlineInputBorder(
    borderRadius: BorderRadius.circular(10),
    ),
    ),
    ),

    const SizedBox(height: 20),
    Expanded(
    child: ListView.builder(
    itemCount: filteredSuggestions.length,
    itemBuilder: (context, index) {
    return ListTile(
    leading: const Icon(Icons.label),
    title: Text(filteredSuggestions[index]),
    onTap: () {
    searchController.text =
    filteredSuggestions[index];
    },
    );
    },
    ),
    ),
    ],
    ),
    ),
    );
    }
    }