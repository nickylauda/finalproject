// import 'package:flutter/material.dart';

// class AllCategoriesPage extends StatelessWidget {
//   AllCategoriesPage({super.key});

//   // Sample categories with local image paths
//   final List<Map<String, String>> categories = [
//     {"name": "Mobiles", "image": "assets/mobiles.png"},
//     {"name": "Electronics", "image": "assets/Electronics.png"},
//     {"name": "Fashion", "image": "assets/fashion.png"},
//     {"name": "Home", "image": "assets/home.png"},
//     {"name": "Appliances", "image": "assets/appliances.png"},
//     {"name": "Beauty", "image": "assets/beauty.png"},
//     {"name": "Grocery", "image": "assets/grocery.jpg"},
//     {"name": "Toys", "image": "assets/toys.jpg"},
//     {"name": "Furniture", "image": "assets/furniture.jpg"},
//     {"name": "Sports", "image": "assets/sports.jpg"},
//   ];

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text("Categories"),
//         backgroundColor: Colors.blueAccent,
//         centerTitle: true,
//       ),
//       body: Padding(
//         padding: const EdgeInsets.all(8.0),
//         child: GridView.builder(
//           itemCount: categories.length,
//           gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
//             crossAxisCount: 3, // 3 items per row (like Flipkart)
//             childAspectRatio: 0.8, // Adjust size
//             crossAxisSpacing: 10,
//             mainAxisSpacing: 10,
//           ),
//           itemBuilder: (context, index) {
//             return CategoryCard(
//               categoryName: categories[index]["name"]!,
//               imagePath: categories[index]["image"]!,
//             );
//           },
//         ),
//       ),
//     );
//   }
// }

// // Widget for individual category card with local image
// class CategoryCard extends StatelessWidget {
//   final String categoryName;
//   final String imagePath;

//   const CategoryCard(
//       {super.key, required this.categoryName, required this.imagePath});

//   @override
//   Widget build(BuildContext context) {
//     return InkWell(
//       onTap: () {
//         // Handle category click (Navigate or show details)
//       },
//       child: Card(
//         elevation: 4,
//         shape: RoundedRectangleBorder(
//           borderRadius: BorderRadius.circular(10),
//         ),
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             Image.asset(imagePath, height: 60, width: 60), // Local Image
//             const SizedBox(height: 8),
//             Text(
//               categoryName,
//               textAlign: TextAlign.center,
//               style: const TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
// import 'package:flutter/material.dart';

// class AllCategoriesPage extends StatefulWidget {
//   const AllCategoriesPage({super.key});

//   @override
//   _AllCategoriesPageState createState() => _AllCategoriesPageState();
// }

// class _AllCategoriesPageState extends State<AllCategoriesPage> {
//   int selectedCategoryIndex = 0;

//   final List<Map<String, dynamic>> categories = [
//     {"name": "Popular", "image": "assets/category_page/popular.png"},
//     {"name": "Traditional", "image": "assets/category_page/traditional.jpg"},
//     {"name": "Women Western", "image": "assets/category_page/western1.jpg"},
//     {"name": "Lingerie", "image": "assets/category_page/Lingerie.jpg"},
//     {"name": "Men", "image": "assets/category_page/mens.jpg"},
//     {"name": "Kids Wear", "image": "assets/category_page/kids.jpg"},
//     {"name": "Toys", "image": "assets/category_page/toys1.jpg"},
//     {"name": "Home Appliances", "image": "assets/category_page/Appliances.png"},
//     {"name": "Mobiles", "image": "assets/category_page/phones.jpg"},
//     {"name": "Food & Health Care", "image": "assets/category_page/Protien.jpg"},
//     {"name": "Smart Gadgets", "image": "assets/category_page/smart.jpg"},
//     {"name": "Books", "image": "assets/category_page/Books.jpg"},
//     {
//       "name": "Beauty& PersonalCare",
//       "image": "assets/category_page/beautipro.jpg"
//     },
//     {"name": "Sports Hub", "image": "assets/category_page/sports.jpg"},
//     {
//       "name": "Auto Accessories",
//       "image": "assets/category_page/accesories.jpg"
//     },
//   ];

//   final List<Map<String, dynamic>> subCategories = [
//     {
//       "title": "Sarees",
//       "items": [
//         {"name": "All Sarees", "image": "assets/category_page/saree1.jpg"},
//         {
//           "name": "Georgette Sarees",
//           "image": "assets/category_page/saree2.jpg"
//         },
//         {"name": "Chiffon Sarees", "image": "assets/category_page/saree3.jpg"},
//         {"name": "Cotton Sarees", "image": "assets/category_page/saree4.jpg"},
//         {"name": "Net Sarees", "image": "assets/category_page/saree5.jpg"},
//         {"name": "Under 299", "image": "assets/category_page/saree6.jpg"},
//         {"name": "Silk Sarees", "image": "assets/category_page/saree7.jpg"},
//         {"name": "New Collection", "image": "assets/category_page/saree8.jpg"},
//         {"name": "Bridal Sarees", "image": "assets/category_page/saree9.jpg"},
//       ]
//     },
//     {
//       "title": "Kurtis",
//       "items": [
//         {"name": "All Kurtis", "image": "assets/category_page/kurtis1.jpg"},
//         {
//           "name": "Anarkali Kurtis",
//           "image": "assets/category_page/kurtis2.jpg"
//         },
//         {"name": "Rayon Kurtis", "image": "assets/category_page/kurtis3.jpg"},
//         {"name": "Cotton Kurtis", "image": "assets/category_page/kurtis4.jpg"},
//         {"name": "Straight Kurtis", "image": "assets/category_page/kurti5.jpg"},
//         {"name": "Long Kurtis", "image": "assets/category_page/kurti6.jpg"},
//         {"name": "Rayon Kurtis", "image": "assets/category_page/kurti7.jpg"},
//         {"name": "Cotton Kurtis", "image": "assets/category_page/kurti8.jpg"},
//         {"name": "Anarkali Kurtis", "image": "assets/category_page/kurti9.jpg"},
//       ]
//     }
//   ];

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         leading: IconButton(
//           icon: const Icon(Icons.arrow_back, color: Colors.black),
//           onPressed: () {
//             Navigator.pop(context); // Navigates back when tapped
//           },
//         ),
//         title: const Text("Categories"),
//         backgroundColor: Colors.white,
//         elevation: 1,
//         actions: [
//           IconButton(
//               onPressed: () {},
//               icon: const Icon(Icons.search, color: Colors.black)),
//           IconButton(
//               onPressed: () {},
//               icon: const Icon(Icons.favorite_border, color: Colors.black)),
//           IconButton(
//               onPressed: () {},
//               icon: const Icon(Icons.shopping_cart, color: Colors.black)),
//         ],
//         automaticallyImplyLeading: false,
//       ),
//       body: Row(
//         children: [
//           // Left Side Menu (ListView)
//           Container(
//             width: 100,
//             color: Colors.grey.shade200,
//             child: ListView.builder(
//               itemCount: categories.length,
//               itemBuilder: (context, index) {
//                 return InkWell(
//                   onTap: () {
//                     setState(() {
//                       selectedCategoryIndex = index;
//                     });
//                   },
//                   child: Container(
//                     padding: const EdgeInsets.all(10),
//                     color: selectedCategoryIndex == index
//                         ? Colors.white
//                         : Colors.grey.shade200,
//                     child: Column(
//                       children: [
//                         CircleAvatar(
//                           backgroundImage:
//                               AssetImage(categories[index]["image"]),
//                           radius: 20,
//                         ),
//                         const SizedBox(height: 5),
//                         Text(
//                           categories[index]["name"],
//                           textAlign: TextAlign.center,
//                           style: TextStyle(
//                             fontSize: 12,
//                             fontWeight: selectedCategoryIndex == index
//                                 ? FontWeight.bold
//                                 : FontWeight.normal,
//                           ),
//                         ),
//                       ],
//                     ),
//                   ),
//                 );
//               },
//             ),
//           ),

//           // Right Side Content (Subcategories)
//           Expanded(
//             child: Padding(
//               padding: const EdgeInsets.all(10.0),
//               child: ListView(
//                 children: subCategories.map((category) {
//                   return Column(
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: [
//                       Text(
//                         category["title"],
//                         style: const TextStyle(
//                             fontSize: 18, fontWeight: FontWeight.bold),
//                       ),
//                       const SizedBox(height: 10),
//                       GridView.builder(
//                         shrinkWrap: true,
//                         physics: const NeverScrollableScrollPhysics(),
//                         gridDelegate:
//                             const SliverGridDelegateWithFixedCrossAxisCount(
//                           crossAxisCount: 3,
//                           childAspectRatio: 0.7,
//                           crossAxisSpacing: 10,
//                           mainAxisSpacing: 10,
//                         ),
//                         itemCount: category["items"].length,
//                         itemBuilder: (context, index) {
//                           var item = category["items"][index];
//                           return Column(
//                             children: [
//                               Image.asset(
//                                 item["image"],
//                                 height: 60,
//                                 width: 60,
//                                 fit: BoxFit.contain,
//                               ),
//                               const SizedBox(height: 5),
//                               Text(
//                                 item["name"],
//                                 textAlign: TextAlign.center,
//                                 style: const TextStyle(fontSize: 12),
//                               ),
//                             ],
//                           );
//                         },
//                       ),
//                       const SizedBox(height: 20),
//                     ],
//                   );
//                 }).toList(),
//               ),
//             ),
//           )
//         ],
//       ),
//     );
//   }
// }
// import 'package:flutter/material.dart';

// class AllCategoriesPage extends StatefulWidget {
//   const AllCategoriesPage({super.key});

//   @override
//   _AllCategoriesPageState createState() => _AllCategoriesPageState();
// }

// class _AllCategoriesPageState extends State<AllCategoriesPage> {
//   int selectedCategoryIndex = 0;

//   final List<Map<String, dynamic>> categories = [
//     {"name": "Popular", "image": "assets/category_page/popular.png"},
//     {"name": "Traditional", "image": "assets/category_page/traditional.jpg"},
//     {"name": "Women Western", "image": "assets/category_page/western1.jpg"},
//     {"name": "Lingerie", "image": "assets/category_page/Lingerie.jpg"},
//     {"name": "Men", "image": "assets/category_page/mens.jpg"},
//     {"name": "Kids Wear", "image": "assets/category_page/kids.jpg"},
//     {"name": "Toys", "image": "assets/category_page/toys1.jpg"},
//     {"name": "Home Appliances", "image": "assets/category_page/Appliances.png"},
//     {"name": "Mobiles", "image": "assets/category_page/phones.jpg"},
//     {"name": "Food & Health Care", "image": "assets/category_page/Protien.jpg"},
//     {"name": "Smart Gadgets", "image": "assets/category_page/smart.jpg"},
//     {"name": "Books", "image": "assets/category_page/Books.jpg"},
//     {
//       "name": "Beauty& PersonalCare",
//       "image": "assets/category_page/beautipro.jpg"
//     },
//     {"name": "Sports Hub", "image": "assets/category_page/sports.jpg"},
//     {
//       "name": "Auto Accessories",
//       "image": "assets/category_page/accesories.jpg"
//     },
//   ];

//   final Map<String, List<Map<String, dynamic>>> categoryToSubCategories = {
//     "Traditional": [
//       {
//         "title": "Sarees",
//         "items": [
//           {"name": "All Sarees", "image": "assets/category_page/saree1.jpg"},
//           {
//             "name": "Georgette Sarees",
//             "image": "assets/category_page/saree2.jpg"
//           },
//           {"name": "Chiffon Sarees", "image": "assets/category_page/saree3.jpg"},
//           {"name": "Cotton Sarees", "image": "assets/category_page/saree4.jpg"},
//           {"name": "Net Sarees", "image": "assets/category_page/saree5.jpg"},
//           {"name": "Under 299", "image": "assets/category_page/saree6.jpg"},
//           {"name": "Silk Sarees", "image": "assets/category_page/saree7.jpg"},
//           {
//             "name": "New Collection",
//             "image": "assets/category_page/saree8.jpg"
//           },
//           {"name": "Bridal Sarees", "image": "assets/category_page/saree9.jpg"},
//         ]
//       },
//       {
//         "title": "Kurtis",
//         "items": [
//           {"name": "All Kurtis", "image": "assets/category_page/kurtis1.jpg"},
//           {
//             "name": "Anarkali Kurtis",
//             "image": "assets/category_page/kurtis2.jpg"
//           },
//           {"name": "Rayon Kurtis", "image": "assets/category_page/kurtis3.jpg"},
//           {"name": "Cotton Kurtis", "image": "assets/category_page/kurtis4.jpg"},
//           {
//             "name": "Straight Kurtis",
//             "image": "assets/category_page/kurti5.jpg"
//           },
//           {"name": "Long Kurtis", "image": "assets/category_page/kurti6.jpg"},
//           {"name": "Rayon Kurtis", "image": "assets/category_page/kurti7.jpg"},
//           {"name": "Cotton Kurtis", "image": "assets/category_page/kurti8.jpg"},
//           {
//             "name": "Anarkali Kurtis",
//             "image": "assets/category_page/kurti9.jpg"
//           },
//         ]
//       }
//     ],
//     // Add more mappings for other categories as needed
//   };

//   List<Map<String, dynamic>> get selectedSubCategories {
//     final categoryName = categories[selectedCategoryIndex]["name"];
//     return categoryToSubCategories[categoryName] ?? [];
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         leading: IconButton(
//           icon: const Icon(Icons.arrow_back, color: Colors.black),
//           onPressed: () {
//             Navigator.pop(context); // Navigates back when tapped
//           },
//         ),
//         title: const Text("Categories"),
//         backgroundColor: Colors.white,
//         elevation: 1,
//         actions: [
//           IconButton(
//               onPressed: () {},
//               icon: const Icon(Icons.search, color: Colors.black)),
//           IconButton(
//               onPressed: () {},
//               icon: const Icon(Icons.favorite_border, color: Colors.black)),
//           IconButton(
//               onPressed: () {},
//               icon: const Icon(Icons.shopping_cart, color: Colors.black)),
//         ],
//         automaticallyImplyLeading: false,
//       ),
//       body: Row(
//         children: [
//           // Left Side Menu (ListView)
//           Container(
//             width: 100,
//             color: Colors.grey.shade200,
//             child: ListView.builder(
//               itemCount: categories.length,
//               itemBuilder: (context, index) {
//                 return InkWell(
//                   onTap: () {
//                     setState(() {
//                       selectedCategoryIndex = index;
//                     });
//                   },
//                   child: Container(
//                     padding: const EdgeInsets.all(10),
//                     color: selectedCategoryIndex == index
//                         ? Colors.white
//                         : Colors.grey.shade200,
//                     child: Column(
//                       children: [
//                         CircleAvatar(
//                           backgroundImage:
//                               AssetImage(categories[index]["image"]),
//                           radius: 20,
//                         ),
//                         const SizedBox(height: 5),
//                         Text(
//                           categories[index]["name"],
//                           textAlign: TextAlign.center,
//                           style: TextStyle(
//                             fontSize: 12,
//                             fontWeight: selectedCategoryIndex == index
//                                 ? FontWeight.bold
//                                 : FontWeight.normal,
//                           ),
//                         ),
//                       ],
//                     ),
//                   ),
//                 );
//               },
//             ),
//           ),

//           // Right Side Content (Subcategories)
//           Expanded(
//             child: Padding(
//               padding: const EdgeInsets.all(10.0),
//               child: ListView(
//                 children: selectedSubCategories.map((category) {
//                   return Column(
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: [
//                       Text(
//                         category["title"],
//                         style: const TextStyle(
//                             fontSize: 18, fontWeight: FontWeight.bold),
//                       ),
//                       const SizedBox(height: 10),
//                       GridView.builder(
//                         shrinkWrap: true,
//                         physics: const NeverScrollableScrollPhysics(),
//                         gridDelegate:
//                             const SliverGridDelegateWithFixedCrossAxisCount(
//                           crossAxisCount: 3,
//                           childAspectRatio: 0.7,
//                           crossAxisSpacing: 10,
//                           mainAxisSpacing: 10,
//                         ),
//                         itemCount: category["items"].length,
//                         itemBuilder: (context, index) {
//                           var item = category["items"][index];
//                           return Column(
//                             children: [
//                               Image.asset(
//                                 item["image"],
//                                 height: 60,
//                                 width: 60,
//                                 fit: BoxFit.contain,
//                               ),
//                               const SizedBox(height: 5),
//                               Text(
//                                 item["name"],
//                                 textAlign: TextAlign.center,
//                                 style: const TextStyle(fontSize: 12),
//                               ),
//                             ],
//                           );
//                         },
//                       ),
//                       const SizedBox(height: 20),
//                     ],
//                   );
//                 }).toList(),
//               ),
//             ),
//           )
//         ],
//       ),
//     );
//   }
// }
import 'package:flutter/material.dart';
import 'package:my_bucket/Categories/list.dart';

class AllCategoriesPage extends StatefulWidget {
  const AllCategoriesPage({super.key});

  @override
  _AllCategoriesPageState createState() => _AllCategoriesPageState();
}

class _AllCategoriesPageState extends State<AllCategoriesPage> {
  int selectedCategoryIndex = 0;

  final List<Map<String, dynamic>> categories = [
    {"name": "Popular", "image": "assets/category_page/popular.png"},
    {"name": "Traditional", "image": "assets/category_page/traditional.jpg"},
    {"name": "Women Western", "image": "assets/category_page/western1.jpg"},
    {"name": "Lingerie", "image": "assets/category_page/Lingerie.jpg"},
    {"name": "Men", "image": "assets/category_page/mens.jpg"},
    {"name": "Kids Wear", "image": "assets/category_page/kids.jpg"},
    {"name": "Toys", "image": "assets/category_page/toys1.jpg"},
    {"name": "Home Appliances", "image": "assets/category_page/Appliances.png"},
    {"name": "Mobiles", "image": "assets/category_page/phones.jpg"},
    {"name": "Food & Health Care", "image": "assets/category_page/Protien.jpg"},
    {"name": "Smart Gadgets", "image": "assets/category_page/smart.jpg"},
    {"name": "Books", "image": "assets/category_page/Books.jpg"},
    {
      "name": "Beauty& PersonalCare",
      "image": "assets/category_page/beautipro.jpg"
    },
    {"name": "Sports Hub", "image": "assets/category_page/sports.jpg"},
    {
      "name": "Auto Accessories",
      "image": "assets/category_page/accesories.jpg"
    },
  ];

  final Map<String, List<Map<String, dynamic>>> categoryToSubCategories = {
    "Traditional": [
      {
        "title": "Sarees",
        "items": [
          {"name": "All Sarees", "image": "assets/category_page/saree1.jpg"},
          {
            "name": "Georgette Sarees",
            "image": "assets/category_page/saree2.jpg"
          },
          {
            "name": "Chiffon Sarees",
            "image": "assets/category_page/saree3.jpg"
          },
          {"name": "Cotton Sarees", "image": "assets/category_page/saree4.jpg"},
          {"name": "Net Sarees", "image": "assets/category_page/saree5.jpg"},
          {"name": "Under 299", "image": "assets/category_page/saree6.jpg"},
          {"name": "Silk Sarees", "image": "assets/category_page/saree7.jpg"},
          {
            "name": "New Collection",
            "image": "assets/category_page/saree8.jpg"
          },
          {"name": "Bridal Sarees", "image": "assets/category_page/saree9.jpg"},
        ]
      },
      {
        "title": "Kurtis",
        "items": [
          {"name": "All Kurtis", "image": "assets/category_page/kurtis1.jpg"},
          {
            "name": "Anarkali Kurtis",
            "image": "assets/category_page/kurtis2.jpg"
          },
          {"name": "Rayon Kurtis", "image": "assets/category_page/kurtis3.jpg"},
          {
            "name": "Cotton Kurtis",
            "image": "assets/category_page/kurtis4.jpg"
          },
          {
            "name": "Straight Kurtis",
            "image": "assets/category_page/kurti5.jpg"
          },
          {"name": "Long Kurtis", "image": "assets/category_page/kurti6.jpg"},
          {"name": "Rayon Kurtis", "image": "assets/category_page/kurti7.jpg"},
          {"name": "Cotton Kurtis", "image": "assets/category_page/kurti8.jpg"},
          {
            "name": "Anarkali Kurtis",
            "image": "assets/category_page/kurti9.jpg"
          },
        ]
      }
    ],
    "Men": [
      {
        "title": "Shirts",
        "items": [
          {"name": "Casual Shirts", "image": "assets/category_page/shirt1.jpg"},
          {"name": "Formal Shirts", "image": "assets/category_page/shirt2.jpg"},
          {"name": "Casual Shirts", "image": "assets/category_page/shirt3.jpg"},
          {"name": "Formal Shirts", "image": "assets/category_page/shirt4.jpg"},
          {"name": "Casual Shirts", "image": "assets/category_page/shirt5.jpg"},
          {"name": "Formal Shirts", "image": "assets/category_page/shirt6.jpg"},
        ]
      },
      {
        "title": "Mens traditional",
        "items": [
          {
            "name": "Casual Shirts",
            "image": "assets/category_page/traditionalm1.jpg"
          },
          {
            "name": "Formal Shirts",
            "image": "assets/category_page/traditional2.jpg"
          },
          {
            "name": "Casual Shirts",
            "image": "assets/category_page/traditionalm3.jpg"
          },
          {
            "name": "Formal Shirts",
            "image": "assets/category_page/traditional34.jpg"
          },
          {
            "name": "Casual Shirts",
            "image": "assets/category_page/traditionalm7.jpg"
          },
          {
            "name": "Formal Shirts",
            "image": "assets/category_page/traditionm5.jpg"
          },
        ]
      },
    ]
  };

  List<Map<String, dynamic>> get selectedSubCategories {
    final categoryName = categories[selectedCategoryIndex]["name"];
    return categoryToSubCategories[categoryName] ?? [];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () {
            Navigator.pop(context); // Navigates back when tapped
          },
        ),
        title: const Text("Categories"),
        backgroundColor: Colors.white,
        elevation: 1,
        actions: [
          IconButton(
              onPressed: () {},
              icon: const Icon(Icons.search, color: Colors.black)),
          IconButton(
              onPressed: () {},
              icon: const Icon(Icons.favorite_border, color: Colors.black)),
          IconButton(
              onPressed: () {},
              icon: const Icon(Icons.shopping_cart, color: Colors.black)),
        ],
        automaticallyImplyLeading: false,
      ),
      body: Row(
        children: [
          // Left Side Menu (ListView)
          Container(
            width: 100,
            color: Colors.grey.shade200,
            child: ListView.builder(
              itemCount: categories.length,
              itemBuilder: (context, index) {
                return InkWell(
                  onTap: () {
                    setState(() {
                      selectedCategoryIndex = index;
                    });
                  },
                  child: Container(
                    padding: const EdgeInsets.all(10),
                    color: selectedCategoryIndex == index
                        ? Colors.white
                        : Colors.grey.shade200,
                    child: Column(
                      children: [
                        CircleAvatar(
                          backgroundImage:
                              AssetImage(categories[index]["image"]),
                          radius: 20,
                        ),
                        const SizedBox(height: 5),
                        Text(
                          categories[index]["name"],
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: selectedCategoryIndex == index
                                ? FontWeight.bold
                                : FontWeight.normal,
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),

          // Right Side Content (Subcategories)
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: ListView(
                children: selectedSubCategories.map((category) {
                  return Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        category["title"],
                        style: const TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(height: 10),
                      GridView.builder(
                        shrinkWrap: true,
                        physics: const NeverScrollableScrollPhysics(),
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 3,
                          childAspectRatio: 0.7,
                          crossAxisSpacing: 10,
                          mainAxisSpacing: 10,
                        ),
                        itemCount: category["items"].length,
                        itemBuilder: (context, index) {
                          var item = category["items"][index];
                          return GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) =>
                                      const SubCategoryListPage(),
                                ),
                              );
                            },
                            child: Column(
                              children: [
                                Image.asset(
                                  item["image"],
                                  height: 60,
                                  width: 60,
                                  fit: BoxFit.contain,
                                ),
                                const SizedBox(height: 5),
                                Text(
                                  item["name"],
                                  textAlign: TextAlign.center,
                                  style: const TextStyle(fontSize: 12),
                                ),
                              ],
                            ),
                          );
                        },
                      ),
                      const SizedBox(height: 20),
                    ],
                  );
                }).toList(),
              ),
            ),
          )
        ],
      ),
    );
  }
}
