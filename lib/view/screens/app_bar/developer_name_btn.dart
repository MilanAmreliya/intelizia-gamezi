import 'package:flutter/material.dart';
import 'package:universal_html/html.dart' as html;

import '../../../utils/app_enums.dart';
import '../../../utils/app_extensions.dart';
import '../../../utils/app_strings.dart';
import '../../../utils/text_style.dart';

class DeveloperNameBtn extends StatelessWidget {
  const DeveloperNameBtn({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        html.window.location.reload();
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 13),
        child: Row(
          children: [
            // Image.asset('assets/images/intelizia_logo.png'),
            // const SizedBox(width: 15),
            SizedBox(
              width: context.width < DeviceType.ipad.getMaxWidth()
                  ? context.width * .5
                  : context.width * .2,
              child: FittedBox(
                alignment: Alignment.topLeft,
                child: Text(
                  AppStrings.developerName,
                  style: MyFontStyle.s28,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
