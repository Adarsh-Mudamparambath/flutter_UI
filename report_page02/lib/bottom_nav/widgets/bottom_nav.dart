import 'package:flutter/material.dart';
import 'package:report_page02/bottom_nav/config/constants.dart';
import 'package:report_page02/bottom_nav/config/nav_theme.dart';
import '../config/app_pages.dart';
//import '../config/nav_theme.dart';
//import '../config/constants.dart';

class BottomNavExample extends StatefulWidget {
  const BottomNavExample({super.key});

  @override
  State<BottomNavExample> createState() => _BottomNavExampleState();
}

class _BottomNavExampleState extends State<BottomNavExample> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AppPages.pages[_selectedIndex],
      bottomNavigationBar: Theme(
        data: Theme.of(context).copyWith(
          bottomNavigationBarTheme: NavTheme.bottomNavTheme,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Divider(
              height: NavConstants.navDividerHeight,
              thickness: NavConstants.navDividerThickness,
              color: NavTheme.dividerColor,
            ),
            BottomNavigationBar(
              currentIndex: _selectedIndex,
              onTap: _onItemTapped,
              items: const [
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
              ],
            ),
          ],
        ),
      ),
    );
  }
}
