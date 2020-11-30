import 'package:flutter/material.dart';
// import 'package:untapd/Providers/global_provider.dart';
// import 'package:untapd/screens/otp_login.dart';
// import 'package:provider/provider.dart';
// import 'package:untapd/Providers/user_profile_provider.dart';
// import 'package:modal_progress_hud/modal_progress_hud.dart';
// import 'package:untapd/screens/register.dart';
import 'package:myvote/components/reusable_login_card.dart';

class VoterLoginScreen extends StatefulWidget {
  @override
  VoterLoginScreenState createState() => VoterLoginScreenState();
}

class VoterLoginScreenState extends State<VoterLoginScreen> {
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
                    colors:[
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
                    title: 'Voter Login',
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