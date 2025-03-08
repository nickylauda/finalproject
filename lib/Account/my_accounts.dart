// import 'package:flutter/material.dart';

// class AccountPage extends StatelessWidget {
//   const AccountPage({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.white, // Set background color to white
//       appBar: AppBar(
//         automaticallyImplyLeading: false,
//         title: const Text("My Account",
//             style: TextStyle(
//               fontSize: 20,
//               color: Colors.white,
//               fontFamily: 'Roboto',
//             )),
//         backgroundColor: Colors.indigo,
//         centerTitle: true,
//         elevation: 2, // Removes shadow
//         actions: [
//           IconButton(
//             icon: const Icon(
//               Icons.notifications,
//               color: Colors.white,
//             ),
//             onPressed: () {
//               // TODO: Navigate to Notifications
//             },
//           ),
//           IconButton(
//             icon: const Icon(
//               Icons.shopping_cart,
//               color: Colors.white,
//             ),
//             onPressed: () {
//               // TODO: Navigate to Cart
//             },
//           ),
//         ],
//       ),
//       body: SingleChildScrollView(
//         padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
//         child: Column(
//           children: [
//             // 🔹 User Profile Section
//             Container(
//               padding: const EdgeInsets.all(16),
//               decoration: BoxDecoration(
//                 color: Colors.white,
//                 borderRadius: BorderRadius.circular(12),
//                 boxShadow: [
//                   BoxShadow(
//                     color: Colors.grey.withValues(alpha: 0.5),
//                     // spreadRadius: 5,
//                     blurRadius: 1,
//                     offset:
//                         const Offset(0.1, 1.1), // changes position of shadow
//                   ),
//                 ],
//               ),
//               child: const Row(
//                 children: [
//                   // 🖼 Profile Picture
//                   CircleAvatar(
//                     radius: 40,
//                     backgroundImage: AssetImage("assets/homes/profile.jpg"),
//                   ),
//                   SizedBox(width: 15),

//                   //  User Info
//                   Column(
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: [
//                       Text(
//                         "Hari narayan",
//                         style: TextStyle(
//                             fontSize: 18, fontWeight: FontWeight.bold),
//                       ),
//                       SizedBox(height: 4),
//                       Text(
//                         "Hari123@gmail.com",
//                         style: TextStyle(color: Colors.black54),
//                       ),
//                     ],
//                   ),
//                 ],
//               ),
//             ),

//             const SizedBox(height: 20),

//             // 🔹 Account Settings Options
//             _buildAccountOption(Icons.shopping_bag, "My Orders"),
//             _buildAccountOption(Icons.favorite_border, "Wishlist"),
//             _buildAccountOption(Icons.credit_card, "Payment Methods"),
//             _buildAccountOption(Icons.location_on, "Saved Addresses"),
//             _buildAccountOption(Icons.settings, "Settings"),
//             _buildAccountOption(Icons.help_outline, "Help & Support"),

//             const SizedBox(height: 5),

//             // Logout Button
//             TextButton.icon(
//               onPressed: () {
//                 // TODO: Implement logout function
//               },
//               icon: const Icon(Icons.logout, color: Colors.red),
//               label: const Text(
//                 "Logout",
//                 style:
//                     TextStyle(color: Colors.red, fontWeight: FontWeight.bold),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }

//   // Helper Widget for Account Options
//   Widget _buildAccountOption(IconData icon, String title) {
//     return Card(
//       color: Colors.white,
//       margin: const EdgeInsets.symmetric(vertical: 6),
//       child: ListTile(
//         leading: Icon(icon, color: Colors.blueAccent),
//         title: Text(title, style: const TextStyle(fontSize: 16)),
//         trailing: const Icon(Icons.arrow_forward_ios, size: 16),
//         onTap: () {
//           // TODO: Navigate to respective page
//         },
//       ),
//     );
//   }
// }
// import 'package:flutter/material.dart';

// class AccountPage extends StatelessWidget {
//   const AccountPage({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.white, // Set background color to white
//       appBar: AppBar(
//         automaticallyImplyLeading: false,
//         title: const Text("My Account",
//             style: TextStyle(
//               fontSize: 20,
//               color: Colors.white,
//               fontFamily: 'Roboto',
//             )),
//         backgroundColor: Colors.indigo,
//         centerTitle: true,
//         elevation: 2, // Removes shadow
//         actions: [
//           IconButton(
//             icon: const Icon(
//               Icons.notifications,
//               color: Colors.white,
//             ),
//             onPressed: () {
//               // TODO: Navigate to Notifications
//             },
//           ),
//           IconButton(
//             icon: const Icon(
//               Icons.shopping_cart,
//               color: Colors.white,
//             ),
//             onPressed: () {
//               // TODO: Navigate to Cart
//             },
//           ),
//         ],
//       ),
//       body: SingleChildScrollView(
//         padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
//         child: Column(
//           children: [
//             // 🔹 User Profile Section
//             Container(
//               padding: const EdgeInsets.all(16),
//               decoration: BoxDecoration(
//                 color: Colors.white,
//                 borderRadius: BorderRadius.circular(12),
//                 boxShadow: [
//                   BoxShadow(
//                     color: Colors.grey.withOpacity(0.5),
//                     blurRadius: 1,
//                     offset: const Offset(0.1, 1.1), // changes position of shadow
//                   ),
//                 ],
//               ),
//               child: Row(
//                 children: [
//                   // 🖼 Profile Picture
//                   const CircleAvatar(
//                     radius: 40,
//                     backgroundImage: AssetImage("assets/homes/profile.jpg"),
//                   ),
//                   const SizedBox(width: 15),

//                   //  User Info
//                   Expanded(
//                     child: Column(
//                       crossAxisAlignment: CrossAxisAlignment.start,
//                       children: [
//                         const Text(
//                           "Hari narayan",
//                           style: TextStyle(
//                               fontSize: 18, fontWeight: FontWeight.bold),
//                         ),
//                         const SizedBox(height: 4),
//                         const Text(
//                           "Hari123@gmail.com",
//                           style: TextStyle(color: Colors.black54),
//                         ),
//                         const SizedBox(height: 8),
//                         // Edit Profile Button
//                         ElevatedButton(
//                           onPressed: () {
//                             // TODO: Navigate to Edit Profile Page
//                           },
//                           style: ElevatedButton.styleFrom(
//                             backgroundColor: Colors.blueAccent,
//                             shape: RoundedRectangleBorder(
//                               borderRadius: BorderRadius.circular(8),
//                             ),
//                             padding: const EdgeInsets.symmetric(
//                                 horizontal: 12, vertical: 6),
//                           ),
//                           child: const Text(
//                             "Edit Profile",
//                             style: TextStyle(
//                               fontSize: 14,
//                               color: Colors.white,
//                             ),
//                           ),
//                         ),
//                       ],
//                     ),
//                   ),
//                 ],
//               ),
//             ),

//             const SizedBox(height: 20),

//             // 🔹 Account Settings Options
//             _buildAccountOption(Icons.shopping_bag, "My Orders"),
//             _buildAccountOption(Icons.favorite_border, "Wishlist"),
//             _buildAccountOption(Icons.credit_card, "Payment Methods"),
//             _buildAccountOption(Icons.location_on, "Saved Addresses"),
//             _buildAccountOption(Icons.settings, "Settings"),
//             _buildAccountOption(Icons.help_outline, "Help & Support"),

//             const SizedBox(height: 5),

//             // Logout Button
//             TextButton.icon(
//               onPressed: () {
//                 // TODO: Implement logout function
//               },
//               icon: const Icon(Icons.logout, color: Colors.red),
//               label: const Text(
//                 "Logout",
//                 style: TextStyle(color: Colors.red, fontWeight: FontWeight.bold),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }

//   // Helper Widget for Account Options
//   Widget _buildAccountOption(IconData icon, String title) {
//     return Card(
//       color: Colors.white,
//       margin: const EdgeInsets.symmetric(vertical: 6),
//       child: ListTile(
//         leading: Icon(icon, color: Colors.blueAccent),
//         title: Text(title, style: const TextStyle(fontSize: 16)),
//         trailing: const Icon(Icons.arrow_forward_ios, size: 16),
//         onTap: () {
//           // TODO: Navigate to respective page
//         },
//       ),
//     );
//   }
// }

// import 'package:flutter/material.dart';

// import 'package:my_bucket/Account/profile_edit.dart';

// class AccountPage extends StatelessWidget {
//   const AccountPage({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.white, // Set background color to white
//       appBar: AppBar(
//         automaticallyImplyLeading: false,
//         title: const Text("My Account",
//             style: TextStyle(
//               fontSize: 20,
//               color: Colors.white,
//               fontFamily: 'Roboto',
//             )),
//         backgroundColor: Colors.indigo,
//         centerTitle: true,
//         elevation: 2, // Removes shadow
//         actions: [
//           IconButton(
//             icon: const Icon(
//               Icons.notifications,
//               size: 22,
//               color: Colors.white,
//             ),
//             onPressed: () {
//               // TODO: Navigate to Notifications
//             },
//           ),
//           IconButton(
//             icon: const Icon(
//               Icons.shopping_cart,
//               size: 22,
//               color: Colors.white,
//             ),
//             onPressed: () {
//               // TODO: Navigate to Cart
//             },
//           ),
//         ],
//       ),
//       body: SingleChildScrollView(
//         padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
//         child: Column(
//           children: [
//             // 🔹 User Profile Section
//             Container(
//               padding: const EdgeInsets.all(16),
//               decoration: BoxDecoration(
//                 color: Colors.white,
//                 borderRadius: BorderRadius.circular(12),
//                 boxShadow: [
//                   BoxShadow(
//                     color: Colors.grey.withOpacity(0.5),
//                     blurRadius: 1,
//                     offset:
//                         const Offset(0.1, 1.1), // changes position of shadow
//                   ),
//                 ],
//               ),
//               child: Row(
//                 children: [
//                   // 🖼 Profile Picture
//                   const CircleAvatar(
//                     radius: 40,
//                     backgroundImage: AssetImage("assets/homes/profile.jpg"),
//                   ),
//                   const SizedBox(width: 16),

//                   //  User Info
//                   Expanded(
//                     child: Column(
//                       crossAxisAlignment: CrossAxisAlignment.start,
//                       children: [
//                         Row(
//                           children: [
//                             const Text(
//                               "Hari narayan",
//                               style: TextStyle(
//                                   fontSize: 18, fontWeight: FontWeight.bold),
//                             ),
//                             const SizedBox(width: 14),
//                             // Edit Icon
//                             IconButton(
//                                 onPressed: () {
//                                   Navigator.push(
//                                     context,
//                                     MaterialPageRoute(
//                                       builder: (context) =>
//                                           const EditProfilePage(),
//                                     ),
//                                   );
//                                 },
//                                 icon: const Icon(
//                                   Icons.edit,
//                                   color: Colors.blue,
//                                 )),
//                           ],
//                         ),
//                         const SizedBox(height: 1),
//                         const Text(
//                           "Hari123@gmail.com",
//                           style: TextStyle(color: Colors.black54),
//                         ),
//                       ],
//                     ),
//                   ),
//                 ],
//               ),
//             ),

//             const SizedBox(height: 20),

//             // 🔹 Account Settings Options
//             _buildAccountOption(Icons.shopping_bag, "My Orders"),
//             _buildAccountOption(Icons.favorite_border, "Wishlist"),
//             _buildAccountOption(Icons.credit_card, "Payment Methods"),
//             _buildAccountOption(Icons.location_on, "Saved Addresses"),
//             _buildAccountOption(Icons.settings, "Settings"),
//             _buildAccountOption(Icons.help_outline, "Help & Support"),

//             const SizedBox(height: 5),

//             // Logout Button
//             TextButton.icon(
//               onPressed: () {

//               },
//               icon: const Icon(Icons.logout, color: Colors.red),
//               label: const Text(
//                 "Logout",
//                 style:
//                     TextStyle(color: Colors.red, fontWeight: FontWeight.bold),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }

//   // Helper Widget for Account Options
//   Widget _buildAccountOption(IconData icon, String title) {
//     return Card(
//       color: Colors.white,
//       margin: const EdgeInsets.symmetric(vertical: 6),
//       child: ListTile(
//         leading: Icon(icon, color: Colors.blueAccent),
//         title: Text(title, style: const TextStyle(fontSize: 16)),
//         trailing: const Icon(Icons.arrow_forward_ios, size: 16),
//         onTap: () {
//           // TODO: Navigate to respective page
//         },
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:my_bucket/Account/profile_edit.dart';
import 'package:my_bucket/login/login.dart';

class AccountPage extends StatelessWidget {
  const AccountPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const Text(
          "My Account",
          style: TextStyle(
            fontSize: 20,
            color: Colors.white,
            fontFamily: 'Roboto',
          ),
        ),
        backgroundColor: Colors.indigo,
        centerTitle: true,
        elevation: 2,
        actions: [
          IconButton(
            icon: const Icon(
              Icons.notifications,
              size: 22,
              color: Colors.white,
            ),
            onPressed: () {
              // TODO: Navigate to Notifications
            },
          ),
          IconButton(
            icon: const Icon(
              Icons.shopping_cart,
              size: 22,
              color: Colors.white,
            ),
            onPressed: () {
              // TODO: Navigate to Cart
            },
          ),
        ],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
        child: Column(
          children: [
            // 🔹 User Profile Section
            Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(12),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    blurRadius: 1,
                    offset: const Offset(0.1, 1.1),
                  ),
                ],
              ),
              child: Row(
                children: [
                  // 🖼 Profile Picture
                  const CircleAvatar(
                    radius: 40,
                    backgroundImage: AssetImage("assets/homes/profile.jpg"),
                  ),
                  const SizedBox(width: 16),

                  // User Info
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            const Text(
                              "Hari narayan",
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            const SizedBox(width: 14),
                            // Edit Icon
                            IconButton(
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) =>
                                        const EditProfilePage(),
                                  ),
                                );
                              },
                              icon: const Icon(
                                Icons.edit,
                                color: Colors.blue,
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 1),
                        const Text(
                          "Hari123@gmail.com",
                          style: TextStyle(color: Colors.black54),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 20),

            // 🔹 Account Settings Options
            _buildAccountOption(Icons.shopping_bag, "My Orders"),
            _buildAccountOption(Icons.favorite_border, "Wishlist"),
            _buildAccountOption(Icons.credit_card, "Payment Methods"),
            _buildAccountOption(Icons.location_on, "Saved Addresses"),
            _buildAccountOption(Icons.settings, "Settings"),
            _buildAccountOption(Icons.help_outline, "Help & Support"),

            const SizedBox(height: 10),

            //  Logout Button
            TextButton.icon(
              onPressed: () {
                _showLogoutDialog(context);
              },
              icon: const Icon(Icons.logout, color: Colors.red),
              label: const Text(
                "Logout",
                style: TextStyle(
                  color: Colors.red,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  // Helper Widget for Account Options
  Widget _buildAccountOption(IconData icon, String title) {
    return Card(
      color: Colors.white,
      margin: const EdgeInsets.symmetric(vertical: 6),
      child: ListTile(
        leading: Icon(icon, color: Colors.blueAccent),
        title: Text(title, style: const TextStyle(fontSize: 16)),
        trailing: const Icon(Icons.arrow_forward_ios, size: 16),
        onTap: () {
          // TODO: Navigate to respective page
        },
      ),
    );
  }

  // 🔹 Logout Confirmation Dialog
  void _showLogoutDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return Dialog(
          backgroundColor: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20.0),
          ),
          elevation: 8,
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                // Icon Section
                Container(
                  padding: const EdgeInsets.all(15),
                  decoration: BoxDecoration(
                    color: Colors.red.withOpacity(0.2),
                    shape: BoxShape.circle,
                  ),
                  child: const Icon(
                    Icons.logout,
                    size: 40,
                    color: Colors.red,
                  ),
                ),

                const SizedBox(height: 20),

                // Title
                const Text(
                  "Logout Confirmation",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.black87,
                  ),
                ),

                const SizedBox(height: 15),

                // Message
                const Text(
                  "Are you sure you want to logout?",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.black54,
                  ),
                ),

                const SizedBox(height: 25),

                // Buttons
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    // Cancel Button
                    Expanded(
                      child: OutlinedButton(
                        onPressed: () => Navigator.pop(context),
                        style: OutlinedButton.styleFrom(
                          padding: const EdgeInsets.symmetric(vertical: 12),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          side: const BorderSide(color: Colors.grey),
                        ),
                        child: const Text(
                          "Cancel",
                          style: TextStyle(
                            color: Colors.black54,
                            fontSize: 16,
                          ),
                        ),
                      ),
                    ),

                    const SizedBox(width: 15),

                    // Logout Button
                    Expanded(
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.pop(context); // Close dialog
                          // Perform logout actions here
                          Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const LoginScreen(),
                            ),
                          );
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.red,
                          padding: const EdgeInsets.symmetric(vertical: 12),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                        child: const Text(
                          "Logout",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
