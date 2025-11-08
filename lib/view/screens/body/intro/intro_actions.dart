import 'package:flutter/material.dart';
import 'package:gamezi/route/router.dart';
import 'package:go_router/go_router.dart';

import '../../../../utils/app_enums.dart';
import '../../../../utils/app_extensions.dart';
import '../../../../utils/colors.dart';
import '../../../../core/custom_button.dart';

class IntoActions extends StatelessWidget {
  const IntoActions({super.key});

  @override
  Widget build(BuildContext context) {
    List<Widget> actions = [
      CustomButton(
        label: AppBarHeaders.aboutMe.getString(),
        icon: Icons.person,
        backgroundColor: AppColors.orangeColor,
        onPressed: () {
          context.goNamed(AppRouteName.about);
          // context.read<HomeBloc>().add(ChangeAppBarHeadersIndex(1));
        },
        width: context.width < 505 ? 190 - (505 - context.width) / 2 : 200,
      ),
      /*context.width < DeviceType.smallScreenLaptop.getMinWidth()
          ? const SizedBox(height: 12)
          :*/
      const SizedBox(width: 32),
      CustomButton(
          label: AppBarHeaders.projects.getString(),
          textColor: AppColors.orangeColor,
          icon: Icons.remove_red_eye,
          iconColor: AppColors.orangeColor,
          borderColor: AppColors.orangeColor,
          onPressed: () {
            context.goNamed(AppRouteName.exploreGames);
            // context.read<HomeBloc>().add(ChangeAppBarHeadersIndex(0));
          },
          width: context.width < 505 ? 190 - (505 - context.width) / 2 : 200),
    ];
    return /*context.width < DeviceType.smallScreenLaptop.getMinWidth()
        ? Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: actions,
          )
        :*/
        Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: actions,
    );
  }
}
