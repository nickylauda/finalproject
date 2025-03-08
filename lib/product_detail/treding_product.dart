// import 'package:flutter/material.dart';

// class ProductDetailPage extends StatefulWidget {
//   final Map<String, dynamic> product;

//   const ProductDetailPage({super.key, required this.product});

//   @override
//   _ProductDetailPageState createState() => _ProductDetailPageState();
// }

// class _ProductDetailPageState extends State<ProductDetailPage> {
//   String selectedColor = 'Red'; // Default selected color
//   String selectedSize = 'M'; // Default selected size

//   @override
//   Widget build(BuildContext context) {
//     final product = widget.product;

//     return Scaffold(
//       appBar: AppBar(
//         title: Text(product["name"]!),
//         actions: [
//           IconButton(
//             icon: const Icon(Icons.favorite_border),
//             onPressed: () {
//               // TODO: Add to wishlist functionality
//             },
//           ),
//         ],
//       ),
//       body: SingleChildScrollView(
//         child: Padding(
//           padding: const EdgeInsets.all(16.0),
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               // Product Image
//               Center(
//                 child: Image.asset(
//                   product["image"]!,
//                   height: 300,
//                   fit: BoxFit.cover,
//                 ),
//               ),

//               const SizedBox(height: 20),

//               // Product Name
//               Text(
//                 product["name"]!,
//                 style: const TextStyle(
//                   fontSize: 24,
//                   fontWeight: FontWeight.bold,
//                 ),
//               ),

//               const SizedBox(height: 10),

//               // Price & Discount
//               Row(
//                 children: [
//                   Text(
//                     product["newPrice"]!,
//                     style: const TextStyle(
//                       fontSize: 20,
//                       color: Colors.green,
//                       fontWeight: FontWeight.bold,
//                     ),
//                   ),
//                   const SizedBox(width: 10),
//                   Text(
//                     product["oldPrice"]!,
//                     style: const TextStyle(
//                       fontSize: 16,
//                       color: Colors.grey,
//                       decoration: TextDecoration.lineThrough,
//                     ),
//                   ),
//                 ],
//               ),

//               const SizedBox(height: 10),

//               // Rating
//               Row(
//                 children: [
//                   for (int i = 1; i <= 5; i++)
//                     Icon(
//                       Icons.star,
//                       size: 20,
//                       color: i <= product["rating"] ? Colors.amber : Colors.grey[300],
//                     ),
//                   const SizedBox(width: 10),
//                   Text(
//                     '${product["rating"]}',
//                     style: const TextStyle(
//                       fontSize: 16,
//                       fontWeight: FontWeight.bold,
//                     ),
//                   ),
//                 ],
//               ),

//               const SizedBox(height: 20),

//               // Color Selection
//               const Text(
//                 "Select Color:",
//                 style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
//               ),
//               const SizedBox(height: 10),
//               Row(
//                 children: [
//                   _buildColorOption('Red'),
//                   _buildColorOption('Blue'),
//                   _buildColorOption('Green'),
//                   _buildColorOption('Black'),
//                 ],
//               ),

//               const SizedBox(height: 20),

//               // Size Selection
//               const Text(
//                 "Select Size:",
//                 style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
//               ),
//               const SizedBox(height: 10),
//               Row(
//                 children: [
//                   _buildSizeOption('S'),
//                   _buildSizeOption('M'),
//                   _buildSizeOption('L'),
//                   _buildSizeOption('XL'),
//                 ],
//               ),

//               const SizedBox(height: 20),

//               // Address Selection
//               const Text(
//                 "Delivery Address:",
//                 style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
//               ),
//               const SizedBox(height: 10),
//               Container(
//                 padding: const EdgeInsets.all(12),
//                 decoration: BoxDecoration(
//                   border: Border.all(color: Colors.grey),
//                   borderRadius: BorderRadius.circular(8),
//                 ),
//                 child: const Row(
//                   children: [
//                     Icon(Icons.location_on, color: Colors.grey),
//                     SizedBox(width: 10),
//                     Expanded(
//                       child: Text(
//                         "123 Main Street, City, Country",
//                         style: TextStyle(fontSize: 16),
//                       ),
//                     ),
//                     Icon(Icons.arrow_forward_ios, size: 16, color: Colors.grey),
//                   ],
//                 ),
//               ),

//               const SizedBox(height: 20),

//               // Add to Cart & Buy Now Buttons
//               Row(
//                 children: [
//                   Expanded(
//                     child: ElevatedButton(
//                       onPressed: () {
//                         // TODO: Add to cart functionality
//                         ScaffoldMessenger.of(context).showSnackBar(
//                           const SnackBar(
//                             content: Text("Product added to cart!"),
//                           ),
//                         );
//                       },
//                       style: ElevatedButton.styleFrom(
//                         backgroundColor: Colors.orange,
//                         padding: const EdgeInsets.symmetric(vertical: 16),
//                       ),
//                       child: const Text(
//                         "Add to Cart",
//                         style: TextStyle(fontSize: 18, color: Colors.white),
//                       ),
//                     ),
//                   ),
//                   const SizedBox(width: 10),
//                   Expanded(
//                     child: ElevatedButton(
//                       onPressed: () {
//                         // TODO: Buy now functionality
//                       },
//                       style: ElevatedButton.styleFrom(
//                         backgroundColor: Colors.green,
//                         padding: const EdgeInsets.symmetric(vertical: 16),
//                       ),
//                       child: const Text(
//                         "Buy Now",
//                         style: TextStyle(fontSize: 18, color: Colors.white),
//                       ),
//                     ),
//                   ),
//                 ],
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }

//   // Helper method to build color selection options
//   Widget _buildColorOption(String color) {
//     return GestureDetector(
//       onTap: () {
//         setState(() {
//           selectedColor = color;
//         });
//       },
//       child: Container(
//         margin: const EdgeInsets.only(right: 10),
//         padding: const EdgeInsets.all(8),
//         decoration: BoxDecoration(
//           color: selectedColor == color ? Colors.blue : Colors.transparent,
//           border: Border.all(
//             color: selectedColor == color ? Colors.blue : Colors.grey,
//           ),
//           borderRadius: BorderRadius.circular(20),
//         ),
//         child: Text(
//           color,
//           style: TextStyle(
//             color: selectedColor == color ? Colors.white : Colors.black,
//           ),
//         ),
//       ),
//     );
//   }

//   // Helper method to build size selection options
//   Widget _buildSizeOption(String size) {
//     return GestureDetector(
//       onTap: () {
//         setState(() {
//           selectedSize = size;
//         });
//       },
//       child: Container(
//         margin: const EdgeInsets.only(right: 10),
//         padding: const EdgeInsets.all(8),
//         decoration: BoxDecoration(
//           color: selectedSize == size ? Colors.blue : Colors.transparent,
//           border: Border.all(
//             color: selectedSize == size ? Colors.blue : Colors.grey,
//           ),
//           borderRadius: BorderRadius.circular(20),
//         ),
//         child: Text(
//           size,
//           style: TextStyle(
//             color: selectedSize == size ? Colors.white : Colors.black,
//           ),
//         ),
//       ),
//     );
//   }
// }
import 'package:flutter/material.dart';

class ProductDetailPage extends StatefulWidget {
  final Map<String, dynamic> product;

  const ProductDetailPage({super.key, required this.product});

  @override
  _ProductDetailPageState createState() => _ProductDetailPageState();
}

class _ProductDetailPageState extends State<ProductDetailPage> {
  String selectedColor = 'Red'; // Default selected color
  String selectedSize = 'M'; // Default selected size
  int _currentImageIndex = 0; // Track current image index
  final PageController _pageController = PageController(); // For image carousel

  // Dummy address for editing
  String deliveryAddress = "123 Main Street, City, Country";

  @override
  Widget build(BuildContext context) {
    final product = widget.product;

    // Dummy product images for demonstration
    List<String> productImages = [
      product["image"]!,
      "assets/homes/shoes7.jpg",
      "assets/homes/shoes7.jpg",
      "assets/homes/shoes7.jpg",
    ];

    return Scaffold(
      appBar: AppBar(
        title: Text(product["name"]!),
        actions: [
          IconButton(
            icon: const Icon(Icons.favorite_border),
            onPressed: () {
              // TODO: Add to wishlist functionality
            },
          ),
        ],
      ),
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Product Images Carousel
                  SizedBox(
                    height: 300,
                    child: Stack(
                      children: [
                        PageView.builder(
                          controller: _pageController,
                          itemCount: productImages.length,
                          onPageChanged: (index) {
                            setState(() {
                              _currentImageIndex = index;
                            });
                          },
                          itemBuilder: (context, index) {
                            return Image.asset(
                              productImages[index],
                              fit: BoxFit.cover,
                            );
                          },
                        ),
                        // Scroll Indicator (Dots)
                        Positioned(
                          bottom: 10,
                          left: 0,
                          right: 0,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: List.generate(
                              productImages.length,
                              (index) => Container(
                                margin:
                                    const EdgeInsets.symmetric(horizontal: 4),
                                width: 8,
                                height: 8,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: _currentImageIndex == index
                                      ? Colors.blue
                                      : Colors.grey,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),

                  const SizedBox(height: 20),

                  // Product Name
                  Text(
                    product["name"]!,
                    style: const TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),

                  const SizedBox(height: 10),

                  // Price & Discount
                  Row(
                    children: [
                      Text(
                        product["newPrice"]!,
                        style: const TextStyle(
                          fontSize: 20,
                          color: Colors.green,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(width: 10),
                      Text(
                        product["oldPrice"]!,
                        style: const TextStyle(
                          fontSize: 16,
                          color: Colors.grey,
                          decoration: TextDecoration.lineThrough,
                        ),
                      ),
                    ],
                  ),

                  const SizedBox(height: 10),

                  // Rating
                  Row(
                    children: [
                      for (int i = 1; i <= 5; i++)
                        Icon(
                          Icons.star,
                          size: 20,
                          color: i <= product["rating"]
                              ? Colors.amber
                              : Colors.grey[300],
                        ),
                      const SizedBox(width: 10),
                      Text(
                        '${product["rating"]}',
                        style: const TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),

                  const SizedBox(height: 20),

                  // Color Selection
                  const Text(
                    "Select Color:",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 10),
                  Row(
                    children: [
                      _buildColorOption('Red'),
                      _buildColorOption('Blue'),
                      _buildColorOption('Green'),
                      _buildColorOption('Black'),
                    ],
                  ),

                  const SizedBox(height: 20),

                  // Size Selection
                  const Text(
                    "Select Size:",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 10),
                  Row(
                    children: [
                      _buildSizeOption('S'),
                      _buildSizeOption('M'),
                      _buildSizeOption('L'),
                      _buildSizeOption('XL'),
                    ],
                  ),

                  const SizedBox(height: 20),

                  // Address Selection
                  const Text(
                    "Delivery Address:",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 10),
                  Container(
                    padding: const EdgeInsets.all(12),
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Row(
                      children: [
                        const Icon(Icons.location_on, color: Colors.grey),
                        const SizedBox(width: 10),
                        Expanded(
                          child: Text(
                            deliveryAddress,
                            style: const TextStyle(fontSize: 16),
                          ),
                        ),
                        IconButton(
                          icon: const Icon(Icons.edit,
                              size: 20, color: Colors.blue),
                          onPressed: () {
                            _editAddress();
                          },
                        ),
                      ],
                    ),
                  ),

                  const SizedBox(height: 100), // Space for fixed buttons
                ],
              ),
            ),
          ),

          // Fixed "Add to Cart" and "Buy Now" Buttons
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              color: Colors.white,
              padding: const EdgeInsets.all(16),
              child: Row(
                children: [
                  Expanded(
                    child: ElevatedButton(
                      onPressed: () {
                        // TODO: Add to cart functionality
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(
                            content: Text("Product added to cart!"),
                          ),
                        );
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.orange,
                        padding: const EdgeInsets.symmetric(vertical: 16),
                      ),
                      child: const Text(
                        "Add to Cart",
                        style: TextStyle(fontSize: 18, color: Colors.white),
                      ),
                    ),
                  ),
                  const SizedBox(width: 10),
                  Expanded(
                    child: ElevatedButton(
                      onPressed: () {
                        // TODO: Buy now functionality
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.green,
                        padding: const EdgeInsets.symmetric(vertical: 16),
                      ),
                      child: const Text(
                        "Buy Now",
                        style: TextStyle(fontSize: 18, color: Colors.white),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  // Helper method to build color selection options
  Widget _buildColorOption(String color) {
    return GestureDetector(
      onTap: () {
        setState(() {
          selectedColor = color;
        });
      },
      child: Container(
        margin: const EdgeInsets.only(right: 10),
        padding: const EdgeInsets.all(8),
        decoration: BoxDecoration(
          color: selectedColor == color ? Colors.blue : Colors.transparent,
          border: Border.all(
            color: selectedColor == color ? Colors.blue : Colors.grey,
          ),
          borderRadius: BorderRadius.circular(20),
        ),
        child: Text(
          color,
          style: TextStyle(
            color: selectedColor == color ? Colors.white : Colors.black,
          ),
        ),
      ),
    );
  }

  // Helper method to build size selection options
  Widget _buildSizeOption(String size) {
    return GestureDetector(
      onTap: () {
        setState(() {
          selectedSize = size;
        });
      },
      child: Container(
        margin: const EdgeInsets.only(right: 10),
        padding: const EdgeInsets.all(8),
        decoration: BoxDecoration(
          color: selectedSize == size ? Colors.blue : Colors.transparent,
          border: Border.all(
            color: selectedSize == size ? Colors.blue : Colors.grey,
          ),
          borderRadius: BorderRadius.circular(20),
        ),
        child: Text(
          size,
          style: TextStyle(
            color: selectedSize == size ? Colors.white : Colors.black,
          ),
        ),
      ),
    );
  }

  // Method to edit address
  void _editAddress() async {
    final newAddress = await showDialog<String>(
      context: context,
      builder: (context) {
        String updatedAddress = deliveryAddress;
        return AlertDialog(
          title: const Text("Edit Address"),
          content: TextField(
            decoration: const InputDecoration(hintText: "Enter new address"),
            onChanged: (value) {
              updatedAddress = value;
            },
          ),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text("Cancel"),
            ),
            TextButton(
              onPressed: () {
                Navigator.pop(context, updatedAddress);
              },
              child: const Text("Save"),
            ),
          ],
        );
      },
    );

    if (newAddress != null) {
      setState(() {
        deliveryAddress = newAddress;
      });
    }
  }
}
