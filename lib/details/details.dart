// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:game_ui/bottomNav.dart';
import 'package:game_ui/details/components/Bchip_details.dart';
import 'package:game_ui/details/components/storypicture.dart';
import 'package:game_ui/home/components/rating.dart';

class Details extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Stack(
      children: [
        Positioned(
          child: Image.asset(
            "assets/images/SplinterCellAssasins.png",
            height: size.height * 0.4,
            width: size.width,
          ),
        ),
        Padding(
          padding: EdgeInsets.only(left: 14.0, right: 14),
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  height: size.height * 0.4 - 40,
                ),
                Container(
                  height: 130,
                  width: size.width * 0.93,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                        begin: Alignment.bottomLeft,
                        end: Alignment.topRight,
                        colors: [
                          Colors.black,
                          Colors.brown[700]!,
                          Colors.brown,
                          Colors.brown[500]!,
                          Colors.brown[400]!,
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
                    ),
                  ),
                  padding: EdgeInsets.all(19),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Splinter Cell",
                            style: TextStyle(
                                fontSize: 27,
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          ),
                          SizedBox(height: 4),
                          Text(
                            "Conviction",
                            style: TextStyle(
                                fontSize: 27,
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          ),
                          SizedBox(height: 4),
                          Rating(),
                        ],
                      ),
                      Container(
                        padding: EdgeInsets.all(12),
                        decoration: BoxDecoration(
                          color: Colors.deepOrange[800],
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
                        child: Text(
                          'Play Now',
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 17),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 14),
                Row(
                  children: [
                    Dchip(
                      title: 'FPS',
                    ),
                    Dchip(
                      title: 'Adventure',
                    ),
                    Dchip(
                      title: 'Action',
                    ),
                  ],
                ),
                SizedBox(height: 14),
                Text(
                  "After quitting Third Echelon,Fisher heads to Valletta,Malta,to investigate rumors that the hit-and-run death of his daughter,Sarah,might not have been an accident.Suddenly,Anna 'Grim' Grimsdottir,sam's former colleague,contacts him and warns him of an imminet attack by a group of hitmen",
                  maxLines: 6,
                  textWidthBasis: TextWidthBasis.parent,
                  style: TextStyle(
                      color: Colors.white54,
                      fontSize: 14,
                      letterSpacing: 1.3,
                      overflow: TextOverflow.clip,
                      wordSpacing: 2,
                      height: 1.5),
                  textAlign: TextAlign.start,
                  softWrap: true,
                  overflow: TextOverflow.visible,
                ),
                SizedBox(height: 15),
                StoryPicture(),
              ],
            ),
          ),
        )
      ],
    );
  }
}
