import 'package:flutter/material.dart';
import 'package:more/constant.dart';

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
    return Material(
      color: Colors.transparent,
      child: InkWell(
        onTap: onTap,
        child: Container(
          constraints: const BoxConstraints(minHeight: 64), // 🔑 increase row height
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
      ),
    );
  }
}
