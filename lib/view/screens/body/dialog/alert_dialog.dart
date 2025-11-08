import 'package:flutter/material.dart';
import 'package:gamezi/utils/app_enums.dart';
import 'package:gamezi/utils/app_extensions.dart';
import 'package:gamezi/view/screens/body/dialog/dialog_app_bar.dart';
import 'package:gamezi/view/screens/body/dialog/dialog_body.dart';

class AlertDialogWidget extends StatefulWidget {
  const AlertDialogWidget({super.key});

  @override
  State<AlertDialogWidget> createState() => _AlertDialogWidgetState();
}

class _AlertDialogWidgetState extends State<AlertDialogWidget> {
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      contentPadding: const EdgeInsets.all(00),
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(_dialogRadius(context)))),
      content: Container(
        /// dialog width
        width: context.width < DeviceType.largeScreenDesktop.getMinWidth()
            ? context.width * 0.8
            : context.width * 0.55,
        decoration: BoxDecoration(
          color: const Color(0xffcbcbca),
          borderRadius: BorderRadius.circular(context.width * 0.01),
        ),
        child: Column(
          children: const [
            DialogAppBar(),
            DialogBody(),
          ],
        ),
      ),
    );
  }

  double _dialogRadius(BuildContext context) => context.width * 0.01;
}
