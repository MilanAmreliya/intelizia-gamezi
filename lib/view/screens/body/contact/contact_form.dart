import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:gamezi/utils/glass_card.dart';
import 'package:gamezi/utils/text_style.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../../core/custom_button.dart';
import '../../../../utils/app_enums.dart';
import '../../../../utils/app_extensions.dart';
import '../../../../utils/colors.dart';

class ContactForm extends StatefulWidget {
  const ContactForm({super.key});

  @override
  State<ContactForm> createState() => _ContactFormState();
}

class _ContactFormState extends State<ContactForm> {
  late GlobalKey<FormState> _formKey;
  late TextEditingController _emailController;
  late TextEditingController _messageController;
  late TextEditingController _nameController;
  late TextEditingController _subjectController;
  String? _validateEmail(value) {
    if (value == null || value.isEmpty) {
      return "Please fill this field";
    } else {
      const emailPattern =
          r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
      final regExp = RegExp(emailPattern);

      if (!regExp.hasMatch(value)) {
        return "Invalid email format";
      }
    }
    return null;
  }

  Future<void> _sendMail() async {
    String email = Uri.encodeComponent(_emailController.text);
    String subject = Uri.encodeComponent(_subjectController.text);
    String body = Uri.encodeComponent(_messageController.text);

    try {
      Uri mail = Uri.parse("mailto:$email?subject=$subject&body=$body");

      if (await canLaunchUrl(mail)) {
        await launchUrl(mail);

        // clearController();
      } else {
        log("ERROR  ===>>>  Could not launch");
      }
    } catch (e) {
      log("CATCH  ===>>>  $e");
    }
  }

  @override
  void initState() {
    super.initState();
    _formKey = GlobalKey();
    _emailController =
        TextEditingController(text: "inteliziainfoway@gmail.com");
    _messageController = TextEditingController();
    _nameController = TextEditingController();
    _subjectController = TextEditingController();
  }

  @override
  void dispose() {
    _emailController.dispose();
    _messageController.dispose();
    _nameController.dispose();
    _subjectController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: _getFormWidth(context.width),
      child: Form(
        key: _formKey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            _textFieldCard(
              controller: _nameController,
              hintText: 'Name',
            ),
            const SizedBox(height: 12),
            _textFieldCard(
              controller: _emailController,
              hintText: 'E-mail',
              isReadOnly: true,
              validator: _validateEmail,
            ),
            const SizedBox(height: 12),
            _textFieldCard(
              controller: _subjectController,
              hintText: 'Subject',
            ),
            const SizedBox(height: 12),
            _textFieldCard(
              controller: _messageController,
              maxLines: 5,
              hintText: 'Type a message here...',
            ),
            const SizedBox(height: 16),
            CustomButton(
              label: 'Submit',
              onPressed: () async {
                FocusScope.of(context).unfocus();

                if (_formKey.currentState!.validate()) {
                  await _sendMail();
                }
              },
              backgroundColor: AppColors.primaryColor,
              width: _getFormWidth(context.width),
            ),
          ],
        ),
      ),
    );
  }

  Widget _textFieldCard(
      {required TextEditingController controller,
      required String hintText,
      int? maxLines,
      bool? isReadOnly,
      String? Function(String?)? validator}) {
    return glassEffectsCard(
      child: TextFormField(
        controller: controller,
        style: MyFontStyle.s14,
        maxLines: maxLines,
        readOnly: isReadOnly ?? false,
        validator: validator ??
            (value) {
              if (value == null || value.isEmpty) {
                return "Please fill this field";
              }
              return null;
            },
        decoration: InputDecoration(
          hintText: hintText,
          hintStyle: MyFontStyle.s14,
          contentPadding:
              const EdgeInsets.symmetric(vertical: 18, horizontal: 8),
          border: _outlineInputBorder(),
          enabledBorder: _outlineInputBorder(),
          focusedBorder: _outlineInputBorder(),
          errorBorder: _outlineInputBorder(),
          focusedErrorBorder: _outlineInputBorder(),
        ),
      ),
    );
  }

  OutlineInputBorder _outlineInputBorder() => OutlineInputBorder(
        borderRadius: BorderRadius.circular(16),
        borderSide: BorderSide.none,
      );

  double _getFormWidth(double deviceWidth) {
    if (deviceWidth < DeviceType.mobile.getMaxWidth()) {
      return deviceWidth;
    } else if (deviceWidth < DeviceType.ipad.getMaxWidth()) {
      return deviceWidth / 1.6;
    } else if (deviceWidth < DeviceType.smallScreenLaptop.getMaxWidth()) {
      return deviceWidth / 2;
    } else {
      return deviceWidth / 2.5;
    }
  }
}
