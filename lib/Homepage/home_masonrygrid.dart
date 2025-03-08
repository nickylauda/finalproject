// import 'package:flutter/material.dart';
// import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

// class MasonryGridViewWidget extends StatelessWidget {
//   MasonryGridViewWidget({super.key});

//   //  Local Image List (Ensure images are in the assets folder)
//   final List<Map<String, dynamic>> products = [
//     {
//       'image': 'assets/homes/masonry1.jpg',
//       'name': 'glitchez',
//       'description': 'Printed Hooded Pullover',
//       'rating': 4.4,
//       'reviews': 19,
//       'price': 794,
//       'discount': 'Rs. 1405 OFF',
//     },
//     {
//       'image': 'assets/homes/masonry2.jpg',
//       'name': 'Rigo',
//       'description': 'Round Neck Fleece',
//       'rating': 4.4,
//       'reviews': 25,
//       'price': 554,
//       'discount': '63% OFF',
//     },
//     {
//       'image': 'assets/homes/masonry3.jpg',
//       'name': 'Invincible',
//       'description': 'Men Slim Fit T-Shirt',
//       'rating': 4.5,
//       'reviews': 30,
//       'price': 659,
//       'discount': '',
//     },
//     {
//       'image': 'assets/homes/masonry3.jpg',
//       'name': 'Invincible',
//       'description': 'Men Slim Fit T-Shirt',
//       'rating': 4.5,
//       'reviews': 30,
//       'price': 659,
//       'discount': '',
//     },
//     {
//       'image': 'assets/homes/masonr11.jpg',
//       'name': 'glitchez',
//       'description': 'Printed Hooded Pullover',
//       'rating': 4.4,
//       'reviews': 19,
//       'price': 794,
//       'discount': 'Rs. 1405 OFF',
//     },
//     {
//       'image': 'assets/homes/adds1.jpg',
//       'name': 'Rigo',
//       'description': 'Round Neck Fleece',
//       'rating': 4.4,
//       'reviews': 25,
//       'price': 554,
//       'discount': '63% OFF',
//     },
//   ];

//   @override
//   Widget build(BuildContext context) {
//     return MasonryGridView.builder(
//       shrinkWrap: true,
//       physics: const NeverScrollableScrollPhysics(),
//       gridDelegate: const SliverSimpleGridDelegateWithFixedCrossAxisCount(
//         crossAxisCount: 2,
//       ),
//       itemCount: products.length,
//       itemBuilder: (context, index) {
//         final product = products[index];

//         return Padding(
//           padding: const EdgeInsets.all(8.0),
//           child: ClipRRect(
//             borderRadius: BorderRadius.circular(16),
//             child: Container(
//               decoration: BoxDecoration(
//                 color: Colors.white,
//                 borderRadius: BorderRadius.circular(12),
//                 boxShadow: const [
//                   BoxShadow(
//                     color: Colors.black12,
//                     blurRadius: 4,
//                     spreadRadius: 2,
//                   ),
//                 ],
//               ),
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   //  Product Image
//                   Stack(
//                     children: [
//                       Image.asset(
//                         product['image'],
//                         fit: BoxFit.cover,
//                         width: double.infinity,
//                         height: 180,
//                       ),
//                       const Positioned(
//                         top: 8,
//                         right: 8,
//                         child: Icon(
//                           Icons.favorite_border,
//                           color: Colors.black54,
//                         ),
//                       ),
//                     ],
//                   ),

//                   Padding(
//                     padding: const EdgeInsets.all(8.0),
//                     child: Column(
//                       crossAxisAlignment: CrossAxisAlignment.start,
//                       children: [
//                         //  Rating
//                         Row(
//                           children: [
//                             Icon(Icons.star, color: Colors.green, size: 16),
//                             Text(
//                               '${product['rating']} (${product['reviews']})',
//                               style: TextStyle(fontSize: 12),
//                             ),
//                           ],
//                         ),

//                         //  Product Name
//                         Text(
//                           product['name'],
//                           style: TextStyle(
//                             fontWeight: FontWeight.bold,
//                             fontSize: 14,
//                           ),
//                         ),

//                         // Product Description
//                         Text(
//                           product['description'],
//                           style: TextStyle(
//                             fontSize: 12,
//                             color: Colors.black54,
//                           ),
//                         ),

//                         const SizedBox(height: 4),

//                         //  Price & Discount
//                         Row(
//                           children: [
//                             Text(
//                               '₹${product['price']}',
//                               style: TextStyle(
//                                 fontSize: 14,
//                                 fontWeight: FontWeight.bold,
//                               ),
//                             ),
//                             if (product['discount'].isNotEmpty)
//                               Padding(
//                                 padding: const EdgeInsets.only(left: 5),
//                                 child: Text(
//                                   product['discount'],
//                                   style: TextStyle(
//                                     fontSize: 12,
//                                     color: Colors.red,
//                                     fontWeight: FontWeight.bold,
//                                   ),
//                                 ),
//                               ),
//                           ],
//                         ),
//                       ],
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//           ),
//         );
//       },
//     );
//   }
// }

// import 'package:flutter/material.dart';
// import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

// class MasonryGridViewWidget extends StatelessWidget {
//   MasonryGridViewWidget({super.key});

//   final List<Map<String, dynamic>> products = [
//     {
//       'image': 'assets/homes/masonry1.jpg',
//       'name': 'Glitchez',
//       'description': 'Printed Hooded Pullover',
//       'rating': 4.4,
//       'reviews': 19,
//       'price': 1599,
//       'discount': 'Rs. 1405 OFF',
//     },
//     {
//       'image': 'assets/homes/masonry2.jpg',
//       'name': 'Rigo',
//       'description': 'Round Neck Fleece',
//       'rating': 4.4,
//       'reviews': 25,
//       'price': 999,
//       'discount': '63% OFF',
//     },
//     {
//       'image': 'assets/homes/masonry3.jpg',
//       'name': 'Invincible',
//       'description': 'Men Slim Fit T-Shirt',
//       'rating': 4.5,
//       'reviews': 30,
//       'price': 659,
//       'discount': '',
//     },
//     {
//       'image': 'assets/homes/masonry4.jpg',
//       'name': 'Nike',
//       'description': 'Men Running Shoes',
//       'rating': 4.7,
//       'reviews': 42,
//       'price': 1200,
//       'discount': '50% OFF',
//     },
//     {
//       'image': 'assets/homes/masonry10.jpg',
//       'name': 'Glitchez',
//       'description': 'Printed Hooded Pullover',
//       'rating': 4.4,
//       'reviews': 19,
//       'price': 1800,
//       'discount': 'Rs. 1405 OFF',
//     },
//     {
//       'image': 'assets/homes/masonry6.jpg',
//       'name': 'Rigo',
//       'description': 'Round Neck Fleece',
//       'rating': 4.4,
//       'reviews': 25,
//       'price': 3200,
//       'discount': '63% OFF',
//     },
//     {
//       'image': 'assets/homes/masonry7.jpg',
//       'name': 'Invincible',
//       'description': 'Men Slim Fit T-Shirt',
//       'rating': 4.5,
//       'reviews': 30,
//       'price': 1400,
//       'discount': '',
//     },
//     {
//       'image': 'assets/homes/masonry8.jpg',
//       'name': 'Nike',
//       'description': 'Men Running Shoes',
//       'rating': 4.7,
//       'reviews': 42,
//       'price': 1200,
//       'discount': '50% OFF',
//     },
//     {
//       'image': 'assets/homes/masonry9.jpg',
//       'name': 'Nike',
//       'description': 'Men Running Shoes',
//       'rating': 4.7,
//       'reviews': 22,
//       'price': 1200,
//       'discount': '',
//     },
//     {
//       'image': 'assets/homes/masonry11.jpg',
//       'name': 'Nike',
//       'description': 'Men Running Shoes',
//       'rating': 4.7,
//       'reviews': 42,
//       'price': 1700,
//       'discount': 'Rs. 499 OFF',
//     },
//     {
//       'image': 'assets/homes/masonry12.jpg',
//       'name': 'Nike',
//       'description': 'Men Running Shoes',
//       'rating': 4.7,
//       'reviews': 42,
//       'price': 2300,
//       'discount': '50% OFF',
//     },
//   ];

//   @override
//   Widget build(BuildContext context) {
//     return MasonryGridView.builder(
//       shrinkWrap: true,
//       physics: const NeverScrollableScrollPhysics(),
//       gridDelegate: const SliverSimpleGridDelegateWithFixedCrossAxisCount(
//         crossAxisCount: 2,
//       ),
//       itemCount: products.length,
//       itemBuilder: (context, index) {
//         final product = products[index];

//         return Padding(
//           padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 6),
//           child: ClipRRect(
//             borderRadius: BorderRadius.circular(16),
//             child: Container(
//               decoration: BoxDecoration(
//                 color: Colors.white,
//                 borderRadius: BorderRadius.circular(12),
//                 boxShadow: [
//                   BoxShadow(
//                     color: Colors.black.withOpacity(0.1),
//                     blurRadius: 4,
//                     spreadRadius: 2,
//                   ),
//                 ],
//               ),
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   // 🔹 Product Image with Favorite Icon
//                   Stack(
//                     children: [
//                       ClipRRect(
//                         borderRadius: const BorderRadius.only(
//                           topLeft: Radius.circular(12),
//                           topRight: Radius.circular(12),
//                         ),
//                         child: Image.asset(
//                           product['image'],
//                           fit: BoxFit.cover,
//                           width: double.infinity,
//                           height: (index % 2 == 0) ? 180 : 220,
//                         ),
//                       ),
//                       Positioned(
//                         top: 8,
//                         right: 8,
//                         child: Container(
//                           width: 30, // Reduced size
//                           height: 30,
//                           decoration: const BoxDecoration(
//                             color: Color.fromRGBO(0, 0, 0, 0.5),
//                             shape: BoxShape.circle,
//                           ),
//                           child: Center(
//                             child: IconButton(
//                                 icon: const Icon(Icons.favorite_border,
//                                     color: Colors.white, size: 20),
//                                 onPressed: () {
//                                   // TODO: Add to wishlist action
//                                 },
//                                 padding: EdgeInsets.zero),
//                           ),
//                         ),
//                       ),
//                     ],
//                   ),

//                   Padding(
//                     padding: const EdgeInsets.all(8.0),
//                     child: Column(
//                       crossAxisAlignment: CrossAxisAlignment.start,
//                       children: [
//                         // ⭐ Rating & Reviews
//                         Row(
//                           children: [
//                             const Icon(Icons.star,
//                                 color: Colors.green, size: 16),
//                             const SizedBox(width: 4),
//                             Text(
//                               '${product['rating']} (${product['reviews']})',
//                               style: const TextStyle(fontSize: 12),
//                             ),
//                           ],
//                         ),

//                         const SizedBox(height: 4),

//                         // 🏷 Product Name
//                         Text(
//                           product['name'],
//                           style: const TextStyle(
//                             fontWeight: FontWeight.bold,
//                             fontSize: 14,
//                           ),
//                         ),

//                         // 📄 Product Description
//                         Text(
//                           product['description'],
//                           style: const TextStyle(
//                             fontSize: 12,
//                             color: Colors.black54,
//                           ),
//                         ),

//                         const SizedBox(height: 6),

//                         // 💰 Price & Discount
//                         Row(
//                           children: [
//                             Text(
//                               '₹${product['price']}',
//                               style: const TextStyle(
//                                 fontSize: 14,
//                                 fontWeight: FontWeight.bold,
//                               ),
//                             ),
//                             if (product['discount'].isNotEmpty) ...[
//                               const SizedBox(width: 5),
//                               Text(
//                                 product['discount'],
//                                 style: const TextStyle(
//                                   fontSize: 12,
//                                   color: Colors.red,
//                                   fontWeight: FontWeight.bold,
//                                 ),
//                               ),
//                             ],
//                           ],
//                         ),
//                       ],
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//           ),
//         );
//       },
//     );
//   }
// }
// import 'package:flutter/material.dart';
// import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

// import 'package:my_bucket/product_list/list_masonrygrid.dart';

// class MasonryGridViewWidget extends StatelessWidget {
//   MasonryGridViewWidget({super.key});

//   final List<Map<String, dynamic>> products = [
//     {
//       'image': 'assets/homes/masonry1.jpg',
//       'name': 'Glitchez',
//       'description': 'Printed Hooded Pullover',
//       'rating': 4.4,
//       'reviews': 19,
//       'price': 1599,
//       'discount': 'Rs. 1405 OFF',
//     },
//     {
//       'image': 'assets/homes/masonry2.jpg',
//       'name': 'Rigo',
//       'description': 'Round Neck Fleece',
//       'rating': 4.4,
//       'reviews': 25,
//       'price': 999,
//       'discount': '63% OFF',
//     },
//     {
//       'image': 'assets/homes/masonry3.jpg',
//       'name': 'Invincible',
//       'description': 'Men Slim Fit T-Shirt',
//       'rating': 4.5,
//       'reviews': 30,
//       'price': 659,
//       'discount': '',
//     },
//     {
//       'image': 'assets/homes/masonry4.jpg',
//       'name': 'Nike',
//       'description': 'Men Running Shoes',
//       'rating': 4.7,
//       'reviews': 42,
//       'price': 1200,
//       'discount': '50% OFF',
//     },
//     {
//       'image': 'assets/homes/masonry10.jpg',
//       'name': 'Glitchez',
//       'description': 'Printed Hooded Pullover',
//       'rating': 4.4,
//       'reviews': 19,
//       'price': 1800,
//       'discount': 'Rs. 1405 OFF',
//     },
//     {
//       'image': 'assets/homes/masonry6.jpg',
//       'name': 'Rigo',
//       'description': 'Round Neck Fleece',
//       'rating': 4.4,
//       'reviews': 25,
//       'price': 3200,
//       'discount': '63% OFF',
//     },
//     {
//       'image': 'assets/homes/masonry7.jpg',
//       'name': 'Invincible',
//       'description': 'Men Slim Fit T-Shirt',
//       'rating': 4.5,
//       'reviews': 30,
//       'price': 1400,
//       'discount': '',
//     },
//     {
//       'image': 'assets/homes/masonry8.jpg',
//       'name': 'Nike',
//       'description': 'Men Running Shoes',
//       'rating': 4.7,
//       'reviews': 42,
//       'price': 1200,
//       'discount': '50% OFF',
//     },
//     {
//       'image': 'assets/homes/masonry9.jpg',
//       'name': 'Nike',
//       'description': 'Men Running Shoes',
//       'rating': 4.7,
//       'reviews': 22,
//       'price': 1200,
//       'discount': '',
//     },
//     {
//       'image': 'assets/homes/masonry11.jpg',
//       'name': 'Nike',
//       'description': 'Men Running Shoes',
//       'rating': 4.7,
//       'reviews': 42,
//       'price': 1700,
//       'discount': 'Rs. 499 OFF',
//     },
//     {
//       'image': 'assets/homes/masonry12.jpg',
//       'name': 'Nike',
//       'description': 'Men Running Shoes',
//       'rating': 4.7,
//       'reviews': 42,
//       'price': 2300,
//       'discount': '50% OFF',
//     },
//   ];

//   @override
//   Widget build(BuildContext context) {
//     return MasonryGridView.builder(
//       shrinkWrap: true,
//       physics: const NeverScrollableScrollPhysics(),
//       gridDelegate: const SliverSimpleGridDelegateWithFixedCrossAxisCount(
//         crossAxisCount: 2,
//       ),
//       itemCount: products.length,
//       itemBuilder: (context, index) {
//         final product = products[index];

//         return GestureDetector(
//           onTap: () {
//             Navigator.push(
//               context,
//               MaterialPageRoute(
//                 builder: (context) => const ListMasonrygrid(),
//               ),
//             );
//           },
//           child: Padding(
//             padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 6),
//             child: ClipRRect(
//               borderRadius: BorderRadius.circular(16),
//               child: Container(
//                 decoration: BoxDecoration(
//                   color: Colors.white,
//                   borderRadius: BorderRadius.circular(12),
//                   boxShadow: [
//                     BoxShadow(
//                       color: Colors.black.withOpacity(0.1),
//                       blurRadius: 4,
//                       spreadRadius: 2,
//                     ),
//                   ],
//                 ),
//                 child: Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     // 🔹 Product Image with Favorite Icon
//                     Stack(
//                       children: [
//                         ClipRRect(
//                           borderRadius: const BorderRadius.only(
//                             topLeft: Radius.circular(12),
//                             topRight: Radius.circular(12),
//                           ),
//                           child: Image.asset(
//                             product['image'],
//                             fit: BoxFit.cover,
//                             width: double.infinity,
//                             height: (index % 2 == 0) ? 180 : 220,
//                           ),
//                         ),
//                         Positioned(
//                           top: 8,
//                           right: 8,
//                           child: Container(
//                             width: 30, // Reduced size
//                             height: 30,
//                             decoration: const BoxDecoration(
//                               color: Color.fromRGBO(0, 0, 0, 0.5),
//                               shape: BoxShape.circle,
//                             ),
//                             child: Center(
//                               child: IconButton(
//                                   icon: const Icon(Icons.favorite_border,
//                                       color: Colors.white, size: 20),
//                                   onPressed: () {
//                                     // TODO: Add to wishlist action
//                                   },
//                                   padding: EdgeInsets.zero),
//                             ),
//                           ),
//                         ),
//                       ],
//                     ),

//                     Padding(
//                       padding: const EdgeInsets.all(8.0),
//                       child: Column(
//                         crossAxisAlignment: CrossAxisAlignment.start,
//                         children: [
//                           // ⭐ Rating & Reviews
//                           Row(
//                             children: [
//                               const Icon(Icons.star,
//                                   color: Colors.green, size: 16),
//                               const SizedBox(width: 4),
//                               Text(
//                                 '${product['rating']} (${product['reviews']})',
//                                 style: const TextStyle(fontSize: 12),
//                               ),
//                             ],
//                           ),

//                           const SizedBox(height: 4),

//                           // 🏷 Product Name
//                           Text(
//                             product['name'],
//                             style: const TextStyle(
//                               fontWeight: FontWeight.bold,
//                               fontSize: 14,
//                             ),
//                           ),

//                           // 📄 Product Description
//                           Text(
//                             product['description'],
//                             style: const TextStyle(
//                               fontSize: 12,
//                               color: Colors.black54,
//                             ),
//                           ),

//                           const SizedBox(height: 6),

//                           // 💰 Price & Discount
//                           Row(
//                             children: [
//                               Text(
//                                 '₹${product['price']}',
//                                 style: const TextStyle(
//                                   fontSize: 14,
//                                   fontWeight: FontWeight.bold,
//                                 ),
//                               ),
//                               if (product['discount'].isNotEmpty) ...[
//                                 const SizedBox(width: 5),
//                                 Text(
//                                   product['discount'],
//                                   style: const TextStyle(
//                                     fontSize: 12,
//                                     color: Colors.red,
//                                     fontWeight: FontWeight.bold,
//                                   ),
//                                 ),
//                               ],
//                             ],
//                           ),
//                         ],
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//             ),
//           ),
//         );
//       },
//     );
//   }
// }
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:my_bucket/product_list/list_masonrygrid.dart';

class MasonryGridViewWidget extends StatefulWidget {
  const MasonryGridViewWidget({super.key});

  @override
  _MasonryGridViewWidgetState createState() => _MasonryGridViewWidgetState();
}

class _MasonryGridViewWidgetState extends State<MasonryGridViewWidget> {
  final List<Map<String, dynamic>> products = [
    {
      'image': 'assets/homes/masonry1.jpg',
      'name': 'Glitchez',
      'description': 'Printed Hooded Pullover',
      'rating': 4.4,
      'reviews': 19,
      'price': 1599,
      'discount': 'Rs. 1405 OFF',
      'isFavorite': false,
    },
    {
      'image': 'assets/homes/masonry2.jpg',
      'name': 'Rigo',
      'description': 'Round Neck Fleece',
      'rating': 4.4,
      'reviews': 25,
      'price': 999,
      'discount': '63% OFF',
      'isFavorite': false,
    },
    {
      'image': 'assets/homes/masonry3.jpg',
      'name': 'Invincible',
      'description': 'Men Slim Fit T-Shirt',
      'rating': 4.5,
      'reviews': 30,
      'price': 659,
      'discount': '',
      'isFavorite': false,
    },
    {
      'image': 'assets/homes/masonry4.jpg',
      'name': 'Nike',
      'description': 'Men Running Shoes',
      'rating': 4.7,
      'reviews': 42,
      'price': 1200,
      'discount': '50% OFF',
      'isFavorite': false,
    },
    {
      'image': 'assets/homes/masonry10.jpg',
      'name': 'Glitchez',
      'description': 'Printed Hooded Pullover',
      'rating': 4.4,
      'reviews': 19,
      'price': 1800,
      'discount': 'Rs. 1405 OFF',
      'isFavorite': false,
    },
    {
      'image': 'assets/homes/masonry6.jpg',
      'name': 'Rigo',
      'description': 'Round Neck Fleece',
      'rating': 4.4,
      'reviews': 25,
      'price': 3200,
      'discount': '63% OFF',
      'isFavorite': false,
    },
    {
      'image': 'assets/homes/masonry7.jpg',
      'name': 'Invincible',
      'description': 'Men Slim Fit T-Shirt',
      'rating': 4.5,
      'reviews': 30,
      'price': 1400,
      'discount': '',
      'isFavorite': false,
    },
    {
      'image': 'assets/homes/masonry8.jpg',
      'name': 'Nike',
      'description': 'Men Running Shoes',
      'rating': 4.7,
      'reviews': 42,
      'price': 1200,
      'discount': '50% OFF',
      'isFavorite': false,
    },
    {
      'image': 'assets/homes/masonry9.jpg',
      'name': 'Nike',
      'description': 'Men Running Shoes',
      'rating': 4.7,
      'reviews': 22,
      'price': 1200,
      'discount': '',
      'isFavorite': false,
    },
    {
      'image': 'assets/homes/masonry11.jpg',
      'name': 'Nike',
      'description': 'Men Running Shoes',
      'rating': 4.7,
      'reviews': 42,
      'price': 1700,
      'discount': 'Rs. 499 OFF',
      'isFavorite': false,
    },
    {
      'image': 'assets/homes/masonry12.jpg',
      'name': 'Nike',
      'description': 'Men Running Shoes',
      'rating': 4.7,
      'reviews': 42,
      'price': 2300,
      'discount': '50% OFF',
      'isFavorite': false,
    },
  ];

  void _toggleFavorite(int index) {
    setState(() {
      products[index]['isFavorite'] = !products[index]['isFavorite'];
    });

    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(products[index]['isFavorite']
            ? 'Product is added to my wishlist'
            : 'Product is removed from my wishlist'),
        duration: const Duration(seconds: 2),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MasonryGridView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      gridDelegate: const SliverSimpleGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
      ),
      itemCount: products.length,
      itemBuilder: (context, index) {
        final product = products[index];

        return GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const ListMasonrygrid(),
              ),
            );
          },
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 6),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(16),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(12),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.1),
                      blurRadius: 4,
                      spreadRadius: 2,
                    ),
                  ],
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // 🔹 Product Image with Favorite Icon
                    Stack(
                      children: [
                        ClipRRect(
                          borderRadius: const BorderRadius.only(
                            topLeft: Radius.circular(12),
                            topRight: Radius.circular(12),
                          ),
                          child: Image.asset(
                            product['image'],
                            fit: BoxFit.cover,
                            width: double.infinity,
                            height: (index % 2 == 0) ? 180 : 220,
                          ),
                        ),
                        Positioned(
                          top: 8,
                          right: 8,
                          child: GestureDetector(
                            onTap: () => _toggleFavorite(index),
                            child: Container(
                              width: 30, // Reduced size
                              height: 30,
                              decoration: const BoxDecoration(
                                color: Color.fromRGBO(0, 0, 0, 0.5),
                                shape: BoxShape.circle,
                              ),
                              child: Center(
                                child: Icon(
                                  product['isFavorite']
                                      ? Icons.favorite
                                      : Icons.favorite_border,
                                  color: product['isFavorite']
                                      ? Colors.red
                                      : Colors.white,
                                  size: 20,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),

                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          // ⭐ Rating & Reviews
                          Row(
                            children: [
                              const Icon(Icons.star,
                                  color: Colors.green, size: 16),
                              const SizedBox(width: 4),
                              Text(
                                '${product['rating']} (${product['reviews']})',
                                style: const TextStyle(fontSize: 12),
                              ),
                            ],
                          ),

                          const SizedBox(height: 4),

                          // 🏷 Product Name
                          Text(
                            product['name'],
                            style: const TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 14,
                            ),
                          ),

                          // 📄 Product Description
                          Text(
                            product['description'],
                            style: const TextStyle(
                              fontSize: 12,
                              color: Colors.black54,
                            ),
                          ),

                          const SizedBox(height: 6),

                          // 💰 Price & Discount
                          Row(
                            children: [
                              Text(
                                '₹${product['price']}',
                                style: const TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              if (product['discount'].isNotEmpty) ...[
                                const SizedBox(width: 5),
                                Text(
                                  product['discount'],
                                  style: const TextStyle(
                                    fontSize: 12,
                                    color: Colors.red,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
