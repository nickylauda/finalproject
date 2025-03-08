// import 'package:flutter/material.dart';
// import 'package:shared_preferences/shared_preferences.dart';

// class SearchPage extends StatefulWidget {
//   const SearchPage({super.key});

//   @override
//   State<SearchPage> createState() => _SearchPageState();
// }

// class _SearchPageState extends State<SearchPage> {
//   final TextEditingController _searchController = TextEditingController();
//   List<String> _recentSearches = [];

//   @override
//   void initState() {
//     super.initState();
//     _loadRecentSearches(); // Load saved searches on startup
//   }

//   /// Load recent searches from SharedPreferences
//   Future<void> _loadRecentSearches() async {
//     SharedPreferences prefs = await SharedPreferences.getInstance();
//     setState(() {
//       _recentSearches = prefs.getStringList('recentSearches') ?? [];
//     });
//   }

//   /// Save recent searches to SharedPreferences
//   Future<void> _saveSearch(String query) async {
//     if (query.isNotEmpty) {
//       SharedPreferences prefs = await SharedPreferences.getInstance();
//       _recentSearches.remove(query); // Remove if already exists to avoid duplicates
//       _recentSearches.insert(0, query); // Add new search at the beginning
//       if (_recentSearches.length > 10) {
//         _recentSearches = _recentSearches.sublist(0, 10); // Limit to last 10 searches
//       }
//       await prefs.setStringList('recentSearches', _recentSearches);
//       setState(() {});
//     }
//   }

//   /// Clear search history
//   Future<void> _clearSearchHistory() async {
//     SharedPreferences prefs = await SharedPreferences.getInstance();
//     await prefs.remove('recentSearches');
//     setState(() {
//       _recentSearches.clear();
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text("Search"),
//         actions: [
//           if (_recentSearches.isNotEmpty)
//             IconButton(
//               icon: const Icon(Icons.delete),
//               onPressed: _clearSearchHistory, // Clear search history
//             ),
//         ],
//       ),
//       body: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           /// Search Bar
//           Padding(
//             padding: const EdgeInsets.all(8.0),
//             child: TextField(
//               controller: _searchController,
//               autofocus: true, // Focus on search field
//               decoration: InputDecoration(
//                 hintText: "Search for products...",
//                 border: OutlineInputBorder(
//                   borderRadius: BorderRadius.circular(10),
//                   borderSide: const BorderSide(color: Colors.blue),
//                 ),
//                 prefixIcon: const Icon(Icons.search, color: Colors.blue),
//                 suffixIcon: IconButton(
//                   icon: const Icon(Icons.clear, color: Colors.grey),
//                   onPressed: () {
//                     _searchController.clear();
//                   },
//                 ),
//               ),
//               onSubmitted: (query) {
//                 _saveSearch(query);
//                 _searchController.clear(); // Clear input field
//               },
//             ),
//           ),

//           /// Recent Searches Title
//           if (_recentSearches.isNotEmpty)
//             const Padding(
//               padding: EdgeInsets.symmetric(horizontal: 8.0, vertical: 4.0),
//               child: Text(
//                 "Recent Searches",
//                 style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
//               ),
//             ),

//           /// Recent Searches List (Horizontal)
//           if (_recentSearches.isNotEmpty)
//             SizedBox(
//               height: 50,
//               child: ListView.builder(
//                 scrollDirection: Axis.horizontal,
//                 itemCount: _recentSearches.length,
//                 itemBuilder: (context, index) {
//                   return GestureDetector(
//                     onTap: () {
//                       setState(() {
//                         _searchController.text = _recentSearches[index];
//                       });
//                     },
//                     child: Container(
//                       margin: const EdgeInsets.symmetric(horizontal: 6.0),
//                       padding: const EdgeInsets.symmetric(
//                           horizontal: 12, vertical: 8),
//                       decoration: BoxDecoration(
//                         color: Colors.blue.shade100,
//                         borderRadius: BorderRadius.circular(20),
//                       ),
//                       child: Row(
//                         children: [
//                           Text(_recentSearches[index]),
//                           const SizedBox(width: 5),
//                           GestureDetector(
//                             onTap: () {
//                               setState(() {
//                                 _recentSearches.removeAt(index);
//                               });
//                               SharedPreferences.getInstance().then((prefs) {
//                                 prefs.setStringList(
//                                     'recentSearches', _recentSearches);
//                               });
//                             },
//                             child: const Icon(Icons.close, size: 16, color: Colors.red),
//                           ),
//                         ],
//                       ),
//                     ),
//                   );
//                 },
//               ),
//             ),
//         ],
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';

class FlipkartUI extends StatelessWidget {
  const FlipkartUI({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        //automaticallyImplyLeading: false,
        toolbarHeight: 65,
        title: const SearchBar(),
        backgroundColor: Colors.blue[100],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SectionTitle(title: "Recent Searches"),
            const HorizontalList(items: [
              "Phone stand",
              "Flipflop",
              "Workout T-Shirts",
              "MacBook M4"
            ]),
            const SectionTitle(title: "Recommended Stores For You"),
            const HorizontalList(items: ["Laptops", "Stands"]),
            const SectionTitle(title: "Popular Products"),
            ProductGrid(),
          ],
        ),
      ),
    );
  }
}

class SearchBar extends StatelessWidget {
  const SearchBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(30),
      ),
      child: const TextField(
        decoration: InputDecoration(
          hintText: "Search products...",
          prefixIcon: Icon(Icons.search),
          border: InputBorder.none,
          contentPadding: EdgeInsets.symmetric(vertical: 10),
        ),
      ),
    );
  }
}

class SectionTitle extends StatelessWidget {
  final String title;
  const SectionTitle({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Text(
        title,
        style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
      ),
    );
  }
}

class HorizontalList extends StatelessWidget {
  final List<String> items;
  const HorizontalList({super.key, required this.items});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: items.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Chip(label: Text(items[index])),
          );
        },
      ),
    );
  }
}

class ProductGrid extends StatelessWidget {
  final List<Map<String, String>> products = [
    {"name": "MOTOROLA", "category": "Mobiles"},
    {"name": "Canon", "category": "DSLR & Mirrorless"},
    {"name": "Boult", "category": "Headset"},
  ];

  ProductGrid({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 2,
      ),
      itemCount: products.length,
      itemBuilder: (context, index) {
        return Card(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  products[index]["name"]!,
                  style: const TextStyle(fontWeight: FontWeight.bold),
                ),
                Text(products[index]["category"]!),
              ],
            ),
          ),
        );
      },
    );
  }
}
