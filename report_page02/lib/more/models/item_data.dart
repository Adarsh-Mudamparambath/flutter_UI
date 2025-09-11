import 'package:flutter/material.dart';

class ItemData {
  final String title;
  final IconData icon;
  final Widget page; // 👈 added

  const ItemData(this.title, this.icon, {required this.page});
}
