import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:project02/summary/theme/app_colors.dart';
import 'month_bottom_sheet.dart';

class MonthSelector extends StatefulWidget {
  const MonthSelector({super.key});

  @override
  State<MonthSelector> createState() => _MonthSelectorState();
}

class _MonthSelectorState extends State<MonthSelector> {
  String _selectedRange = "June 2025";

  void _openSheet() async {
    final result = await showModalBottomSheet<String>(
      context: context,
      isScrollControlled: true,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(16)),
      ),
      builder: (context) {
        return MonthBottomSheet(initialSelection: _selectedRange);
      },
    );

    if (result != null) {
      setState(() {
        _selectedRange = result;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: _openSheet,
      child: Container(
        width: 146,
        height: 39,
        padding: const EdgeInsets.symmetric(horizontal: 10),
        decoration: BoxDecoration(
          color: AppColors.lightGrey,
          borderRadius: BorderRadius.circular(8),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Flexible(
              child: Text(
                _selectedRange,
                overflow: TextOverflow.ellipsis,
                style: GoogleFonts.openSans(
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  color: Colors.black,
                ),
              ),
            ),
            const SizedBox(width: 6),
            const Icon(Icons.keyboard_arrow_down,
                size: 18, color: Colors.black),
          ],
        ),
      ),
    );
  }
}
