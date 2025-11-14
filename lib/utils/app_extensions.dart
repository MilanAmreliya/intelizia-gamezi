import 'package:flutter/material.dart';

import 'app_enums.dart';

extension AppBarHeaderExtension on AppBarHeaders {
  String getString() {
    switch (this) {
      case AppBarHeaders.aboutMe:
        return 'About us';
      case AppBarHeaders.projects:
        return 'Explore games';
      case AppBarHeaders.contact:
        return 'Contact';
      case AppBarHeaders.termCondition:
        return 'Term & condition';
      case AppBarHeaders.privacyPolicy:
        return 'Privacy Policy';
      case AppBarHeaders.dmca:
        return 'DMCA';
    }
  }
}

extension MediaQueryExtension on BuildContext {
  Size get _size => MediaQuery.of(this).size;

  double get width => _size.width;

  double get height => _size.height;

  bool get isMobile => MediaQuery.of(this).size.width < DeviceType.ipad.getMaxWidth();

  bool get isTablet =>
      width > DeviceType.mobile.getMaxWidth() && width <= DeviceType.ipad.getMaxWidth();

  bool get isSmallLaptop =>
      width > DeviceType.ipad.getMaxWidth() && width <= DeviceType.smallScreenLaptop.getMaxWidth();

  bool get isDesktop => width > DeviceType.smallScreenLaptop.getMaxWidth();
}

extension DeviceTypeExtension on DeviceType {
  int getMinWidth() {
    switch (this) {
      case DeviceType.mobile:
        return 320;
      case DeviceType.ipad:
        return 481;
      case DeviceType.smallScreenLaptop:
        return 769;
      case DeviceType.largeScreenDesktop:
        return 1025;
      case DeviceType.extraLargeTV:
        return 1201;
    }
  }

  int getMaxWidth() {
    switch (this) {
      case DeviceType.mobile:
        return 480;
      case DeviceType.ipad:
        return 768;
      case DeviceType.smallScreenLaptop:
        return 1024;
      case DeviceType.largeScreenDesktop:
        return 1200;
      case DeviceType.extraLargeTV:
        return 3840; // any number more than 1200
    }
  }
}
