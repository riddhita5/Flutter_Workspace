
import 'package:flutter/material.dart';

class InfiniteListScreen extends StatefulWidget {
  @override
  State<InfiniteListScreen> createState() => _InfiniteListScreenState();
}

class _InfiniteListScreenState extends State<InfiniteListScreen> {

  List items = [];
  ScrollController scrollController = ScrollController();

  @override
  void initState() {
    super.initState();

    // Initial Data
    loadMoreData();

    // Scroll Listener
    scrollController.addListener(() {

      if (scrollController.position.pixels ==
          scrollController.position.maxScrollExtent) {

        loadMoreData();
      }
    });
  }

  // Load More Data
  void loadMoreData() {

    int currentLength = items.length;

    for (int i = currentLength; i < currentLength + 10; i++) {
      items.add("Item ${i + 1}");
    }

    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        title: Text("Infinite Scrolling List"),
      ),

      body: ListView.builder(

        controller: scrollController,

        itemCount: items.length,

        itemBuilder: (context, index) {

          return Card(
            margin: EdgeInsets.all(10),
            child: ListTile(
              title: Text(items[index]),
            ),
          );
        },
      ),
    );
  }
}