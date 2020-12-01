import 'package:flutter/material.dart';
import 'reusable_button.dart';
import 'reusable_field.dart';

class ReusableLoginCard extends StatelessWidget {

  final String title;

  ReusableLoginCard({this.title});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Color.fromRGBO(255, 255, 255, 0.4),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.all(15.0),
          ),
          Text(
            title,
            style: TextStyle(
              fontSize: 40.0,
              fontWeight: FontWeight.w600,
              color: Colors.white,
            ),
          ),
          SizedBox(
            height: 20,
          ),
          CircleAvatar(
            radius: 30,
            backgroundColor: Colors.blueGrey,
            child: Icon(
              Icons.account_circle_outlined,
              color: Colors.white,
              size: 60,
            ),
          ),
          SizedBox(
            height: 20,
          ),
          ReusableField(
            icon: Icons.email,
            text: 'Enter your Email Id',
          ),
          ReusableField(
            icon: Icons.lock,
            text: 'Enter your password',
          ),
          ReusableButton(
            color: Colors.blueGrey,
            text: "LOGIN",
            onPressed: (){
              
            },
          ),
        ],
      ),
    );
  }
}
