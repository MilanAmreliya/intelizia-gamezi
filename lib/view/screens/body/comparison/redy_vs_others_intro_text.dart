import 'package:flutter/material.dart';
import 'package:gamezi/utils/colors.dart';
import 'package:gamezi/utils/sized_box.dart';
import 'package:gamezi/utils/text_style.dart';

class RedyVsOthersIntroText extends StatelessWidget {
  const RedyVsOthersIntroText({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        30.addHeight(),
        Text(
          "WHAT MAKES US AWESOME",
          style: MyFontStyle.kW600(
            fontSize: 16,
            color: AppColors.primaryColor,
          ),
        ),
        30.addHeight(),
        Text(
          "Built for Gamers, Loved by Players",
          style: MyFontStyle.kW700(
            fontSize: 32,
            color: AppColors.white,
          ),
        ),
        30.addHeight(),
        Text(
          "We don’t settle for average—we raise the game: sharper play, smoother flow, richer moments. Step in and you’ll see it instantly, from bite-sized rounds perfect for a quick break to deep challenges that keep you hooked for hours. Every control feels natural, every goal makes sense, and every win feels rewarding. You can chase new records, unlock advanced stages, or switch to a fresh mode when you’re ready for something different. The visuals and sound are clean and balanced, letting you focus fully on the thrill. Whether you enjoy racing, puzzles, or skill-based adventures, there’s always a match for your mood. Lose once, restart instantly—no delays, no clutter. It’s all about smart, accessible fun that respects your time and challenges your reflexes, turning short sessions into long streaks and showing how a great game experience can keep you coming back for more.",
          style: MyFontStyle.kW500(
            fontSize: 16,
            color: AppColors.subHeadingColor,
          ),
        ),
        40.addHeight(),
      ],
    );
  }
}
