// import 'package:flutter/material.dart';
// import 'package:my_bucket/Homepage/subscreen/all_productscreen.dart';

// //  Sample product list (Move this to a separate data file if needed)
// final List<Map<String, String>> recommendedProducts = [
//   {
//     "image": "assets/homes/shirt1.jpg",
//     "name": "Cotton Shirt",
//     "oldPrice": "₹1299",
//     "newPrice": "₹999"
//   },
//   {
//     "image": "assets/homes/shoes5.jpg",
//     "name": "Nike Sneakers",
//     "oldPrice": "₹3999",
//     "newPrice": "₹2999"
//   },
//   {
//     "image": "assets/homes/watch1.jpg",
//     "name": "Apple Watch",
//     "oldPrice": "₹22999",
//     "newPrice": "₹19999"
//   },
//   {
//     "image": "assets/homes/phone1.jpg",
//     "name": "iPhone 15",
//     "oldPrice": "₹84999",
//     "newPrice": "₹79999"
//   },
//   {
//     "image": "assets/homes/laptop1.jpg",
//     "name": "MacBook Air",
//     "oldPrice": "₹104999",
//     "newPrice": "₹99999"
//   },
// ];

// // Recommended Items Section
// class RecommendedItems extends StatelessWidget {
//   const RecommendedItems({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       crossAxisAlignment: CrossAxisAlignment.start,
//       children: [
//         // Section Title & "See All" Button
//         Padding(
//           padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 10.0),
//           child: Row(
//             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//             children: [
//               const Text(
//                 "Recommended for You",
//                 style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
//               ),
//               TextButton(
//                 onPressed: () {
//                   Navigator.push(
//                     context,
//                     MaterialPageRoute(
//                         builder: (context) => AllProductsScreen()),
//                   );
//                 },
//                 child: const Text("See All"),
//               ),
//             ],
//           ),
//         ),

//         //  Horizontal ListView
//         SizedBox(
//           height: 190,
//           child: ListView.builder(
//             scrollDirection: Axis.horizontal,
//             itemCount: recommendedProducts.length,
//             itemBuilder: (context, index) {
//               final product = recommendedProducts[index];
//               return Padding(
//                 padding: const EdgeInsets.symmetric(horizontal: 8.0),
//                 child: ProductCard(
//                   image: product["image"]!,
//                   name: product["name"]!,
//                   oldPrice: product["oldPrice"]!,
//                   newPrice: product["newPrice"]!,
//                 ),
//               );
//             },
//           ),
//         ),
//       ],
//     );
//   }
// }

// //  Product Card Widget with Old Price, New Price & Discount
// class ProductCard extends StatelessWidget {
//   final String image;
//   final String name;
//   final String oldPrice;
//   final String newPrice;

//   const ProductCard({
//     super.key,
//     required this.image,
//     required this.name,
//     required this.oldPrice,
//     required this.newPrice,
//   });

//   // Calculate Discount Percentage
//   String _calculateDiscount(String oldPrice, String newPrice) {
//     int oldP = int.parse(oldPrice.replaceAll(RegExp(r'[^0-9]'), ''));
//     int newP = int.parse(newPrice.replaceAll(RegExp(r'[^0-9]'), ''));
//     double discount = ((oldP - newP) / oldP) * 100;
//     return "${discount.toStringAsFixed(0)}% OFF";
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       width: 140,
//       decoration: BoxDecoration(
//         color: Colors.white,
//         borderRadius: BorderRadius.circular(10),
//         boxShadow: [
//           BoxShadow(
//               color: Colors.grey.shade300, blurRadius: 4, spreadRadius: 2),
//         ],
//       ),
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           // Product Image
//           ClipRRect(
//             borderRadius: const BorderRadius.only(
//                 topLeft: Radius.circular(10), topRight: Radius.circular(10)),
//             child:
//                 Image.asset(image, height: 100, width: 140, fit: BoxFit.cover),
//           ),

//           // Product Name
//           Padding(
//             padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 4.0),
//             child: Text(
//               name,
//               style: const TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
//               overflow: TextOverflow.ellipsis,
//               maxLines: 1,
//             ),
//           ),

//           // Price & Discount Section
//           Padding(
//             padding: const EdgeInsets.symmetric(horizontal: 8.0),
//             child: Row(
//               children: [
//                 // Old Price (Strikethrough)
//                 Text(
//                   oldPrice,
//                   style: const TextStyle(
//                     fontSize: 12,
//                     color: Colors.grey,
//                     decoration: TextDecoration.lineThrough,
//                   ),
//                 ),
//                 const SizedBox(width: 4), // Space between prices

//                 // New Price (Bold & Green)
//                 Text(
//                   newPrice,
//                   style: const TextStyle(
//                     fontSize: 14,
//                     color: Colors.green,
//                     fontWeight: FontWeight.bold,
//                   ),
//                 ),
//               ],
//             ),
//           ),

//           // Discount Label
//           Padding(
//             padding: const EdgeInsets.only(left: 8.0, top: 2),
//             child: Container(
//               padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 2),
//               decoration: BoxDecoration(
//                 color: Colors.red,
//                 borderRadius: BorderRadius.circular(6),
//               ),
//               child: Text(
//                 _calculateDiscount(oldPrice, newPrice),
//                 style: const TextStyle(fontSize: 10, color: Colors.white),
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
import 'package:flutter/material.dart';

import 'package:my_bucket/product_list/list_all_recommend.dart';
import 'package:my_bucket/product_list/list_recommendeditem.dart';

//  Sample product list (Move this to a separate data file if needed)
final List<Map<String, String>> recommendedProducts = [
  {
    "image": "assets/homes/shirt1.jpg",
    "name": "Cotton Shirt",
    "oldPrice": "₹1299",
    "newPrice": "₹999"
  },
  {
    "image": "assets/homes/shoes5.jpg",
    "name": "Nike Sneakers",
    "oldPrice": "₹3999",
    "newPrice": "₹2999"
  },
  {
    "image": "assets/homes/watch1.jpg",
    "name": "Apple Watch",
    "oldPrice": "₹22999",
    "newPrice": "₹19999"
  },
  {
    "image": "assets/homes/phone1.jpg",
    "name": "iPhone 15",
    "oldPrice": "₹84999",
    "newPrice": "₹79999"
  },
  {
    "image": "assets/homes/laptop1.jpg",
    "name": "MacBook Air",
    "oldPrice": "₹104999",
    "newPrice": "₹99999"
  },
];

// Recommended Items Section
class RecommendedItems extends StatelessWidget {
  const RecommendedItems({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Section Title & "See All" Button
        Padding(
          padding:
              const EdgeInsets.symmetric(horizontal: 8.0, vertical: 10.0),
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
                        builder: (context) => const ListAllRecommend()),
                  );
                },
                child: const Text("See All"),
              ),
            ],
          ),
        ),
    
        //  Horizontal ListView
        SizedBox(
          height: 190,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: recommendedProducts.length,
            itemBuilder: (context, index) {
              final product = recommendedProducts[index];
              return Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: ProductCard(
                  image: product["image"]!,
                  name: product["name"]!,
                  oldPrice: product["oldPrice"]!,
                  newPrice: product["newPrice"]!,
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const ListRecommendeditem(),
                      ),
                    );
                  },
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}

//  Product Card Widget with Old Price, New Price & Discount
class ProductCard extends StatelessWidget {
  final String image;
  final String name;
  final String oldPrice;
  final String newPrice;
  final VoidCallback onTap; // Callback for tap gesture

  const ProductCard({
    super.key,
    required this.image,
    required this.name,
    required this.oldPrice,
    required this.newPrice,
    required this.onTap,
  });

  // Calculate Discount Percentage
  String _calculateDiscount(String oldPrice, String newPrice) {
    int oldP = int.parse(oldPrice.replaceAll(RegExp(r'[^0-9]'), ''));
    int newP = int.parse(newPrice.replaceAll(RegExp(r'[^0-9]'), ''));
    double discount = ((oldP - newP) / oldP) * 100;
    return "${discount.toStringAsFixed(0)}% OFF";
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap, // Trigger the provided callback on tap
      child: Container(
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
              child: Image.asset(image,
                  height: 100, width: 140, fit: BoxFit.cover),
            ),

            // Product Name
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 8.0, vertical: 4.0),
              child: Text(
                name,
                style:
                    const TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                overflow: TextOverflow.ellipsis,
                maxLines: 1,
              ),
            ),

            // Price & Discount Section
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Row(
                children: [
                  // Old Price (Strikethrough)
                  Text(
                    oldPrice,
                    style: const TextStyle(
                      fontSize: 12,
                      color: Colors.grey,
                      decoration: TextDecoration.lineThrough,
                    ),
                  ),
                  const SizedBox(width: 4), // Space between prices

                  // New Price (Bold & Green)
                  Text(
                    newPrice,
                    style: const TextStyle(
                      fontSize: 14,
                      color: Colors.green,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),

            // Discount Label
            Padding(
              padding: const EdgeInsets.only(left: 8.0, top: 2),
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 2),
                decoration: BoxDecoration(
                  color: Colors.red,
                  borderRadius: BorderRadius.circular(6),
                ),
                child: Text(
                  _calculateDiscount(oldPrice, newPrice),
                  style: const TextStyle(fontSize: 10, color: Colors.white),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
