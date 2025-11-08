import 'package:flutter/material.dart';

import '../../../../utils/app_constants.dart';
import '../../../../utils/app_enums.dart';
import '../../../../utils/app_extensions.dart';
import 'basic_service_item.dart';

class BasicServicesGrid extends StatelessWidget {
  const BasicServicesGrid({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: _getCrossAxisCount(context),
        crossAxisSpacing: 35,
        childAspectRatio: _getAspectRatio(context),
        mainAxisSpacing: 16,
      ),
      itemBuilder: (context, index) {
        return BasicServiceItem(
          service: AppConstants.services[index],
        );
      },
      itemCount: AppConstants.services.length,
    );
  }

  int _getCrossAxisCount(BuildContext context) {
    int numOfServices = AppConstants.services.length;
    if (context.width < DeviceType.mobile.getMaxWidth()) {
      return 1;
    } else if (context.width < DeviceType.ipad.getMaxWidth()) {
      return 2;
    } else if (context.width < DeviceType.smallScreenLaptop.getMaxWidth()) {
      return 3;
    } else {
      return numOfServices > 4 ? 4 : numOfServices;
    }
  }

  double _getAspectRatio(BuildContext context) {
    if (context.width < DeviceType.mobile.getMaxWidth()) {
      return 0.6;
    } else if (context.width < DeviceType.ipad.getMaxWidth()) {
      return 0.8;
    } else if (context.width < DeviceType.smallScreenLaptop.getMaxWidth()) {
      return 0.8;
    } else if (context.width < DeviceType.largeScreenDesktop.getMaxWidth()) {
      return 1.1;
    } else if (context.width < DeviceType.extraLargeTV.getMaxWidth()) {
      return 0.8;
    } else {
      return 1.3;
    }
  }
}
