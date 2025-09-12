import 'package:flutter/material.dart';
import 'package:project/report/constant/constant.dart';
//import 'package:report_page02/report/constant/constant.dart';
//import 'package:more/report/constant/constant.dart';

/// Builds and returns a light theme for the report page.
/// The theme customizes colors, text styles, AppBar, Card, and Divider styles.
/// Uses Material 3 design principles.
/// The primary color is a dark grey, with light backgrounds and subtle dividers.
/// Text styles are set for medium titles and body text.

ThemeData buildLightTheme() {
  final base = ThemeData(
    colorScheme: ColorScheme.fromSeed(
      seedColor: const Color(0xFF2D2D2D),
      brightness: Brightness.light,
    ),
    scaffoldBackgroundColor: kWhite,
    useMaterial3: true,
  );

  return base.copyWith(
  appBarTheme: const AppBarTheme(
  backgroundColor: kLightGrey,
  elevation: 0,
  centerTitle: false,
  foregroundColor: Colors.black87,
  surfaceTintColor: Colors.transparent, // <- stop overlay/tint
  scrolledUnderElevation: 0,            // <- stop “scrolled under” shadow/tone
  titleTextStyle: TextStyle(
    fontSize: 22, fontWeight: FontWeight.w700, color: Colors.black87,
  ),
),

    cardColor: kLightGrey,
    dividerColor: kDividerGrey,
    textTheme: base.textTheme.copyWith(
      titleMedium: const TextStyle(
        fontSize: 16, fontWeight: FontWeight.w600, color: Colors.black87,
      ),
      bodyMedium: const TextStyle(
        fontSize: 15, color: Colors.black87,
      ),
    ),
  );
}
