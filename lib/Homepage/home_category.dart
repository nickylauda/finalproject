// import 'package:flutter/material.dart';

// class CategoriesList extends StatelessWidget {
//   final List<Map<String, String>> categories = [
//     {"image": "assets/homes/mobiles.png", "name": "Mobiles"},
//     {"image": "assets/homes/fashion.png", "name": "Fashion"},
//     {"image": "assets/homes/Electronics.png", "name": "Electronics"},
//     {"image": "assets/homes/home.png", "name": "Home"},
//     {"image": "assets/homes/appliances.png", "name": "Appliances"},
//     {"image": "assets/homes/beauty.png", "name": "Beauty"},
//     {"image": "assets/homes/toys.jpg", "name": "Toys"},
//   ];

//   CategoriesList({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return SizedBox(
//       //color: Colors.amber,
//       height: 90, // Controls the height of the list
//       child: ListView.builder(
//         scrollDirection: Axis.horizontal,
//         itemCount: categories.length,
//         itemBuilder: (context, index) {
//           return Padding(
//             padding: const EdgeInsets.symmetric(horizontal: 8.0),
//             child: Column(
//               children: [
//                 CircleAvatar(
//                   radius: 32,
//                   backgroundColor: Colors.blueGrey[200],
//                   child: CircleAvatar(
//                     radius: 30, // Controls circle size
//                     backgroundColor: Colors.grey[200], //  Placeholder color
//                     backgroundImage: AssetImage(
//                       categories[index]["image"]!,
//                     ),
//                   ),
//                 ),
//                 const SizedBox(height: 5), // Space between image & text
//                 Text(
//                   categories[index]["name"]!,
//                   style: const TextStyle(
//                       fontSize: 14, fontWeight: FontWeight.w500),
//                 ),
//               ],
//             ),
//           );
//         },
//       ),
//     );
//   }
// }
import 'package:flutter/material.dart';

import 'package:my_bucket/product_list/list_category_list.dart';

class CategoriesList extends StatelessWidget {
  final List<Map<String, String>> categories = [
    {"image": "assets/homes/mobiles.png", "name": "Mobiles"},
    {"image": "assets/homes/fashion.png", "name": "Fashion"},
    {"image": "assets/homes/Electronics.png", "name": "Electronics"},
    {"image": "assets/homes/home.png", "name": "Home"},
    {"image": "assets/homes/appliances.png", "name": "Appliances"},
    {"image": "assets/homes/beauty.png", "name": "Beauty"},
    {"image": "assets/homes/toys.jpg", "name": "Toys"},
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
          return GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const CategoryList(),
                ),
              );
              // You can navigate to a new screen or perform any other action here
            },
            child: Padding(
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
            ),
          );
        },
      ),
    );
  }
}
