import 'package:flutter/material.dart';

import '../../../../core/custom_divider.dart';
import '../../../../utils/app_extensions.dart';
import '../../../../utils/colors.dart';
import 'detailed_services_section.dart';
import 'experience_info.dart';
import 'service_type.dart';

class AboutMeSection extends StatefulWidget {
  const AboutMeSection({super.key});

  @override
  State<AboutMeSection> createState() => _AboutMeSectionState();
}

class _AboutMeSectionState extends State<AboutMeSection> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 80, top: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // const AboutMeIntro(),
          const SizedBox(height: 15),
          Center(
            child: CustomDivider(
              color: AppColors.white,
              width: context.width / 4,
              height: 2,
            ),
          ),
          const SizedBox(height: 40),
          const ExperienceInfo(),
          const SizedBox(height: 58),
          const ServiceType(),
          const SizedBox(height: 80),
          // const BasicServicesGrid(),
          // const SizedBox(height: 80),
          const DetailedServicesSection(),
        ],
      ),
    );
  }
}
