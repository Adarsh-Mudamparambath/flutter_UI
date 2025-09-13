import 'package:flutter/material.dart';
import 'package:project02/item_summary/widgets/big_kpi_value.dart';
import 'package:project02/item_summary/widgets/custom_app_bar.dart';
import 'package:project02/item_summary/widgets/custom_button.dart';
import 'package:project02/item_summary/widgets/custom_divider.dart';
import 'package:project02/item_summary/widgets/info_section.dart';
import 'package:project02/item_summary/widgets/month_selector.dart';
import 'package:project02/item_summary/widgets/section_header.dart';
import 'package:project02/item_summary/widgets/summary_card_tile.dart';

class ItemSummaryPage extends StatelessWidget {
  const ItemSummaryPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(title: "Item Summary"),
      body: SingleChildScrollView(
  padding: const EdgeInsets.only(top: 24.0, left: 16.0, right: 16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // Month selector centered
            const Center(child: MonthSelector()),
            const SizedBox(height: 16),

            // KPI centered, stacked (number above text)
            const BigKpiValue(value: "122", unit: "Unit"),
            const SizedBox(height: 16),

            const InfoSection(
              rows: [
                {"label": "Opening stock quantity", "value": "1200 unit"},
                {"label": "Purchase quantity", "value": "4552 unit"},
                {"label": "Selling quantity", "value": "555 unit"},
                {"label": "Closing quantity", "value": "822 unit"},
              ],
            ),
            const SizedBox(height: 16),

            // Custom button centered
            const Center(child: CustomButton(text: "View Item tab")),
            const SizedBox(height: 24),

            // Section header
            const SectionHeader(title: "Most selling item"),
            const SizedBox(height: 12),

            // Card with 3 tiles
            Container(
              decoration: BoxDecoration(
                color: Colors.grey[200],
                borderRadius: BorderRadius.circular(8),
              ),
              child: Column(
                children: const [
                  SummaryCardTile(
                    title: "Item name",
                    subtitle: "Lorem ipsum",
                    label1: "Price per unit",
                    value1: "444 INR",
                    label2: "Unit sold",
                    value2: "788 unit",
                    number: "0001",
                  ),
                  CustomDivider(),
                  SummaryCardTile(
                    title: "Item name",
                    subtitle: "Lorem ipsum",
                    label1: "Price per unit",
                    value1: "522 INR",
                    label2: "Unit sold",
                    value2: "100 unit",
                    number: "0002",
                  ),
                  CustomDivider(),
                  SummaryCardTile(
                    title: "Item name",
                    subtitle: "Lorem ipsum",
                    label1: "Price per unit",
                    value1: "122 INR",
                    label2: "Unit sold",
                    value2: "1000 unit",
                    number: "0003",
                  ),
                  CustomDivider(),
                  SizedBox(height: 10),
                ],
              ),
            ),
            const SizedBox(height: 24),
          ],
        ),
      ),
    );
  }
}