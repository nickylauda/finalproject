import 'package:flutter/material.dart';

class AllCategoriesPage extends StatelessWidget {
  final List<Map<String, dynamic>> categories = [
    {"name": "Fashion", "icon": Icons.checkroom},
    {"name": "Electronics", "icon": Icons.devices},
    {"name": "Home & Furniture", "icon": Icons.chair},
    {"name": "Beauty & Personal Care", "icon": Icons.brush},
    {"name": "Sports & Fitness", "icon": Icons.fitness_center},
    {"name": "Toys & Baby Products", "icon": Icons.child_friendly},
    {"name": "Grocery", "icon": Icons.shopping_cart},
    {"name": "Books & More", "icon": Icons.menu_book},
  ];

   AllCategoriesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text("All Categories", style: TextStyle(color: Colors.white)),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () => Navigator.pop(context),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
            childAspectRatio: 1.2,
          ),
          itemCount: categories.length,
          itemBuilder: (context, index) {
            final category = categories[index];
            return Card(
              elevation: 3,
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(category["icon"], size: 40, color: Colors.blue),
                  const SizedBox(height: 10),
                  Text(category["name"],
                      textAlign: TextAlign.center,
                      style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
