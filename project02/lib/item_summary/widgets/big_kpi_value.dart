import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class BigKpiValue extends StatelessWidget {
  final String value;
  final String unit;
  const BigKpiValue({super.key, required this.value, required this.unit});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.baseline, // 👈 use baseline
      textBaseline: TextBaseline.alphabetic,          // 👈 align text properly
      children: [
        Text(
          value,
          style: GoogleFonts.openSans(
            fontSize: 30,
            fontWeight: FontWeight.w600,
          ),
        ),
        const SizedBox(width: 4),
        Text(
          unit,
          style: GoogleFonts.openSans(
            fontSize: 18,
            fontWeight: FontWeight.w600,
          ),
        ),
      ],
    );
  }
}
