import 'package:flutter/material.dart';
import 'package:myvote/components/reusable_gradient.dart';
import 'package:myvote/components/reusable_button.dart';
import 'package:get/get.dart';
import 'admin_login.dart';
import 'admin_signin.dart';

class Admin extends StatefulWidget {
  @override
  AdminState createState() => AdminState();
}

class AdminState extends State<Admin> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      body: SafeArea(
        child: Stack(
          fit: StackFit.expand,
          children: [
            ReusableGradient(),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ReusableButton(
                  color: Colors.blueGrey,
                  text: "ADMIN SIGN-IN",
                  onPressed: (){
                    Get.to(AdminSigninScreen());
                  },
                ),
                ReusableButton(
                  color: Colors.blueGrey,
                  text: "ADMIN LOG-IN",
                  onPressed: (){
                    Get.to(AdminLoginScreen());
                  },
                ),
                // Container(
                //   width: MediaQuery.of(context).size.width - 20,
                //   child: ReusableLoginCard(
                //     title: 'Admin Login',
                //   ),
                // ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

