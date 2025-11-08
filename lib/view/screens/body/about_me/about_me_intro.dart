import 'package:flutter/material.dart';

import '../../../../utils/app_enums.dart';
import '../../../../utils/app_extensions.dart';
import '../../../../utils/app_strings.dart';
import '../../../../utils/text_style.dart';

class AboutMeIntro extends StatelessWidget {
  const AboutMeIntro({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        FittedBox(
          child: Text(
            AppBarHeaders.aboutMe.getString(),
            style: MyFontStyle.s32,
          ),
        ),
        const SizedBox(height: 8),
        Text(
          AppStrings.aboutMeMsg,
          style: context.width < DeviceType.mobile.getMaxWidth() ? MyFontStyle.s16Normal : MyFontStyle.subTitleStyle,
          softWrap: true,
        ),
      ],
    );
  }
}
