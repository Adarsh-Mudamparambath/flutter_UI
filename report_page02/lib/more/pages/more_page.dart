import 'package:flutter/material.dart';
import 'package:report_page02/more/data/more_data.dart';
import '../widgets/section_card.dart';
import '../models/section_data.dart';
import '../widgets/customer_share_card.dart';

class MorePage extends StatelessWidget {
  const MorePage({super.key});

  @override
  Widget build(BuildContext context) {
    // Reserve space for a future BottomNavigationBar + comfy gap
    

    return Scaffold(
      //appBar: AppBar(title: const Text("More")),
      body: SafeArea(
        bottom: true,
        child: ListView.builder(
          padding: EdgeInsets.fromLTRB(12, 12, 12, 12),
          itemCount: moreData.length + 1, // +1 for CustomerShareCard
          itemBuilder: (context, index) {
            if (index < moreData.length) {
              final section = moreData[index];
              return SectionCard(
                caption: section["caption"],
                sections: List<SectionData>.from(section["sections"]),
              );
            }
            // Last item → add a small top gap + the share card
            return const Padding(
              padding: EdgeInsets.only(top: 8),
              child: CustomerShareCard(),
            );
          },
        ),
      ),
    );
  }
}
