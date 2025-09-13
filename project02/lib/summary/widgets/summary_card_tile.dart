import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:project02/summary/theme/app_colors.dart';

class SummaryCardTile extends StatelessWidget {
  final String title;
  final String subtitle;
  final String label1;
  final String value1;
  final String? label2;   // ✅ optional
  final String? value2;   // ✅ optional
  final String number;

  const SummaryCardTile({
    super.key,
    required this.title,
    required this.subtitle,
    required this.label1,
    required this.value1,
    this.label2,
    this.value2,
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
              // Title
              Text(
                title,
                style: GoogleFonts.openSans(
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                ),
              ),

              const SizedBox(height: 6),

              // Subtitle
              Text(
                subtitle,
                style: GoogleFonts.openSans(
                  fontSize: 12,
                  color: Colors.black.withOpacity(0.6),
                ),
              ),

              const SizedBox(height: 20),

              LayoutBuilder(
                builder: (context, constraints) {
                  double gap = constraints.maxWidth > 400 ? 44 : 20;

                  return Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // Label1 + Value1
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            label1,
                            style: GoogleFonts.openSans(
                              fontSize: 12,
                              fontWeight: FontWeight.w400,
                              color: Colors.black.withOpacity(0.6),
                            ),
                          ),
                          Text(
                            value1,
                            style: GoogleFonts.openSans(
                              fontSize: 12,
                              fontWeight: FontWeight.w400,
                              color: Colors.black,
                            ),
                          ),
                        ],
                      ),

                      // ✅ If label2/value2 is provided → render second column
                      if (label2 != null && value2 != null) ...[
                        SizedBox(width: gap),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              label2!,
                              style: GoogleFonts.openSans(
                                fontSize: 12,
                                fontWeight: FontWeight.w400,
                                color: Colors.black.withOpacity(0.6),
                              ),
                            ),
                            Text(
                              value2!,
                              style: GoogleFonts.openSans(
                                fontSize: 12,
                                fontWeight: FontWeight.w400,
                                color: Colors.black,
                              ),
                            ),
                          ],
                        ),
                      ],

                      // ✅ Always stick View button 10px from right
                      Expanded(
                        child: Align(
                          alignment: Alignment.topRight,
                          child: Padding(
                            padding: const EdgeInsets.only(right: 10),
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                backgroundColor: AppColors.pdfRed,
                                minimumSize: const Size(60, 26),
                                padding: EdgeInsets.zero,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(6),
                                ),
                                elevation: 4,
                                shadowColor: Colors.black.withOpacity(0.25),
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
                          ),
                        ),
                      ),
                    ],
                  );
                },
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
              color: Colors.black.withOpacity(0.6),
            ),
          ),
        ),
      ],
    );
  }
}
