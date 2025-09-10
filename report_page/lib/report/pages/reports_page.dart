import 'package:flutter/material.dart';
import 'package:more/report/constant/constant.dart';
import 'package:more/report/widgets/report_section_card.dart';
import 'package:more/report/data/reports_seed.dart';

class ReportsPage extends StatelessWidget {
  const ReportsPage({super.key});

  void _toast(BuildContext context, String msg) {
    final messenger = ScaffoldMessenger.of(context);
    messenger.hideCurrentSnackBar();
    messenger.showSnackBar(
      SnackBar(
        content: Text(msg),
        behavior: SnackBarBehavior.floating,
        margin: const EdgeInsets.all(16),
        duration: kSnackDuration, // <-- from constants.dart
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final sections = buildReportSections((msg) => _toast(context, msg));

    return Scaffold(
      appBar: AppBar(title: const Text('Reports'), toolbarHeight: 90),
      body: ListView.separated(
        padding: const EdgeInsets.fromLTRB(16, 16, 16, 24),
        itemCount: sections.length,
        separatorBuilder: (_, __) => const SizedBox(height: 16),
        itemBuilder: (context, index) =>
            ReportSectionCard(items: sections[index].items),
      ),
    );
  }
}
