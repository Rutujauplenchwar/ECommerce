import 'package:flutter/material.dart';

class TColors
{
  TColors._();
  static const Color primaryColor = Color(0xFF4b68ff);
  static const Color secondaryColor = Color.fromARGB(255, 222, 255, 75);
  static const Color accent = Color.fromARGB(255, 233, 233, 235);
  static const Color textPri = Color.fromARGB(255, 32, 33, 35);
  static const Color textSec = Color.fromARGB(255, 103, 104, 106);
  static const Color textWhite = Color.fromARGB(255, 249, 249, 252);
  static const Color dark = Color.fromARGB(255, 15, 15, 48);
  static const Color borderPrimary = Color.fromARGB(255, 246, 246, 248);
   static const Color light = Color.fromARGB(255, 240, 240, 246);
   static const Color black = Colors.black;
  //gradient color
  static const Gradient linearGradient = LinearGradient(
    begin: Alignment(0.0, 0.0),
    end: Alignment(0.707, -0.707),
    colors: [
      Color.fromARGB(255, 181, 49, 49),
      Color.fromARGB(255, 49, 71, 181),
      Color.fromARGB(255, 63, 168, 66),
    ],
  );
}