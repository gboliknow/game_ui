// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class Dchip extends StatelessWidget {
  final String title;

  const Dchip({
    Key? key,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.only(right: 12),
      child: Container(
        width: size.width / 3 - 45,
        height: 25,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.bottomLeft,
              end: Alignment.topRight,
              colors: [
                Colors.grey,
                Colors.brown,
              ]),
          boxShadow: [
            BoxShadow(
                color: Colors.transparent,
                spreadRadius: 5,
                blurRadius: 7,
                offset: Offset(0, 3))
          ],
          borderRadius: BorderRadius.all(
            Radius.circular(10),
          ),
        ),
        child: Center(
          child: Text(
            title,
            style: TextStyle(
                color: Colors.white, fontSize: 15, fontWeight: FontWeight.w500),
          ),
        ),
        padding: EdgeInsets.all(5),
      ),
    );
  }
}
