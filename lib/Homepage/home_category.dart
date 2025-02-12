import 'package:flutter/material.dart';

class CategoriesList extends StatelessWidget {
  final List<Map<String, String>> categories = [
    {"image": "assets/mobiles.png", "name": "Mobiles"},
    {"image": "assets/fashion.png", "name": "Fashion"},
    {"image": "assets/Electronics.png", "name": "Electronics"},
    {"image": "assets/home.png", "name": "Home"},
    {"image": "assets/appliances.png", "name": "Appliances"},
    {"image": "assets/beauty.png", "name": "Beauty"},
    {"image": "assets/toys.jpg", "name": "Toys"},
  ];

  CategoriesList({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      //color: Colors.amber,
      height: 90, // Controls the height of the list
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: categories.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Column(
              children: [
                CircleAvatar(
                  radius: 32,
                  backgroundColor: Colors.blueGrey[200],
                  child: CircleAvatar(
                    radius: 30, // Controls circle size
                    backgroundColor: Colors.grey[200], //  Placeholder color
                    backgroundImage: AssetImage(
                      categories[index]["image"]!,
                    ),
                  ),
                ),
                const SizedBox(height: 5), // Space between image & text
                Text(
                  categories[index]["name"]!,
                  style: const TextStyle(
                      fontSize: 14, fontWeight: FontWeight.w500),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
