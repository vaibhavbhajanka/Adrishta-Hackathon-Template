import 'package:flutter/material.dart';

class ReusableGradient extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
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
    );
  }
}