import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:project02/item_summary/theme/app_colors.dart';

class WarehouseCard extends StatelessWidget {
  final String title;
  final String subtitle;
  final String qty;
  final String cap;
  final String number;

  const WarehouseCard({
    super.key,
    required this.title,
    required this.subtitle,
    required this.qty,
    required this.cap,
    required this.number,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Padding(
          padding: const EdgeInsets.all(12),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: GoogleFonts.openSans(
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                ),
              ),
              Text(
                subtitle,
                style: GoogleFonts.openSans(
                  fontSize: 12,
                  color: Colors.black.withOpacity(0.6), // 60%
                ),
              ),
              const SizedBox(height: 8),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  // Stock qty
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Stock qty",
                          style: GoogleFonts.openSans(
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                            color: Colors.black.withOpacity(0.6), // 60%
                          ),
                        ),
                        Text(
                          qty,
                          style: GoogleFonts.openSans(
                            fontSize: 12,
                            fontWeight: FontWeight.w400, // regular
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ),
                  ),
                  // Stock capacity
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Stock capacity",
                          style: GoogleFonts.openSans(
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                            color: Colors.black.withOpacity(0.6), // 60%
                          ),
                        ),
                        Text(
                          cap,
                          style: GoogleFonts.openSans(
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ),
                  ),
                  // View button
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: AppColors.pdfRed,
                      minimumSize: const Size(60, 26),
                      padding: EdgeInsets.zero,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(6),
                      ),
                      elevation: 0,
                    ),
                    onPressed: () {},
                    child: Text(
                      "View",
                      style: GoogleFonts.openSans(
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        // Top-right number
        Positioned(
          top: 12,
          right: 10,
          child: Text(
            number,
            style: GoogleFonts.openSans(
              fontSize: 12,
              color: Colors.black.withOpacity(0.6), // 60%
            ),
          ),
        ),
      ],
    );
  }
}
