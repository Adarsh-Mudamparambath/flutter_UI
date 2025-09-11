import 'package:flutter/material.dart';
import '../config/nav_theme.dart';
import '../config/constants.dart';

class CustomBottomNav extends StatelessWidget {
  final int currentIndex;
  final ValueChanged<int> onIndexChanged;

  const CustomBottomNav({
    super.key,
    required this.currentIndex,
    required this.onIndexChanged,
  });

  List<BottomNavigationBarItem> _items() => const [
        BottomNavigationBarItem(
          icon: Icon(Icons.home_outlined),
          activeIcon: Icon(Icons.home),
          label: "Home",
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.insert_chart_outlined),
          activeIcon: Icon(Icons.insert_chart),
          label: "Report",
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.add_circle_outline),
          activeIcon: Icon(Icons.add_circle),
          label: "Generate",
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.indeterminate_check_box_outlined),
          activeIcon: Icon(Icons.indeterminate_check_box),
          label: "Record",
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.more_horiz),
          activeIcon: Icon(Icons.more),
          label: "More",
        ),
      ];

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: Theme.of(context).copyWith(
        bottomNavigationBarTheme: NavTheme.bottomNavTheme,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Divider(
            height: AppConstants.navDividerHeight,
            thickness: AppConstants.navDividerThickness,
            color: NavTheme.dividerColor,
          ),
          BottomNavigationBar(
            currentIndex: currentIndex,
            onTap: onIndexChanged,
            items: _items(),
          ),
        ],
      ),
    );
  }
}
