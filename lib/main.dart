import 'package:efisiensiku_apps/Auth/login.dart';
import 'package:efisiensiku_apps/Auth/register.dart';
import 'package:efisiensiku_apps/screen/menu.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'dart:async';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialRoute: '/',
      getPages: [
        GetPage(name: '/', page: () => Login(), transition: Transition.native),
        GetPage(name: '/register', page: () => Register(), transition: Transition.native),
        GetPage(name: '/menu', page: () => Menu()),
      ],
      // home: Menu(),
      title: 'Flutter Demo',
      theme: ThemeData(
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}
