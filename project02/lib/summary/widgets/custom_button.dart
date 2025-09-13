import 'package:flutter/material.dart';
import 'package:project02/summary/theme/app_colors.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final double width;
  const CustomButton({super.key, required this.text, this.width = 118});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: AppColors.pdfRed,
        minimumSize: Size(width, 39),
        padding: const EdgeInsets.symmetric(horizontal: 10), // ✅ text spacing
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
        elevation: 6, // ✅ stronger shadow
        shadowColor: Colors.black.withValues(alpha: 0.4), // ✅ modern API
      ),
      onPressed: () {},
      child: Text(
        text,
        style: const TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 14,
          color: Colors.white,
        ),
      ),
    );
  }
}
