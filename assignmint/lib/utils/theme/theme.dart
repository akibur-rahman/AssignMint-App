import 'package:flutter/material.dart';

class AppTheme {
  AppTheme._();
  static ThemeData lightTheme = ThemeData(
    brightness: Brightness.light,
    scaffoldBackgroundColor: Color(0xfff0fdf4),
    primaryColor: Color(0xff15803d),
  );

  static final HeadingTextStyle = TextStyle(
    fontWeight: FontWeight.bold,
    color: Color(0xff15803d),
  );
}
