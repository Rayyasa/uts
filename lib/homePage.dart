// ignore_for_file: unused_import, file_names, use_key_in_widget_constructors, prefer_const_constructors, prefer_const_literals_to_create_immutables, unused_element, non_constant_identifier_names, sized_box_for_whitespace, avoid_unnecessary_containers, no_leading_underscores_for_local_identifiers, use_full_hex_values_for_flutter_colors, unused_field, prefer_final_fields, avoid_web_libraries_in_flutter

import 'dart:html';
import 'dart:js';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iconsax/iconsax.dart';
import 'package:latihan_home/cart.dart';
import 'package:latihan_home/detail.dart';
import 'package:lucide_icons/lucide_icons.dart';

class Home extends StatefulWidget {
  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int selectedIndex = -1;
  int _selectedIndex = 0;

  List<Color> itemColors = [
    Color(0xff00B14F),
    Colors.black87,
    Colors.black87,
    Colors.black87
  ];

  @override
  Widget build(BuildContext context) {
    Widget _Button(
      int index,
      String title,
    ) {
      return GestureDetector(
        onTap: () {
          setState(() {
            selectedIndex = index;
          });
        },
        child: Container(
          margin: const EdgeInsets.only(right: 10),
          height: 43,
          width: 100,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            border: Border.all(
                color: selectedIndex == index
                    ? Color(0xffff00B14F)
                    : Color(0xffF2F2F7)),
            color: selectedIndex == index ? Color(0xff00B14F) : Colors.white,
          ),
          child: Center(
            child: Text(
              title,
              style: GoogleFonts.inter(
                  color: selectedIndex == index
                      ? Colors.white
                      : Color(0xff292D32B2),
                  fontSize: 16,
                  fontWeight: FontWeight.w500),
            ),
          ),
        ),
      );
    }

    void _onItemTapped(int index) {
      setState(() {
        _selectedIndex = index;
        for (int i = 0; i < itemColors.length; i++) {
          itemColors[i] = i == index ? Color(0xff00B14F) : Colors.black87;
        }
      });
    }

    return Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          backgroundColor: Colors.white,
          toolbarHeight: 100,
          actions: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: IconButton(
                onPressed: () {},
                icon: Icon(
                  LucideIcons.bell,
                  size: 26,
                  color: Color(0xff292D32),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: IconButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => cartPage()));
                },
                icon: Icon(
                  LucideIcons.shoppingBag,
                  size: 26,
                  color: Color(0xff292D32),
                ),
              ),
            ),
          ],
          title: Padding(
            padding: const EdgeInsets.only(bottom: 16, top: 16, left: 24),
            child: Container(
              width: 285,
              decoration: BoxDecoration(
                color: Color(0xffF2F2F7),
                borderRadius: BorderRadius.circular(16),
              ),
              child: TextFormField(
                style: GoogleFonts.inter(
                  color: Colors.white,
                ),
                decoration: InputDecoration(
                  hintText: 'Cari pakaian pria',
                  prefixIcon: Icon(
                    LucideIcons.search,
                    color: Color(0xff292D32),
                  ),
                  hintStyle: GoogleFonts.inter(color: Color(0x292D32B2)),
                  border: InputBorder.none,
                ),
              ),
            ),
          ),
        ),
        body: ListView(
          scrollDirection: Axis.vertical,
          children: [
            Padding(
              padding: const EdgeInsets.only(
                  left: 24, right: 24, top: 16, bottom: 32),
              child: Column(
                children: [
                  _Banner(),
                  SizedBox(
                    height: 24,
                  ),
                  _Option(),
                  SizedBox(
                    height: 16,
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        _Button(1, 'Semua'),
                        SizedBox(
                          width: 10,
                        ),
                        _Button(2, 'Kemeja'),
                        SizedBox(
                          width: 10,
                        ),
                        _Button(3, 'Sepatu'),
                        SizedBox(
                          width: 10,
                        ),
                        _Button(4, 'Aksesoris'),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 24,
                  ),
                  Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          _Card(context, 'Batik.png',
                              'Batik Pria Lengan\nPanjang', 'Rp199.900'),
                          _Card(context, 'sepatu.png',
                              'New Balance 992\nGrey Original', 'Rp1.240.000'),
                        ],
                      ),
                      SizedBox(
                        height: 24,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          _Card(context, 'jeans.png',
                              'Skinny Jeans Dark\nBlue Wanita', 'Rp379.900'),
                          _Card(
                              context,
                              'kacamata.png',
                              'Kacamata Baca\nAnti Radiasi Blue Ray',
                              'Rp125.000'),
                        ],
                      ),
                      SizedBox(
                        height: 24,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          _Card(
                              context,
                              'kemeja.png',
                              'Kemeja Pria Polos\nLengan Pendek Oxford',
                              'Rp119.000'),
                          _Card(context, 'jaket.png',
                              'Human Greatness\nHoodie Hitam', 'Rp229.000'),
                        ],
                      ),
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: _selectedIndex,
          selectedItemColor: itemColors[_selectedIndex],
          onTap: _onItemTapped,
          items: [
            BottomNavigationBarItem(
              icon: Icon(LucideIcons.home),
              label: 'Beranda',
            ),
            BottomNavigationBarItem(
              icon: Icon(LucideIcons.heart),
              label: 'Favorit',
            ),
            BottomNavigationBarItem(
              icon: Icon(LucideIcons.listChecks),
              label: 'Transaksi',
            ),
            BottomNavigationBarItem(
              icon: Icon(LucideIcons.userCircle2),
              label: 'Profil',
            ),
          ],
          unselectedItemColor: Colors.black87,
        ));
  }

  Column _Card(BuildContext context, img, String desc, String price) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
            height: 183,
            width: 183,
            child: InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) =>
                            detailPage(img: img, desc: desc, price: price)));
              },
              child: Image.asset(
                img,
                fit: BoxFit.cover,
              ),
            )),
        SizedBox(
          height: 12,
        ),
        Text(
          desc,
          textAlign: TextAlign.start,
          style: GoogleFonts.inter(fontSize: 16, fontWeight: FontWeight.w400),
        ),
        SizedBox(
          height: 12,
        ),
        Text(
          price,
          style: GoogleFonts.inter(fontSize: 16, fontWeight: FontWeight.w600),
        )
      ],
    );
  }
}

// Padding _Header(BuildContext context) {
//   return Padding(
//     padding: const EdgeInsets.symmetric(vertical: 16),
//     child: Row(
//       crossAxisAlignment: CrossAxisAlignment.center,
//       mainAxisAlignment: MainAxisAlignment.spaceBetween,
//       children: [
//         Container(
//           width: 283,
//           decoration: BoxDecoration(
//             color: Color(0xffF2F2F7),
//             borderRadius: BorderRadius.circular(16),
//           ),
//           child: TextFormField(
//             style: GoogleFonts.inter(
//               color: Colors.white,
//             ),
//             decoration: InputDecoration(
//                 hintText: 'Cari pakaian pria',
//                 prefixIcon: Icon(
//                   LucideIcons.search,
//                   color: Color(0xff292D32),
//                 ),
//                 hintStyle: GoogleFonts.inter(color: Color(0x292D32B2)),
//                 border: InputBorder.none),
//           ),
//         ),
//         Icon(
//           LucideIcons.bell,
//           size: 26,
//         ),
//         InkWell(
//           onTap: () {
//             Navigator.push(
//                 context, MaterialPageRoute(builder: (context) => cartPage()));
//           },
//           child: Icon(
//             LucideIcons.shoppingCart,
//             size: 26,
//           ),
//         ),
//       ],
//     ),
//   );
// }

Container _Banner() {
  return Container(
    width: 450,
    child: Image.asset(
      'poto1.png',
      fit: BoxFit.cover,
    ),
  );
}

Container _Option() {
  return Container(
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          'Kategori',
          style: GoogleFonts.inter(
              color: Color(0xff292D32),
              fontWeight: FontWeight.w600,
              fontSize: 18),
        ),
        Text(
          'Lihat semua',
          style: GoogleFonts.inter(
              color: Color(0xff00B14F),
              fontWeight: FontWeight.w400,
              fontSize: 14),
        ),
      ],
    ),
  );
}
