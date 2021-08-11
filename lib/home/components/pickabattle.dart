// ignore_for_file: prefer_const_constructors, duplicate_ignore

import 'package:flutter/material.dart';

class PickAbattle extends StatelessWidget {
  const PickAbattle({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          // ignore: prefer_const_constructors
          SpecialSoldier(
            image: "assets/images/CODSoldier.png",
          ),
          SpecialSoldier(
            image: "assets/images/SplinterCellSamFisher.png",
          ),
        ],
      ),
    );
  }
}

class SpecialSoldier extends StatelessWidget {
  final String image;

  const SpecialSoldier({
    Key? key,
    required this.image,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Padding(
      padding: EdgeInsets.all(14.0),
      child: Container(
        width: size.width * 0.6,
        height: 160,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.bottomLeft,
              end: Alignment.topRight,
              colors: [
                Colors.black,
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
        child: Stack(
          clipBehavior: Clip.none,
          children: [
            Positioned(
              bottom: 10,
              right: 10,
              child: Image.asset(
                "assets/images/CODLogo.png",
              ),
            ),
            Positioned(
              top: -20,
              left: -20,
              child: Image.asset(
                image,
                height: 180,
              ),
            )
          ],
        ),
      ),
    );
  }
}
