// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:velocity_x/velocity_x.dart';

class MyTheme {
  static ThemeData lightTheme(BuildContext context) => ThemeData(
      primarySwatch: Colors.deepPurple,
      fontFamily: GoogleFonts.poppins().fontFamily,
      primaryTextTheme: GoogleFonts.latoTextTheme(),
      cardColor: Colors.white,
      canvasColor: creamColor,
      // ignore: deprecated_member_use
      buttonColor: lightBlusihColor,
      // ignore: deprecated_member_use
      accentColor: Colors.black,
      appBarTheme: AppBarTheme(
        color: Colors.purple,

        iconTheme: IconThemeData(color: Colors.black),
        // ignore: deprecated_member_use
        textTheme: Theme.of(context).textTheme,
      ));

  static ThemeData darkTheme(BuildContext context) => ThemeData(
      brightness: Brightness.dark,
      fontFamily: GoogleFonts.poppins().fontFamily,
      cardColor: Colors.black,
      canvasColor: darkcreamColor,
      // ignore: deprecated_member_use
      buttonColor: bluecolor,
      // ignore: deprecated_member_use
      accentColor: Colors.white,
      appBarTheme: AppBarTheme(
        color: Colors.purple,
        iconTheme: IconThemeData(color: Colors.white),
        // ignore: deprecated_member_use
        textTheme: Theme.of(context).textTheme,
      ));
  static Color creamColor = Color(0xfff5f5f5);
  static Color darkcreamColor = Vx.gray900;
  static Color lightgreyColor = Vx.gray400;
  static Color darkBlusihColor = Color(0xff403b58);
  static Color lightBlusihColor = Vx.purple800;
  static Color blackColor = Color.fromARGB(255, 3, 1, 14);
  static Color bluecolor = Vx.sky600;
}
