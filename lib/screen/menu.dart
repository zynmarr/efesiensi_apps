import 'package:efisiensiku_apps/screen/menu/home.dart';
import 'package:efisiensiku_apps/screen/menu/profile.dart';
import 'package:efisiensiku_apps/screen/menu/ticket.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'dart:async';

class Menu extends StatefulWidget {
  @override
  _MenuState createState() => _MenuState();
}

class _MenuState extends State<Menu> {
  int currentIndex = 0;

  List children = [
    Home(),
    Ticket(),
    Profile(),
  ];

  void onTabBar(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        bottomNavigationBar: BottomAppBar(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Expanded(
                child: GestureDetector(
                  onTap: () {
                    setState(() {
                      onTabBar(0);
                    });
                  },
                  child: Container(
                    height: 60,
                    width: 60,
                    padding: EdgeInsets.all(15),
                    child: children[currentIndex] == children[0]
                        ? Image.asset('assets/images/barIcons/home1.png')
                        : Image.asset('assets/images/barIcons/home.png'),
                  ),
                ),
              ),
              Expanded(
                child: GestureDetector(
                  onTap: () {
                    setState(() {
                      onTabBar(1);
                    });
                  },
                  child: Container(
                    height: 60,
                    width: 60,
                    padding: EdgeInsets.all(15),
                    child: Image.asset(
                      children[currentIndex] == children[1]
                          ? 'assets/images/barIcons/ticket1.png'
                          : 'assets/images/barIcons/ticket.png',
                    ),
                  ),
                ),
              ),
              Expanded(
                child: GestureDetector(
                  onTap: () {
                    setState(() {
                      onTabBar(2);
                    });
                  },
                  child: Container(
                    height: 60,
                    width: 60,
                    padding: EdgeInsets.all(15),
                    child: Image.asset(
                      children[currentIndex] == children[2]
                          ? 'assets/images/barIcons/user1.png'
                          : 'assets/images/barIcons/user.png',
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        body: children[currentIndex],
      ),
    );
  }
}
