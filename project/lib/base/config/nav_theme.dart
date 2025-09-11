import 'package:flutter/material.dart';

class NavTheme {
  // Colors
  static const Color selectedColor = Colors.red;
  static const Color unselectedColor = Colors.black54;
  static const Color dividerColor = Colors.black12;
  static const Color appBarColor = Color(0xFFF7F5F7); // fixed grey

  // BottomNavigationBar theme
  static BottomNavigationBarThemeData bottomNavTheme = const BottomNavigationBarThemeData(
    type: BottomNavigationBarType.fixed,
    selectedItemColor: selectedColor,
    unselectedItemColor: unselectedColor,
    showUnselectedLabels: true,
    elevation: 0,
    backgroundColor: Colors.white,
  );

  // AppBar theme to stop color shift on scroll
  static const AppBarTheme appBarTheme = AppBarTheme(
    backgroundColor: appBarColor,
    foregroundColor: Colors.black,
    elevation: 0,
    centerTitle: false,
    surfaceTintColor: Colors.transparent, // <- disables overlay tint
    scrolledUnderElevation: 0,            // <- disables “scrolled under” effect
  );
}
