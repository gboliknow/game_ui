// ignore_for_file: file_names, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:game_ui/details/details.dart';
import 'package:game_ui/home/home.dart';

class BottomNav extends StatefulWidget {
  const BottomNav({
    Key? key,
  }) : super(key: key);

  @override
  State<BottomNav> createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  int _selectedIndex = 2;

  void onTapped(int value) {
    setState(() {
      _selectedIndex = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.brown[900],
      body: _selectedIndex == 2 ? Details() : Home(),
      bottomNavigationBar: Container(
        height: 80,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(42),
            topRight: Radius.circular(42),
          ),
          gradient: LinearGradient(
              begin: Alignment.bottomLeft,
              end: Alignment.topRight,
              colors: [
                Colors.black,
                Colors.brown,
                Colors.brown,
              ]),
        ),
        child: BottomNavigationBar(
          currentIndex: _selectedIndex,
          backgroundColor: Colors.transparent,
          selectedItemColor: Colors.white,
          unselectedItemColor: Colors.white10,
          items: [
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.video_camera_back,
                  size: 40.0,
                ),
                label: 'Stream'),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.home,
                  size: 40.0,
                ),
                label: 'Home'),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.gamepad_rounded,
                  size: 40.0,
                ),
                label: 'Match'),
          ],
          onTap: onTapped,
        ),
      ),
    );
  }
}
