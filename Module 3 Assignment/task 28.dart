
import 'package:flutter/material.dart';

class ProductScreen extends StatelessWidget {

  List products = [
    {
      "name": "Laptop",
      "price": "₹50,000",
      "image":
      "https://images.unsplash.com/photo-1496181133206-80ce9b88a853"
    },
    {
      "name": "Headphones",
      "price": "₹2,000",
      "image":
      "https://images.unsplash.com/photo-1505740420928-5e560c06d30e"
    },
    {
      "name": "Mobile",
      "price": "₹25,000",
      "image":
      "https://images.unsplash.com/photo-1511707171634-5f897ff02aa9"
    },
    {
      "name": "Smart Watch",
      "price": "₹5,000",
      "image":
      "https://images.unsplash.com/photo-1523275335684-37898b6baf30"
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        title: Text("Product Listing"),
      ),

      body: Padding(
        padding: EdgeInsets.all(10),

        child: ListView(

          scrollDirection: Axis.horizontal,

          children: products.map((product) {

            return Container(

              width: 220,
              margin: EdgeInsets.only(right: 12),

              child: Card(
                elevation: 5,

                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,

                  children: [

                    // Product Image
                    Container(
                      height: 150,
                      width: double.infinity,

                      child: Image.network(
                        product["image"],
                        fit: BoxFit.cover,
                      ),
                    ),

                    Padding(
                      padding: EdgeInsets.all(10),

                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,

                        children: [

                          // Product Name
                          Text(
                            product["name"],
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),

                          SizedBox(height: 8),

                          // Product Price
                          Text(
                            product["price"],
                            style: TextStyle(
                              fontSize: 18,
                              color: Colors.green,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            );
          }).toList(),
        ),
      ),
    );
  }
}