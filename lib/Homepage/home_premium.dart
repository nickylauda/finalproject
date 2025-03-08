// import 'package:flutter/material.dart';

// import 'package:my_bucket/detail_page/detail_all_recommend.dart';

// class PremiumList extends StatelessWidget {
//   final List<Map<String, String>> dhamakaItems = [
//     {
//       "title": "Gold Fashion",
//       "discount": "UPTO 70% OFF",
//       "image": "assets/homes/lehanga1.jpg",
//     },
//     {
//       "title": "Home Decor",
//       "discount": "UPTO 80% OFF",
//       "image": "assets/homes/lehanga2.jpg",
//     },
//     {
//       "title": "Lehengas & More",
//       "discount": "UPTO 60% OFF",
//       "image": "assets/homes/lehanga3.jpg",
//     },
//   ];

//   PremiumList({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       color: const Color(0xFFF7E0A7), // Light golden background
//       padding: const EdgeInsets.symmetric(
//           vertical: 15, horizontal: 16), // Padding for the section
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           // Title and View All inside golden background
//           Row(
//             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//             children: [
//               const Text(
//                 "Grand Gold Dhamaka",
//                 style: TextStyle(
//                   fontSize: 20,
//                   fontWeight: FontWeight.bold,
//                 ),
//               ),
//               GestureDetector(
//                 onTap: () {
//                   // Navigate to View All Page
//                   print("View All Pressed");
//                 },
//                 child: Row(
//                   children: [
//                     TextButton(
//                       onPressed: () {
//                         Navigator.push(
//                           context,
//                           MaterialPageRoute(
//                               builder: (context) => AllProductsScreen()),
//                         );
//                       },
//                       child: const Text(
//                         "View All",
//                         style: TextStyle(
//                           fontSize: 16,
//                           color: Colors.purple,
//                           fontWeight: FontWeight.bold,
//                         ),
//                       ),
//                     ),
//                     const Icon(Icons.arrow_forward_ios,
//                         size: 14, color: Colors.purple),
//                   ],
//                 ),
//               ),
//             ],
//           ),
//           const SizedBox(height: 10), // Space between title and list

//           // Horizontal List View inside golden background
//           SizedBox(
//             height: 210, // Adjust height to match image
//             child: ListView.builder(
//               scrollDirection: Axis.horizontal,
//               itemCount: dhamakaItems.length,
//               itemBuilder: (context, index) {
//                 final item = dhamakaItems[index];
//                 return Padding(
//                   padding: const EdgeInsets.only(right: 8.0),
//                   child: Stack(
//                     children: [
//                       ClipRRect(
//                         borderRadius: BorderRadius.circular(12),
//                         child: Container(
//                           width: 160,
//                           decoration: BoxDecoration(
//                             borderRadius: BorderRadius.circular(12),
//                             image: DecorationImage(
//                               image: AssetImage(item["image"]!),
//                               fit: BoxFit.cover,
//                             ),
//                           ),
//                         ),
//                       ),

//                       // Discount Badge
//                       Positioned(
//                         top: 8,
//                         left: 8,
//                         child: Container(
//                           padding: const EdgeInsets.symmetric(
//                               horizontal: 8, vertical: 4),
//                           decoration: BoxDecoration(
//                             color: Colors.purple,
//                             borderRadius: BorderRadius.circular(6),
//                           ),
//                           child: Text(
//                             item["discount"]!,
//                             style: const TextStyle(
//                               color: Colors.white,
//                               fontSize: 12,
//                               fontWeight: FontWeight.bold,
//                             ),
//                           ),
//                         ),
//                       ),

//                       // Gold Tag & Title
//                       Positioned(
//                         bottom: 12,
//                         left: 10,
//                         child: Column(
//                           crossAxisAlignment: CrossAxisAlignment.start,
//                           children: [
//                             Container(
//                               padding: const EdgeInsets.symmetric(
//                                   horizontal: 8, vertical: 2),
//                               decoration: BoxDecoration(
//                                 color: Colors.white,
//                                 borderRadius: BorderRadius.circular(5),
//                               ),
//                               child: const Row(
//                                 children: [
//                                   Icon(Icons.star,
//                                       color: Colors.amber, size: 14),
//                                   SizedBox(width: 4),
//                                   Text(
//                                     "Gold",
//                                     style: TextStyle(
//                                       fontSize: 14,
//                                       fontWeight: FontWeight.bold,
//                                     ),
//                                   ),
//                                 ],
//                               ),
//                             ),
//                             const SizedBox(height: 4),
//                             Text(
//                               item["title"]!,
//                               style: const TextStyle(
//                                 color: Colors.white,
//                                 fontSize: 16,
//                                 fontWeight: FontWeight.bold,
//                                 backgroundColor: Colors.black54,
//                               ),
//                             ),
//                           ],
//                         ),
//                       ),
//                     ],
//                   ),
//                 );
//               },
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
import 'package:flutter/material.dart';
import 'package:my_bucket/product_list/list_all_recommend.dart';
import 'package:my_bucket/product_list/list_premium.dart';

class PremiumList extends StatelessWidget {
  final List<Map<String, String>> dhamakaItems = [
    {
      "title": "Gold Fashion",
      "discount": "UPTO 70% OFF",
      "image": "assets/homes/lehanga1.jpg",
    },
    {
      "title": "Home Decor",
      "discount": "UPTO 80% OFF",
      "image": "assets/homes/lehanga2.jpg",
    },
    {
      "title": "Lehengas & More",
      "discount": "UPTO 60% OFF",
      "image": "assets/homes/lehanga3.jpg",
    },
  ];

  PremiumList({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xFFF7E0A7), // Light golden background
      padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Title and View All inside golden background
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                "Grand Gold Dhamaka",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const ListAllRecommend()),
                  );
                },
                child: const Row(
                  children: [
                    Text(
                      "View All",
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.purple,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Icon(Icons.arrow_forward_ios,
                        size: 14, color: Colors.purple),
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(height: 10),

          // Horizontal List View with GestureDetector
          SizedBox(
            height: 210,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: dhamakaItems.length,
              itemBuilder: (context, index) {
                final item = dhamakaItems[index];
                return GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const ListPremium ()),
                    );
                  },
                  child: Padding(
                    padding: const EdgeInsets.only(right: 8.0),
                    child: Stack(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(12),
                          child: Container(
                            width: 160,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12),
                              image: DecorationImage(
                                image: AssetImage(item["image"]!),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ),

                        // Discount Badge
                        Positioned(
                          top: 8,
                          left: 8,
                          child: Container(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 8, vertical: 4),
                            decoration: BoxDecoration(
                              color: Colors.purple,
                              borderRadius: BorderRadius.circular(6),
                            ),
                            child: Text(
                              item["discount"]!,
                              style: const TextStyle(
                                color: Colors.white,
                                fontSize: 12,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),

                        // Gold Tag & Title
                        Positioned(
                          bottom: 12,
                          left: 10,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 8, vertical: 2),
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(5),
                                ),
                                child: const Row(
                                  children: [
                                    Icon(Icons.star,
                                        color: Colors.amber, size: 14),
                                    SizedBox(width: 4),
                                    Text(
                                      "Gold",
                                      style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              const SizedBox(height: 4),
                              Text(
                                item["title"]!,
                                style: const TextStyle(
                                  color: Colors.white,
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                  backgroundColor: Colors.black54,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
