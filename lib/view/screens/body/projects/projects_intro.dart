import 'package:flutter/material.dart';

import '../../../../utils/app_strings.dart';
import '../../../../utils/text_style.dart';

class ProjectsIntro extends StatelessWidget {
  const ProjectsIntro({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        FittedBox(
          child: Text(
            AppStrings.featuredProjects,
            style: MyFontStyle.s32,
          ),
        ),
        const SizedBox(height: 8),
        Text(
          AppStrings.projectsMsg,
          style: MyFontStyle.subTitleStyle,
          softWrap: true,
        ),
      ],
    );
  }
}
