import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:myvote/components/reusable_card.dart';
import 'package:get/get.dart';
import 'voter_login.dart';
import 'admin_login.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Row(
              children: <Widget>[
                Hero(
                  tag: 'logo',
                  child: Container(
                    child: Image.asset('images/myvote_logo.png'),
                    height: 100.0,
                  ),
                ),
                TypewriterAnimatedTextKit(
                  speed: Duration(seconds:1),
                  totalRepeatCount: 1,
                  text: ["MY VOTE"],
                  textStyle: TextStyle(
                    fontSize: 50.0,
                    fontWeight: FontWeight.w900,
                    color: Colors.black,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 48.0,
            ),
            ReusableCard(
              color: Colors.lightBlueAccent,
              icon: MdiIcons.accountSupervisor,
              title: 'Admin',
              onPressed: (){
                Get.to(AdminLoginScreen());
                // Navigator.pushNamed(context, LoginScreen.id);
              },
            ),
            ReusableCard(
              color: Colors.blueAccent,
              icon: MdiIcons.vote,
              title: 'Candidates',
              onPressed: (){
                // Navigator.pushNamed(context, RegistrationScreen.id);
              },
            ),
            ReusableCard(
              color: Colors.lightBlueAccent,
              icon: MdiIcons.gestureTap,
              title: 'Voter',
              onPressed: (){
                Get.to(VoterLoginScreen());
                // Navigator.pushNamed(context, RegistrationScreen.id);
              },
            ),
          ],
        ),
      ),
    );
  }
}
