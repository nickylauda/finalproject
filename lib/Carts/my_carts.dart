// import 'package:flutter/material.dart';

// class CartPage extends StatefulWidget {
//   const CartPage({super.key});

//   @override
//   State<CartPage> createState() => _CartPageState();
// }

// class _CartPageState extends State<CartPage> {
//   // Sample Cart Data
//   List<Map<String, dynamic>> cartItems = [
//     {
//       'image': 'assets/homes/lehanga3.jpg',
//       'name': 'Samsung Galaxy M14',
//       'price': 14999,
//       'discount': 2000,
//       'quantity': 1
//     },
//     {
//       'image': 'assets/homes/masonry3.jpg',
//       'name': 'Men Slim Fit T-Shirt',
//       'price': 899,
//       'discount': 100,
//       'quantity': 2
//     },
//   ];

//   // Calculate total price dynamically
//   double getTotalAmount() {
//     double total = 0;
//     for (var item in cartItems) {
//       total += (item['price'] - item['discount']) * item['quantity'];
//     }
//     return total;
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.white, // Flipkart-style clean white background
//       appBar: AppBar(
//         title: const Text("My Cart", style: TextStyle(fontSize: 20)),
//         backgroundColor: Colors.blueAccent,
//         centerTitle: true,
//         elevation: 0,
//         actions: [
//           IconButton(
//             icon: const Icon(Icons.search),
//             onPressed: () {},
//           ),
//           IconButton(
//             icon: const Icon(Icons.favorite_border),
//             onPressed: () {},
//           ),
//         ],
//       ),
//       body: Column(
//         children: [
//           Expanded(
//             child: ListView.builder(
//               itemCount: cartItems.length,
//               itemBuilder: (context, index) {
//                 final item = cartItems[index];
//                 return _buildCartItem(item, index);
//               },
//             ),
//           ),

//           // Apply Coupon Section
//           _buildCouponSection(),

//           // Price Details Section
//           _buildPriceDetails(),

//           // Checkout Button
//           _buildCheckoutButton(),
//         ],
//       ),
//     );
//   }

//   // Cart Item Widget
//   Widget _buildCartItem(Map<String, dynamic> item, int index) {
//     return Card(
//       margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 8),
//       child: Padding(
//         padding: const EdgeInsets.all(10),
//         child: Row(
//           children: [
//             //  Product Image
//             ClipRRect(
//               borderRadius: BorderRadius.circular(10),
//               child: Image.asset(
//                 item['image'],
//                 width: 80,
//                 height: 80,
//                 fit: BoxFit.cover,
//               ),
//             ),
//             const SizedBox(width: 12),

//             //  Product Info
//             Expanded(
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   Text(
//                     item['name'],
//                     style: const TextStyle(
//                         fontSize: 16, fontWeight: FontWeight.bold),
//                   ),
//                   const SizedBox(height: 4),
//                   Text(
//                     "₹${item['price']}  ",
//                     style: const TextStyle(fontSize: 14, color: Colors.black54),
//                   ),
//                   Text(
//                     "Discount: ₹${item['discount']}",
//                     style: const TextStyle(fontSize: 14, color: Colors.green),
//                   ),
//                 ],
//               ),
//             ),

//             //  Quantity Selector & Remove Button
//             Column(
//               children: [
//                 Row(
//                   children: [
//                     IconButton(
//                       icon: const Icon(Icons.remove_circle_outline),
//                       onPressed: () {
//                         setState(() {
//                           if (item['quantity'] > 1) {
//                             item['quantity']--;
//                           }
//                         });
//                       },
//                     ),
//                     Text("${item['quantity']}",
//                         style: const TextStyle(fontSize: 16)),
//                     IconButton(
//                       icon: const Icon(Icons.add_circle_outline),
//                       onPressed: () {
//                         setState(() {
//                           item['quantity']++;
//                         });
//                       },
//                     ),
//                   ],
//                 ),
//                 TextButton(
//                   onPressed: () {
//                     setState(() {
//                       cartItems.removeAt(index);
//                     });
//                   },
//                   child: const Text(
//                     "Remove",
//                     style: TextStyle(color: Colors.red),
//                   ),
//                 ),
//               ],
//             ),
//           ],
//         ),
//       ),
//     );
//   }

//   // 🔹 Apply Coupon Section
//   Widget _buildCouponSection() {
//     return Container(
//       padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
//       color: Colors.white,
//       child: Row(
//         children: [
//           const Icon(Icons.local_offer, color: Colors.green),
//           const SizedBox(width: 10),
//           const Text(
//             "Apply Coupon",
//             style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
//           ),
//           const Spacer(),
//           TextButton(
//             onPressed: () {},
//             child:
//                 const Text("VIEW OFFERS", style: TextStyle(color: Colors.blue)),
//           ),
//         ],
//       ),
//     );
//   }

//   // 🔹 Price Details Section
//   Widget _buildPriceDetails() {
//     double total = getTotalAmount();
//     double deliveryCharge =
//         total > 500 ? 0 : 50; // Free delivery for orders above ₹500

//     return Container(
//       padding: const EdgeInsets.all(16),
//       decoration: const BoxDecoration(
//         color: Colors.white,
//         border: Border(top: BorderSide(color: Colors.black12)),
//       ),
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           const Text("Price Details",
//               style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
//           const SizedBox(height: 10),
//           _buildPriceRow("Total Price", "₹$total"),
//           _buildPriceRow("Discount", "- ₹200"),
//           _buildPriceRow("Delivery Charge",
//               deliveryCharge == 0 ? "Free" : "₹$deliveryCharge"),
//           const Divider(),
//           _buildPriceRow("Total Amount", "₹${total + deliveryCharge}",
//               isBold: true),
//         ],
//       ),
//     );
//   }

//   // 🔹 Price Row Helper
//   Widget _buildPriceRow(String title, String value, {bool isBold = false}) {
//     return Padding(
//       padding: const EdgeInsets.symmetric(vertical: 4),
//       child: Row(
//         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//         children: [
//           Text(title,
//               style: TextStyle(
//                   fontSize: 16,
//                   fontWeight: isBold ? FontWeight.bold : FontWeight.normal)),
//           Text(value,
//               style: TextStyle(
//                   fontSize: 16,
//                   fontWeight: isBold ? FontWeight.bold : FontWeight.normal)),
//         ],
//       ),
//     );
//   }

//   // 🔹 Checkout Button
//   Widget _buildCheckoutButton() {
//     return Container(
//       padding: const EdgeInsets.all(16),
//       color: Colors.white,
//       child: ElevatedButton(
//         onPressed: () {
//           // TODO: Navigate to Payment Screen
//         },
//         style: ElevatedButton.styleFrom(
//           backgroundColor: Colors.orangeAccent,
//           shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
//           minimumSize: const Size(double.infinity, 50),
//         ),
//         child: const Text(
//           "Proceed to Checkout",
//           style: TextStyle(
//               fontSize: 18, color: Colors.white, fontWeight: FontWeight.bold),
//         ),
//       ),
//     );
//   }
// }
// import 'package:flutter/material.dart';

// class CartItem {
//   final String id;
//   final String name;
//   final double originalPrice;
//   final double discountedPrice;
//   int quantity;
//   final String imagePath;
//   bool isSelected;

//   CartItem({
//     required this.id,
//     required this.name,
//     required this.originalPrice,
//     required this.discountedPrice,
//     required this.quantity,
//     required this.imagePath,
//     this.isSelected = true,
//   });
// }

// class CartPage extends StatefulWidget {
//   const CartPage({super.key});

//   @override
//   // ignore: library_private_types_in_public_api
//   _CartPageState createState() => _CartPageState();
// }

// class _CartPageState extends State<CartPage> {
//   final List<CartItem> _cartItems = [
//     CartItem(
//       id: '1',
//       name: 'Men\'s Casual Shirt',
//       originalPrice: 1999,
//       discountedPrice: 899,
//       quantity: 1,
//       imagePath: 'assets/homes/masonry1.jpg',
//     ),
//     CartItem(
//       id: '2',
//       name: 'Wireless Headphones',
//       originalPrice: 2999,
//       discountedPrice: 1499,
//       quantity: 2,
//       imagePath: 'assets/homes/masonry2.jpg',
//     ),
//   ];

//   void _toggleItemSelection(int index) {
//     setState(() {
//       _cartItems[index].isSelected = !_cartItems[index].isSelected;
//     });
//   }

//   void _updateQuantity(String productId, bool isIncrement) {
//     setState(() {
//       final item = _cartItems.firstWhere((item) => item.id == productId);
//       if (isIncrement) {
//         item.quantity++;
//       } else {
//         if (item.quantity > 1) item.quantity--;
//       }
//     });
//   }

//   void _removeItem(String productId) {
//     setState(() {
//       _cartItems.removeWhere((item) => item.id == productId);
//     });
//   }

//   double get _totalAmount {
//     return _cartItems.fold(
//         0,
//         (sum, item) => item.isSelected
//             ? sum + (item.discountedPrice * item.quantity)
//             : sum);
//   }

//   int get _selectedItemsCount {
//     return _cartItems.where((item) => item.isSelected).length;
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('My Cart (${_cartItems.length})'),
//         actions: [
//           IconButton(
//             icon: const Icon(Icons.search),
//             onPressed: () {},
//           ),
//         ],
//       ),
//       body: Column(
//         children: [
//           Expanded(
//             child: ListView.builder(
//               itemCount: _cartItems.length,
//               itemBuilder: (ctx, index) => Container(
//                 margin: const EdgeInsets.symmetric(vertical: 6, horizontal: 10),
//                 decoration: BoxDecoration(
//                   color: Colors.white,
//                   borderRadius: BorderRadius.circular(8),
//                   boxShadow: [
//                     BoxShadow(
//                       color: Colors.grey.withOpacity(0.2),
//                       spreadRadius: 1,
//                       blurRadius: 3,
//                     )
//                   ],
//                 ),
//                 child: Row(
//                   children: [
//                     Checkbox(
//                       value: _cartItems[index].isSelected,
//                       onChanged: (bool? value) => _toggleItemSelection(index),
//                       activeColor: Colors.orange,
//                     ),
//                     Image.asset(
//                       _cartItems[index].imagePath,
//                       width: 80,
//                       height: 80,
//                     ),
//                     Expanded(
//                       child: Padding(
//                         padding: const EdgeInsets.all(8.0),
//                         child: Column(
//                           crossAxisAlignment: CrossAxisAlignment.start,
//                           children: [
//                             Text(
//                               _cartItems[index].name,
//                               style: const TextStyle(
//                                 fontSize: 16,
//                                 fontWeight: FontWeight.w500,
//                               ),
//                               maxLines: 2,
//                               overflow: TextOverflow.ellipsis,
//                             ),
//                             const SizedBox(height: 4),
//                             const Text(
//                               'Delivery in 2 days',
//                               style: TextStyle(
//                                 color: Colors.green,
//                                 fontSize: 12,
//                               ),
//                             ),
//                             const SizedBox(height: 8),
//                             Row(
//                               children: [
//                                 Text(
//                                   '₹${_cartItems[index].discountedPrice}',
//                                   style: const TextStyle(
//                                     fontSize: 16,
//                                     fontWeight: FontWeight.bold,
//                                     color: Colors.orange,
//                                   ),
//                                 ),
//                                 const SizedBox(width: 8),
//                                 Text(
//                                   '₹${_cartItems[index].originalPrice}',
//                                   style: const TextStyle(
//                                     fontSize: 12,
//                                     color: Colors.grey,
//                                     decoration: TextDecoration.lineThrough,
//                                   ),
//                                 ),
//                               ],
//                             ),
//                           ],
//                         ),
//                       ),
//                     ),
//                     Column(
//                       children: [
//                         IconButton(
//                           icon: const Icon(Icons.close),
//                           onPressed: () => _removeItem(_cartItems[index].id),
//                         ),
//                         Container(
//                           height: 30,
//                           decoration: BoxDecoration(
//                             border: Border.all(color: Colors.red),
//                             borderRadius: BorderRadius.circular(4),
//                           ),
//                           child: Row(
//                             children: [
//                               IconButton(
//                                 icon: const Icon(Icons.remove, size: 18),
//                                 onPressed: () => _updateQuantity(
//                                     _cartItems[index].id, false),
//                               ),
//                               Text(_cartItems[index].quantity.toString()),
//                               IconButton(
//                                 icon: const Icon(Icons.add, size: 18),
//                                 onPressed: () =>
//                                     _updateQuantity(_cartItems[index].id, true),
//                               ),
//                             ],
//                           ),
//                         ),
//                       ],
//                     ),
//                   ],
//                 ),
//               ),
//             ),
//           ),
//           Container(
//             padding: const EdgeInsets.all(16),
//             decoration: BoxDecoration(
//               color: Colors.white,
//               boxShadow: [
//                 BoxShadow(
//                   color: Colors.grey.withOpacity(0.2),
//                   spreadRadius: 1,
//                   blurRadius: 3,
//                   offset: const Offset(0, -2),
//                 ),
//               ],
//             ),
//             child: Column(
//               children: [
//                 Row(
//                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                   children: [
//                     Text(
//                       'Total ($_selectedItemsCount items)',
//                       style: const TextStyle(
//                         fontSize: 16,
//                         fontWeight: FontWeight.w500,
//                       ),
//                     ),
//                     Text(
//                       '₹${_totalAmount.toStringAsFixed(0)}',
//                       style: const TextStyle(
//                         fontSize: 18,
//                         fontWeight: FontWeight.bold,
//                         color: Colors.orange,
//                       ),
//                     ),
//                   ],
//                 ),
//                 const SizedBox(height: 8),
//                 SizedBox(
//                   child: ElevatedButton(
//                     style: ElevatedButton.styleFrom(
//                       backgroundColor: Colors.orange,
//                       padding: const EdgeInsets.symmetric(vertical: 10),
//                     ),
//                     onPressed: () {},
//                     child: const Text(
//                       'PLACE ORDER',
//                       style: TextStyle(
//                         fontSize: 16,
//                         fontWeight: FontWeight.bold,
//                       ),
//                     ),
//                   ),
//                 ),
//               ],
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
// import 'package:flutter/material.dart';

// class CartPage extends StatefulWidget {
//   const CartPage({super.key});

//   @override
//   State<CartPage> createState() => _CartPageState();
// }

// class _CartPageState extends State<CartPage> {
//   // Sample Cart Data
//   List<Map<String, dynamic>> cartItems = [
//     {
//       'image': 'assets/homes/lehanga3.jpg',
//       'name': 'Samsung Galaxy M14',
//       'price': 14999,
//       'discount': 2000,
//       'quantity': 1
//     },
//     {
//       'image': 'assets/homes/masonry3.jpg',
//       'name': 'Men Slim Fit T-Shirt',
//       'price': 899,
//       'discount': 100,
//       'quantity': 2
//     },
//      {
//       'image': 'assets/homes/lehanga3.jpg',
//       'name': 'Samsung Galaxy M14',
//       'price': 14999,
//       'discount': 2000,
//       'quantity': 1
//     },
//     {
//       'image': 'assets/homes/masonry3.jpg',
//       'name': 'Men Slim Fit T-Shirt',
//       'price': 899,
//       'discount': 100,
//       'quantity': 2
//     },
//   ];

//   // Calculate total price dynamically
//   double getTotalAmount() {
//     double total = 0;
//     for (var item in cartItems) {
//       total += (item['price'] - item['discount']) * item['quantity'];
//     }
//     return total;
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor:
//           Colors.grey[100], // Light grey background for a modern look
//       appBar: AppBar(
//         title: const Text("My Cart",
//             style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
//         backgroundColor: Colors.blueAccent,
//         centerTitle: true,
//         elevation: 0,
//         actions: [
//           IconButton(
//             icon: const Icon(Icons.search, color: Colors.white),
//             onPressed: () {},
//           ),
//           IconButton(
//             icon: const Icon(Icons.favorite_border, color: Colors.white),
//             onPressed: () {},
//           ),
//         ],
//       ),
//       body: Column(
//         children: [
//           Expanded(
//             child: ListView.builder(
//               itemCount: cartItems.length,
//               itemBuilder: (context, index) {
//                 final item = cartItems[index];
//                 return _buildCartItem(item, index);
//               },
//             ),
//           ),

//           // Apply Coupon Section
//           _buildCouponSection(),

//           // Price Details Section
//           _buildPriceDetails(),

//           // Checkout Button
//           _buildCheckoutButton(),
//         ],
//       ),
//     );
//   }

//   // Cart Item Widget
//   Widget _buildCartItem(Map<String, dynamic> item, int index) {
//     return Card(
//       color: Colors.white,
//       margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
//       elevation: 1,
//       shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
//       child: Padding(
//         padding: const EdgeInsets.all(12),
//         child: Row(
//           children: [
//             // Product Image
//             ClipRRect(
//               borderRadius: BorderRadius.circular(10),
//               child: Image.asset(
//                 item['image'],
//                 width: 80,
//                 height: 80,
//                 fit: BoxFit.cover,
//               ),
//             ),
//             const SizedBox(width: 12),

//             // Product Info
//             Expanded(
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   Text(
//                     item['name'],
//                     style: const TextStyle(
//                         fontSize: 16, fontWeight: FontWeight.bold),
//                   ),
//                   const SizedBox(height: 4),
//                   Text(
//                     "₹${item['price']}",
//                     style: const TextStyle(fontSize: 14, color: Colors.black54),
//                   ),
//                   Text(
//                     "Discount: ₹${item['discount']}",
//                     style: const TextStyle(fontSize: 14, color: Colors.green),
//                   ),
//                 ],
//               ),
//             ),

//             // Quantity Selector & Remove Button
//             Column(
//               children: [
//                 Row(
//                   children: [
//                     IconButton(
//                       icon: const Icon(Icons.remove_circle_outline,
//                           color: Colors.grey),
//                       onPressed: () {
//                         setState(() {
//                           if (item['quantity'] > 1) {
//                             item['quantity']--;
//                           }
//                         });
//                       },
//                     ),
//                     Text("${item['quantity']}",
//                         style: const TextStyle(fontSize: 16)),
//                     IconButton(
//                       icon: const Icon(Icons.add_circle_outline,
//                           color: Colors.blueAccent),
//                       onPressed: () {
//                         setState(() {
//                           item['quantity']++;
//                         });
//                       },
//                     ),
//                   ],
//                 ),
//                 TextButton(
//                   onPressed: () {
//                     setState(() {
//                       cartItems.removeAt(index);
//                     });
//                   },
//                   child: const Text(
//                     "Remove",
//                     style: TextStyle(color: Colors.red),
//                   ),
//                 ),
//               ],
//             ),
//           ],
//         ),
//       ),
//     );
//   }

//   // 🔹 Apply Coupon Section
//   Widget _buildCouponSection() {
//     return Container(
//       padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
//       margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
//       decoration: BoxDecoration(
//         color: Colors.white,
//         borderRadius: BorderRadius.circular(12),
//         boxShadow: [
//           BoxShadow(
//             color: Colors.grey.withOpacity(0.1),
//             spreadRadius: 1,
//             blurRadius: 3,
//             offset: const Offset(0, 2),
//           ),
//         ],
//       ),
//       child: Row(
//         children: [
//           const Icon(Icons.local_offer, color: Colors.green),
//           const SizedBox(width: 10),
//           const Text(
//             "Apply Coupon",
//             style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
//           ),
//           const Spacer(),
//           TextButton(
//             onPressed: () {},
//             child:
//                 const Text("VIEW OFFERS", style: TextStyle(color: Colors.blue)),
//           ),
//         ],
//       ),
//     );
//   }

//   // 🔹 Price Details Section
//   Widget _buildPriceDetails() {
//     double total = getTotalAmount();
//     double deliveryCharge =
//         total > 500 ? 0 : 50; // Free delivery for orders above ₹500

//     return Container(
//       padding: const EdgeInsets.all(16),
//       margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
//       decoration: BoxDecoration(
//         color: Colors.white,
//         borderRadius: BorderRadius.circular(12),
//         boxShadow: [
//           BoxShadow(
//             color: Colors.grey.withOpacity(0.1),
//             spreadRadius: 1,
//             blurRadius: 3,
//             offset: const Offset(0, 2),
//           ),
//         ],
//       ),
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           const Text(
//             "Price Details",
//             style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
//           ),
//           const SizedBox(height: 10),
//           _buildPriceRow("Total Price", "₹$total"),
//           _buildPriceRow("Discount", "- ₹200"),
//           _buildPriceRow("Delivery Charge",
//               deliveryCharge == 0 ? "Free" : "₹$deliveryCharge"),
//           const Divider(),
//           _buildPriceRow("Total Amount", "₹${total + deliveryCharge}",
//               isBold: true),
//         ],
//       ),
//     );
//   }

//   // 🔹 Price Row Helper
//   Widget _buildPriceRow(String title, String value, {bool isBold = false}) {
//     return Padding(
//       padding: const EdgeInsets.symmetric(vertical: 4),
//       child: Row(
//         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//         children: [
//           Text(
//             title,
//             style: TextStyle(
//               fontSize: 16,
//               fontWeight: isBold ? FontWeight.bold : FontWeight.normal,
//               color: Colors.black87,
//             ),
//           ),
//           Text(
//             value,
//             style: TextStyle(
//               fontSize: 16,
//               fontWeight: isBold ? FontWeight.bold : FontWeight.normal,
//               color: isBold ? Colors.blueAccent : Colors.black87,
//             ),
//           ),
//         ],
//       ),
//     );
//   }

//   // 🔹 Checkout Button
//   Widget _buildCheckoutButton() {
//     return Container(
//       padding: const EdgeInsets.all(16),
//       color: Colors.white,
//       child: ElevatedButton(
//         onPressed: () {
//           // TODO: Navigate to Payment Screen
//         },
//         style: ElevatedButton.styleFrom(
//           backgroundColor: Colors.blueAccent,
//           shape:
//               RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
//           minimumSize: const Size(double.infinity, 50),
//         ),
//         child: const Text(
//           "Proceed to Checkout",
//           style: TextStyle(
//             fontSize: 18,
//             color: Colors.white,
//             fontWeight: FontWeight.bold,
//           ),
//         ),
//       ),
//     );
//   }
// // }
// import 'package:flutter/material.dart';

// class CartPage extends StatefulWidget {
//   const CartPage({super.key});

//   @override
//   State<CartPage> createState() => _CartPageState();
// }

// class _CartPageState extends State<CartPage> {
//   // Sample Cart Data
//   List<Map<String, dynamic>> cartItems = [
//     {
//       'image': 'assets/homes/lehanga3.jpg',
//       'name': 'Samsung Galaxy M14',
//       'price': 14999,
//       'discount': 2000,
//       'quantity': 1
//     },
//     {
//       'image': 'assets/homes/masonry3.jpg',
//       'name': 'Men Slim Fit T-Shirt',
//       'price': 899,
//       'discount': 100,
//       'quantity': 2
//     },
//   ];

//   // Calculate total price dynamically
//   double getTotalAmount() {
//     double total = 0;
//     for (var item in cartItems) {
//       total += (item['price'] - item['discount']) * item['quantity'];
//     }
//     return total;
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor:
//           Colors.grey[100], // Light grey background for a modern look
//       appBar: AppBar(
//         title: const Text("My Cart",
//             style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
//         backgroundColor: Colors.blueAccent,
//         centerTitle: true,
//         elevation: 0,
//         actions: [
//           IconButton(
//             icon: const Icon(Icons.search, color: Colors.white),
//             onPressed: () {},
//           ),
//           IconButton(
//             icon: const Icon(Icons.favorite_border, color: Colors.white),
//             onPressed: () {},
//           ),
//         ],
//       ),
//       body: SingleChildScrollView(
//         // Wrap the Column in a SingleChildScrollView
//         child: Column(
//           children: [
//             // Cart Items List
//             ListView.builder(
//               shrinkWrap:
//                   true, // Ensure the ListView takes only the required space
//               physics:
//                   const NeverScrollableScrollPhysics(), // Disable ListView's internal scrolling
//               itemCount: cartItems.length,
//               itemBuilder: (context, index) {
//                 final item = cartItems[index];
//                 return _buildCartItem(item, index);
//               },
//             ),

//             // Apply Coupon Section
//             _buildCouponSection(),

//             // Price Details Section
//             _buildPriceDetails(),

//             // Checkout Button
//             _buildCheckoutButton(),
//           ],
//         ),
//       ),
//     );
//   }

//   // Cart Item Widget
//   Widget _buildCartItem(Map<String, dynamic> item, int index) {
//     return Card(
//       margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
//       elevation: 2,
//       shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
//       child: Padding(
//         padding: const EdgeInsets.all(12),
//         child: Row(
//           children: [
//             // Product Image
//             ClipRRect(
//               borderRadius: BorderRadius.circular(10),
//               child: Image.asset(
//                 item['image'],
//                 width: 80,
//                 height: 80,
//                 fit: BoxFit.cover,
//               ),
//             ),
//             const SizedBox(width: 12),

//             // Product Info
//             Expanded(
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   Text(
//                     item['name'],
//                     style: const TextStyle(
//                         fontSize: 16, fontWeight: FontWeight.bold),
//                   ),
//                   const SizedBox(height: 4),
//                   Text(
//                     "₹${item['price']}",
//                     style: const TextStyle(fontSize: 14, color: Colors.black54),
//                   ),
//                   Text(
//                     "Discount: ₹${item['discount']}",
//                     style: const TextStyle(fontSize: 14, color: Colors.green),
//                   ),
//                 ],
//               ),
//             ),

//             // Quantity Selector & Remove Button
//             Column(
//               children: [
//                 Row(
//                   children: [
//                     IconButton(
//                       icon: const Icon(Icons.remove_circle_outline,
//                           color: Colors.grey),
//                       onPressed: () {
//                         setState(() {
//                           if (item['quantity'] > 1) {
//                             item['quantity']--;
//                           }
//                         });
//                       },
//                     ),
//                     Text("${item['quantity']}",
//                         style: const TextStyle(fontSize: 16)),
//                     IconButton(
//                       icon: const Icon(Icons.add_circle_outline,
//                           color: Colors.blueAccent),
//                       onPressed: () {
//                         setState(() {
//                           item['quantity']++;
//                         });
//                       },
//                     ),
//                   ],
//                 ),
//                 TextButton(
//                   onPressed: () {
//                     setState(() {
//                       cartItems.removeAt(index);
//                     });
//                   },
//                   child: const Text(
//                     "Remove",
//                     style: TextStyle(color: Colors.red),
//                   ),
//                 ),
//               ],
//             ),
//           ],
//         ),
//       ),
//     );
//   }

//   // 🔹 Apply Coupon Section
//   Widget _buildCouponSection() {
//     return Container(
//       padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
//       margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
//       decoration: BoxDecoration(
//         color: Colors.white,
//         borderRadius: BorderRadius.circular(12),
//         boxShadow: [
//           BoxShadow(
//             color: Colors.grey.withOpacity(0.1),
//             spreadRadius: 1,
//             blurRadius: 3,
//             offset: const Offset(0, 2),
//           ),
//         ],
//       ),
//       child: Row(
//         children: [
//           const Icon(Icons.local_offer, color: Colors.green),
//           const SizedBox(width: 10),
//           const Text(
//             "Apply Coupon",
//             style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
//           ),
//           const Spacer(),
//           TextButton(
//             onPressed: () {},
//             child:
//                 const Text("VIEW OFFERS", style: TextStyle(color: Colors.blue)),
//           ),
//         ],
//       ),
//     );
//   }

//   // 🔹 Price Details Section
//   Widget _buildPriceDetails() {
//     double total = getTotalAmount();
//     double deliveryCharge =
//         total > 500 ? 0 : 50; // Free delivery for orders above ₹500

//     return Container(
//       padding: const EdgeInsets.all(16),
//       margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
//       decoration: BoxDecoration(
//         color: Colors.white,
//         borderRadius: BorderRadius.circular(12),
//         boxShadow: [
//           BoxShadow(
//             color: Colors.grey.withOpacity(0.1),
//             spreadRadius: 1,
//             blurRadius: 3,
//             offset: const Offset(0, 2),
//           ),
//         ],
//       ),
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           const Text(
//             "Price Details",
//             style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
//           ),
//           const SizedBox(height: 10),
//           _buildPriceRow("Total Price", "₹$total"),
//           _buildPriceRow("Discount", "- ₹200"),
//           _buildPriceRow("Delivery Charge",
//               deliveryCharge == 0 ? "Free" : "₹$deliveryCharge"),
//           const Divider(),
//           _buildPriceRow("Total Amount", "₹${total + deliveryCharge}",
//               isBold: true),
//         ],
//       ),
//     );
//   }

//   // 🔹 Price Row Helper
//   Widget _buildPriceRow(String title, String value, {bool isBold = false}) {
//     return Padding(
//       padding: const EdgeInsets.symmetric(vertical: 4),
//       child: Row(
//         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//         children: [
//           Text(
//             title,
//             style: TextStyle(
//               fontSize: 16,
//               fontWeight: isBold ? FontWeight.bold : FontWeight.normal,
//               color: Colors.black87,
//             ),
//           ),
//           Text(
//             value,
//             style: TextStyle(
//               fontSize: 16,
//               fontWeight: isBold ? FontWeight.bold : FontWeight.normal,
//               color: isBold ? Colors.blueAccent : Colors.black87,
//             ),
//           ),
//         ],
//       ),
//     );
//   }

//   // 🔹 Checkout Button
//   Widget _buildCheckoutButton() {
//     return Container(
//       padding: const EdgeInsets.all(16),
//       color: Colors.white,
//       child: ElevatedButton(
//         onPressed: () {
//           // TODO: Navigate to Payment Screen
//         },
//         style: ElevatedButton.styleFrom(
//           backgroundColor: Colors.blueAccent,
//           shape:
//               RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
//           minimumSize: const Size(double.infinity, 50),
//         ),
//         child: const Text(
//           "Proceed to Checkout",
//           style: TextStyle(
//             fontSize: 18,
//             color: Colors.white,
//             fontWeight: FontWeight.bold,
//           ),
//         ),
//       ),
//     );
//   }
// }
import 'package:flutter/material.dart';

class CartPage extends StatefulWidget {
  const CartPage({super.key});

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  // Sample Cart Data
  List<Map<String, dynamic>> cartItems = [
    {
      'image': 'assets/homes/lehanga1.jpg',
      'name': 'Samsung Galaxy M14',
      'price': 14999,
      'discount': 2000,
      'quantity': 1
    },
    {
      'image': 'assets/homes/masonry2.jpg',
      'name': 'Men Slim Fit T-Shirt',
      'price': 899,
      'discount': 100,
      'quantity': 2
    },
    {
      'image': 'assets/homes/lehanga3.jpg',
      'name': 'Samsung Galaxy M14',
      'price': 14999,
      'discount': 2000,
      'quantity': 1
    },
    {
      'image': 'assets/homes/masonry9.jpg',
      'name': 'Men Slim Fit T-Shirt',
      'price': 899,
      'discount': 100,
      'quantity': 2
    },
    {
      'image': 'assets/homes/masonry4.jpg',
      'name': 'Men Slim Fit T-Shirt',
      'price': 899,
      'discount': 100,
      'quantity': 2
    },
    {
      'image': 'assets/homes/masonry5.jpg',
      'name': 'Men Slim Fit T-Shirt',
      'price': 899,
      'discount': 100,
      'quantity': 2
    },
    {
      'image': 'assets/homes/masonry6.jpg',
      'name': 'Men Slim Fit T-Shirt',
      'price': 899,
      'discount': 100,
      'quantity': 2
    },
  ];

  // Calculate total price dynamically
  double getTotalAmount() {
    double total = 0;
    for (var item in cartItems) {
      total += (item['price'] - item['discount']) * item['quantity'];
    }
    return total;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:
          Colors.grey[100], // Light grey background for a modern look
      appBar: AppBar(
        title: const Text("My Cart",
            style: TextStyle(
                fontSize: 20,
                color: Colors.white,
                fontWeight: FontWeight.bold)),
        backgroundColor: Colors.indigo,
        centerTitle: true,
        elevation: 0,
        actions: [
          IconButton(
            icon: const Icon(Icons.search, color: Colors.white),
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(Icons.favorite_border, color: Colors.white),
            onPressed: () {},
          ),
        ],
        automaticallyImplyLeading: false,
      ),
      body: Stack(
        // Use Stack to overlay the checkout button
        children: [
          SingleChildScrollView(
            // Scrollable content
            child: Column(
              children: [
                // Cart Items List
                ListView.builder(
                  shrinkWrap:
                      true, // Ensure the ListView takes only the required space
                  physics:
                      const NeverScrollableScrollPhysics(), // Disable ListView's internal scrolling
                  itemCount: cartItems.length,
                  itemBuilder: (context, index) {
                    final item = cartItems[index];
                    return _buildCartItem(item, index);
                  },
                ),

                // Apply Coupon Section
                _buildCouponSection(),

                // Price Details Section
                _buildPriceDetails(),

                // Add padding to avoid overlap with the fixed checkout button
                const SizedBox(
                    height: 80), // Adjust this value based on the button height
              ],
            ),
          ),

          // Fixed Checkout Button at the bottom
          Positioned(
            left: 0,
            right: 0,
            bottom: 0,
            child: _buildCheckoutButton(),
          ),
        ],
      ),
    );
  }

  // Cart Item Widget
  Widget _buildCartItem(Map<String, dynamic> item, int index) {
    return Card(
      color: Colors.white,
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      elevation: 2,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: Padding(
        padding: const EdgeInsets.all(12),
        child: Row(
          children: [
            // Product Image
            ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.asset(
                item['image'],
                width: 80,
                height: 80,
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(width: 12),

            // Product Info
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    item['name'],
                    style: const TextStyle(
                        fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    "₹${item['price']}",
                    style: const TextStyle(fontSize: 14, color: Colors.black54),
                  ),
                  Text(
                    "Discount: ₹${item['discount']}",
                    style: const TextStyle(fontSize: 14, color: Colors.green),
                  ),
                ],
              ),
            ),

            // Quantity Selector & Remove Button
            Column(
              children: [
                Row(
                  children: [
                    IconButton(
                      icon: const Icon(Icons.remove_circle_outline,
                          color: Colors.grey),
                      onPressed: () {
                        setState(() {
                          if (item['quantity'] > 1) {
                            item['quantity']--;
                          }
                        });
                      },
                    ),
                    Text("${item['quantity']}",
                        style: const TextStyle(fontSize: 16)),
                    IconButton(
                      icon: const Icon(Icons.add_circle_outline,
                          color: Colors.blueAccent),
                      onPressed: () {
                        setState(() {
                          item['quantity']++;
                        });
                      },
                    ),
                  ],
                ),
                TextButton(
                  onPressed: () {
                    setState(() {
                      cartItems.removeAt(index);
                    });
                  },
                  child: const Text(
                    "Remove",
                    style: TextStyle(color: Colors.red),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  // 🔹 Apply Coupon Section
  Widget _buildCouponSection() {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.1),
            spreadRadius: 1,
            blurRadius: 3,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Row(
        children: [
          const Icon(Icons.local_offer, color: Colors.green),
          const SizedBox(width: 10),
          const Text(
            "Apply Coupon",
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          ),
          const Spacer(),
          TextButton(
            onPressed: () {},
            child:
                const Text("VIEW OFFERS", style: TextStyle(color: Colors.blue)),
          ),
        ],
      ),
    );
  }

  // 🔹 Price Details Section
  Widget _buildPriceDetails() {
    double total = getTotalAmount();
    double deliveryCharge =
        total > 500 ? 0 : 50; // Free delivery for orders above ₹500

    return Container(
      padding: const EdgeInsets.all(16),
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.1),
            spreadRadius: 1,
            blurRadius: 3,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "Price Details",
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 10),
          _buildPriceRow("Total Price", "₹$total"),
          _buildPriceRow("Discount", "- ₹200"),
          _buildPriceRow("Delivery Charge",
              deliveryCharge == 0 ? "Free" : "₹$deliveryCharge"),
          const Divider(),
          _buildPriceRow("Total Amount", "₹${total + deliveryCharge}",
              isBold: true),
        ],
      ),
    );
  }

  // 🔹 Price Row Helper
  Widget _buildPriceRow(String title, String value, {bool isBold = false}) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: TextStyle(
              fontSize: 16,
              fontWeight: isBold ? FontWeight.bold : FontWeight.normal,
              color: Colors.black87,
            ),
          ),
          Text(
            value,
            style: TextStyle(
              fontSize: 16,
              fontWeight: isBold ? FontWeight.bold : FontWeight.normal,
              color: isBold ? Colors.blueAccent : Colors.black87,
            ),
          ),
        ],
      ),
    );
  }

  // 🔹 Checkout Button
  // 🔹 Checkout Button
  // Widget _buildCheckoutButton() {
  //   double total = getTotalAmount();
  //   double deliveryCharge =
  //       total > 500 ? 0 : 50; // Free delivery for orders above ₹500
  //   double totalAmount = total + deliveryCharge;

  //   return Container(
  //     padding: const EdgeInsets.all(16),
  //     color: Colors.white,
  //     child: ElevatedButton(
  //       onPressed: () {
  //         // TODO: Navigate to Payment Screen
  //       },
  //       style: ElevatedButton.styleFrom(
  //         backgroundColor: Colors.blueAccent,
  //         shape:
  //             RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
  //         minimumSize: const Size(double.infinity, 50),
  //       ),
  //       child: Text(
  //         "Place Order - ₹$totalAmount", // Display total amount in the button
  //         style: const TextStyle(
  //           fontSize: 18,
  //           color: Colors.white,
  //           fontWeight: FontWeight.bold,
  //         ),
  //       ),
  //     ),
  //   );
  // }
  // 🔹 Checkout Button with Total Amount on the Left
  Widget _buildCheckoutButton() {
    double total = getTotalAmount();
    double deliveryCharge =
        total > 500 ? 0 : 50; // Free delivery for orders above ₹500
    double totalAmount = total + deliveryCharge;

    return Container(
      padding: const EdgeInsets.all(16),
      color: Colors.white,
      child: Row(
        children: [
          // Total Amount on the Left
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "Total Amount",
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.black54,
                  ),
                ),
                Text(
                  "₹$totalAmount",
                  style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.blueAccent,
                  ),
                ),
              ],
            ),
          ),

          // Place Order Button on the Right
          ElevatedButton(
            onPressed: () {
              // TODO: Navigate to Payment Screen
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.blueAccent,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
              minimumSize: const Size(150, 50), // Adjust button width
            ),
            child: const Text(
              "Place Order",
              style: TextStyle(
                fontSize: 18,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
