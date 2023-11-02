import 'dart:async';

import 'package:flutter/material.dart';
import 'package:lottery_app/home.dart';


class splashscreen extends StatefulWidget {
  const splashscreen({super.key});

  @override
  State<splashscreen> createState() => _splashscreenState();
}

class _splashscreenState extends State<splashscreen> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(Duration(seconds: 4), () {
      Navigator.push(context, MaterialPageRoute(builder: (context)=> home()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
      Column(
        children: [
          Image(image: NetworkImage('https://www.researchdive.com/blogImages/bK6lSSsnKf.jpeg'))
          

        ],
      ),
    );
  }
}
