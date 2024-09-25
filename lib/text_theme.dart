import 'package:flutter/material.dart';
class TTextTheme
{
  TTextTheme._();
  static TextTheme lightTextTheme = TextTheme
 (
  headlineLarge:TextStyle().copyWith(fontSize: 32.0,fontWeight: FontWeight.bold),
  headlineMedium:TextStyle().copyWith(fontSize: 24.0,fontWeight: FontWeight.w600),
  headlineSmall:TextStyle().copyWith(fontSize: 18.0,fontWeight: FontWeight.w600),
   
  titleLarge:TextStyle().copyWith(fontSize: 16.0,fontWeight: FontWeight.w600),
  titleMedium:TextStyle().copyWith(fontSize: 16.0,fontWeight: FontWeight.w500),
  titleSmall:TextStyle().copyWith(fontSize: 16.0,fontWeight: FontWeight.w400),

  bodyLarge:TextStyle().copyWith(fontSize: 14.0,fontWeight: FontWeight.w500),
  bodyMedium:TextStyle().copyWith(fontSize: 14.0,fontWeight: FontWeight.normal),
  bodySmall:TextStyle().copyWith(fontSize: 14.0,fontWeight: FontWeight.w500),

  labelLarge:TextStyle().copyWith(fontSize: 12.0,fontWeight: FontWeight.normal),
  labelMedium:TextStyle().copyWith(fontSize: 12.0,fontWeight: FontWeight.normal),
  




 );
}