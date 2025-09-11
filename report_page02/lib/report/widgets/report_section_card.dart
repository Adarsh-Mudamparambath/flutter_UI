import 'package:flutter/material.dart';
import 'package:report_page02/report/constant/constant.dart';
import 'package:report_page02/report/models/report_item.dart';
//import 'package:more/report/constant/constant.dart';
//import 'package:more/report/models/report_item.dart';
import 'report_item_tile.dart';
import 'divider.dart';

class ReportSectionCard extends StatelessWidget {
  final List<ReportItem> items;
  const ReportSectionCard({super.key, required this.items});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(kCardRadius),
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(kCardRadius),
        child: Column(
          children: List.generate(
            items.length,
            (index) => Column(
              children: [
                ReportItemTile(
                  icon: items[index].icon,
                  label: items[index].title,
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (_) => items[index].page),
                    );
                  },
                ),
                if (index != items.length - 1) const ReportDivider(), //  use custom divider
              ],
            ),
          ),
        ),
      ),
    );
  }
}
