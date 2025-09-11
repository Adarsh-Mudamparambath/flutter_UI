import 'package:flutter/material.dart';
import 'package:report_page02/more/pages/more_page.dart';
import 'package:report_page02/report/pages/reports_page.dart';


/// Central list of all app pages
class AppPages {
  static const List<Widget> pages = [
    Scaffold(body: Center(child: Text("HomePage"),),),
    ReportsPage(),
    Scaffold(body: Center(child: Text("GeneratePage"),),),
    Scaffold(body: Center(child: Text("RecordPage"),),),
    MorePage(),
  ];
}
