import 'package:flutter/material.dart';
import 'package:gamezi/view/screens/body/comparison/redy_vs_others_compare_item.dart'
    show RedyVsOthersCompareList;
import 'package:gamezi/view/screens/body/comparison/redy_vs_others_intro_text.dart'
    show RedyVsOthersIntroText;

class ComparisonWithOthersSection extends StatefulWidget {
  const ComparisonWithOthersSection({super.key});

  @override
  State<ComparisonWithOthersSection> createState() => _ComparisonWithOthersSectionState();
}

class _ComparisonWithOthersSectionState extends State<ComparisonWithOthersSection> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 80),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          RedyVsOthersIntroText(),
          // RedyVsOthersCompareList(),
        ],
      ),
    );
  }
}
