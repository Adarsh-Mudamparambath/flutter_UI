import 'package:flutter/material.dart';
import '../models/section_data.dart';
import 'custom_expansion.dart';

class SectionCard extends StatelessWidget {
  final String? caption; // optional grey label at the top
  final List<SectionData> sections;
  const SectionCard({
    super.key,
    required this.sections,
    this.caption,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          if (caption != null)
            Padding(
              padding: const EdgeInsets.fromLTRB(16, 16, 16, 8),
              child: Text(
                caption!,
                style: theme.textTheme.labelLarge?.copyWith(
                  color: Colors.grey[600],
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ...sections.map((s) => CustomExpansion(section: s)),
          const SizedBox(height: 8),
        ],
      ),
    );
  }
}
