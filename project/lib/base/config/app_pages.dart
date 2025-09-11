import 'package:flutter/material.dart';
import 'package:project/more/pages/more_page.dart';
import 'package:project/report/pages/reports_page.dart';
//import 'package:report_page02/more/pages/more_page.dart';
//import 'package:report_page02/report/pages/reports_page.dart';


class AppPages {
  /// List of pages
  static const List<Widget> pages = [
    Scaffold(body: Center(child: Text("Home"))),
    ReportsPage(),
    Scaffold(body: Center(child: Text("Generate"))),
    Scaffold(body: Center(child: Text("Record"))),
    MorePage(),
  ];

  /// Titles for AppBar (same order as pages)
  static const List<String> titles = [
    "Home",
    "Report",
    "Generate",
    "Record",
    "More",
  ];
}
