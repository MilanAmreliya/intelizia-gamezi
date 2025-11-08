import 'package:flutter/material.dart';
import 'package:gamezi/utils/sized_box.dart';
import 'package:gamezi/view/screens/body/intro/ad_banner.dart';
import '../../../../utils/app_enums.dart';
import '../../../../utils/app_extensions.dart';
import 'intro_image.dart';
import 'intro_text.dart';

class IntroSection extends StatelessWidget {
  const IntroSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: context.height * .12),
      child: context.width < DeviceType.smallScreenLaptop.getMaxWidth()
          ? Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                IntroText(),
                SizedBox(height: 50),
                IntroImage(),
              ],
            )
          : Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Expanded(flex: 5, child: IntroText()),
                30.addWidth(),
                const Expanded(flex: 3, child: IntroImage()),
              ],
            ),
    );
  }
}
