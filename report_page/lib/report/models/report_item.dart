import 'package:flutter/material.dart';

class ReportItem {
  final IconData icon;
  final String label;
  final VoidCallback? onTap;
  const ReportItem({required this.icon, required this.label, this.onTap});
}

//Data model for a single row (tile) inside a card.