import 'package:flutter/material.dart';
import 'package:spotify_clone/core/config/theme/appColor.dart';

class Apptheme {
  static final ligthTheme = ThemeData(
    brightness: Brightness.light,
    fontFamily: 'Satoshi',
    primaryColor: Appcolor.primary,
    scaffoldBackgroundColor: Appcolor.lightBackground,
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
          backgroundColor: Appcolor.primary,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30),
          ),
          textStyle:
              const TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
    ),
  );

  static final darkTheme = ThemeData(
    brightness: Brightness.dark,
    fontFamily: 'Satoshi',
    primaryColor: Appcolor.primary,
    scaffoldBackgroundColor: Appcolor.darkBackground,
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
          backgroundColor: Appcolor.primary,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30),
          ),
          textStyle:
              const TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
    ),
  );
}
