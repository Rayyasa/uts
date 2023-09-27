// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors, camel_case_types, unused_import, prefer_const_literals_to_create_immutables, avoid_unnecessary_containers, non_constant_identifier_names, unused_element, sized_box_for_whitespace, use_full_hex_values_for_flutter_colors, no_leading_underscores_for_local_identifiers, prefer_const_constructors_in_immutables, unused_local_variable

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:latihan_home/cart.dart';
import 'package:latihan_home/homePage.dart';
import 'package:lucide_icons/lucide_icons.dart';
import 'package:iconsax/iconsax.dart';

class detailPage extends StatefulWidget {
  final String img;
  final String desc;
  final String price;

  detailPage({
    required this.img,
    required this.desc,
    required this.price,
  });

  @override
  State<detailPage> createState() => _detailPageState();
}

class _detailPageState extends State<detailPage> {
  bool Click = true;

  void _onClick() {
    setState(() {
      Click = !Click;
    });
  }

  int selectedIndex = -1;

  @override
  Widget build(BuildContext context) {
    final images = widget.img;
    final desc = widget.desc;
    final price = widget.price;

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
          margin: const EdgeInsets.only(right: 16),
          height: 51,
          width: 53,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            border: Border.all(
                color: selectedIndex == index
                    ? Color(0xffff00B14F)
                    : Color(0xffF2F2F7)),
            color: selectedIndex == index
                ? Color(0xff00B14F).withOpacity(0.1)
                : Colors.white,
          ),
          child: Center(
            child: Text(
              title,
              style: GoogleFonts.inter(
                  color: selectedIndex == index
                      ? Color(0xff00B14F)
                      : Color(0xff292D32B2),
                  fontSize: 16,
                  fontWeight: FontWeight.w500),
            ),
          ),
        ),
      );
    }

    return Scaffold(
        body: ListView(
      scrollDirection: Axis.vertical,
      children: [
        Padding(
          padding:
              const EdgeInsets.only(left: 24, right: 24, top: 23, bottom: 16),
          child: Column(
            children: [
              _Header(),
              SizedBox(
                height: 36,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: 450,
                    child: Image.asset(
                      images,
                      fit: BoxFit.cover,
                    ),
                  ),
                  SizedBox(
                    height: 24,
                  ),
                  Text(
                    desc,
                    style: GoogleFonts.inter(
                        fontSize: 22, fontWeight: FontWeight.w500),
                  ),
                  SizedBox(
                    height: 12,
                  ),
                  Row(
                    children: [
                      Icon(
                        Iconsax.star1,
                        color: Color(0xffFFC400),
                        size: 32,
                      ),
                      SizedBox(
                        width: 6,
                      ),
                      Text(
                        '4.8',
                        style: GoogleFonts.inter(
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                            color: Color(0xff000000)),
                      ),
                      Text(
                        '(102) |',
                        style: GoogleFonts.inter(
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            color: Color(0xff292D32).withOpacity(0.7)),
                      ),
                      Text(
                        '67 ulasan',
                        style: GoogleFonts.inter(
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            color: Color(0xff292D32).withOpacity(0.7)),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 17,
                  ),
                  _Detail(),
                  SizedBox(
                    height: 17,
                  ),
                  Text(
                    'Pilih Ukuran',
                    style: GoogleFonts.inter(
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                        color: Color(0xff292D32)),
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  Row(
                    children: [
                      _Button(0, '39'),
                      _Button(1, '40'),
                      _Button(2, '41'),
                      _Button(3, '42'),
                      _Button(4, '43')
                    ],
                  ),
                ],
              )
            ],
          ),
        ),
        SizedBox(
          height: 16,
        ),
        _Footer(price)
      ],
    ));
  }

  Container _Footer(String price) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 24, vertical: 16),
      width: 600,
      decoration: BoxDecoration(
          border:
              Border(top: BorderSide(width: 1, color: Colors.grey.shade300))),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            price,
            style: GoogleFonts.inter(
                fontSize: 22,
                fontWeight: FontWeight.w600,
                color: Color(0xff292D32)),
          ),
          TextButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => cartPage()));
              },
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 14),
                decoration: BoxDecoration(
                    color: Color(0xff00B14F),
                    borderRadius: BorderRadius.circular(8)),
                child: Text(
                  'Tambah Keranjang',
                  style: GoogleFonts.inter(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: Colors.white),
                ),
              ))
        ],
      ),
    );
  }

  RichText _Detail() {
    return RichText(
        text: TextSpan(children: [
      TextSpan(
          text: 'Our Made US 992 men'
              's sneaker has heritage styling, premium materials and comfort features to elevate your off-duty look. These men'
              's fashion sneakers have a pigskin...',
          style: GoogleFonts.inter(
            fontSize: 16,
            fontWeight: FontWeight.w400,
            color: Color(0xff292D32).withOpacity(0.7),
          )),
      TextSpan(
          text: 'Baca selengkapnya',
          style: GoogleFonts.inter(
              fontSize: 16,
              fontWeight: FontWeight.w400,
              color: Color(0xff00B14F)))
    ]));
  }

  Row _Header() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        GestureDetector(
          onTap: () {
            Navigator.pop(
                context, MaterialPageRoute(builder: (context) => Home()));
          },
          child: Icon(
            LucideIcons.arrowLeft,
            size: 26,
          ),
        ),
        Text(
          'Detail Produk',
          style: GoogleFonts.inter(fontSize: 18, fontWeight: FontWeight.w500),
          textAlign: TextAlign.center,
        ),
        GestureDetector(
          onTap: () {
            _onClick();
          },
          child: Icon(
            Click ? Iconsax.heart5 : Iconsax.heart,
            color: Colors.red,
          ),
        )
      ],
    );
  }
}
