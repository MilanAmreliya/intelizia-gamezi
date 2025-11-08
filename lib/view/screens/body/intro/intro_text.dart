import 'package:flutter/material.dart';

import '../../../../utils/app_enums.dart';
import '../../../../utils/app_extensions.dart';
import '../../../../utils/app_strings.dart';
import '../../../../utils/text_style.dart';
import 'intro_actions.dart';
import 'intro_animated_text.dart';

class IntroText extends StatefulWidget {
  const IntroText({super.key});

  @override
  State<IntroText> createState() => _IntroTextState();
}

class _IntroTextState extends State<IntroText> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment:
          context.width < DeviceType.mobile.getMaxWidth() ? CrossAxisAlignment.center : CrossAxisAlignment.start,
      children: [
        Text(
          AppStrings.introTitle,
          style: MyFontStyle.s46,
          textAlign: _getTextAlign(context.width),
          softWrap: true,
        ),
        const SizedBox(height: 12),
        FittedBox(child: const IntroAnimatedText()),
        const SizedBox(height: 12),
        Text(
          AppStrings.introDescription,
          style: MyFontStyle.s16Normal,
          textAlign: _getTextAlign(context.width),
          softWrap: true,
        ),
        const SizedBox(height: 30),
        const IntoActions(),
      ],
    );
  }

  _getTextAlign(double screenWidth) {
    return screenWidth < DeviceType.mobile.getMaxWidth() ? TextAlign.center : TextAlign.start;
  }
}
