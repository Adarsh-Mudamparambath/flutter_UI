import 'package:flutter/material.dart';

class BalanceSheetPage extends StatelessWidget {
  const BalanceSheetPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(child: Text("Balance Sheet Page")),
    );
  }
}

class ProfitLossPage extends StatelessWidget {
  const ProfitLossPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(child: Text("Profit & Loss Page")),
    );
  }
}

// add other dummy pages similarly...
