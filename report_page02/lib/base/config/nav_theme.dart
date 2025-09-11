import 'package:flutter/material.dart';

class NavTheme {
  // Colors
  static const Color selectedColor = Colors.red;       // 🔴 active icon
  static const Color unselectedColor = Colors.black; // ⚫ inactive icon
  static const Color dividerColor = Colors.black12;    // line above nav

  // BottomNavigationBar theme
  static BottomNavigationBarThemeData bottomNavTheme = BottomNavigationBarThemeData(
    type: BottomNavigationBarType.fixed,
    selectedItemColor: selectedColor,
    unselectedItemColor: unselectedColor,
    showUnselectedLabels: true,
    elevation: 0,
    backgroundColor: Colors.white,
  );
}
