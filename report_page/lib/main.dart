import 'package:flutter/material.dart';
import 'package:more/report/pages/reports_page.dart';
import 'package:more/report/theme/theme.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Reports',
      theme: buildLightTheme(), // all colors live in theme.dart
      home: const ReportsPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}
