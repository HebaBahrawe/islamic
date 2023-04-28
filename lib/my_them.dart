import 'package:flutter/material.dart';

class MyThemData {
  static const Color lightColor = Color(0XFFB7935F);
  static ThemeData lightThem = ThemeData(
      primaryColor: lightColor,
      scaffoldBackgroundColor: Colors.transparent,
      appBarTheme: AppBarTheme(color: Colors.transparent, elevation: 0.0),
      textTheme: TextTheme(
          bodyLarge: TextStyle(
              color: Colors.black, fontSize: 30, fontWeight: FontWeight.bold),
          bodyMedium: TextStyle(
            color: Colors.white,
            fontSize: 25,
            fontWeight: FontWeight.w100,
          ),
          bodySmall: TextStyle(
              color: Colors.indigo, fontSize: 20, fontWeight: FontWeight.w200)),
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
          type: BottomNavigationBarType.fixed,
          backgroundColor: lightColor,
          selectedItemColor: Colors.black,
          selectedLabelStyle: TextStyle(
            color: Colors.black,
          ),
          unselectedItemColor: Colors.white,
          unselectedLabelStyle: TextStyle(color: Colors.white)));
  static ThemeData darkthem = ThemeData();
}
