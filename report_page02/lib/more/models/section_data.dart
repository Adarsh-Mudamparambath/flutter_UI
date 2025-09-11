import 'package:flutter/material.dart';
import 'item_data.dart';

class SectionData {
  final String title;
  final IconData icon;
  final List<ItemData> items;

  const SectionData({
    required this.title,
    required this.icon,
    required this.items,
  });
}
