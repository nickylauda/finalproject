// import 'package:flutter/material.dart';
// import 'package:my_bucket/login/login.dart';

// class LogoutPage extends StatelessWidget {
//   const LogoutPage({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.white,
//       appBar: AppBar(
//         automaticallyImplyLeading: true, // Show back button
//         title: const Text(
//           "Logout",
//           style: TextStyle(
//             fontSize: 20,
//             color: Colors.white,
//             fontFamily: 'Roboto',
//           ),
//         ),
//         backgroundColor: Colors.indigo,
//         centerTitle: true,
//         elevation: 2,
//       ),
//       body: Padding(
//         padding: const EdgeInsets.all(16.0),
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             const Icon(
//               Icons.logout,
//               size: 60,
//               color: Colors.red,
//             ),
//             const SizedBox(height: 20),
//             const Text(
//               "Are you sure you want to logout?",
//               style: TextStyle(
//                 fontSize: 18,
//                 fontWeight: FontWeight.bold,
//                 color: Colors.black87,
//               ),
//               textAlign: TextAlign.center,
//             ),
//             const SizedBox(height: 30),
//             Row(
//               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//               children: [
//                 // Cancel Button
//                 ElevatedButton(
//                   onPressed: () {
//                     Navigator.pop(context); // Go back to the previous page
//                   },
//                   style: ElevatedButton.styleFrom(
//                     backgroundColor: Colors.grey[300],
//                     padding: const EdgeInsets.symmetric(
//                         horizontal: 30, vertical: 12),
//                   ),
//                   child: const Text(
//                     "Cancel",
//                     style: TextStyle(
//                       color: Colors.black87,
//                       fontSize: 16,
//                       fontWeight: FontWeight.bold,
//                     ),
//                   ),
//                 ),
//                 // Logout Button
//                 ElevatedButton(
//                   onPressed: () {
                    
//                     Navigator.pushReplacement(
//                       context,
//                       MaterialPageRoute(
//                         builder: (context) => const LoginScreen(),
//                       ),
//                     ); // Example: Navigate to login page
//                   },
//                   style: ElevatedButton.styleFrom(
//                     backgroundColor: Colors.red,
//                     padding: const EdgeInsets.symmetric(
//                         horizontal: 30, vertical: 12),
//                   ),
//                   child: const Text(
//                     "Logout",
//                     style: TextStyle(
//                       color: Colors.white,
//                       fontSize: 16,
//                       fontWeight: FontWeight.bold,
//                     ),
//                   ),
//                 ),
//               ],
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
