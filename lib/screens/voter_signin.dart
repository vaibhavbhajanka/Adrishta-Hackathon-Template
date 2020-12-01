import 'package:flutter/material.dart';
import 'package:myvote/components/reusable_gradient.dart';
import 'package:myvote/components/reusable_login_card.dart';

class VoterSigninScreen extends StatefulWidget {
  @override
  VoterSigninScreenState createState() => VoterSigninScreenState();
}

class VoterSigninScreenState extends State<VoterSigninScreen> {
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
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  width: MediaQuery.of(context).size.width - 20,
                  child: ReusableLoginCard(
                    title: 'Voter Sign-in',
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