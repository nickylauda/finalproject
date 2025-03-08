
// import 'package:flutter/material.dart';

// class AccesorizeOn extends StatefulWidget {
//   const AccesorizeOn({super.key});

//   @override
//   // ignore: library_private_types_in_public_api
//   _AccesorizeOnState createState() => _AccesorizeOnState();
// }

// class _AccesorizeOnState extends State<AccesorizeOn> {
//   String selectedCategory = "Footwear";

//   final Map<String, List<Map<String, String>>> categoryData = {
//     "Footwear": [
//       {"name": "Sports Shoes", "image": "assets/homes/sports_shoes1.jpg"},
//       {"name": "Casual Shoes", "image": "assets/homes/casualshoes.jpg"},
//       {"name": "Running Shoes", "image": "assets/homes/runningshoes.jpg"},
//     ],
//     "Personal Care": [
//       {"name": "Skincare", "image": "assets/skincare.jpg"},
//       {"name": "Fragrances", "image": "assets/fragrance.jpg"},
//       {"name": "Hair Care", "image": "assets/hair_care.jpg"},
//     ],
//     "Accessories": [
//       {"name": "Caps", "image": "assets/cap.jpg"},
//       {"name": "Backpacks", "image": "assets/backpack.jpg"},
//       {"name": "Sunglasses", "image": "assets/sunglasses.jpg"},
//     ],
//   };

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       height: 380,
//       width: double.infinity,
//       decoration: BoxDecoration(
//         color: Colors.white,
//         borderRadius: BorderRadius.circular(20),
//         boxShadow: const [
//           BoxShadow(
//             color: Colors.black12,
//             blurRadius: 10,
//             spreadRadius: 2,
//             offset: Offset(0, 4),
//           ),
//         ],
//       ),
//       padding: const EdgeInsets.all(15),
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.center,
//         children: [
//           const SizedBox(height: 10),
//           const Text(
//             'Accessorize On Point!',
//             style: TextStyle(
//               fontSize: 22,
//               fontWeight: FontWeight.bold,
//               color: Colors.black87,
//             ),
//           ),
//           const SizedBox(height: 15),

//           // FIX: Scrollable Row for Category Buttons
//           SingleChildScrollView(
//             scrollDirection: Axis.horizontal,
//             child: Row(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: categoryData.keys.map((category) {
//                 bool isSelected = selectedCategory == category;
//                 return GestureDetector(
//                   onTap: () {
//                     setState(() {
//                       selectedCategory = category;
//                     });
//                   },
//                   child: Container(
//                     padding: const EdgeInsets.symmetric(
//                       vertical: 10,
//                       horizontal: 12, // Reduced padding
//                     ),
//                     margin: const EdgeInsets.symmetric(horizontal: 4),
//                     decoration: BoxDecoration(
//                       color: isSelected ? Colors.pinkAccent : Colors.white,
//                       borderRadius: BorderRadius.circular(20),
//                       border: Border.all(color: Colors.black12),
//                       boxShadow: [
//                         if (isSelected)
//                           BoxShadow(
//                             color: Colors.pinkAccent.withOpacity(0.3),
//                             blurRadius: 5,
//                             spreadRadius: 1,
//                           ),
//                       ],
//                     ),
//                     child: Text(
//                       category,
//                       style: TextStyle(
//                         color: isSelected ? Colors.white : Colors.black,
//                         fontWeight: FontWeight.bold,
//                       ),
//                     ),
//                   ),
//                 );
//               }).toList(),
//             ),
//           ),
//           const SizedBox(height: 20),

//           // Horizontal List of Items
//           Expanded(
//             child: ListView.builder(
//               scrollDirection: Axis.horizontal,
//               itemCount: categoryData[selectedCategory]!.length,
//               itemBuilder: (context, index) {
//                 var item = categoryData[selectedCategory]![index];
//                 return Padding(
//                   padding: const EdgeInsets.symmetric(horizontal: 10),
//                   child: Column(
//                     children: [
//                       Container(
//                         width: 140,
//                         height: 180,
//                         decoration: BoxDecoration(
//                           borderRadius: BorderRadius.circular(15),
//                           border: Border.all(color: Colors.black12),
//                           image: DecorationImage(
//                             image: AssetImage(item['image']!),
//                             fit: BoxFit.cover,
//                           ),
//                           boxShadow: [
//                             BoxShadow(
//                               color: Colors.black26,
//                               blurRadius: 6,
//                               spreadRadius: 1,
//                               offset: Offset(0, 4),
//                             ),
//                           ],
//                         ),
//                       ),
//                       const SizedBox(height: 5),
//                       Text(
//                         item['name']!,
//                         style: const TextStyle(
//                           fontWeight: FontWeight.bold,
//                           fontSize: 14,
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
// import 'package:flutter/material.dart';

// class AccesorizeOn extends StatefulWidget {
//   const AccesorizeOn({super.key});

//   @override
//   // ignore: library_private_types_in_public_api
//   _AccesorizeOnState createState() => _AccesorizeOnState();
// }

// class _AccesorizeOnState extends State<AccesorizeOn> {
//   String selectedCategory = "Footwear";

//   final Map<String, List<Map<String, String>>> categoryData = {
//     "Footwear": [
//       {"name": "Sports Shoes", "image": "assets/homes/sports_shoes1.jpg"},
//       {"name": "Casual Shoes", "image": "assets/homes/casualshoes.jpg"},
//       {"name": "Running Shoes", "image": "assets/homes/runningshoes.jpg"},
//     ],
//     "Personal Care": [
//       {"name": "Skincare", "image": "assets/homes/skincare2.jpg"},
//       {"name": "Fragrances", "image": "assets/homes/fragrance.jpg"},
//       {"name": "Hair Care", "image": "assets/homes/haircare.jpg"},
//     ],
//     "Accessories": [
//       {"name": "Caps", "image": "assets/homes/caps.jpg"},
//       {"name": "Backpacks", "image": "assets/homes/backpack.jpeg"},
//       {"name": "Sunglasses", "image": "assets/homes/sunglasses.jpg"},
//     ],
//   };

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       height: 380,
//       //MediaQuery.of(context).size.width * 0.9
//       width: double.infinity,
//       decoration: BoxDecoration(
//         color: Colors.blue[100],
//         borderRadius: BorderRadius.circular(20),
//         // boxShadow: const [
//         //   BoxShadow(
//         //     color: Colors.black12,
//         //     blurRadius: 10,
//         //     spreadRadius: 2,
//         //     offset: Offset(0, 4),
//         //   ),
//         // ],
//       ),
//       padding: const EdgeInsets.all(15),
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.center,
//         children: [
//           const SizedBox(height: 15),
//           const Text(
//             'Accessorize On Point!',
//             style: TextStyle(
//               fontSize: 22,
//               fontWeight: FontWeight.bold,
//               color: Colors.black87,
//             ),
//           ),
//           const SizedBox(height: 15),

//           // Category Buttons
//           Row(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: categoryData.keys.map((category) {
//               bool isSelected = selectedCategory == category;
//               return GestureDetector(
//                 onTap: () {
//                   setState(() {
//                     selectedCategory = category;
//                   });
//                 },
//                 child: Container(
//                   padding: const EdgeInsets.symmetric(
//                     vertical: 10,
//                     horizontal: 10,
//                   ),
//                   margin: const EdgeInsets.symmetric(horizontal: 5),
//                   decoration: BoxDecoration(
//                     color: isSelected ? Colors.pinkAccent : Colors.white,
//                     borderRadius: BorderRadius.circular(20),
//                     border: Border.all(color: Colors.black12),
//                     boxShadow: [
//                       if (isSelected)
//                         BoxShadow(
//                           color: Colors.pinkAccent.withOpacity(0.3),
//                           blurRadius: 5,
//                           spreadRadius: 1,
//                         ),
//                     ],
//                   ),
//                   child: Text(
//                     category,
//                     style: TextStyle(
//                       color: isSelected ? Colors.white : Colors.black,
//                       fontWeight: FontWeight.bold,
//                     ),
//                   ),
//                 ),
//               );
//             }).toList(),
//           ),
//           const SizedBox(height: 20),

//           // Horizontal List of Items
//           Expanded(
//             child: ListView.builder(
//               scrollDirection: Axis.horizontal,
//               itemCount: categoryData[selectedCategory]!.length,
//               itemBuilder: (context, index) {
//                 var item = categoryData[selectedCategory]![index];
//                 return Padding(
//                   padding: const EdgeInsets.symmetric(horizontal: 10),
//                   child: Column(
//                     children: [
//                       Container(
//                         width: 140,
//                         height: 180,
//                         decoration: BoxDecoration(
//                           borderRadius: BorderRadius.circular(15),
//                           border: Border.all(color: Colors.black12),
//                           image: DecorationImage(
//                             image: AssetImage(item['image']!),
//                             fit: BoxFit.cover,
//                           ),
//                           boxShadow: const [
//                             BoxShadow(
//                               color: Colors.black26,
//                               blurRadius: 6,
//                               spreadRadius: 1,
//                               offset: Offset(0, 4),
//                             ),
//                           ],
//                         ),
//                       ),
//                       const SizedBox(height: 10),
//                       Text(
//                         item['name']!,
//                         style: const TextStyle(
//                           fontWeight: FontWeight.bold,
//                           fontSize: 14,
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
import 'package:my_bucket/product_list/list_accesorize.dart';



class AccesorizeOn extends StatefulWidget {
  const AccesorizeOn({super.key});

  @override
  _AccesorizeOnState createState() => _AccesorizeOnState();
}

class _AccesorizeOnState extends State<AccesorizeOn> {
  String selectedCategory = "Footwear";

  final Map<String, List<Map<String, String>>> categoryData = {
    "Footwear": [
      {"name": "Sports Shoes", "image": "assets/homes/sports_shoes1.jpg"},
      {"name": "Casual Shoes", "image": "assets/homes/casualshoes.jpg"},
      {"name": "Running Shoes", "image": "assets/homes/runningshoes.jpg"},
    ],
    "Personal Care": [
      {"name": "Skincare", "image": "assets/homes/skincare2.jpg"},
      {"name": "Fragrances", "image": "assets/homes/fragrance.jpg"},
      {"name": "Hair Care", "image": "assets/homes/haircare.jpg"},
    ],
    "Accessories": [
      {"name": "Caps", "image": "assets/homes/caps.jpg"},
      {"name": "Backpacks", "image": "assets/homes/backpack.jpeg"},
      {"name": "Sunglasses", "image": "assets/homes/sunglasses.jpg"},
    ],
  };

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 380,
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.blue[100],
        borderRadius: BorderRadius.circular(20),
      ),
      padding: const EdgeInsets.all(15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(height: 15),
          const Text(
            'Accessorize On Point!',
            style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.bold,
              color: Colors.black87,
            ),
          ),
          const SizedBox(height: 15),

          // Category Buttons (Clickable)
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: categoryData.keys.map((category) {
              bool isSelected = selectedCategory == category;
              return GestureDetector(
                onTap: () {
                  setState(() {
                    selectedCategory = category;
                  });
                },
                child: Container(
                  padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                  margin: const EdgeInsets.symmetric(horizontal: 5),
                  decoration: BoxDecoration(
                    color: isSelected ? Colors.pinkAccent : Colors.white,
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(color: Colors.black12),
                    boxShadow: [
                      if (isSelected)
                        BoxShadow(
                          color: Colors.pinkAccent.withOpacity(0.3),
                          blurRadius: 5,
                          spreadRadius: 1,
                        ),
                    ],
                  ),
                  child: Text(
                    category,
                    style: TextStyle(
                      color: isSelected ? Colors.white : Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              );
            }).toList(),
          ),
          const SizedBox(height: 20),

          // Horizontal List of Items (Clickable)
          Expanded(
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: categoryData[selectedCategory]!.length,
              itemBuilder: (context, index) {
                var item = categoryData[selectedCategory]![index];
                return GestureDetector(
                  onTap: () {
                    // Navigate to Product Detail Page
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const ListAccesorize(),
                      ),
                    );
                  },
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Column(
                      children: [
                        Container(
                          width: 140,
                          height: 180,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            border: Border.all(color: Colors.black12),
                            image: DecorationImage(
                              image: AssetImage(item['image']!),
                              fit: BoxFit.cover,
                            ),
                            boxShadow: const [
                              BoxShadow(
                                color: Colors.black26,
                                blurRadius: 6,
                                spreadRadius: 1,
                                offset: Offset(0, 4),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(height: 10),
                        Text(
                          item['name']!,
                          style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 14,
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
