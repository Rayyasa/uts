// ignore_for_file: unused_import, use_key_in_widget_constructors, camel_case_types, non_constant_identifier_names, unused_element, prefer_const_literals_to_create_immutables, prefer_const_constructors, avoid_unnecessary_containers, use_full_hex_values_for_flutter_colors, sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:latihan_home/homePage.dart';
import 'package:lucide_icons/lucide_icons.dart';
import 'package:iconsax/iconsax.dart';
import 'package:intl/intl.dart';

class cartPage extends StatefulWidget {
  @override
  State<cartPage> createState() => _cartPageState();
}

class _cartPageState extends State<cartPage> {
  bool Click = true;

  void _onClick() {
    setState(() {
      Click = !Click;
    });
  }

  int index_sepatu = 1;
  int index_kacamata = 1;
  int index_jaket = 1;
  int hargaSepatu = 1240000;
  int hargaKacamata = 450000;
  int hargaJaket = 165900;
  int ongkir = 14000;
  void incrementSepatu() {
    setState(() {
      index_sepatu++;
    });
  }

  void decrementSepatu() {
    setState(() {
      if (index_sepatu > 0) {
        index_sepatu--;
      }
    });
  }

  void incrementKacamata() {
    setState(() {
      index_kacamata++;
    });
  }

  void decrementKacamata() {
    setState(() {
      if (index_kacamata > 0) {
        index_kacamata--;
      }
    });
  }

  void incrementJaket() {
    setState(() {
      index_jaket++;
    });
  }

  void decrementJaket() {
    setState(() {
      if (index_jaket > 0) {
        index_jaket--;
      }
    });
  }

  String formatCurrency(int price) {
    final format =
        NumberFormat.currency(locale: 'id_ID', symbol: 'Rp', decimalDigits: 0);
    return format.format(price);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        scrollDirection: Axis.vertical,
        children: [
          Padding(
            padding:
                const EdgeInsets.only(left: 24, right: 24, top: 23, bottom: 17),
            child: Column(
              children: [
                _Header(),
                SizedBox(
                  height: 16,
                ),
                _Alamat(),
                SizedBox(
                  height: 24,
                ),
                _CardSepatu(),
                SizedBox(
                  height: 24,
                ),
                _CardKacamata(),
                SizedBox(
                  height: 24,
                ),
                _CardJaket(),
                SizedBox(
                  height: 96,
                ),
                _Subtotal(),
                SizedBox(
                  height: 24,
                ),
                TextButton(
                    onPressed: () {},
                    child: Container(
                      width: 1000,
                      padding: EdgeInsets.symmetric(vertical: 14),
                      decoration: BoxDecoration(
                          color: Color(0xff00B14F),
                          borderRadius: BorderRadius.circular(8)),
                      child: Text(
                        'Tambah Keranjang',
                        style: GoogleFonts.inter(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            color: Colors.white),
                        textAlign: TextAlign.center,
                      ),
                    ))
              ],
            ),
          )
        ],
      ),
    );
  }

  Column _Subtotal() {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Subtotal',
              style: GoogleFonts.inter(
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                  color: Color(0xff292D32B2).withOpacity(0.20)),
            ),
            Text(
              formatCurrency(hargaSepatu * index_sepatu +
                  hargaKacamata * index_kacamata +
                  hargaJaket * index_jaket),
              style: GoogleFonts.inter(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  color: Color(0xff292D32)),
            )
          ],
        ),
        SizedBox(
          height: 24,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Ongkir',
              style: GoogleFonts.inter(
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                  color: Color(0xff292D32B2).withOpacity(0.20)),
            ),
            Text(
              'Rp14.000',
              style: GoogleFonts.inter(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  color: Color(0xff292D32)),
            )
          ],
        ),
        SizedBox(
          height: 45,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Total',
              style: GoogleFonts.inter(
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                  color: Color(0xff292D32B2).withOpacity(0.20)),
            ),
            Text(
              formatCurrency(hargaSepatu * index_sepatu +
                  hargaKacamata * index_kacamata +
                  hargaJaket * index_jaket +
                  14000),
              style: GoogleFonts.inter(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  color: Color(0xff292D32)),
            )
          ],
        ),
      ],
    );
  }

  Row _CardSepatu() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          width: 100,
          height: 100,
          child: Image.asset(
            'assets/sepatucart.png',
            fit: BoxFit.cover,
          ),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'New Balance 992 ...',
              style: GoogleFonts.inter(
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                  color: Color(0xff292D32)),
            ),
            SizedBox(
              height: 6,
            ),
            Text(
              '40',
              style: GoogleFonts.inter(
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                  color: Color(0xff292D32).withOpacity(0.1)),
            ),
            SizedBox(
              height: 16,
            ),
            Text(
              formatCurrency(hargaSepatu * index_sepatu),
              style: GoogleFonts.inter(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                  color: Color(0xff292D32)),
            ),
          ],
        ),
        SizedBox(
          width: 23,
        ),
        Container(
            height: 44,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                border: Border.all(
                  color: Color(0xffF2F2F7),
                  width: 1,
                )),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 6),
              child: Row(
                children: [
                  GestureDetector(
                      onTap: decrementSepatu, child: Image.asset('minus.png')),
                  SizedBox(
                    width: 16,
                  ),
                  Text(index_sepatu.toString()),
                  SizedBox(
                    width: 16,
                  ),
                  GestureDetector(
                      onTap: incrementSepatu, child: Image.asset('add.png'))
                ],
              ),
            )),
      ],
    );
  }

  Row _CardKacamata() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          width: 100,
          height: 100,
          child: Image.asset(
            'assets/Rectangle 7-2.png',
            fit: BoxFit.cover,
          ),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Kacamata Baca ...',
              style: GoogleFonts.inter(
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                  color: Color(0xff292D32)),
            ),
            SizedBox(
              height: 6,
            ),
            Text(
              '-2, Hitam',
              style: GoogleFonts.inter(
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                  color: Color(0xff292D32).withOpacity(0.1)),
            ),
            SizedBox(
              height: 16,
            ),
            Text(
              formatCurrency(hargaKacamata * index_kacamata),
              style: GoogleFonts.inter(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                  color: Color(0xff292D32)),
            ),
          ],
        ),
        SizedBox(
          width: 23,
        ),
        Container(
            height: 44,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                border: Border.all(
                  color: Color(0xffF2F2F7),
                  width: 1,
                )),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 6),
              child: Row(
                children: [
                  GestureDetector(
                      onTap: decrementKacamata,
                      child: Image.asset('minus.png')),
                  SizedBox(
                    width: 16,
                  ),
                  Text(index_kacamata.toString()),
                  SizedBox(
                    width: 16,
                  ),
                  GestureDetector(
                      onTap: incrementKacamata, child: Image.asset('add.png'))
                ],
              ),
            )),
      ],
    );
  }

  Row _CardJaket() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          width: 100,
          height: 100,
          child: Image.asset(
            'assets/Rectangle 7-1.png',
            fit: BoxFit.cover,
          ),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Human Greatness ,,,',
              style: GoogleFonts.inter(
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                  color: Color(0xff292D32)),
            ),
            SizedBox(
              height: 6,
            ),
            Text(
              'XL, Hitam',
              style: GoogleFonts.inter(
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                  color: Color(0xff292D32).withOpacity(0.1)),
            ),
            SizedBox(
              height: 16,
            ),
            Text(
              formatCurrency(hargaJaket * index_jaket),
              style: GoogleFonts.inter(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                  color: Color(0xff292D32)),
            ),
          ],
        ),
        SizedBox(
          width: 23,
        ),
        Container(
            height: 44,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                border: Border.all(
                  color: Color(0xffF2F2F7),
                  width: 1,
                )),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 6),
              child: Row(
                children: [
                  GestureDetector(
                      onTap: decrementJaket, child: Image.asset('minus.png')),
                  SizedBox(
                    width: 16,
                  ),
                  Text(index_jaket.toString()),
                  SizedBox(
                    width: 16,
                  ),
                  GestureDetector(
                      onTap: incrementJaket, child: Image.asset('add.png'))
                ],
              ),
            )),
      ],
    );
  }

  Container _Alamat() {
    return Container(
      height: 110,
      width: 450,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: Color(0xffF2F2F7).withOpacity(0.7)),
      child: Padding(
        padding: const EdgeInsets.only(left: 17, top: 16),
        child: Wrap(crossAxisAlignment: WrapCrossAlignment.start, children: [
          Icon(LucideIcons.mapPin),
          Padding(
            padding: const EdgeInsets.only(left: 12),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Dikirim ke',
                  style: GoogleFonts.inter(
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                      color: Color(0xff292D32B2)),
                ),
                SizedBox(
                  height: 12,
                ),
                Text(
                  'Jakarta, Cibubur, Kota Wisata\nMadrid No 23',
                  style: GoogleFonts.inter(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: Color(0xff292D32)),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 110),
            child: Text(
              'Ubah',
              style: GoogleFonts.inter(
                  color: Color(0xff00B14F),
                  fontSize: 14,
                  fontWeight: FontWeight.w400),
            ),
          )
        ]),
      ),
    );
  }

  Row _Header() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        GestureDetector(
          onTap: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => Home()));
          },
          child: Icon(
            LucideIcons.arrowLeft,
            size: 26,
          ),
        ),
        Text(
          'Keranjang',
          style: GoogleFonts.inter(fontSize: 18, fontWeight: FontWeight.w500),
          textAlign: TextAlign.center,
        ),
        GestureDetector(
          onTap: () {
            _onClick();
          },
          child: Icon(LucideIcons.moreHorizontal),
        )
      ],
    );
  }
}
