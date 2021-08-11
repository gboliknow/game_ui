import 'package:flutter/material.dart';

class Background extends StatelessWidget {
  final Widget child;
  // ignore: use_key_in_widget_constructors, prefer_const_constructors_in_immutables
  Background({
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      height: size.height,
      width: double.infinity,
      decoration: const BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage("assets/images/Home.png"),
        ),
      ),
      child: Stack(
        alignment: Alignment.center,
        children: <Widget>[
          child,
        ],
      ),
    );
  }
}
