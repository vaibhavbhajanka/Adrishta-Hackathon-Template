import 'package:flutter/material.dart';
import 'dart:async';
import 'package:get/get.dart';
import 'package:myvote/Screens/home_screen.dart';

class LaunchScreen extends StatefulWidget {
  @override
  _LaunchScreenState createState() => _LaunchScreenState();
}

class _LaunchScreenState extends State<LaunchScreen> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 3), () => Get.off(HomeScreen()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(30.0),
                child: Hero(
                  tag: 'logo',
                  child: Container(
                    child: Image.asset('images/myvote_logo.png'),
                    height: 300,
                  ),
                ),
              ),
              Text(
                'MY VOTE',
                style: TextStyle(
                  fontFamily: 'Anton',
                  fontSize: 70.0,
                  // fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                'APP',
                style: TextStyle(
                  fontFamily: 'Sans Pro',
                  fontSize: 70.0,
                  // fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
