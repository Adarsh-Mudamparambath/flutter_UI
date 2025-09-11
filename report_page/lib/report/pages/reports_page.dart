import 'package:flutter/material.dart';
import '../data/reports_seed.dart';
import '../widgets/report_section_card.dart';

class ReportsPage extends StatelessWidget {
  const ReportsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Reports'),
        toolbarHeight: 72, // taller AppBar for this page
      ),
      body: ListView.separated(
        padding: const EdgeInsets.fromLTRB(16, 32, 16, 24),
        itemCount: sections.length,
        separatorBuilder: (_, __) => const SizedBox(height: 16),
        itemBuilder: (context, index) =>
            ReportSectionCard(items: sections[index]),
      ),
    );
  }
}
