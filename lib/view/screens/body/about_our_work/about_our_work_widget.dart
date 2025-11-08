import 'package:flutter/material.dart';
import 'package:gamezi/utils/app_strings.dart';
import 'package:motion/motion.dart';

import '../../../../utils/colors.dart';
import '../../../../utils/glass_card.dart';
import '../../../../utils/text_style.dart';

class AboutOurWork extends StatefulWidget {
  const AboutOurWork({super.key});

  @override
  State<AboutOurWork> createState() => _AboutOurWorkState();
}

class _AboutOurWorkState extends State<AboutOurWork> {
  Color itemColor = Colors.transparent;

  @override
  Widget build(BuildContext context) {
    return glassEffectsCard(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            FittedBox(
              child: Text(
                'Community Highlights',
                style: MyFontStyle.s32.copyWith(fontSize: 50),
              ),
            ),
            const SizedBox(height: 8),
            Text(
              AppStrings.communityHighlight,
              style: MyFontStyle.s17,
              softWrap: true,
            ),
            // const SizedBox(height: 40),
            // Row(
            //   children: [
            //     CustomButton(
            //       label: 'Player Profile 1',
            //       // label: 'Reliable Professional Profile link',
            //       // icon: Icons.person,
            //       backgroundColor: AppColors.orangeColor,
            //       onPressed: () {
            //         html.window.open(
            //             'https://www.upwork.com/freelancers/~01bd6dd43e9f109d85',
            //             '_blank');
            //       },
            //       width: context.width < 505
            //           ? 190 - (505 - context.width) / 2
            //           : 200,
            //     ),
            //     const SizedBox(width: 20),
            //     CustomButton(
            //       label: 'Player Profile 2',
            //       // label: 'Reliable Professional Profile link',
            //       // icon: Icons.person,
            //       backgroundColor: AppColors.orangeColor,
            //       onPressed: () {
            //         html.window.open(
            //             'https://www.upwork.com/freelancers/~011c1b1096978560d0',
            //             '_blank');
            //       },
            //       width: context.width < 505
            //           ? 190 - (505 - context.width) / 2
            //           : 200,
            //     ),
            //   ],
            // ),
          ],
        ),
      ),
    );
    //   MouseRegion(
    //   onEnter: _onEnter,
    //   onExit: _onExit,
    //   child: Motion.only(
    //     borderRadius: BorderRadius.circular(10),
    //     glare: GlareConfiguration(color: AppColors.primaryColor, maxOpacity: 0.2),
    //     translation: const TranslationConfiguration(maxOffset: Offset(9, 9)),
    //     filterQuality: FilterQuality.high,
    //     child: glassEffectsCard(
    //       child: Padding(
    //         padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
    //         child: Column(
    //           crossAxisAlignment: CrossAxisAlignment.start,
    //           children: [
    //             FittedBox(
    //               child: Text(
    //                 'Community Highlights',
    //                 style: MyFontStyle.s32.copyWith(fontSize: 50),
    //               ),
    //             ),
    //             const SizedBox(height: 8),
    //             Text(
    //               "We’ve teamed up with talented players and creators to bring new worlds to life. Some sketch characters, some build levels, and others test every corner until things feel just right. A few write music and sound effects, turning quiet scenes into moments you remember. Together we trade ideas, try them out, and keep what works. When someone shares a new boss concept or a fresh puzzle, the team jumps in to play it, tweak it, and polish it. Small wins add up: a smoother jump, a hint placed in the perfect spot, a soundtrack cue that lands at the exact second. It’s all collaboration, and it’s how these worlds grow from sketches and notes into places you can actually explore.",
    //               style: MyFontStyle.s17,
    //               softWrap: true,
    //             ),
    //             // const SizedBox(height: 40),
    //             // Row(
    //             //   children: [
    //             //     CustomButton(
    //             //       label: 'Player Profile 1',
    //             //       // label: 'Reliable Professional Profile link',
    //             //       // icon: Icons.person,
    //             //       backgroundColor: AppColors.orangeColor,
    //             //       onPressed: () {
    //             //         html.window.open(
    //             //             'https://www.upwork.com/freelancers/~01bd6dd43e9f109d85',
    //             //             '_blank');
    //             //       },
    //             //       width: context.width < 505
    //             //           ? 190 - (505 - context.width) / 2
    //             //           : 200,
    //             //     ),
    //             //     const SizedBox(width: 20),
    //             //     CustomButton(
    //             //       label: 'Player Profile 2',
    //             //       // label: 'Reliable Professional Profile link',
    //             //       // icon: Icons.person,
    //             //       backgroundColor: AppColors.orangeColor,
    //             //       onPressed: () {
    //             //         html.window.open(
    //             //             'https://www.upwork.com/freelancers/~011c1b1096978560d0',
    //             //             '_blank');
    //             //       },
    //             //       width: context.width < 505
    //             //           ? 190 - (505 - context.width) / 2
    //             //           : 200,
    //             //     ),
    //             //   ],
    //             // ),
    //           ],
    //         ),
    //       ),
    //     ),
    //   ),
    // );
  }

  void _onExit(event) {
    setState(() => itemColor = Colors.transparent);
  }

  void _onEnter(event) {
    setState(() => itemColor = AppColors.primaryColor);
  }
}
