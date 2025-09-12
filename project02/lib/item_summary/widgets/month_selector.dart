import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:month_picker_dialog/month_picker_dialog.dart';
import 'package:project02/item_summary/theme/app_colors.dart';

class MonthSelector extends StatefulWidget {
  const MonthSelector({super.key});

  @override
  State<MonthSelector> createState() => _MonthSelectorState();
}

class _MonthSelectorState extends State<MonthSelector> {
  DateTime selectedDate = DateTime.now();

  void _pickMonth() async {
    final DateTime? picked = await showMonthPicker(
      context: context,
      initialDate: selectedDate,
      firstDate: DateTime(2000),
      lastDate: DateTime(2100),
    );
    if (picked != null) {
      setState(() {
        selectedDate = picked;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: _pickMonth,
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
                "${_monthName(selectedDate.month)} ${selectedDate.year}",
                softWrap: false,
                overflow: TextOverflow.visible,
                maxLines: 1,
                style: GoogleFonts.openSans(
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
            const SizedBox(width: 6),
            const Icon(Icons.keyboard_arrow_down, size: 20),
          ],
        ),
      ),
    );
  }

  String _monthName(int month) {
    const months = [
      "January","February","March","April","May","June",
      "July","August","Septmber","October","November","December"
    ];
    return months[month - 1];
  }
}
