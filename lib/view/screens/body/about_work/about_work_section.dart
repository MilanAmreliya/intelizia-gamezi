import 'package:flutter/material.dart';
import 'package:gamezi/view/screens/body/about_work/about_work_grid.dart';

class AboutWorkSection extends StatefulWidget {
  const AboutWorkSection({super.key});

  @override
  State<AboutWorkSection> createState() => _AboutWorkSectionState();
}

class _AboutWorkSectionState extends State<AboutWorkSection> {
  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(bottom: 80),
      child: AboutWorkGrid(),
    );
  }
}
