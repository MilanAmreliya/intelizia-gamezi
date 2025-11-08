import 'package:flutter/material.dart';
import 'package:gamezi/utils/app_strings.dart';
import 'package:gamezi/utils/sized_box.dart';
import 'package:gamezi/utils/text_style.dart';

class IntroTextFaster extends StatelessWidget {
  const IntroTextFaster({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          AppStrings.fasterTitle,
          style: MyFontStyle.s32.copyWith(color: Colors.white),
        ),
        18.addHeight(),
        Text(
          AppStrings.fasterSubTitle,
          textAlign: TextAlign.left,
          style: MyFontStyle.s16Normal,
        ),
      ],
    );
  }
}
