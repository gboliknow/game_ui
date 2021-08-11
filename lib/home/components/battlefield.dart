// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:game_ui/home/components/bchip.dart';
import 'package:game_ui/home/components/rating.dart';

class Battlefield1 extends StatelessWidget {
  const Battlefield1({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 130,
      width: size.width * 0.93,
      decoration: BoxDecoration(
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
      child: Stack(clipBehavior: Clip.none, children: [
        Positioned(
          top: -40,
          left: -20,
          child: Image.asset(
            "assets/images/BattlefieldSoldier.png",
            height: 170,
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(
            right: 22,
            top: 18,
          ),
          child: Row(
            children: <Widget>[
              Expanded(child: SizedBox()),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    "Battlefield",
                    style: TextStyle(
                        fontSize: 27,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                  SizedBox(height: 4),
                  Row(
                    children: [
                      Bchip(
                        title: 'Fps',
                      ),
                      Bchip(
                        title: 'Adventure',
                      ),
                      Bchip(
                        title: 'Action',
                      ),
                    ],
                  ),
                  SizedBox(height: 4),
                  Rating(),
                ],
              )
            ],
          ),
        ),
      ]),
    );
  }
}

class BattleField2 extends StatelessWidget {
  const BattleField2({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 130,
      width: size.width * 0.93,
      decoration: BoxDecoration(
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
      child: Stack(clipBehavior: Clip.none, children: [
        Positioned(
          top: -80,
          right: -10,
          child: Image.asset("assets/images/GhostReconSoldier.png",
              height: 215, width: 240),
        ),
        Padding(
          padding: const EdgeInsets.only(
            left: 22,
            top: 18,
          ),
          child: Row(
            children: <Widget>[
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    "Ghost  Recon",
                    style: TextStyle(
                        fontSize: 27,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                  SizedBox(height: 4),
                  Row(
                    children: [
                      Bchip(
                        title: 'Sps',
                      ),
                      Bchip(
                        title: 'Adventure',
                      ),
                      Bchip(
                        title: 'Action',
                      ),
                    ],
                  ),
                  SizedBox(height: 4),
                  Rating(),
                ],
              ),
              Expanded(child: SizedBox()),
            ],
          ),
        ),
      ]),
    );
  }
}
