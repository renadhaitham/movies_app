import 'package:flutter/material.dart';


class MyThemeData {
  static ThemeData Theme = ThemeData(
      scaffoldBackgroundColor: Colors.black,
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.yellow,
        unselectedItemColor: Colors.grey,
        backgroundColor: Colors.white,
      ));

}
