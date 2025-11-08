import 'package:flutter/material.dart';
import 'package:gamezi/view/screens/body/dialog/alert_dialog.dart';

class DialogBoxSection extends StatefulWidget {
  const DialogBoxSection({super.key});

  @override
  State<DialogBoxSection> createState() => _DialogBoxSectionState();
}

class _DialogBoxSectionState extends State<DialogBoxSection> {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        showDialog(
          context: context,
          barrierDismissible: false,
          builder: (BuildContext context) {
            return const AlertDialogWidget();
          },
        );
      },
      style: ButtonStyle(
        fixedSize: MaterialStateProperty.all(const Size(200, 50)),
      ),
      child: const Text('Tap Here'),
    );
  }
}
