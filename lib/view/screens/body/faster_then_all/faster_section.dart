import 'package:flutter/material.dart';
import 'package:gamezi/utils/app_enums.dart';
import 'package:gamezi/utils/app_extensions.dart';
import 'package:gamezi/utils/sized_box.dart';
import 'package:gamezi/view/screens/body/faster_then_all/image_3X.dart';
import 'package:gamezi/view/screens/body/faster_then_all/intro_text.dart';

class FasterSection extends StatefulWidget {
  const FasterSection({super.key});

  @override
  State<FasterSection> createState() => _FasterSectionState();
}

class _FasterSectionState extends State<FasterSection> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        context.width < DeviceType.smallScreenLaptop.getMaxWidth()
            ? Column(
                children: [
                  const IntroTextFaster(),
                  30.addHeight(),
                  const Image3X(),
                ],
              )
            : Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Expanded(flex: 2, child: IntroTextFaster()),
                  Expanded(flex: 1, child: SizedBox()),
                  Expanded(flex: 2, child: Image3X()),
                ],
              ),
        80.addHeight(),
      ],
    );
  }
}
