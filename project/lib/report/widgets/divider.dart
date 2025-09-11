import 'package:flutter/material.dart';

/// A custom divider used inside report section cards.
/// Centralizes the style (height, thickness, color).
class ReportDivider extends StatelessWidget {
  const ReportDivider({super.key});

  @override
  Widget build(BuildContext context) {
    return Divider(
      height: 1.0,
      thickness: 1.0,
      color: Theme.of(context).dividerColor, // theme-driven color ✅
    );
  }
}
