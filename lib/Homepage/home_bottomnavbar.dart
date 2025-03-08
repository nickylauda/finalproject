// import 'package:flutter/material.dart';
// import 'package:my_bucket/Homepage/home_screen.dart';
// import 'package:my_bucket/Account/my_accounts.dart';
// import 'package:my_bucket/Carts/my_carts.dart';
// import 'package:my_bucket/Categories/all_categories.dart';

// class BottomNavAppBar extends StatefulWidget {
//   const BottomNavAppBar({super.key});

//   @override
//   State<BottomNavAppBar> createState() => _BottomNavAppBarState();
// }

// class _BottomNavAppBarState extends State<BottomNavAppBar> {
//   int _selectedIndex = 0;

//   final List<Widget> pages = [
//     const HomePage(), // HomePage (With Bottom Navigation)
//   ];

//   void _onItemTapped(int index) {
//     if (index == 0) {
//       // If Home is clicked, stay on the homepage
//       setState(() {
//         _selectedIndex = index;
//       });
//     } else {
//       // Navigate to the selected page WITHOUT the bottom navigation bar
//       Widget nextPage;
//       switch (index) {
//         case 1:
//           nextPage = const AllCategoriesPage();
//           break;
//         case 2:
//           nextPage = const AccountPage();
//           break;
//         case 3:
//           nextPage = const CartPage();
//           break;
//         default:
//           return;
//       }

//       // Navigate to the selected page
//       Navigator.push(
//         context,
//         MaterialPageRoute(builder: (context) => nextPage),
//       );
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: pages[_selectedIndex], // Only HomePage remains in bottom navigation
//       bottomNavigationBar: ClipRRect(
//         borderRadius: const BorderRadius.only(
//           topLeft: Radius.circular(20),
//           topRight: Radius.circular(20),
//         ),
//         child: BottomNavigationBar(
//           currentIndex: _selectedIndex,
//           onTap: _onItemTapped,
//           type: BottomNavigationBarType.fixed,
//           selectedItemColor: Colors.blue.shade800, // Flipkart Blue
//           unselectedItemColor: Colors.grey,
//           backgroundColor: Colors.white,
//           elevation: 10,
//           showUnselectedLabels: true,
//           selectedFontSize: 14,
//           unselectedFontSize: 12,
//           items: const [
//             BottomNavigationBarItem(
//               icon: Icon(Icons.home),
//               label: "Home",
//             ),
//             BottomNavigationBarItem(
//               icon: Icon(Icons.category),
//               label: "Categories",
//             ),
//             BottomNavigationBarItem(
//               icon: Icon(Icons.account_circle),
//               label: "Account",
//             ),
//             BottomNavigationBarItem(
//               icon: Icon(Icons.shopping_cart),
//               label: "Cart",
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
import 'package:flutter/material.dart';
import 'package:my_bucket/Account/my_accounts.dart';
import 'package:my_bucket/Carts/my_carts.dart';

import 'package:my_bucket/Categories/all_categories.dart';

import 'package:my_bucket/Homepage/home_screen.dart';

class BottomNavAppBar extends StatefulWidget {
  const BottomNavAppBar({super.key});

  @override
  State<BottomNavAppBar> createState() => _BottomNavAppBarState();
}

class _BottomNavAppBarState extends State<BottomNavAppBar> {
  int _selectedIndex = 0;

  final List<Widget> pages = [
    const HomePage(),
    const AllCategoriesPage(),
    const CartPage(),
    const AccountPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[_selectedIndex],
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
          ),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.1), //  Fixed incorrect method
              blurRadius: 8,
              spreadRadius: 2,
            ),
          ],
        ),
        child: ClipRRect(
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
          ),
          child: BottomNavigationBar(
            currentIndex: _selectedIndex,
            onTap: (index) {
              setState(() {
                _selectedIndex = index;
              });
            },
            type: BottomNavigationBarType.fixed,
            selectedItemColor: Colors.blue.shade800, //  Flipkart Blue
            unselectedItemColor: Colors.grey,
            backgroundColor: Colors.white,
            elevation: 10,
            showUnselectedLabels: true,
            selectedFontSize: 14,
            unselectedFontSize: 12,
            items: const [
              BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: "Home",
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.category),
                label: "Categories",
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.shopping_cart),
                label: "Cart",
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.account_circle),
                label: "Account",
              ),
            ],
          ),
        ),
      ),
    );
  }
}
