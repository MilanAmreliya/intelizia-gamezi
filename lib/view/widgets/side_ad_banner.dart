import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:gamezi/services/ad_services/ad_sense_auto_banner.dart';
import 'package:gamezi/utils/app_extensions.dart';

import '../../utils/app_enums.dart';

class SideAdBanner extends StatelessWidget {
  final double width;
  final double height;
  final EdgeInsetsGeometry padding;
  final Alignment alignment;
  final bool testMode;

  const SideAdBanner({
    super.key,
    this.width = 160,
    this.height = 600,
    this.padding = const EdgeInsets.only(top: 40, right: 20),
    this.alignment = Alignment.topRight,
    this.testMode = false,
  });

  @override
  Widget build(BuildContext context) {
    if (!kIsWeb || !(context.width >= DeviceType.largeScreenDesktop.getMaxWidth())) {
      return const SizedBox.shrink();
    }

    return Align(
      alignment: alignment,
      child: Padding(
        padding: padding,
        child: SizedBox(
          width: width,
          height: height,
          child: FixedAdsenseBanner(
            adSlot: AdsenseAdUnitId.displaySlot,
            maxWidth: 970,
            height: height,
            adFormat: "auto",
          ),
        ),
      ),
    );
  }
}
