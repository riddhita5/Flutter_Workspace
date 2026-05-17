import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen25(),
    );
  }
}

class HomeScreen25 extends StatelessWidget {

  List products = [
    {
      "name": "Laptop",
      "price": "₹50,000",
      "image":
      "https://images.unsplash.com/photo-1496181133206-80ce9b88a853",
    },
    {
      "name": "Mobile",
      "price": "₹25,000",
      "image":
      "https://images.unsplash.com/photo-1511707171634-5f897ff02aa9",
    },
    {
      "name": "Headphones",
      "price": "₹2,000",
      "image":
      "https://images.unsplash.com/photo-1505740420928-5e560c06d30e",
    },
  ];

  @override
  Widget build(BuildContext context) {

    return Scaffold(

      appBar: AppBar(
        title: Text("Custom Widgets UI"),
      ),

      body: SingleChildScrollView(

        child: Padding(
          padding: EdgeInsets.all(15),

          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,

            children: [

              // PROFILE SECTION
              Container(

                padding: EdgeInsets.all(15),

                decoration: BoxDecoration(
                  color: Colors.blue.shade50,
                  borderRadius: BorderRadius.circular(20),
                ),

                child: Row(
                  children: [

                    // Avatar Badge
                    AvatarBadge(
                      image:
                      "assets/image.jpg",
                      isOnline: true,
                    ),

                    SizedBox(width: 15),

                    // Profile Details
                    Column(
                      crossAxisAlignment:
                      CrossAxisAlignment.start,

                      children: [

                        Text(
                          "Riddhita Gosai",
                          style: TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.bold,
                          ),
                        ),

                        SizedBox(height: 5),

                        Text(
                          "Flutter Developer",
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.grey[700],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),

              SizedBox(height: 25),

              // PRODUCT TITLE
              Text(
                "Product Catalog",
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),

              SizedBox(height: 15),

              // PRODUCT LIST
              ListView.builder(

                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),

                itemCount: products.length,

                itemBuilder: (context, index) {

                  return Card(

                    elevation: 5,

                    margin: EdgeInsets.only(bottom: 15),

                    shape: RoundedRectangleBorder(
                      borderRadius:
                      BorderRadius.circular(15),
                    ),

                    child: Padding(
                      padding: EdgeInsets.all(10),

                      child: Row(
                        children: [

                          // Product Image
                          ClipRRect(

                            borderRadius:
                            BorderRadius.circular(10),

                            child: Image.network(
                              products[index]["image"],
                              height: 90,
                              width: 90,
                              fit: BoxFit.cover,
                            ),
                          ),

                          SizedBox(width: 15),

                          // Product Details
                          Column(
                            crossAxisAlignment:
                            CrossAxisAlignment.start,

                            children: [

                              Text(
                                products[index]["name"],
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight:
                                  FontWeight.bold,
                                ),
                              ),

                              SizedBox(height: 8),

                              Text(
                                products[index]["price"],
                                style: TextStyle(
                                  fontSize: 18,
                                  color: Colors.green,
                                ),
                              ),
                              GestureDetector(

                                onTap: () {},

                                child: Container(

                                  padding: EdgeInsets.symmetric(
                                    horizontal: 25,
                                    vertical: 15,
                                  ),

                                  decoration: BoxDecoration(
                                    color: Colors.blue,
                                    borderRadius: BorderRadius.circular(15),
                                  ),

                                  child: Text(
                                    "Buy Mee!!",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// CUSTOM AVATAR BADGE WIDGET
class AvatarBadge extends StatelessWidget {

  final String image;
  final bool isOnline;

  AvatarBadge({
    required this.image,
    required this.isOnline,
  });

  @override
  Widget build(BuildContext context) {

    return Stack(
      children: [

        CircleAvatar(
          radius: 40,
          backgroundImage: NetworkImage(image),
        ),

        Positioned(
          bottom: 2,
          right: 2,

          child: Container(
            height: 18,
            width: 18,

            decoration: BoxDecoration(
              color:
              isOnline ? Colors.green : Colors.red,
              shape: BoxShape.circle,
              border: Border.all(
                color: Colors.white,
                width: 2,
              ),
            ),
          ),
        ),
      ],
    );
  }
}