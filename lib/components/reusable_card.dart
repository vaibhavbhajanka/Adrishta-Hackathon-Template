import 'package:flutter/material.dart';

class ReusableCard extends StatelessWidget {
  final Color color;
  final IconData icon;
  final String title;
  final Function onPressed;

  ReusableCard({this.color, this.icon, this.title, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 16.0),
      child: Material(
        elevation: 5.0,
        color: color,
        borderRadius: BorderRadius.circular(30.0),
        child: MaterialButton(
          onPressed: onPressed,
          minWidth: 200.0,
          height: 42.0,
          child: ListTile(
            leading: Icon(icon),
            title: Text(
              title,
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
