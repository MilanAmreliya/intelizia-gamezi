// import 'package:flutter/material.dart';
//
// import '../../../utils/app_constants.dart';
// import '../../../utils/app_enums.dart';
// import '../../../utils/app_extensions.dart';
// import '../../../utils/colors.dart';
// import '../../../utils/glass_card.dart';
// import 'custom_menu_btn.dart';
// import 'developer_name_btn.dart';
// import 'horizontal_headers.dart';
//
// class HomeAppBar extends StatelessWidget implements PreferredSizeWidget {
//   const HomeAppBar({super.key});
//
//   @override
//   Size get preferredSize => const Size.fromHeight(AppConstants.appBarHeight);
//
//   @override
//   Widget build(BuildContext context) {
//     return glassEffectsCard(
//       borderRadius: 0,
//       child: Container(
//         // color: AppColors.appBarColor,
//         padding: EdgeInsets.symmetric(
//           horizontal: _getHorizontalPadding(context),
//         ),
//         child: Row(
//           mainAxisAlignment: MainAxisAlignment.spaceBetween,
//           children: [
//             DeveloperNameBtn(),
//             context.width > DeviceType.ipad.getMaxWidth()
//                 ? const HorizontalHeaders()
//                 : const Align(
//                     alignment: Alignment.centerRight,
//                     child: CustomMenuBtn(),
//                   )
//           ],
//         ),
//       ),
//     );
//   }
//
//   double _getHorizontalPadding(BuildContext context) {
//     if (context.width < DeviceType.ipad.getMaxWidth()) {
//       return context.width * .03;
//     } else {
//       return context.width * .08;
//     }
//   }
// }
import 'package:flutter/material.dart';
import '../../../utils/app_constants.dart';
import '../../../utils/app_extensions.dart';
import '../../../utils/glass_card.dart';
import 'custom_menu_btn.dart';
import 'developer_name_btn.dart';
import 'horizontal_headers.dart';

class HomeAppBar extends StatelessWidget implements PreferredSizeWidget {
  const HomeAppBar({super.key});

  static const double _breakpoint = 1360;

  @override
  Size get preferredSize => const Size.fromHeight(AppConstants.appBarHeight);

  @override
  Widget build(BuildContext context) {
    final width = context.width;
    final isCompact = width <= _breakpoint;

    return glassEffectsCard(
      borderRadius: 0,
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: _getHorizontalPadding(width)),
        child: Row(
          children: [
            const DeveloperNameBtn(),
            const SizedBox(width: 12),
            Expanded(
              child: Align(
                alignment: Alignment.centerRight,
                child: isCompact
                    ? const CustomMenuBtn()
                    : FittedBox(
                        fit: BoxFit.scaleDown,
                        alignment: Alignment.centerRight,
                        child: const HorizontalHeaders(),
                      ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  double _getHorizontalPadding(double width) {
    return width <= _breakpoint ? width * .03 : width * .08;
  }
}
