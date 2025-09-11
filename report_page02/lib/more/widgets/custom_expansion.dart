import 'package:flutter/material.dart';
import '../models/section_data.dart';

class CustomExpansion extends StatefulWidget {
  final SectionData section;
  const CustomExpansion({super.key, required this.section});

  @override
  State<CustomExpansion> createState() => _CustomExpansionState();
}

class _CustomExpansionState extends State<CustomExpansion> {
  bool isExpanded = false;

  @override
  Widget build(BuildContext context) {
    return ExpansionTile(
      leading: Icon(widget.section.icon),
      title: Text(
        widget.section.title,
        style: const TextStyle(
          fontWeight: FontWeight.bold, // 👈 bold title
        ),
      ),
      trailing: Icon(
        isExpanded ? Icons.keyboard_arrow_down : Icons.keyboard_arrow_right,
      ),
      onExpansionChanged: (expanded) {
        setState(() => isExpanded = expanded);
      },
      children: widget.section.items.map((item) {
        return ListTile(
          leading: Icon(item.icon),
          title: Text(item.title),
          onTap: () {
            Navigator.of(context).push(
              MaterialPageRoute(builder: (_) => item.page),
            );
          },
        );
      }).toList(),
    );
  }
}
