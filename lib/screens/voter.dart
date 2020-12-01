import 'package:flutter/material.dart';
import 'package:myvote/components/reusable_gradient.dart';
import 'package:myvote/components/reusable_button.dart';
import 'voter_login.dart';
import 'voter_signin.dart';
import 'package:get/get.dart';

class Voter extends StatefulWidget {
  @override
  VoterState createState() => VoterState();
}

class VoterState extends State<Voter> {
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
                  text: "VOTER SIGN-IN",
                  onPressed: (){
                    Get.to(VoterSigninScreen());
                  },
                ),
                ReusableButton(
                  color: Colors.blueGrey,
                  text: "VOTER LOG-IN",
                  onPressed: (){
                    Get.to(VoterLoginScreen());
                  },
                ),
                // Container(
                //   width: MediaQuery.of(context).size.width - 20,
                //   child: ReusableLoginCard(
                //     title: 'Voter Login',
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

