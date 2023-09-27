// ignore_for_file: use_key_in_widget_constructors, camel_case_types, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class cook extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        scrollDirection: Axis.vertical,
        children: [
          Container(
            decoration: BoxDecoration(
                color: Colors.black26,
                image: DecorationImage(image: AssetImage('assets/bg.jpg'))),
          )
        ],
      ),
    );
  }
}
