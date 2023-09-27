// ignore_for_file: unused_import, use_key_in_widget_constructors, prefer_const_constructors, prefer_const_literals_to_create_immutables, use_full_hex_values_for_flutter_colors, avoid_web_libraries_in_flutter, avoid_unnecessary_containers, non_constant_identifier_names, sized_box_for_whitespace

import 'dart:html';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iconsax/iconsax.dart';
import 'package:lucide_icons/lucide_icons.dart';

class HomePage extends StatelessWidget {
  final List<String> texts = ['Semua', 'Kemeja', 'Sepatu', 'Aksesoris'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        scrollDirection: Axis.vertical,
        children: [
          Column(
            children: [
              _Header(),
              SizedBox(
                height: 10,
              ),
              _Banner(),
              SizedBox(
                height: 24,
              ),
              _Text1(),
              SizedBox(
                height: 16,
              ),
              textSlider_(),
              SizedBox(
                height: 24,
              ),
              Row(
                children: [Column()],
              ),
            ],
          ),
        ],
      ),
    );
  }

  Padding textSlider_() {
    List<String> texts = ['Semua', 'Kemeja', 'Sepatu', 'Aksesoris'];
    return Padding(
      padding: const EdgeInsets.only(left: 24),
      child: Center(
        child: Container(
          height: 43,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: texts.length,
            itemBuilder: (context, int index) {
              return Container(
                margin: EdgeInsets.symmetric(horizontal: 12),
                width: 101,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Color(0xff00B14F),
                ),
                child: Center(
                  child: Text(texts[index],
                      style: GoogleFonts.inter(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.w500)),
                ),
              );
            },
          ),
        ),
      ),
    );
  }

  Container _Text1() {
    return Container(
          child:
             Row(
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

  Container _Banner() {
    return Container(
      width: 450,
      child: Image.asset(
        'poto1.png',
        fit: BoxFit.cover,
      ),
    );
  }

  Padding _Header() {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            width: 283,
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
                  border: InputBorder.none),
            ),
          ),
          Icon(
            LucideIcons.bell,
            size: 26,
          ),
          Icon(
            LucideIcons.shoppingBag,
            size: 26,
          ),
        ],
      ),
    );
  }
}
