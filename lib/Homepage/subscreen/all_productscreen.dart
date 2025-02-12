import 'package:flutter/material.dart';
import 'package:my_bucket/Homepage/home_recomenteditem.dart';

class AllProductsScreen extends StatelessWidget {
  final List<Map<String, String>> allProducts = [
    {"image": "assets/shirt2.jpg", "name": "Cotton Shirt", "price": "₹999"},
    {"image": "assets/shoes6.jpg", "name": "Nike Sneakers", "price": "₹2999"},
    {"image": "assets/watch1.jpg", "name": "Apple Watch", "price": "₹19999"},
    {"image": "assets/phone1.jpg", "name": "iPhone 15", "price": "₹79999"},
    {"image": "assets/macbook.jpg", "name": "MacBook Air", "price": "₹99999"},
    {"image": "assets/shirt1.jpg", "name": "Casual Shirt", "price": "₹1199"},
    {"image": "assets/shoes5.jpg", "name": "Adidas Sneakers", "price": "₹3199"},
    {
      "image": "assets/products/watch2.jpg",
      "name": "Samsung Watch",
      "price": "₹15999"
    },
  ];

  AllProductsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Recommended Items")),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2, //  2 items per row
            crossAxisSpacing: 8,
            mainAxisSpacing: 8,
            childAspectRatio: 0.75, //  Controls card height
          ),
          itemCount: allProducts.length,
          itemBuilder: (context, index) {
            return ProductCard(
              image: allProducts[index]["image"]!,
              name: allProducts[index]["name"]!,
              price: allProducts[index]["price"]!,
            );
          },
        ),
      ),
    );
  }
}
