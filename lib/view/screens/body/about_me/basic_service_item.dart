import 'package:flutter/material.dart';
import 'package:gamezi/utils/glass_card.dart';
import 'package:gamezi/utils/text_style.dart';
import 'package:motion/motion.dart';
import '../../../../data/models/custom_service.dart';
import '../../../../utils/app_enums.dart';
import '../../../../utils/app_extensions.dart';
import '../../../../utils/colors.dart';

class BasicServiceItem extends StatefulWidget {
  const BasicServiceItem({super.key, required this.service});

  final CustomService service;

  @override
  State<BasicServiceItem> createState() => _BasicServiceItemState();
}

class _BasicServiceItemState extends State<BasicServiceItem> {
  Color itemColor = AppColors.lowPriority.withOpacity(0.5);

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: _onEnter,
      onExit: _onExit,
      child: Motion.only(
        borderRadius: BorderRadius.circular(10),
        glare: GlareConfiguration(color: AppColors.primaryColor, maxOpacity: 0.3),
        translation: const TranslationConfiguration(maxOffset: Offset(9, 9)),
        filterQuality: FilterQuality.high,
        child: glassEffectsCard(
          color: itemColor,
          child: Padding(
            padding: const EdgeInsets.only(top: 16, right: 16, left: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Expanded(
                  flex: 3,
                  child: Image.asset(
                    widget.service.logo,
                    fit: BoxFit.contain,
                  ),
                ),
                const Expanded(flex: 1, child: SizedBox()),
                if (context.width > DeviceType.mobile.getMinWidth())
                  Expanded(
                    flex: 1,
                    child: Text(
                      widget.service.service,
                      style: context.width > DeviceType.ipad.getMinWidth()
                          ? MyFontStyle.s18
                          : MyFontStyle.s24,
                      // minFontSize: 8,
                      textAlign: TextAlign.center,
                    ),
                  ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void _onEnter(event) {
    setState(() => itemColor = AppColors.white.withOpacity(0.1));
  }

  void _onExit(event) {
    setState(() => itemColor = AppColors.lowPriority.withOpacity(0.5));
  }
}
