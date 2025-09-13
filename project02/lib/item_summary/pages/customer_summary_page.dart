import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:project02/item_summary/theme/app_colors.dart';
import 'package:project02/item_summary/widgets/custom_app_bar.dart';
import 'package:project02/item_summary/widgets/custom_button.dart';
import 'package:project02/item_summary/widgets/info_section.dart';
import 'package:project02/item_summary/widgets/month_selector.dart';
import 'package:project02/item_summary/widgets/section_header.dart';
import 'package:project02/item_summary/widgets/summary_card_tile.dart';

class CustomerSummaryPage extends StatelessWidget {
  const CustomerSummaryPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: const CustomAppBar(title: "Customer Summary"),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // Month Selector
              const MonthSelector(),

              const SizedBox(height: 20),

              // KPI Section
              Column(
                children: [
                  Text(
                    "\$ 1325",
                    style: GoogleFonts.openSans(
                      fontSize: 30,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    "Total Receivables",
                    style: GoogleFonts.openSans(
                      fontSize: 14,
                      color: Colors.black.withOpacity(0.6),
                    ),
                  ),
                ],
              ),

              const SizedBox(height: 20),

              // Info Section
              // Info Section
const InfoSection(
  rows: [
    {"label": "Total credit sales", "value": "1200 unit"},
    {"label": "Total collection", "value": "4552 unit"},
  ],
),

              const SizedBox(height: 20),

              // Custom Button
              const CustomButton(
                text: "View Customer tab",
                width: 153, // ✅ button width
              ),

              const SizedBox(height: 20),

              // Section Header
              const SectionHeader(title: "Customer Group"),

              const SizedBox(height: 12),

              // Card with multiple tiles
              Container(
                decoration: BoxDecoration(
                  color: AppColors.lightGrey,
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Column(
                  children: [
                    // Tile 1 - one label
                    const SummaryCardTile(
                      title: "Group name",
                      subtitle: "Lorem ipsum",
                      label1: "No. of customers",
                      value1: "145 members",
                      number: "0001",
                    ),

                    Divider(
                      color: Colors.black.withOpacity(0.2),
                      indent: 10,
                      endIndent: 10,
                      thickness: 1,
                    ),

                    // Tile 2 - one label
                    const SummaryCardTile(
                      title: "Group name",
                      subtitle: "Lorem ipsum",
                      label1: "No. of customers",
                      value1: "212 members",
                      number: "0002",
                    ),

                    Divider(
                      color: Colors.black.withOpacity(0.2),
                      indent: 10,
                      endIndent: 10,
                      thickness: 1,
                    ),

                    // Tile 3 - two labels
                    const SummaryCardTile(
                      title: "Item name",
                      subtitle: "Lorem ipsum",
                      label1: "Price per unit",
                      value1: "122 INR",
                      label2: "Unit sold",
                      value2: "1000 unit",
                      number: "0003",
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}
