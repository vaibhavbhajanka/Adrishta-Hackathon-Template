import 'package:flutter/material.dart';

class ReusableField extends StatelessWidget {
  final IconData icon;
  final String text;

  ReusableField({this.icon, this.text});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 20,
      ),
      child: Card(
        child: ListTile(
          leading: Icon(icon),
          title: TextField(
            decoration: InputDecoration(
              hintText: text,
              border: InputBorder.none,
            ),
          ),
        ),
      ),
    );
  }
}