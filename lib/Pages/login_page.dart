// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

// ignore: use_key_in_widget_constructors
class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Center(
        child: Text(
          "Login Page",
          style: TextStyle(
            //fontSize: 25,
            color: Colors.purple,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
