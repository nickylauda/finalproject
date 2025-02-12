import 'package:flutter/material.dart';

class TrendingProducts extends StatelessWidget {
  final List<Map<String, String>> trendingProducts = [
    {"image": "assets/shoes7.jpg", "name": "Nike Sneakers", "price": "₹2999"},
    {"image": "assets/adidas.jpg", "name": "Adidas Running", "price": "₹3499"},
    {
      "image": "assets/applewatch1.jpg",
      "name": "Apple Watch",
      "price": "₹19999"
    },
    {"image": "assets/phone1.jpg", "name": "iPhone 15", "price": "₹79999"},
    {"image": "assets/macbook.jpg", "name": "MacBook Air", "price": "₹99999"},
    {
      "image": "assets/headphone.jpg",
      "name": "Sony Headphones",
      "price": "₹4999"
    },
    {"image": "assets/polo1.jpg", "name": "Polo T-Shirt", "price": "₹1199"},
    {
      "image": "assets/touristbag.jpg",
      "name": "Travel Backpack",
      "price": "₹2599"
    },
    {"image": "assets/bag.jpg", "name": "Luxury Handbag", "price": "₹3599"},
  ];

  TrendingProducts({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        //  Section Title (Reduced Spacing)
        const Padding(
          padding: EdgeInsets.only(left: 8.0), // Reduced bottom padding
          child: Text(
            "Trending Products",
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
        ),

        //  Grid View of Trending Products
        Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 8.0,
          ),
          child: GridView.builder(
            shrinkWrap: true, //  Prevents GridView from taking full screen
            physics:
                const NeverScrollableScrollPhysics(), // Prevents nested scrolling issues
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3, //  3 items per row
              crossAxisSpacing: 6, //  Reduced spacing
              mainAxisSpacing: 6, // Reduced spacing
              childAspectRatio: 0.75, //  Adjusted for better spacing
            ),
            itemCount: trendingProducts.length,
            itemBuilder: (context, index) {
              return ProductCard(
                image: trendingProducts[index]["image"]!,
                name: trendingProducts[index]["name"]!,
                price: trendingProducts[index]["price"]!,
              );
            },
          ),
        ),
      ],
    );
  }
}

//  Product Card Widget (Fixed Layout)
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
    return Card(
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10)), //  Rounded corners
      elevation: 2, //  Softer shadow
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          //  Product Image
          ClipRRect(
            borderRadius: BorderRadius.circular(8),
            child: Image.asset(
              image,
              height: 80, //  Adjusted for better fit
              width: double.infinity,
              fit: BoxFit.cover,
            ),
          ),

          //  Product Name
          Column(
            //mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 4.0, vertical: 5.0),
                child: Text(
                  name,
                  style: const TextStyle(
                      fontSize: 12, fontWeight: FontWeight.bold),
                  textAlign: TextAlign.center,
                  overflow: TextOverflow.ellipsis,
                  maxLines: 1,
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 4),
                child: Text(
                  price,
                  style: const TextStyle(
                      fontSize: 12,
                      color: Colors.black,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ],
          ),

          //  Product Price
        ],
      ),
    );
  }
}
