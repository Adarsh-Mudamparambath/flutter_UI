import 'package:flutter/material.dart';
import 'package:more/report/constant/constant.dart';
import 'package:more/report/models/report_item.dart';
import 'package:more/report/widgets/report_item_tile.dart';

class ReportSectionCard extends StatelessWidget {
  final List<ReportItem> items;
  const ReportSectionCard({super.key, required this.items});

  @override
  Widget build(BuildContext context) {
    final divider = Divider(
      height: 1, thickness: 1, color: Theme.of(context).dividerColor,
    );

    return Card(
      elevation: 0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(kCardRadius),
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(kCardRadius),
        child: Column(
          children: [
            for (int i = 0; i < items.length; i++) ...[
              ReportItemTile(
                icon: items[i].icon,
                label: items[i].label,
                onTap: items[i].onTap,
              ),
              if (i != items.length - 1) divider,
            ],
          ],
        ),
      ),
    );
  }
}


