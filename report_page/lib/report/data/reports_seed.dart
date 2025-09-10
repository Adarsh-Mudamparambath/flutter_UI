import 'package:flutter/material.dart';
import 'package:more/report/models/report_item.dart';
import 'package:more/report/models/report_section.dart';

//   Provides the initial list of sections and items.

List<ReportSection> buildReportSections(void Function(String) onTapMsg) {
  return [
    ReportSection(items: [
      ReportItem(icon: Icons.stacked_bar_chart_rounded, label: 'Balance sheet',
        onTap: () => onTapMsg('Balance sheet tapped')),
      ReportItem(icon: Icons.trending_down_rounded, label: 'Profit and loss',
        onTap: () => onTapMsg('Profit and loss tapped')),
      ReportItem(icon: Icons.account_balance_wallet_rounded, label: 'Cash account',
        onTap: () => onTapMsg('Cash account tapped')),
      ReportItem(icon: Icons.event_note_rounded, label: 'Day account',
        onTap: () => onTapMsg('Day account tapped')),
    ]),
    ReportSection(items: [
      ReportItem(icon: Icons.sell_rounded, label: 'Sales by customer',
        onTap: () => onTapMsg('Sales by customer tapped')),
      ReportItem(icon: Icons.percent_rounded, label: 'Sales by items',
        onTap: () => onTapMsg('Sales by items tapped')),
      ReportItem(icon: Icons.description_rounded, label: 'Sales report',
        onTap: () => onTapMsg('Sales report tapped')),
      ReportItem(icon: Icons.link_rounded, label: 'Lorem ipsum',
        onTap: () => onTapMsg('Lorem ipsum tapped')),
    ]),
    ReportSection(items: [
      ReportItem(icon: Icons.grid_view_rounded, label: 'Price by item',
        onTap: () => onTapMsg('Price by item tapped')),
      ReportItem(icon: Icons.store_mall_directory_rounded, label: 'Price by vendor',
        onTap: () => onTapMsg('Price by vendor tapped')),
      ReportItem(icon: Icons.link_rounded, label: 'Lorem ipsum',
        onTap: () => onTapMsg('Lorem ipsum tapped')),
      ReportItem(icon: Icons.link_rounded, label: 'Lorem ipsum',
        onTap: () => onTapMsg('Lorem ipsum tapped')),
    ]),
    ReportSection(items: [
      ReportItem(icon: Icons.grid_view_rounded, label: 'Price by item',
        onTap: () => onTapMsg('Price by item tapped')),
      ReportItem(icon: Icons.store_mall_directory_rounded, label: 'Price by vendor',
        onTap: () => onTapMsg('Price by vendor tapped')),
      ReportItem(icon: Icons.link_rounded, label: 'Lorem ipsum',
        onTap: () => onTapMsg('Lorem ipsum tapped')),
      ReportItem(icon: Icons.link_rounded, label: 'Lorem ipsum',
        onTap: () => onTapMsg('Lorem ipsum tapped')),
    ]),
    // Add more sections if needed…
  ];
}
