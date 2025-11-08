import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:gamezi/utils/colors.dart';

class IntroAnimatedText extends StatelessWidget {
  const IntroAnimatedText({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 65,
      child: DefaultTextStyle(
        style: TextStyle(
          color: AppColors.primaryColor,
          fontWeight: FontWeight.w600,
          fontSize: 46,
        ),
        //285 borala sav khadkala
        child: Text("Play Anytime, Anywhere."),
        // child: AnimatedTextKit(
        //   animatedTexts: [
        //     RotateAnimatedText('Play Anytime, Anywhere.', alignment: Alignment.centerLeft),
        //     // RotateAnimatedText('Play It on Android or iOS',
        //     //     alignment: Alignment.centerLeft),
        //     RotateAnimatedText('Seamless Gaming.', alignment: Alignment.centerLeft),
        //     RotateAnimatedText('Play in Your Browser',
        //         alignment: Alignment.centerLeft),
        //   ],
        //   repeatForever: true,
        // ),
      ),
    );
  }
}
