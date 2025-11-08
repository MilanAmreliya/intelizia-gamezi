import 'package:flutter/material.dart';
import 'package:gamezi/utils/app_constants.dart';
import 'package:gamezi/utils/app_enums.dart';
import 'package:gamezi/utils/app_extensions.dart';
import 'detailed_service_item.dart';

class DetailedServicesGrid extends StatelessWidget {
  const DetailedServicesGrid({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: GridView.builder(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: _getCrossAxisCount(context.width),
          crossAxisSpacing: 35,
          mainAxisSpacing: 16,
          childAspectRatio: _getAspectRatio(context.width),
        ),
        itemBuilder: (context, index) {
          return DetailedServiceItem(
            service: AppConstants.services[index],
          );
        },
        itemCount: AppConstants.services.length,
      ),
    );
  }

  int _getCrossAxisCount(double deviceWidth) {
    if (deviceWidth < DeviceType.smallScreenLaptop.getMinWidth()) {
      return 1;
    } else {
      return 3;
    }
  }

  double _getAspectRatio(double deviceWidth) {
    if (deviceWidth < DeviceType.smallScreenLaptop.getMinWidth()) {
      return deviceWidth * 0.002;
    } else if (deviceWidth < DeviceType.largeScreenDesktop.getMaxWidth()) {
      return deviceWidth * 0.0005;
    } else {
      return deviceWidth * 0.00038;
    }
  }
}
