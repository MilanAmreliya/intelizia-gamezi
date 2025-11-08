import 'package:flutter/material.dart';
import 'package:gamezi/utils/app_enums.dart';
import 'package:gamezi/utils/app_extensions.dart';
import 'contact_form.dart';
import 'contact_intro.dart';

class ContactSection extends StatelessWidget {
  const ContactSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 50),
      child: context.width > DeviceType.ipad.getMaxWidth()
          ? Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Expanded(
                  child: ContactIntro(),
                ),
                SizedBox(width: 32),
                // Expanded(child: ContactForm()),
              ],
            )
          : Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: const [
                ContactIntro(),
                SizedBox(height: 32),
                // ContactForm(),
              ],
            ),
    );
  }
}
