import 'package:flutter/material.dart';

class ApplicationThemeManager {
  static const Color primaryColor = Color(0xFFB7935F);
  static ThemeData lightTheme = ThemeData(
    primaryColor: primaryColor,
    useMaterial3: true,
    scaffoldBackgroundColor: Colors.transparent,
    appBarTheme: AppBarTheme(
        elevation: 0,
        backgroundColor: Colors.transparent,
        centerTitle: true,
        iconTheme: IconThemeData(color: Colors.black),
        titleTextStyle: TextStyle(
          fontSize: 30,
          fontWeight: FontWeight.bold,
          color: Colors.black,
        )),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
        backgroundColor: primaryColor,
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.black,
        selectedLabelStyle: TextStyle(
          fontFamily: "El Messiri",
          fontSize: 17,
          fontWeight: FontWeight.normal,
          color: Colors.black,
        ),
        selectedIconTheme: IconThemeData(
          color: Colors.black,
        ),
        unselectedItemColor: Colors.white70,
        unselectedLabelStyle: TextStyle(
          fontFamily: "El Messiri",
          fontSize: 12,
          color: Colors.white70,
          fontWeight: FontWeight.normal,
        ),
        unselectedIconTheme: IconThemeData(
          color: Colors.white70,
        )),
  );
}
