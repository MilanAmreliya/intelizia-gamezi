import 'package:flutter/material.dart';
import 'package:gamezi/utils/app_enums.dart';
import 'package:gamezi/utils/app_extensions.dart';
import 'package:gamezi/view/screens/body/about_work/about_work_item.dart';

class AboutWorkGrid extends StatefulWidget {
  const AboutWorkGrid({super.key});

  @override
  State<AboutWorkGrid> createState() => _AboutWorkGridState();
}

class _AboutWorkGridState extends State<AboutWorkGrid> {
  @override
  Widget build(BuildContext context) {
    final width = context.width;
    final isDesktopOrLaptop = width >= DeviceType.smallScreenLaptop.getMinWidth();

    return Center(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Flex(
          direction: isDesktopOrLaptop ? Axis.horizontal : Axis.vertical,
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              flex: isDesktopOrLaptop ? 1 : 0,
              child: AboutWorkItem(index: 0),
            ),
            SizedBox(width: isDesktopOrLaptop ? 40 : 0, height: isDesktopOrLaptop ? 0 : 30),
            Expanded(
              flex: isDesktopOrLaptop ? 1 : 0,
              child: AboutWorkItem(index: 1),
            ),
          ],
        ),
      ),
    );
    // return GridView.builder(
    //   itemCount: 2,
    //   physics: const NeverScrollableScrollPhysics(),
    //   shrinkWrap: true,
    //   gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
    //     crossAxisCount: _getCrossAxisCount(context.width),
    //     crossAxisSpacing: 40,
    //     mainAxisSpacing: 30,
    //     childAspectRatio: _getAspectRatio(context.width),
    //   ),
    //   itemBuilder: (context, index) {
    //     return AboutWorkItem(
    //       index: index,
    //     );
    //   },
    // );
  }

  int _getCrossAxisCount(double deviceWidth) {
    if (deviceWidth < DeviceType.smallScreenLaptop.getMinWidth()) {
      return 1;
    } else {
      return 2;
    }
  }

  double _getAspectRatio(double deviceWidth) {
    if (deviceWidth < DeviceType.smallScreenLaptop.getMinWidth()) {
      return deviceWidth * 0.0016;
    } else if (deviceWidth < DeviceType.largeScreenDesktop.getMaxWidth()) {
      return deviceWidth * 0.00075;
    } else {
      return deviceWidth * 0.0005;
    }
  }
}
