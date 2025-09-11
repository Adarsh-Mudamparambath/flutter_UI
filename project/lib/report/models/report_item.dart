import 'package:flutter/material.dart';

class ReportItem {
  final String title;
  final IconData icon;
  final Widget page;

  const ReportItem({
    required this.title,
    required this.icon,
    required this.page,
  });
}
