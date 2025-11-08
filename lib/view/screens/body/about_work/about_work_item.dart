import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:gamezi/utils/app_strings.dart';
import 'package:gamezi/utils/colors.dart';
import 'package:gamezi/utils/sized_box.dart';

import '../../../../utils/glass_card.dart';
import '../../../../utils/images.dart';
import '../../../../utils/text_style.dart';

class AboutWorkItem extends StatefulWidget {
  final int index;

  const AboutWorkItem({super.key, required this.index});

  @override
  State<AboutWorkItem> createState() => _AboutWorkItemState();
}

class _AboutWorkItemState extends State<AboutWorkItem> {
  List<String> title = [
    'Game Engine Mastery',
    'Game Interface Design',
  ];

  List<String> subTitle = [
    AppStrings.gameEngineMastery,
    AppStrings.gameInterfaceDesign,
  ];

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.sizeOf(context).width;

    final double imageHeight = width < 800 ? 220 : 275;

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: glassEffectsCard(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Center(
                child: Image.asset(
                  MyImages.devImg,
                  height: imageHeight,
                  fit: BoxFit.contain,
                ),
              ),
              30.addHeight(),
              Text(
                title[widget.index],
                style: MyFontStyle.subTitleStyle.copyWith(color: AppColors.primaryColor),
                softWrap: true,
                overflow: TextOverflow.visible,
              ),
              20.addHeight(),
              Flexible(
                child: AutoSizeText(
                  subTitle[widget.index],
                  style: MyFontStyle.s16Normal,
                  softWrap: true,
                  maxLines: 20,
                  minFontSize: 13,
                  stepGranularity: 0.5,
                  overflow: TextOverflow.visible,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
