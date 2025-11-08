import 'package:flutter/material.dart';
import 'package:gamezi/utils/app_extensions.dart';
import 'package:gamezi/utils/colors.dart';
import 'package:gamezi/utils/glass_card.dart';
import 'package:gamezi/utils/text_style.dart';

class RedyVsOthersCompareList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List<String> comparisonTitle = [
      "",
      'We’ve Got Your Back, Day or Night. While others limit playtime or hide features behind paywalls, Intelizia lets you jump into full-quality games anytime — totally free. Whether you’re competing at midnight or exploring with friends at sunrise, our platform delivers smooth, unrestricted gameplay that never stops.',
      "You Play, We Upgrade. Found something missing or have a fresh game idea? Unlike other sites, we actually listen — improving speed, adding new titles, and polishing every detail based on your feedback. Enjoy free, ad-light gaming that evolves with your suggestions.",
      'Play Smarter, Not Harder — Powered by AI. Unlike other sites, our platform learns from every click and match you play, using intelligent insights to recommend games you’ll actually enjoy. The result? A faster, more personal, and endlessly improving gaming experience that keeps getting better with you.',
      'Power That Grows With You. Our platform loads games instantly with adaptive cloud scaling — smoother gameplay, faster response, and no lag, unlike others that slow down as you play.',
      'Real Games. True Freedom. Every title on our platform is crafted with originality, depth, and purpose — not copied from preset templates like others. Discover unique gameplay, genuine creativity, and experiences built to entertain, not imitate.',
      'Smart Play, Real Value. No paywalls, no locked perks — just full access to premium-quality free games designed to entertain, challenge, and reward every player without forcing upgrades or hidden limits.',
    ];

    return glassEffectsCard(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 30),
        child: Column(
          children: List.generate(
            comparisonTitle.length,
            (index) => _listTileDetails(comparisonTitle, index, context),
          ),
        ),
      ),
    );
  }

  const RedyVsOthersCompareList({super.key});

  Padding _listTileDetails(List<String> comparisonTitle, int index, BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 15),
      child: Row(
        children: [
          _leading(comparisonTitle, index),
          _title(index, context),
          _trailing(index, context),
        ],
      ),
    );
  }

  Expanded _trailing(int index, BuildContext context) {
    return Expanded(
      flex: 2,
      child: index == 0
          ? Align(
              alignment: Alignment.center,
              child: Text(
                "Others",
                style: MyFontStyle.kW600(
                  fontSize: context.width < 400
                      ? 10
                      : context.width < 505
                          ? 12
                          : 16,
                  color: AppColors.white,
                ),
              ),
            )
          : const Icon(
              Icons.cancel_outlined,
              color: Colors.red,
              size: 30,
              weight: 30,
            ),
    );
  }

  Expanded _title(int index, BuildContext context) {
    return Expanded(
      flex: 2,
      child: index == 0
          ? Align(
              alignment: Alignment.center,
              child: Text(
                'INTELIZIA',
                style: MyFontStyle.kW600(
                  fontSize: context.width < 400
                      ? 10
                      : context.width < 505
                          ? 12
                          : 16,
                  color: AppColors.white,
                ),
              ),
            )
          : const Icon(
              Icons.check,
              color: Colors.green,
              size: 30,
              weight: 30,
            ),
    );
  }

  Expanded _leading(List<String> comparisonTitle, int index) {
    return Expanded(
      flex: 5,
      child: Text(
        comparisonTitle[index],
        style: MyFontStyle.kW600(
          fontSize: 16,
          color: AppColors.white,
        ),
      ),
    );
  }
}
