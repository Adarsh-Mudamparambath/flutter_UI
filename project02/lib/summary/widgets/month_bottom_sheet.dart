import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:project02/summary/data/month_data.dart';
import 'package:project02/summary/theme/app_colors.dart';


class MonthBottomSheet extends StatefulWidget {
  final String initialSelection;

  const MonthBottomSheet({super.key, required this.initialSelection});

  @override
  State<MonthBottomSheet> createState() => _MonthBottomSheetState();
}

class _MonthBottomSheetState extends State<MonthBottomSheet> {
  late String _tempSelection;

  @override
  void initState() {
    super.initState();
    _tempSelection = widget.initialSelection;
  }

  @override
  Widget build(BuildContext context) {
    return FractionallySizedBox(
      heightFactor: 0.5, // half screen
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Header row
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

            // Preview box
            Container(
              width: double.infinity,
              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 12),
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

            // Options list
            Expanded(
              child: ListView.builder(
                itemCount: monthOptions.length,
                itemBuilder: (context, index) {
                  final option = monthOptions[index];
                  return ListTile(
                    title: Text(
                      option,
                      style: GoogleFonts.openSans(fontSize: 14),
                    ),
                    onTap: () {
                      setState(() {
                        _tempSelection = option;
                      });
                    },
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
