import 'package:flutter/material.dart';
import 'package:my_bucket/Homepage/subscreen/all_productscreen.dart';

class RecommendedItems extends StatelessWidget {
  final List<Map<String, String>> recommendedProducts = [
    {"image": "assets/shirt1.jpg", "name": "Cotton Shirt", "price": "₹999"},
    {"image": "assets/shoes5.jpg", "name": "Nike Sneakers", "price": "₹2999"},
    {"image": "assets/watch1.jpg", "name": "Apple Watch", "price": "₹19999"},
    {"image": "assets/phone1.jpg", "name": "iPhone 15", "price": "₹79999"},
    {"image": "assets/laptop1.jpg", "name": "MacBook Air", "price": "₹99999"},
  ];

  RecommendedItems({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        //  Section Title + "See All" Button
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 10.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                "Recommended for You",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => AllProductsScreen()),
                  );
                },
                child: const Text("See All"),
              ),
            ],
          ),
        ),

        // ✅ Horizontal ListView of Recommended Items
        SizedBox(
          height: 180,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: recommendedProducts.length,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: ProductCard(
                  image: recommendedProducts[index]["image"]!,
                  name: recommendedProducts[index]["name"]!,
                  price: recommendedProducts[index]["price"]!,
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}

//  Product Card Widget
class ProductCard extends StatelessWidget {
  final String image;
  final String name;
  final String price;

  const ProductCard({
    super.key,
    required this.image,
    required this.name,
    required this.price,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 140,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
              color: Colors.grey.shade300, blurRadius: 4, spreadRadius: 2),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Product Image
          ClipRRect(
            borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(10), topRight: Radius.circular(10)),
            child:
                Image.asset(image, height: 100, width: 140, fit: BoxFit.cover),
          ),
          //  Product Name
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 4.0),
            child: Text(
              name,
              style: const TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
              overflow: TextOverflow.ellipsis,
              maxLines: 1,
            ),
          ),
          //  Product Price
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Text(
              price,
              style: const TextStyle(fontSize: 14, color: Colors.green),
            ),
          ),
        ],
      ),
    );
  }
}
