import 'package:flutter/material.dart';

class MyThem {
  static Color lightColor = Color(0XFFB7935F);
  static ThemeData lightmode = ThemeData(
      appBarTheme: AppBarTheme(
          color: Colors.transparent, centerTitle: true, elevation: 0.0),
      textTheme: TextTheme(
          bodySmall: TextStyle(
              color: Colors.cyan, fontWeight: FontWeight.bold, fontSize: 20),
          bodyMedium: TextStyle(
              color: Colors.deepPurple,
              fontWeight: FontWeight.w100,
              fontSize: 30),
          bodyLarge: TextStyle(
              color: lightColor, fontWeight: FontWeight.w100, fontSize: 40)),
      scaffoldBackgroundColor: Colors.transparent,
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
          backgroundColor: lightColor,
          selectedItemColor: Colors.black,
          selectedLabelStyle: TextStyle(color: Colors.black),
          unselectedItemColor: Colors.white,
          unselectedLabelStyle: TextStyle(color: Colors.white)));
  static ThemeData darkthem = ThemeData();
}
