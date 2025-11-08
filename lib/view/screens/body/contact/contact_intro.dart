import 'package:flutter/material.dart';
import 'package:gamezi/view/screens/body/contact/social_medial_icons.dart';

import '../../../../utils/app_strings.dart';
import '../../../../utils/text_style.dart';

class ContactIntro extends StatelessWidget {
  const ContactIntro({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        FittedBox(
          child: Text(
            AppStrings.contactWithMe,
            style: MyFontStyle.s32,
          ),
        ),
        const SizedBox(height: 8),
        Text(
          AppStrings.contactMsg,
          style: MyFontStyle.subTitleStyle,
          softWrap: true,
        ),
        const SizedBox(height: 8),
        // const SocialMediaIcons(),
      ],
    );
  }
}
