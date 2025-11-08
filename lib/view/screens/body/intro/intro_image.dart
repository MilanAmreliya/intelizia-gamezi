import 'package:flutter/material.dart';

import '../../../../data/models/responsive_size.dart';
import '../../../../utils/app_extensions.dart';

class IntroImage extends StatefulWidget {
  const IntroImage({super.key});

  @override
  State<IntroImage> createState() => _IntroImageState();
}

class _IntroImageState extends State<IntroImage> with SingleTickerProviderStateMixin {
  // late AnimationController _controller;

  @override
  void initState() {
    super.initState();
    // _controller = AnimationController(
    //   duration: const Duration(seconds: 10), // 10 seconds for a full rotation
    //   vsync: this,
    // )..repeat();
  }

  @override
  void dispose() {
    // _controller.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final responsiveSize = ResponsiveSize(
      deviceWidth: context.width,
      mobileSize: context.width * .85,
      ipadSize: context.width * .70,
      smallScreenSize: context.width * .29,
      largeScreenSize: context.width * .25,
      extraLargeSize: context.width * .2,
    );

    return Container(
      width: responsiveSize.getSize(),
      height: responsiveSize.getSize(),
      color: Colors.transparent,
      child: Image.asset(
        'assets/images/earth.png',
        fit: BoxFit.cover,
        width: responsiveSize.getSize(),
        height: responsiveSize.getSize(),
      ),
      // child: RotationTransition(
      //   turns: _controller,
      //   child: Image.asset(
      //     'assets/images/earth.png',
      //     fit: BoxFit.cover,
      //     width: responsiveSize.getSize(),
      //     height: responsiveSize.getSize(),
      //   ),
      // ),
    );
  }
}
