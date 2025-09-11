import 'package:flutter/material.dart';
import 'package:project/report/constant/constant.dart';
//import 'package:report_page02/report/constant/constant.dart';
//import 'package:more/report/constant/constant.dart';

/// A single tile representing a report item with an icon, label, and tap action.
/// The tile has padding, a minimum height, and uses InkWell for tap feedback.

class ReportItemTile extends StatelessWidget {
  final IconData icon;
  final String label;
  final VoidCallback? onTap;
  const ReportItemTile({
    super.key,
    required this.icon,
    required this.label,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    final textStyle = Theme.of(context).textTheme.titleMedium!;
    return InkWell(
      onTap: onTap,
      child: Container(
        constraints: const BoxConstraints(minHeight: 64), //  increase row height
        padding: const EdgeInsets.symmetric(
          horizontal: kTileHPad,
          vertical: kTileVPad,
        ),
        child: Row(
          children: [
            Icon(icon, size: 22, color: Colors.black87),
            const SizedBox(width: 12),
            Expanded(child: Text(label, style: textStyle)),
          ],
        ),
      ),
    );
  }
}
