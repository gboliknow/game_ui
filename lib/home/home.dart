// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:game_ui/bottomNav.dart';
import 'package:game_ui/home/background.dart';
import 'package:game_ui/home/components/battlefield.dart';
import 'package:game_ui/home/components/pickabattle.dart';
import 'package:game_ui/home/components/scroll.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(
            left: 25,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: 40,
                height: 40,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(
                    Radius.circular(12),
                  ),
                  image: DecorationImage(
                    image: ExactAssetImage("assets/images/profile.jpg"),
                  ),
                ),
              ),
              SizedBox(
                height: 18,
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 16),
                width: size.width * 0.9,
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                        begin: Alignment.bottomLeft,
                        end: Alignment.topRight,
                        colors: [
                          Colors.brown.shade200,
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
                    border: Border.all(
                      color: Colors.white10,
                      width: 2,
                    )),
                child: Row(
                  children: [
                    Expanded(
                      child: TextField(
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: "Search for a battle",
                          hintStyle: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                          ),
                        ),
                      ),
                    ),
                    Icon(
                      Icons.search,
                      size: 26,
                      color: Colors.white,
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 35,
              ),
              Text(
                "Pick a Battle!",
                style: TextStyle(
                    fontSize: 45,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
              SizedBox(
                height: 15,
              ),
              TitleWithMoreBtn(
                title: '',
              ),
              SizedBox(
                height: 17,
              ),
              PickAbattle(),
              SizedBox(
                height: 17,
              ),
              Text(
                "Trending",
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.white30),
              ),
              SizedBox(
                height: 35,
              ),
              Battlefield1(size: size),
              SizedBox(
                height: 35,
              ),
              BattleField2(size: size),
            ],
          ),
        ),
      ),
    );
  }
}
