import 'package:flutter/material.dart';
import 'package:gamezi/utils/app_extensions.dart';
import 'package:gamezi/utils/text_style.dart';

class DialogAppBar extends StatelessWidget {
  const DialogAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.vertical(top: Radius.circular(_dialogRadius(context))),
        boxShadow: const [
          BoxShadow(
            color: Colors.grey,
            blurRadius: 2,
            offset: Offset(2, 2),
          ),
        ],
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: context.width * 0.02),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Holly11",
              style: MyFontStyle.s32.copyWith(color: Colors.black),
            ),
            IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: const Icon(
                  Icons.close,
                  color: Colors.black,
                  size: 40,
                )),
          ],
        ),
      ),
    );
  }

  double _dialogRadius(BuildContext context) => context.width * 0.01;
}
