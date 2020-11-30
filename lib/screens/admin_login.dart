import 'package:flutter/material.dart';
import 'package:myvote/components/reusable_button.dart';
import 'package:myvote/components/reusable_field.dart';
import 'package:get/get.dart';
// import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:flutter/services.dart';
import 'package:myvote/components/reusable_card.dart';
import 'package:myvote/components/reusable_login_card.dart';

class AdminLoginScreen extends StatefulWidget {
  @override
  AdminLoginScreenState createState() => AdminLoginScreenState();
}

class AdminLoginScreenState extends State<AdminLoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      body: SafeArea(
        child: Stack(
          fit: StackFit.expand,
          children: [
            Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    Colors.blue[50],
                    Colors.blue[100],
                    Colors.blue[200],
                    Colors.blue[300],
                    Colors.blue[400],
                    Colors.blue[500],
                    Colors.blue[600],
                    Colors.blue[700],
                    Colors.blue[800],
                    Colors.blue[900],
                  ],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                ),
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  width: MediaQuery.of(context).size.width - 20,
                  child: ReusableLoginCard(
                    title: 'Admin Login',
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}