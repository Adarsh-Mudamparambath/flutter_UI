import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class StockInfo extends StatelessWidget {
  const StockInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 12),
      decoration: const BoxDecoration(
        border: Border(
          top: BorderSide(color: Colors.black12),
          bottom: BorderSide(color: Colors.black12),
        ),
      ),
      child: Column(
        children: [
          stockRow("Opening stock quantity", "1200 unit"),
          stockRow("Purchase quantity", "4552 unit"),
          stockRow("Selling quantity", "555 unit"),
          stockRow("Closing quantity", "822 unit"),
        ],
      ),
    );
  }

  Widget stockRow(String label, String value) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 6, horizontal: 4),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: Text(
              label,
              style: GoogleFonts.openSans(
                fontSize: 14,
                color: Colors.black.withOpacity(0.6), // 60%
              ),
            ),
          ),
          Text(
            value,
            style: GoogleFonts.openSans(fontSize: 14),
          ),
        ],
      ),
    );
  }
}
