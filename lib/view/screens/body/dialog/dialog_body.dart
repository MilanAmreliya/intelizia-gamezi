import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gamezi/utils/app_enums.dart';
import 'package:gamezi/utils/app_extensions.dart';
import 'package:gamezi/utils/images.dart';
import 'package:gamezi/utils/sized_box.dart';
import 'package:gamezi/utils/text_style.dart';
import 'package:gamezi/view/screens/body/dialog/dialog_job_feedback.dart';

class DialogBody extends StatefulWidget {
  const DialogBody({super.key});

  @override
  State<DialogBody> createState() => _DialogBodyState();
}

class _DialogBodyState extends State<DialogBody> {
  List<String> technicalSkills = [
    'In-App Purchases',
    'User Authentication',
    'Android App Development',
    'API Integration',
    'Dart',
    'Firebase',
    'Flutter',
    'Hybrid App Development',
    'ios Development',
    'Mobile App Development',
    'MongoDB',
    'Node.js',
    'RESTful API',
  ];

  List<String> uiElements = [
    MyImages.k1,
    MyImages.k2,
    MyImages.k3,
    MyImages.k4,
    MyImages.k5,
    MyImages.k6,
  ];

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: _dialogRadius(context)),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              _gridView(),
              20.addHeight(),
              _skillsAndDeliverables(),
              20.addHeight(),
              _projectDescription(),
              20.addHeight(),
              _buildDivider(),
              20.addHeight(),
              _monthAllProjectLink(),
              20.addHeight(),
              const DialogJobFeedBack(),
              20.addHeight(),
            ],
          ),
        ),
      ),
    );
  }

  ListTile _monthAllProjectLink() {
    return ListTile(
      title: Text(
        'Mobile App Development',
        style: _titleStyle(),
      ),
      subtitle: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "29 novembert 20022",
            style: _titleStyle(),
          ),
          const Text(
            "flutter developer needed",
            style: TextStyle(
              color: Color(0xff64905a),
              decoration: TextDecoration.underline,
              fontSize: 20,
            ),
          ),
        ],
      ),
      trailing: const Icon(
        CupertinoIcons.link,
        color: Colors.green,
      ),
    );
  }

  Divider _buildDivider() {
    return const Divider(
      color: Colors.black,
      thickness: 0.2,
    );
  }

  ListTile _projectDescription() {
    return ListTile(
      title: Text(
        'Project description',
        style: _titleStyle(),
      ),
      subtitle: Text(
        "Holly11 is live cricket fantasy app that shows a live score, video and info of matches.",
        style: _subTitleStyle(),
      ),
    );
  }

  ListTile _skillsAndDeliverables() {
    return ListTile(
      title: Text(
        'Skills and deliverables',
        style: _titleStyle(),
      ),
      subtitle: Padding(
        padding: EdgeInsets.only(
            right: context.width < DeviceType.largeScreenDesktop.getMinWidth() ? 40 : 200),
        child: Wrap(
          children: List.generate(
            technicalSkills.length,
            (index) => Container(
              margin: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                color: const Color(0xff94ac8a),
                borderRadius: BorderRadius.circular(30),
              ),
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: Text(
                  technicalSkills[index],
                  style: MyFontStyle.kNormal(
                    fontSize: 16,
                    color: Colors.black,
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  GridView _gridView() {
    return GridView.builder(
      itemCount: 6,
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
        mainAxisSpacing: 20,
        crossAxisSpacing: 20,
      ),
      itemBuilder: (context, index) {
        return SizedBox(
          height: 200,
          width: 100,
          child: Image.asset(uiElements[index]),
        );
      },
    );
  }

  TextStyle _titleStyle() => MyFontStyle.kW600(fontSize: 22, color: Colors.black);

  TextStyle _subTitleStyle() => MyFontStyle.kNormal(fontSize: 16, color: Colors.black);

  double _dialogRadius(BuildContext context) => context.width * 0.01;
}
