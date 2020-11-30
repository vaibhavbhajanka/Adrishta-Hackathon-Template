import 'package:flutter/material.dart';

class ReusableButton extends StatelessWidget {
  final Color color;
  final String text;

  ReusableButton({this.color, this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.all(25.0),
        child: RaisedButton(
          child: Padding(
            padding: const EdgeInsets.only(
              left: 80,
              right: 80,
              top: 20,
              bottom: 20,
            ),
            child: Text(
              text,
              style: TextStyle(
                color: Colors.white,
                fontSize: 20.0,
              ),
            ),
          ),
          color: color,
          onPressed: () {},
        ),
      ),
    );
  }
}
