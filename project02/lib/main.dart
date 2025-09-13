import 'package:flutter/material.dart';
import 'package:project02/item_summary/pages/customer_summary_page.dart';
import 'package:project02/item_summary/pages/item_summary_page.dart';
import 'package:project02/item_summary/pages/trip_summary_page.dart';
import 'package:project02/item_summary/theme/app_theme.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: AppTheme.lightTheme,
      home: const CustomerSummaryPage(),
    );
  }
}
