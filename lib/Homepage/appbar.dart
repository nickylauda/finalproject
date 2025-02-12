// import 'package:flutter/material.dart';

// class Appbars extends StatefulWidget {
//   const Appbars({super.key});

//   @override
//   State<Appbars> createState() => _AppbarsState();
// }

// class _AppbarsState extends State<Appbars> {
//   @override
//   Widget build(BuildContext context) {
//     return Drawer(
//       child: Container(
//         decoration: BoxDecoration(
//           gradient: LinearGradient(
//             colors: [Colors.blue.shade100, Colors.white],
//             begin: Alignment.topLeft,
//             end: Alignment.bottomRight,
//           ),
//         ),
//         child: Column(
//           children: [
//             UserAccountsDrawerHeader(
//               decoration: BoxDecoration(
//                 gradient: LinearGradient(
//                   colors: [Colors.blue.shade400, Colors.blue.shade600],
//                   begin: Alignment.topLeft,
//                   end: Alignment.bottomRight,
//                 ),
//               ),
//               accountName: const Text(
//                 'Hari narayan',
//                 style: TextStyle(
//                     color: Colors.white,
//                     fontSize: 18,
//                     fontWeight: FontWeight.bold),
//               ),
//               accountEmail: const Text(
//                 '+91 8921180907',
//                 style: TextStyle(
//                     color: Colors.white,
//                     fontSize: 16,
//                     fontWeight: FontWeight.w500),
//               ),
//               currentAccountPicture: const CircleAvatar(
//                 radius: 50,
//                 backgroundImage: AssetImage(
//                   "assets/doggy.png",
//                 ),
//               ),
//             ),
//             Expanded(
//               child: ListView(
//                 children: [
//                   menuItem(Icons.person, 'My Profile'),
//                   menuItem(Icons.group, 'New Group'),
//                   menuItem(Icons.contacts, 'Contacts'),
//                   menuItem(Icons.call, 'Calls'),
//                   menuItem(Icons.bookmark, 'Saved Messages'),
//                   menuItem(Icons.settings, 'Settings'),
//                   menuItem(Icons.person_add, 'Invite Friends'),
//                   menuItem(Icons.help, 'Telegram Features'),
//                 ],
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }

//   Widget menuItem(IconData icon, String title) {
//     return ListTile(
//       leading: CircleAvatar(
//         radius: 20,
//         backgroundColor: Colors.white,
//         child: CircleAvatar(
//           radius: 18,
//           backgroundColor: Colors.blue[900],
//           child: Icon(
//             icon,
//             color: Colors.white,
//             size: 20,
//           ),
//         ),
//       ),
//       title: Text(
//         title,
//         style: const TextStyle(
//             color: Colors.black, fontSize: 16, fontWeight: FontWeight.w600),
//       ),
//     );
//   }
// }

// import 'package:flutter/material.dart';
// import 'package:my_bucket/component/searchfield.dart';

// class MyAppBar extends StatelessWidget {
//   const MyAppBar({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return SliverAppBar(
//       expandedHeight: 100.0,
//       floating: true,
//       pinned: true,
//       elevation: 2,
//       backgroundColor: Colors.blue,
//       flexibleSpace: FlexibleSpaceBar(
//         background: Container(
//           decoration: BoxDecoration(
//             gradient: LinearGradient(
//               colors: [
//                 Colors.blue.shade700,
//                 Colors.blue.shade400,
//                 Colors.blue.shade200,
//               ],
//               begin: Alignment.topCenter,
//               end: Alignment.bottomCenter,
//             ),
//           ),
//         ),
//       ),
//       bottom: PreferredSize(
//         preferredSize: const Size.fromHeight(70),
//         child: SafeArea(
//           child: Padding(
//             padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 8.0),
//             child: Container(
//               height: 50,
//               decoration: BoxDecoration(
//                 color: Colors.white,
//                 borderRadius: BorderRadius.circular(10),
//               ),
//               child: Row(
//                 children: [
//                   const Padding(
//                     padding: EdgeInsets.symmetric(horizontal: 8.0),
//                     child: Icon(Icons.search, color: Colors.grey),
//                   ),

//                   ///  GestureDetector only for the TextField part
//                   Expanded(
//                     child: GestureDetector(
//                       onTap: () {
//                         Navigator.push(
//                           context,
//                           MaterialPageRoute(
//                               builder: (context) => const SearchPage()),
//                         );
//                       },
//                       child: const AbsorbPointer(
//                         // Prevents keyboard from opening
//                         child: TextField(
//                           decoration: InputDecoration(
//                             hintText: "Search for products...",
//                             hintStyle:
//                                 TextStyle(fontSize: 15, color: Colors.grey),
//                             border: InputBorder.none,
//                             contentPadding: EdgeInsets.symmetric(vertical: 15),
//                           ),
//                         ),
//                       ),
//                     ),
//                   ),

//                   ///  These Icons are NOT inside GestureDetector (No Unwanted Navigation)
//                   IconButton(
//                     icon: const Icon(Icons.camera_alt, color: Colors.blue),
//                     onPressed: () {
//                       // Handle Camera Functionality
//                     },
//                   ),
//                   IconButton(
//                     icon: const Icon(Icons.mic, color: Colors.blue),
//                     onPressed: () {
//                       // Handle Voice Search Functionality
//                     },
//                   ),
//                 ],
//               ),
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }
// import 'package:flutter/material.dart';
// import 'package:my_bucket/component/searchfield.dart';

// class MyAppBar extends StatelessWidget {
//   const MyAppBar({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return SliverAppBar(
//       expandedHeight: 100.0,
//       floating: true,
//       pinned: true,
//       elevation: 2,
//       backgroundColor: Colors.blue,
//       automaticallyImplyLeading: false, // This removes the back arrow
//       flexibleSpace: FlexibleSpaceBar(
//         background: Container(
//           decoration: BoxDecoration(
//             gradient: LinearGradient(
//               colors: [
//                 Colors.blue.shade700,
//                 Colors.blue.shade400,
//                 Colors.blue.shade200,
//               ],
//               begin: Alignment.topCenter,
//               end: Alignment.bottomCenter,
//             ),
//           ),
//         ),
//       ),
//       bottom: PreferredSize(
//         preferredSize: const Size.fromHeight(68),
//         child: SafeArea(
//           child: Padding(
//             padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 8.0),
//             child: Container(
//               height: 50,
//               decoration: BoxDecoration(
//                 color: Colors.white,
//                 borderRadius: BorderRadius.circular(10),
//               ),
//               child: Row(
//                 children: [
//                   const Padding(
//                     padding: EdgeInsets.symmetric(horizontal: 8.0),
//                     child: Icon(Icons.search, color: Colors.grey),
//                   ),

//                   /// GestureDetector only for the TextField part
//                   Expanded(
//                     child: GestureDetector(
//                       onTap: () {
//                         Navigator.push(
//                           context,
//                           MaterialPageRoute(
//                               builder: (context) => const SearchPage()),
//                         );
//                       },
//                       child: const AbsorbPointer(
//                         child: TextField(
//                           decoration: InputDecoration(
//                             hintText: "Search for products...",
//                             hintStyle:
//                                 TextStyle(fontSize: 15, color: Colors.grey),
//                             border: InputBorder.none,
//                             contentPadding: EdgeInsets.symmetric(vertical: 15),
//                           ),
//                         ),
//                       ),
//                     ),
//                   ),

//                   /// These Icons are NOT inside GestureDetector (No Unwanted Navigation)
//                   IconButton(
//                     icon: const Icon(Icons.camera_alt, color: Colors.blue),
//                     onPressed: () {
//                       // Handle Camera Functionality
//                     },
//                   ),
//                   IconButton(
//                     icon: const Icon(Icons.mic, color: Colors.blue),
//                     onPressed: () {
//                       // Handle Voice Search Functionality
//                     },
//                   ),
//                 ],
//               ),
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }
import 'package:flutter/material.dart';
import 'package:my_bucket/Homepage/searchfield.dart';

class MyAppBar extends StatelessWidget {
  const MyAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      expandedHeight: 110.0,
      floating: true,
      pinned: true,
      snap: false,
      elevation: 4,
      backgroundColor: Colors.indigo,
      automaticallyImplyLeading: false,
      flexibleSpace: FlexibleSpaceBar(
        collapseMode: CollapseMode.pin,
        background: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Colors.blue.shade900,
                Colors.blue.shade600,
                Colors.blue.shade300,
              ],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            ),
          ),
          child: const Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.only(
                left: 10.0,
                bottom: 25.0,
              ),
              child: Row(
                children: [
                  Icon(Icons.local_mall, size: 28, color: Colors.white),
                  SizedBox(width: 12),
                  Text(
                    'Bucket',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 0.5,
                      fontFamily: 'Roboto',
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
      bottom: PreferredSize(
        preferredSize: const Size.fromHeight(70),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 8.0),
          child: GestureDetector(
            onTap: () {
              // Handle search bar tap
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const FlipkartUI()));
            },
            child: AbsorbPointer(
              child: TextField(
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.white,
                  prefixIcon: Icon(Icons.search, color: Colors.grey.shade600),
                  hintText: "Search products...",
                  hintStyle: TextStyle(color: Colors.grey.shade600),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                    borderSide: BorderSide.none,
                  ),
                  contentPadding: const EdgeInsets.symmetric(vertical: 10),
                  suffixIcon: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      IconButton(
                        icon:
                            Icon(Icons.camera_alt, color: Colors.blue.shade700),
                        onPressed: () {}, // Handle camera action
                      ),
                      IconButton(
                        icon: Icon(Icons.mic, color: Colors.blue.shade700),
                        onPressed: () {}, // Handle voice action
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
