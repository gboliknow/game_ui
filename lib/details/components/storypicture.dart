// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class StoryPicture extends StatelessWidget {
  const StoryPicture({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          ThePicture(
            image: "assets/images/DescriptionImage11.png",
          ),
          ThePicture(
            image: "assets/images/DescriptionImage2.png",
          ),
        ],
      ),
    );
  }
}

class ThePicture extends StatelessWidget {
  final String image;

  const ThePicture({
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
        height: 170,
        decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                  color: Colors.transparent,
                  spreadRadius: 5,
                  blurRadius: 7,
                  offset: Offset(0, 3))
            ],
            image: DecorationImage(
              image: AssetImage(image),
              fit: BoxFit.cover,
            ),
            borderRadius: BorderRadius.all(
              Radius.circular(20),
            ),
            border: Border.all(
              color: Colors.white38,
              width: 2,
            )),
        child: Stack(
          clipBehavior: Clip.none,
          children: [],
        ),
      ),
    );
  }
}
