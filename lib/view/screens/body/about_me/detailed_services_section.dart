import 'package:flutter/material.dart';

import '../../../../utils/app_strings.dart';
import '../../../../utils/text_style.dart';
import 'detailed_services_grid.dart';

class DetailedServicesSection extends StatelessWidget {
  const DetailedServicesSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        FittedBox(
          child: Text(
            AppStrings.servicesIOffer,
            style: MyFontStyle.s32,
          ),
        ),
        const SizedBox(height: 32),
        const DetailedServicesGrid(),
      ],
    );
  }
}
