// import 'package:flutter/material.dart';
//
// class ProfilePage extends StatelessWidget {
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Container(
//           alignment:  Alignment.lerp(Alignment.centerRight, Alignment.center, 2),
//           child: Text(
//                       'Profile',
//                       style: TextStyle(color: Colors.blue, fontWeight: FontWeight.bold),
//                       textAlign: TextAlign.center,
//                     ),
//         ),
//       ),
//       body: Center(
//         child: Padding(
//           padding: const EdgeInsets.all(16.0),
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.center,
//             children: [
//               CircleAvatar(
//                 radius: 50,
//                 backgroundImage: AssetImage(
//                     'assets/images/profile1.png'), // Add your profile picture image asset
//               ),
//               SizedBox(height: 20),
//               Text(
//                 'Krunal Vaishnani',
//                 style: TextStyle(
//                   fontSize: 24,
//                   fontWeight: FontWeight.bold,
//                 ),
//               ),
//               SizedBox(height: 10),
//               Text(
//                 "Flutter,Angular,Node,React,Mongodb",
//                 style: TextStyle(
//                   fontSize: 18,
//                   color: Colors.grey,
//                 ),
//               ),
//               SizedBox(height: 20),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
//
//   Widget buildProfileInfo(String label, String value) {
//     return Column(
//       children: [
//         Text(
//           value,
//           style: TextStyle(
//             fontSize: 18,
//             fontWeight: FontWeight.bold,
//           ),
//         ),
//         SizedBox(height: 4),
//         Text(
//           label,
//           style: TextStyle(
//             fontSize: 16,
//             color: Colors.grey,
//           ),
//         ),
//       ],
//     );
//   }
// }
