// import 'package:flutter/material.dart';

// class TrendingProducts extends StatelessWidget {
//   final List<Map<String, String>> trendingProducts = [
//     {
//       "image": "assets/homes/shoes7.jpg",
//       "name": "Nike Sneakers",
//       "price": "₹2999"
//     },
//     {
//       "image": "assets/homes/adidas.jpg",
//       "name": "Adidas Running",
//       "price": "₹3499"
//     },
//     {
//       "image": "assets/homes/applewatch1.jpg",
//       "name": "Apple Watch",
//       "price": "₹19999"
//     },
//     {
//       "image": "assets/homes/phone1.jpg",
//       "name": "iPhone 15",
//       "price": "₹79999"
//     },
//     {
//       "image": "assets/homes/macbook.jpg",
//       "name": "MacBook Air",
//       "price": "₹99999"
//     },
//     {
//       "image": "assets/homes/headphone.jpg",
//       "name": "Sony Headphones",
//       "price": "₹4999"
//     },
//     {
//       "image": "assets/homes/polo1.jpg",
//       "name": "Polo T-Shirt",
//       "price": "₹1199"
//     },
//     {
//       "image": "assets/homes/touristbag.jpg",
//       "name": "Travel Backpack",
//       "price": "₹2599"
//     },
//     {
//       "image": "assets/homes/bag.jpg",
//       "name": "Luxury Handbag",
//       "price": "₹3599"
//     },
//   ];

//   TrendingProducts({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       crossAxisAlignment: CrossAxisAlignment.start,
//       children: [
//         //  Section Title (Reduced Spacing)
//         const Padding(
//           padding: EdgeInsets.only(left: 8.0), // Reduced bottom padding
//           child: Text(
//             "Trending Products",
//             style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
//           ),
//         ),

//         //  Grid View of Trending Products
//         Padding(
//           padding: const EdgeInsets.symmetric(
//             horizontal: 8.0,
//           ),
//           child: GridView.builder(
//             shrinkWrap: true, //  Prevents GridView from taking full screen
//             physics:
//                 const NeverScrollableScrollPhysics(), // Prevents nested scrolling issues
//             gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
//               crossAxisCount: 3, //  3 items per row
//               crossAxisSpacing: 6, //  Reduced spacing
//               mainAxisSpacing: 6, // Reduced spacing
//               childAspectRatio: 0.75, //  Adjusted for better spacing
//             ),
//             itemCount: trendingProducts.length,
//             itemBuilder: (context, index) {
//               return ProductCard(
//                 image: trendingProducts[index]["image"]!,
//                 name: trendingProducts[index]["name"]!,
//                 price: trendingProducts[index]["price"]!,
//               );
//             },
//           ),
//         ),
//       ],
//     );
//   }
// }

// //  Product Card Widget (Fixed Layout)
// class ProductCard extends StatelessWidget {
//   final String image;
//   final String name;
//   final String price;

//   const ProductCard({
//     super.key,
//     required this.image,
//     required this.name,
//     required this.price,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return Card(
//       color: Colors.grey[300],
//       shape: RoundedRectangleBorder(
//           borderRadius: BorderRadius.circular(10)), //  Rounded corners
//       elevation: 2, //  Softer shadow
//       child: Column(
//         mainAxisAlignment: MainAxisAlignment.start,
//         children: [
//           //  Product Image
//           ClipRRect(
//             borderRadius: BorderRadius.circular(8),
//             child: Image.asset(
//               image,
//               height: 80, //  Adjusted for better fit
//               width: double.infinity,
//               fit: BoxFit.cover,
//             ),
//           ),

//           //  Product Name
//           Column(
//             //mainAxisAlignment: MainAxisAlignment.start,
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               Padding(
//                 padding:
//                     const EdgeInsets.symmetric(horizontal: 4.0, vertical: 5.0),
//                 child: Text(
//                   name,
//                   style: const TextStyle(
//                       color: Colors.black,
//                       fontSize: 12,
//                       fontWeight: FontWeight.bold),
//                   textAlign: TextAlign.center,
//                   overflow: TextOverflow.ellipsis,
//                   maxLines: 1,
//                 ),
//               ),
//               Padding(
//                 padding: const EdgeInsets.symmetric(horizontal: 4),
//                 child: Text(
//                   price,
//                   style: const TextStyle(
//                       fontSize: 12,
//                       color: Colors.black,
//                       fontWeight: FontWeight.bold),
//                 ),
//               ),
//             ],
//           ),

//           //  Product Price
//         ],
//       ),
//     );
//   }
// }
// import 'package:flutter/material.dart';

// // ✅ Trending Products Data
// class TrendingProducts extends StatelessWidget {
//   final List<Map<String, dynamic>> trendingProducts = [
//     {
//       "image": "assets/homes/shoes7.jpg",
//       "name": "Nike Sneakers",
//       "oldPrice": "₹3499",
//       "newPrice": "₹2999",
//       "rating": 4.5,
//     },
//     {
//       "image": "assets/homes/adidas.jpg",
//       "name": "Adidas Running",
//       "oldPrice": "₹3999",
//       "newPrice": "₹3499",
//       "rating": 4.7,
//     },
//     {
//       "image": "assets/homes/applewatch1.jpg",
//       "name": "Apple Watch",
//       "oldPrice": "₹2299",
//       "newPrice": "₹1999",
//       "rating": 4.8,
//     },
//     {
//       "image": "assets/homes/phone1.jpg",
//       "name": "iPhone 15",
//       "oldPrice": "₹8499",
//       "newPrice": "₹7999",
//       "rating": 4.9,
//     },
//     {
//       "image": "assets/homes/macbook.jpg",
//       "name": "MacBook Air",
//       "oldPrice": "₹85000",
//       "newPrice": "₹69000",
//       "rating": 4.6,
//     },
//     {
//       "image": "assets/homes/headphone.jpg",
//       "name": "Sony Headphones",
//       "oldPrice": "₹5999",
//       "newPrice": "₹4999",
//       "rating": 4.3,
//     },
//     {
//       "image": "assets/homes/polo1.jpg",
//       "name": "Polo T-Shirt",
//       "oldPrice": "₹1499",
//       "newPrice": "₹1199",
//       "rating": 4.0,
//     },
//     {
//       "image": "assets/homes/touristbag.jpg",
//       "name": "Travel Backpack",
//       "oldPrice": "₹2999",
//       "newPrice": "₹2599",
//       "rating": 4.2,
//     },
//     {
//       "image": "assets/homes/bag.jpg",
//       "name": "Luxury Handbag",
//       "oldPrice": "₹3999",
//       "newPrice": "₹3599",
//       "rating": 4.1,
//     },
//   ];

//   TrendingProducts({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       crossAxisAlignment: CrossAxisAlignment.start,
//       children: [
//         // Section Title
//         const Padding(
//           padding: EdgeInsets.only(
//             left: 8.0,
//           ),
//           child: Text(
//             "Trending Products",
//             style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
//           ),
//         ),

//         // Grid View (3 Items Per Row)
//         Padding(
//           padding: const EdgeInsets.symmetric(horizontal: 8.0),
//           child: SizedBox(
//             height: 712, // ✅ Prevent overflow
//             child: GridView.builder(
//               shrinkWrap: true,
//               physics: const NeverScrollableScrollPhysics(),
//               gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
//                 crossAxisCount: 3,
//                 crossAxisSpacing: 8,
//                 mainAxisSpacing: 8,
//                 childAspectRatio: 0.50,
//               ),
//               itemCount: trendingProducts.length,
//               itemBuilder: (context, index) {
//                 final product = trendingProducts[index];
//                 return ProductCard(
//                   image: product["image"]!,
//                   name: product["name"]!,
//                   oldPrice: product["oldPrice"]!,
//                   newPrice: product["newPrice"]!,
//                   rating: product["rating"]!,
//                 );
//               },
//             ),
//           ),
//         ),
//       ],
//     );
//   }
// }

// //  Product Card Widget (Using Container)
// class ProductCard extends StatelessWidget {
//   final String image;
//   final String name;
//   final String oldPrice;
//   final String newPrice;
//   final double rating;

//   const ProductCard({
//     super.key,
//     required this.image,
//     required this.name,
//     required this.oldPrice,
//     required this.newPrice,
//     required this.rating,
//   });

//   //  Calculate Discount Percentage
//   String _calculateDiscount(String oldPrice, String newPrice) {
//     int oldP = int.parse(oldPrice.replaceAll(RegExp(r'[^0-9]'), ''));
//     int newP = int.parse(newPrice.replaceAll(RegExp(r'[^0-9]'), ''));
//     double discount = ((oldP - newP) / oldP) * 100;
//     return "${discount.toStringAsFixed(0)}% OFF";
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       decoration: BoxDecoration(
//         color: Colors.white,
//         borderRadius: BorderRadius.circular(10),
//         boxShadow: [
//           // Soft shadow effect
//           BoxShadow(
//             color: Colors.black.withOpacity(0.1),
//             blurRadius: 2,
//             offset: const Offset(0, 1),
//           ),
//         ],
//       ),
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           // Product Image
//           ClipRRect(
//             borderRadius: const BorderRadius.only(
//                 topLeft: Radius.circular(10), topRight: Radius.circular(10)),
//             child: Image.asset(image,
//                 height: 100, width: double.infinity, fit: BoxFit.cover),
//           ),

//           // Product Name & Price
//           Padding(
//             padding: const EdgeInsets.symmetric(horizontal: 6.0, vertical: 5.0),
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 // Product Name
//                 Text(
//                   name,
//                   style: const TextStyle(
//                       fontSize: 14, fontWeight: FontWeight.bold),
//                   overflow: TextOverflow.ellipsis,
//                   maxLines: 1,
//                 ),

//                 const SizedBox(height: 4),

//                 // Price & Discount Row
//                 Row(
//                   children: [
//                     // Old Price (Strikethrough)
//                     Text(
//                       oldPrice,
//                       style: const TextStyle(
//                         fontSize: 12,
//                         color: Colors.grey,
//                         decoration: TextDecoration.lineThrough,
//                       ),
//                     ),
//                     const SizedBox(width: 6),

//                     // New Price (Green)
//                     Text(
//                       newPrice,
//                       style: const TextStyle(
//                         fontSize: 14,
//                         color: Colors.green,
//                         fontWeight: FontWeight.bold,
//                       ),
//                     ),
//                   ],
//                 ),

//                 // Discount Label
//                 Padding(
//                   padding: const EdgeInsets.only(top: 4),
//                   child: Container(
//                     padding:
//                         const EdgeInsets.symmetric(horizontal: 6, vertical: 2),
//                     decoration: BoxDecoration(
//                       color: Colors.red,
//                       borderRadius: BorderRadius.circular(6),
//                     ),
//                     child: Text(
//                       _calculateDiscount(oldPrice, newPrice),
//                       style: const TextStyle(fontSize: 10, color: Colors.white),
//                     ),
//                   ),
//                 ),

//                 const SizedBox(height: 6),

//                 // ⭐ Rating (Stars & Number)
//                 Row(
//                   children: [
//                     // Star Icons
//                     for (int i = 1; i <= 5; i++)
//                       Icon(
//                         Icons.star,
//                         size: 14,
//                         color: i <= rating ? Colors.amber : Colors.grey[300],
//                       ),

//                     const SizedBox(width: 6),

//                     // Rating Value
//                     Text(
//                       rating.toString(),
//                       style: const TextStyle(
//                           fontSize: 12, fontWeight: FontWeight.bold),
//                     ),
//                   ],
//                 ),
//               ],
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
import 'package:flutter/material.dart';
import 'package:my_bucket/product_detail/treding_product.dart';

// Trending Products Data
class TrendingProducts extends StatelessWidget {
  final List<Map<String, dynamic>> trendingProducts = [
    {
      "image": "assets/homes/shoes7.jpg",
      "name": "Nike Sneakers",
      "oldPrice": "₹3499",
      "newPrice": "₹2999",
      "rating": 4.5,
    },
    {
      "image": "assets/homes/adidas.jpg",
      "name": "Adidas Running",
      "oldPrice": "₹3999",
      "newPrice": "₹3499",
      "rating": 4.7,
    },
    {
      "image": "assets/homes/applewatch1.jpg",
      "name": "Apple Watch",
      "oldPrice": "₹2299",
      "newPrice": "₹1999",
      "rating": 4.8,
    },
    {
      "image": "assets/homes/phone1.jpg",
      "name": "iPhone 15",
      "oldPrice": "₹8499",
      "newPrice": "₹7999",
      "rating": 4.9,
    },
    {
      "image": "assets/homes/macbook.jpg",
      "name": "MacBook Air",
      "oldPrice": "₹85000",
      "newPrice": "₹69000",
      "rating": 4.6,
    },
    {
      "image": "assets/homes/headphone.jpg",
      "name": "Sony Headphones",
      "oldPrice": "₹5999",
      "newPrice": "₹4999",
      "rating": 4.3,
    },
    {
      "image": "assets/homes/polo1.jpg",
      "name": "Polo T-Shirt",
      "oldPrice": "₹1499",
      "newPrice": "₹1199",
      "rating": 4.0,
    },
    {
      "image": "assets/homes/touristbag.jpg",
      "name": "Travel Backpack",
      "oldPrice": "₹2999",
      "newPrice": "₹2599",
      "rating": 4.2,
    },
    {
      "image": "assets/homes/bag.jpg",
      "name": "Luxury Handbag",
      "oldPrice": "₹3999",
      "newPrice": "₹3599",
      "rating": 4.1,
    },
  ];

  TrendingProducts({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // // Section Title
        // const Padding(
        //   padding: EdgeInsets.only(
        //     left: 8.0,
        //   ),
        //   child: Text(
        //     "Trending Products",
        //     style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        //   ),
        // ),

        // // Grid View (3 Items Per Row)
        // Padding(
        //   padding: const EdgeInsets.symmetric(horizontal: 8.0),
        //   child: SizedBox(
        //     height: 712, //  Prevent overflow
        //     child: GridView.builder(
        //       shrinkWrap: true,
        //       physics: const NeverScrollableScrollPhysics(),
        // Section Title
        const Padding(
          padding: EdgeInsets.symmetric(
              horizontal: 8.0, vertical: 5.0), //  Reduced vertical padding
          child: Text(
            "Trending Products",
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
        ),

        // Grid View (Auto Height)
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: GridView.builder(
            shrinkWrap: true, //  Makes GridView take only required space
            physics:
                const NeverScrollableScrollPhysics(), // Prevents double scrolling issue

            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
              crossAxisSpacing: 8,
              mainAxisSpacing: 8,
              childAspectRatio: 0.50,
            ),
            itemCount: trendingProducts.length,
            itemBuilder: (context, index) {
              final product = trendingProducts[index];
              return ProductCard(
                image: product["image"]!,
                name: product["name"]!,
                oldPrice: product["oldPrice"]!,
                newPrice: product["newPrice"]!,
                rating: product["rating"]!,
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ProductDetailPage(product: product),
                    ),
                  );
                },
              );
            },
          ),
        ),
      ],
    );
  }
}

//  Product Card Widget (Using Container)
class ProductCard extends StatelessWidget {
  final String image;
  final String name;
  final String oldPrice;
  final String newPrice;
  final double rating;
  final VoidCallback onTap; // Callback for tap gesture

  const ProductCard({
    super.key,
    required this.image,
    required this.name,
    required this.oldPrice,
    required this.newPrice,
    required this.rating,
    required this.onTap,
  });

  //  Calculate Discount Percentage
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
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            // Soft shadow effect
            BoxShadow(
              color: Colors.black.withOpacity(0.1),
              blurRadius: 2,
              offset: const Offset(0, 1),
            ),
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
                  height: 100, width: double.infinity, fit: BoxFit.cover),
            ),

            // Product Name & Price
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 6.0, vertical: 5.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Product Name
                  Text(
                    name,
                    style: const TextStyle(
                        fontSize: 14, fontWeight: FontWeight.bold),
                    overflow: TextOverflow.ellipsis,
                    maxLines: 1,
                  ),

                  const SizedBox(height: 4),

                  // Price & Discount Row
                  Row(
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
                      const SizedBox(width: 6),

                      // New Price (Green)
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

                  // Discount Label
                  Padding(
                    padding: const EdgeInsets.only(top: 4),
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 6, vertical: 2),
                      decoration: BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.circular(6),
                      ),
                      child: Text(
                        _calculateDiscount(oldPrice, newPrice),
                        style:
                            const TextStyle(fontSize: 10, color: Colors.white),
                      ),
                    ),
                  ),

                  const SizedBox(height: 6),

                  // ⭐ Rating (Stars & Number)
                  Row(
                    children: [
                      // Star Icons
                      for (int i = 1; i <= 5; i++)
                        Icon(
                          Icons.star,
                          size: 14,
                          color: i <= rating ? Colors.amber : Colors.grey[300],
                        ),

                      const SizedBox(width: 6),

                      // Rating Value
                      Text(
                        rating.toString(),
                        style: const TextStyle(
                            fontSize: 12, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
