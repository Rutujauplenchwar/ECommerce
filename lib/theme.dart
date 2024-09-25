import 'package:ecommerce2/elevated_theme.dart';
import 'package:ecommerce2/text_theme.dart';
import 'package:ecommerce2/textfield.dart';
import 'package:flutter/material.dart';
import 'package:ecommerce2/appBar_theme.dart';

class TAppTheme
{
  TAppTheme._();
  static ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    brightness: Brightness.light,
    primaryColor: Colors.blueAccent,
    scaffoldBackgroundColor: Colors.white,
    textTheme: TTextTheme.lightTextTheme,
    elevatedButtonTheme: TElevatedButtonTheme.lightElevatedButtonTheme,
    inputDecorationTheme: TTextFieldTheme.lightInputDecorationTheme,
    appBarTheme: TAppBarTheme.lightAppBarTheme,
  );

}