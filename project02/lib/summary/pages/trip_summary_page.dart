import 'package:flutter/material.dart';
import 'package:project02/summary/widgets/big_kpi_value.dart';
import 'package:project02/summary/widgets/custom_app_bar.dart';
import 'package:project02/summary/widgets/custom_button.dart';
import 'package:project02/summary/widgets/custom_divider.dart';
import 'package:project02/summary/widgets/info_section.dart';
import 'package:project02/summary/widgets/month_selector.dart';
import 'package:project02/summary/widgets/summary_card_tile.dart';

class TripSummaryPage extends StatelessWidget {
  const TripSummaryPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(title: "Trip Summary"),
      body: SingleChildScrollView(
  padding: const EdgeInsets.only(top: 24.0, left: 16.0, right: 16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // Month selector centered
            const Center(child: MonthSelector()),
            const SizedBox(height: 16),

            // KPI centered, stacked (number above text)
            const BigKpiValue(value: "10", unit: "nos"),
            const SizedBox(height: 16),

            const InfoSection(
              rows: [
                {"label": "Total trip", "value": "320 trip"},
                {"label": "Total revenue", "value": "\$ 1200.80"},
                {"label": "Average fuel efficiency", "value": "5 km/lit"},
                {"label": "Idle vehicle", "value": "02 units"},
              ],
            ),
            const SizedBox(height: 16),

            // Custom button centered
            const Center(child: CustomButton(text: "View vehicle summary", width: 177)),
            const SizedBox(height: 24),

            // Vehicle card with 5 tiles
            Container(
              decoration: BoxDecoration(
                color: Colors.grey[200],
                borderRadius: BorderRadius.circular(8),
              ),
              child: Column(
                children: const [
                  SummaryCardTile(
                    title: "KL 18 V 1080",
                    subtitle: "RadhaKrishna VK",
                    label1: "Fuel intake",
                    value1: "120000 litre",
                    label2: "Distance travelled",
                    value2: "35200 KM",
                    number: "0001",
                  ),
                  CustomDivider(),
                  SummaryCardTile(
                    title: "KL 07 AB 1234",
                    subtitle: "Suresh Kumar",
                    label1: "Fuel intake",
                    value1: "90000 litre",
                    label2: "Distance travelled",
                    value2: "22000 KM",
                    number: "0002",
                  ),
                  CustomDivider(),
                  SummaryCardTile(
                    title: "KL 11 XY 5678",
                    subtitle: "Anil Menon",
                    label1: "Fuel intake",
                    value1: "45000 litre",
                    label2: "Distance travelled",
                    value2: "15000 KM",
                    number: "0003",
                  ),
                  CustomDivider(),
                  SummaryCardTile(
                    title: "KL 20 PQ 4321",
                    subtitle: "Ravi Varma",
                    label1: "Fuel intake",
                    value1: "30000 litre",
                    label2: "Distance travelled",
                    value2: "11000 KM",
                    number: "0004",
                  ),
                  CustomDivider(),
                  SummaryCardTile(
                    title: "KL 10 MN 8765",
                    subtitle: "Deepak Nair",
                    label1: "Fuel intake",
                    value1: "20000 litre",
                    label2: "Distance travelled",
                    value2: "8000 KM",
                    number: "0005",
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