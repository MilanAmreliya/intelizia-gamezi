import 'package:flutter/material.dart';
import 'package:gamezi/utils/app_enums.dart';
import 'package:gamezi/utils/app_extensions.dart';

import '../../../../utils/app_strings.dart';
import '../../../../utils/text_style.dart';

class ProjectsIntro extends StatelessWidget {
  const ProjectsIntro({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (context.width > DeviceType.ipad.getMaxWidth()) const SizedBox(height: 18),
        FittedBox(
          child: Text(
            AppStrings.featuredProjects,
            style: MyFontStyle.s32,
          ),
        ),
        if (context.width > DeviceType.ipad.getMaxWidth()) ...[
          const SizedBox(height: 8),
          Text(
            AppStrings.projectsMsg,
            style: MyFontStyle.subTitleStyle,
            softWrap: true,
          ),
        ]
      ],
    );
  }
}
