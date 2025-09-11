import 'package:flutter/material.dart';
import '../config/app_pages.dart';
import '../config/constants.dart';
import '../config/nav_theme.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final int selectedIndex;

  const CustomAppBar({super.key, required this.selectedIndex});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Padding(
        padding: const EdgeInsets.only(left: 16.0),
        child: Text(
          AppPages.titles[selectedIndex],
          style: const TextStyle(color: Colors.black, fontSize: 20),
        ),
      ),
      backgroundColor: Colors.white,
      elevation: 0, // remove shadow, use divider instead
      centerTitle: false,
      iconTheme: const IconThemeData(color: Colors.black),
      toolbarHeight: AppConstants.appBarHeight,
      bottom: PreferredSize(
        preferredSize: const Size.fromHeight(1),
        child: Divider(
          height: AppConstants.navDividerHeight,
          thickness: AppConstants.navDividerThickness,
          color: NavTheme.dividerColor,
        ),
      ),
    );
  }

  @override
  Size get preferredSize =>
      Size.fromHeight(AppConstants.appBarHeight + AppConstants.navDividerHeight);
}
