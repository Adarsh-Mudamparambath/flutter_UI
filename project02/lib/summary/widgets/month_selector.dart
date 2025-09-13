import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
//import 'package:project02/item_summary/theme/app_colors.dart';
import 'package:project02/summary/theme/app_colors.dart';

// ✅ Options defined at the top (easy to edit)
const List<String> options = [
  "Today",
  "This week",
  "This month",
  "Quarter",
  "This year",
  "Last week",
  "Last month",
  "Custom",
];

class MonthSelector extends StatefulWidget {
  const MonthSelector({super.key});

  @override
  State<MonthSelector> createState() => _MonthSelectorState();
}

class _MonthSelectorState extends State<MonthSelector> {
  String _selectedRange = "June 2025"; // main display
  String _tempSelection = "June 2025"; // preview inside bottom sheet

  void _openDateRangePicker(BuildContext context) async {
    final result = await showModalBottomSheet<String>(
      context: context,
      isScrollControlled: true,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(16)),
      ),
      builder: (context) {
        return FractionallySizedBox(
          heightFactor: 0.7, // 👈 half screen height
          child: StatefulBuilder(
            builder: (context, setModalState) {
              return SafeArea(
                child: Padding(
                  padding: const EdgeInsets.all(16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // Header Row
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Date range",
                            style: GoogleFonts.openSans(
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: AppColors.pdfRed,
                              minimumSize: const Size(60, 32),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(6),
                              ),
                              elevation: 0,
                            ),
                            onPressed: () {
                              Navigator.pop(context, _tempSelection);
                            },
                            child: Text(
                              "Apply",
                              style: GoogleFonts.openSans(
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 12),

                      // Preview Box
                      Container(
                        width: double.infinity,
                        padding: const EdgeInsets.symmetric(
                            vertical: 10, horizontal: 12),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(6),
                          border: Border.all(color: Colors.grey),
                          color: Colors.white,
                        ),
                        child: Text(
                          _tempSelection,
                          style: GoogleFonts.openSans(
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            color: Colors.black,
                          ),
                        ),
                      ),

                      const SizedBox(height: 16),

                      // ✅ Options List
                      Expanded(
                        child: ListView(
                          children: options.map((option) {
                            return ListTile(
                              title: Text(
                                option,
                                style: GoogleFonts.openSans(fontSize: 14),
                              ),
                              onTap: () {
                                setModalState(() {
                                  _tempSelection = option; // update preview only
                                });
                              },
                            );
                          }).toList(),
                        ),
                      ),
                    ],
                  ),
                ),
              );
            },
          ),
        );
      },
    );

    // ✅ Update main widget only after Apply
    if (result != null) {
      setState(() {
        _selectedRange = result;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        _tempSelection = _selectedRange; // start with current
        _openDateRangePicker(context);
      },
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
            const Icon(
              Icons.keyboard_arrow_down,
              size: 18,
              color: Colors.black,
            ),
          ],
        ),
      ),
    );
  }
}
