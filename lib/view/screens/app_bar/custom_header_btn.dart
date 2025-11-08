import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gamezi/route/router.dart';
import 'package:go_router/go_router.dart';

import '../../../utils/app_enums.dart';
import '../../../utils/app_extensions.dart';
import '../../../utils/colors.dart';
import '../../../utils/text_style.dart';
import '../../blocs/home_bloc/home_bloc.dart';

class CustomHeaderBtn extends StatelessWidget {
  const CustomHeaderBtn({super.key, required this.headerIndex});

  final int headerIndex;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {
        final route = switch (headerIndex) {
          0 => AppRouteName.exploreGames,
          2 => AppRouteName.about,
          3 => AppRouteName.terms,
          4 => AppRouteName.privacy,
          5 => AppRouteName.dmca,
          _ => null,
        };

        if (context.width <= 1360) {
          context.read<HomeBloc>().add(
            ChangeAppBarHeadersAxis(AppBarHeadersAxis.horizontal),
          );
        }

        if (route != null) {
          // context.read<HomeBloc>().add(ChangeAppBarHeadersColorByColor(headerIndex));
          context.goNamed(route);
        } else {
          context.read<HomeBloc>().add(ChangeAppBarHeadersIndex(headerIndex));
        }
      },
      style: TextButton.styleFrom(
        textStyle: MyFontStyle.s18,
        foregroundColor: _getHeaderColor(
          currentIndex: context
              .read<HomeBloc>()
              .appBarHeaderIndex,
          headerIndex: headerIndex,
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 18,
          vertical: 14,
        ),
        child: Text(
          AppBarHeaders.values[headerIndex].getString(),
        ),
      ),
    );
  }

  Color _getHeaderColor({required currentIndex, required int headerIndex}) {
    if (currentIndex == headerIndex) {
      return AppColors.primaryColor;
    } else {
      return AppColors.white;
    }
  }
}
