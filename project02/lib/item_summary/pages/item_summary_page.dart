import 'package:flutter/material.dart';
import 'package:project02/item_summary/widgets/custom_app_bar.dart';
import 'package:project02/item_summary/widgets/custom_button.dart';
import 'package:project02/item_summary/widgets/custom_divider.dart';
import 'package:project02/item_summary/widgets/item_card.dart';
import 'package:project02/item_summary/widgets/month_selector.dart';
import 'package:project02/item_summary/widgets/section_header.dart';
import 'package:project02/item_summary/widgets/stock_info.dart';
import 'package:project02/item_summary/widgets/warehouse_card.dart';


class ItemSummaryPage extends StatelessWidget {
  const ItemSummaryPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(),
      body: SingleChildScrollView(
  padding: EdgeInsets.only(top: 24.0, left: 16.0, right: 16.0),
        child: Column(
          children: [
            const MonthSelector(),
            const SizedBox(height: 16),

            // Total stock
            Column(
              children: const [
                Text("122 Unit", style: TextStyle(fontSize: 30, fontWeight: FontWeight.w600)),
                Text("Total stock value", style: TextStyle(fontSize: 14, color: Colors.black54)),
              ],
            ),
            const SizedBox(height: 16),

            const StockInfo(),
            const SizedBox(height: 16),

            const CustomButton(text: "View Item tab"),
            const SizedBox(height: 24),

            const SectionHeader(title: "Most selling item"),
            SizedBox(height: 12),
            Container(
              decoration: BoxDecoration(
                color: Colors.grey[200],
                borderRadius: BorderRadius.circular(8),
              ),
              child: Column(
                children: const [
                  ItemCard(title: "Item name", subtitle: "Lorem ipsum", price: "444 INR", sold: "788 unit", number: "0001"),
                  CustomDivider(),
                  ItemCard(title: "Item name", subtitle: "Lorem ipsum", price: "522 INR", sold: "100 unit", number: "0002"),
                  CustomDivider(),
                  ItemCard(title: "Item name", subtitle: "Lorem ipsum", price: "122 INR", sold: "1000 unit", number: "0003"),
                  CustomDivider(),
                  SizedBox(height: 10),
                ],
              ),
            ),

            const SizedBox(height: 24),

            const SectionHeader(title: "Warehouse list"),
            SizedBox(height: 12),
            Container(
              decoration: BoxDecoration(
                color: Colors.grey[200],
                borderRadius: BorderRadius.circular(8),
              ),
              child: Column(
                children: const [
                  WarehouseCard(title: "Warehouse name", subtitle: "Lorem ipsum", qty: "444 unit", cap: "788 unit", number: "0001"),
                  CustomDivider(),
                  WarehouseCard(title: "Warehouse name", subtitle: "Lorem ipsum", qty: "522 unit", cap: "100 unit", number: "0002"),
                  CustomDivider(),
                  WarehouseCard(title: "Warehouse name", subtitle: "Lorem ipsum", qty: "122 unit", cap: "1000 unit", number: "0003"),
                  CustomDivider(),
                  SizedBox(height: 10),
                ],
              ),
            ),
            const SizedBox(height: 80),
          ],
        ),
      ),
    );
  }
}
