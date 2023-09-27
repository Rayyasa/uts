// ignore_for_file: unused_import, use_key_in_widget_constructors, prefer_const_constructors, avoid_unnecessary_containers, sized_box_for_whitespace, prefer_const_literals_to_create_immutables, sort_child_properties_last, non_constant_identifier_names
import 'package:flutter/material.dart';
import 'package:latihan_home/home.dart';
import 'cook.dart';
import 'homePage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home(),
    );
  }
}

// class Home extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         body: Column(
//       children: [
//         Container(
//           height: 300,
//           decoration: BoxDecoration(
//               color: Colors.blue,
//               borderRadius: BorderRadius.vertical(bottom: Radius.circular(24))),
//           child: Padding(
//             padding: const EdgeInsets.symmetric(vertical: 64),
//             child: Center(
//               child: Text('My App',
//                   style: TextStyle(
//                       color: Colors.white,
//                       fontWeight: FontWeight.w700,
//                       fontSize: 48)),
//             ),
//           ),
//         ),
//         Container(
//           margin: EdgeInsets.fromLTRB(20, 20, 20, 0),
//           // child: Row(
//           //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
//           //   children: [
//           //     Menu(Icons.abc, "ABC"),
//           //     Menu(Icons.file_copy, "File"),
//           //     Menu(Icons.folder, "Folder"),
//           //   ],
//           // ),
//           child: Wrap(
//             spacing: 50,
//             runSpacing: 20,
//             children: [
//               Menu(Icons.abc, "ABC"),
//               Menu(Icons.file_copy, "File"),
//               Menu(Icons.folder, "Folder"),
//               Menu(Icons.abc, "ABC"),
//               Menu(Icons.file_copy, "File"),
//               Menu(Icons.folder, "Folder"),
//             ],
//           ),
//         )
//       ],
//     ));
//   }
// }

// Widget Menu(IconData ico, String namaMenu) {
//   return Column(
//     children: [
//       Container(
//         width: 100,
//         height: 100,
//         margin: EdgeInsets.only(bottom: 10),
//         child: Icon(
//           ico,
//           color: Colors.white,
//           size: 50,
//         ),
//         decoration: BoxDecoration(
//             color: Colors.blue,
//             border: Border.all(color: Colors.blue),
//             borderRadius: BorderRadius.circular(60)),
//       ),
//       Text(namaMenu,
//           style: TextStyle(
//               fontSize: 24, fontWeight: FontWeight.w400, color: Colors.blue))
//     ],
//   );
// }
