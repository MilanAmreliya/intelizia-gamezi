import 'package:flutter/material.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';

import '../../../../utils/app_enums.dart';
import '../../../../utils/app_extensions.dart';
import '../../../../utils/app_strings.dart';
import '../../../../utils/text_style.dart';

class ExperienceInfo extends StatelessWidget {
  const ExperienceInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        GradientText(
          AppStrings.numOfExperience,
          style: context.width < DeviceType.mobile.getMaxWidth()
              ? MyFontStyle.s32.copyWith(fontSize: 48)
              : MyFontStyle.s32.copyWith(fontSize: 96),
          gradientType: GradientType.radial,
          radius: 2.5,
          colors: const [
            Colors.blue,
            Colors.red,
            Colors.teal,
          ],
        ),
        const SizedBox(width: 20),
        Flexible(
          child: Text(
            AppStrings.experienceMsg,
            style: _getExpMsgStyle(context.width),
            softWrap: true,
          ),
        ),
      ],
    );
  }

  _getExpMsgStyle(double deviceWidth) {
    if (deviceWidth < DeviceType.mobile.getMaxWidth()) {
      return MyFontStyle.s16.copyWith(fontWeight: FontWeight.w500);
    } else if (deviceWidth < DeviceType.ipad.getMaxWidth()) {
      return MyFontStyle.s18;
    } else {
      return MyFontStyle.s24.copyWith(fontWeight: FontWeight.w500);
    }
  }
}
