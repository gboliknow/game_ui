import 'package:flutter/material.dart';

class Bchip extends StatelessWidget {
  final String title;

  const Bchip({
    Key? key,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 12),
      child: Container(
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
            Radius.circular(5),
          ),
        ),
        child: Text(
          title,
          style: TextStyle(color: Colors.white),
        ),
        padding: EdgeInsets.all(5),
      ),
    );
  }
}
