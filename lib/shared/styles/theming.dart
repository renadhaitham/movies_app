import 'package:flutter/material.dart';
import 'package:movies_app/shared/styles/colors.dart';

class MyThemeData {
  static ThemeData Theme = ThemeData(
    scaffoldBackgroundColor: screen,
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      type: BottomNavigationBarType.fixed,
      selectedItemColor: selected,
      unselectedItemColor: unselected,
      backgroundColor: Colors.white,
    ),
    textTheme: TextTheme(
      bodyMedium: TextStyle(
        fontSize: 25,
        fontWeight: FontWeight.w700,
        color: unselected,
      ),
      bodySmall: TextStyle(
        fontSize: 18,
        fontWeight: FontWeight.w500,
        color: selected,
      ),
    ),
  );
}

