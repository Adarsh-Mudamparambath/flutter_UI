import 'package:flutter/material.dart';
import 'package:project/more/pages/profile_page.dart';
//import 'package:report_page02/more/pages/profile_page.dart';
import '../models/item_data.dart';
import '../models/section_data.dart';

/// All menu sections of the "More" screen
final List<Map<String, dynamic>> moreData = [
  {
    "caption": "Account settings",
    "sections": [
      SectionData(
        title: "Profile",
        icon: Icons.person_outline,
        items: [
          ItemData(
            "Profile Information",
            Icons.account_circle_outlined,
            page: ProfilePage(),
          ),
          ItemData(
            "Subscription Plan",
            Icons.star_border,
            page: const Scaffold(
              body: Center(child: Text("Profile Information")),
            ),
          ),
        ],
      ),
      SectionData(
        title: "Cost Center",
        icon: Icons.receipt_long_outlined,
        items: [
          ItemData(
            "Overview",
            Icons.dashboard_customize_outlined,
            page: const Scaffold(
              body: Center(child: Text("Profile Information")),
            ),
          ),
          ItemData(
            "Add cost center",
            Icons.add_box_outlined,
            page: const Scaffold(
              body: Center(child: Text("Profile Information")),
            ),
          ),
        ],
      ),
    ],
  },
  {
    "caption": "Utilities",
    "sections": [
      SectionData(
        title: "Backup",
        icon: Icons.cloud_upload_outlined,
        items: [
          ItemData(
            "Backup / Restore",
            Icons.cloud_sync_outlined,
            page: const Scaffold(
              body: Center(child: Text("Profile Information")),
            ),
          ),
          ItemData(
            "Opening Balance",
            Icons.account_balance_wallet_outlined,
            page: const Scaffold(
              body: Center(child: Text("Profile Information")),
            ),
          ),
        ],
      ),
      SectionData(
        title: "Other",
        icon: Icons.settings_outlined,
        items: [
          ItemData(
            "Settings",
            Icons.tune_outlined,
            page: const Scaffold(
              body: Center(child: Text("Profile Information")),
            ),
          ),
          ItemData(
            "Notification",
            Icons.notifications_none_outlined,
            page: const Scaffold(
              body: Center(child: Text("Profile Information")),
            ),
          ),
        ],
      ),
    ],
  },
  {
    "caption": "Reports",
    "sections": [
      SectionData(
        title: "Financial",
        icon: Icons.bar_chart_outlined,
        items: [
          ItemData(
            "Balance Sheet",
            Icons.stacked_bar_chart,
            page: const Scaffold(
              body: Center(child: Text("Balance Sheet Page")),
            ),
          ),
          ItemData(
            "Profit & Loss",
            Icons.trending_down_rounded,
            page: const Scaffold(
              body: Center(child: Text("Profit & Loss Page")),
            ),
          ),
        ],
      ),
      SectionData(
        title: "Sales",
        icon: Icons.sell_outlined,
        items: [
          ItemData(
            "By Customer",
            Icons.people_outline,
            page: const Scaffold(
              body: Center(child: Text("Sales by Customer")),
            ),
          ),
          ItemData(
            "By Item",
            Icons.inventory_2_outlined,
            page: const Scaffold(
              body: Center(child: Text("Sales by Item")),
            ),
          ),
        ],
      ),
    ],
  },
  {
    "caption": "Help & Support",
    "sections": [
      SectionData(
        title: "Documentation",
        icon: Icons.book_outlined,
        items: [
          ItemData(
            "User Guide",
            Icons.menu_book_outlined,
            page: const Scaffold(
              body: Center(child: Text("User Guide Page")),
            ),
          ),
          ItemData(
            "FAQs",
            Icons.help_outline,
            page: const Scaffold(
              body: Center(child: Text("FAQs Page")),
            ),
          ),
        ],
      ),
      SectionData(
        title: "Contact Us",
        icon: Icons.support_agent_outlined,
        items: [
          ItemData(
            "Email Support",
            Icons.email_outlined,
            page: const Scaffold(
              body: Center(child: Text("Email Support Page")),
            ),
          ),
          ItemData(
            "Live Chat",
            Icons.chat_bubble_outline,
            page: const Scaffold(
              body: Center(child: Text("Live Chat Page")),
            ),
          ),
        ],
      ),
    ],
  },
    {
    "caption": "Utilities",
    "sections": [
      SectionData(
        title: "Backup",
        icon: Icons.cloud_upload_outlined,
        items: [
          ItemData(
            "Backup / Restore",
            Icons.cloud_sync_outlined,
            page: const Scaffold(
              body: Center(child: Text("Profile Information")),
            ),
          ),
          ItemData(
            "Opening Balance",
            Icons.account_balance_wallet_outlined,
            page: const Scaffold(
              body: Center(child: Text("Profile Information")),
            ),
          ),
        ],
      ),
      SectionData(
        title: "Other",
        icon: Icons.settings_outlined,
        items: [
          ItemData(
            "Settings",
            Icons.tune_outlined,
            page: const Scaffold(
              body: Center(child: Text("Profile Information")),
            ),
          ),
          ItemData(
            "Notification",
            Icons.notifications_none_outlined,
            page: const Scaffold(
              body: Center(child: Text("Profile Information")),
            ),
          ),
        ],
      ),
    ],
  },
    {
    "caption": "Utilities",
    "sections": [
      SectionData(
        title: "Backup",
        icon: Icons.cloud_upload_outlined,
        items: [
          ItemData(
            "Backup / Restore",
            Icons.cloud_sync_outlined,
            page: const Scaffold(
              body: Center(child: Text("Profile Information")),
            ),
          ),
          ItemData(
            "Opening Balance",
            Icons.account_balance_wallet_outlined,
            page: const Scaffold(
              body: Center(child: Text("Profile Information")),
            ),
          ),
        ],
      ),
      SectionData(
        title: "Other",
        icon: Icons.settings_outlined,
        items: [
          ItemData(
            "Settings",
            Icons.tune_outlined,
            page: const Scaffold(
              body: Center(child: Text("Profile Information")),
            ),
          ),
          ItemData(
            "Notification",
            Icons.notifications_none_outlined,
            page: const Scaffold(
              body: Center(child: Text("Profile Information")),
            ),
          ),
        ],
      ),
    ],
  },
];
