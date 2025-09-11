import 'package:flutter/material.dart';
import 'package:more/report/pages/balance_sheet_page.dart';
import '../models/report_item.dart';

final List<List<ReportItem>> sections = [
  [
    ReportItem(
      title: 'Balance sheet',
      icon: Icons.stacked_bar_chart_rounded,
      page: const BalanceSheetPage(),
    ),
    ReportItem(
      title: 'Profit and loss',
      icon: Icons.trending_down_rounded,
      page: const Scaffold(body: Center(child: Text("Profit and loss"))),
    ),
    ReportItem(
      title: 'Cash account',
      icon: Icons.account_balance_wallet_rounded,
      page: const Scaffold(body: Center(child: Text("Cash Account Page"))),
    ),
    ReportItem(
      title: 'Day account',
      icon: Icons.event_note_rounded,
      page: const Scaffold(body: Center(child: Text("Day Account Page"))),
    ),
  ],
  [
    ReportItem(
      title: 'Sales by customer',
      icon: Icons.sell_rounded,
      page: const Scaffold(body: Center(child: Text("Sales by Customer Page"))),
    ),
    ReportItem(
      title: 'Sales by items',
      icon: Icons.percent_rounded,
      page: const Scaffold(body: Center(child: Text("Sales by Items Page"))),
    ),
    ReportItem(
      title: 'Sales report',
      icon: Icons.description_rounded,
      page: const Scaffold(body: Center(child: Text("Sales Report Page"))),
    ),
    ReportItem(
      title: 'Price by item',
      icon: Icons.grid_view_rounded,
      page: const Scaffold(body: Center(child: Text("Price by Item Page"))),
    ),
  ],
  [
    ReportItem(
      title: 'Sales by customer',
      icon: Icons.sell_rounded,
      page: const Scaffold(body: Center(child: Text("Sales by Customer Page"))),
    ),
    ReportItem(
      title: 'Sales by items',
      icon: Icons.percent_rounded,
      page: const Scaffold(body: Center(child: Text("Sales by Items Page"))),
    ),
    ReportItem(
      title: 'Sales report',
      icon: Icons.description_rounded,
      page: const Scaffold(body: Center(child: Text("Sales Report Page"))),
    ),
    ReportItem(
      title: 'Price by item',
      icon: Icons.grid_view_rounded,
      page: const Scaffold(body: Center(child: Text("Price by Item Page"))),
    ),
  ],
];
