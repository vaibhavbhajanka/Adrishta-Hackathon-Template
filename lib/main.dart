import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'screens/launch_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'MY VOTE',
      debugShowCheckedModeBanner: false,
      home: LaunchScreen(),
      navigatorKey: Get.key,
    );
  }
}
