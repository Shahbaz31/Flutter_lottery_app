import 'package:flutter/material.dart';
import 'dart:math';
import 'package:lottery_app/SplashScreen.dart';

void main() {
  runApp(  MyApp());
}

class MyApp extends StatefulWidget {
  MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {


  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      home: splashscreen(),


    );
  }
}

