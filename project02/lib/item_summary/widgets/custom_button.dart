import 'package:flutter/material.dart';
import 'package:project02/item_summary/theme/app_colors.dart';

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
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
        elevation: 4,
        shadowColor: Colors.black.withOpacity(0.25),
      ),
      onPressed: () {},
      child: Text(
        text,
        style: const TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
      ),
    );
  }
}
