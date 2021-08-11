// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class Rating extends StatelessWidget {
  const Rating({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          Icons.star,
          size: 20.0,
          color: Colors.amber,
        ),
        SizedBox(width: 5),
        Text(
          "4.9",
          style: TextStyle(color: Colors.white),
        ),
        SizedBox(width: 10),
        Icon(
          Icons.remove_red_eye_outlined,
          size: 20.0,
          color: Colors.yellow,
        ),
        SizedBox(width: 5),
        Text(
          "535k",
          style: TextStyle(color: Colors.white),
        ),
      ],
    );
  }
}
