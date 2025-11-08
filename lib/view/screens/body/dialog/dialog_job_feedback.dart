import 'package:flutter/material.dart';
import 'package:gamezi/utils/app_enums.dart';
import 'package:gamezi/utils/app_extensions.dart';
import 'package:gamezi/utils/sized_box.dart';
import 'package:gamezi/utils/text_style.dart';


class DialogJobFeedBack extends StatefulWidget {
  const DialogJobFeedBack({super.key});

  @override
  State<DialogJobFeedBack> createState() => _DialogJobFeedBackState();
}

class _DialogJobFeedBackState extends State<DialogJobFeedBack> {
  List<String> professionalAttributes = [
    'Skills',
    'Availability',
    'Communication',
    'Quality',
    'DeadLines',
    'Cooperation',
  ];

  @override
  Widget build(BuildContext context) {
    return ExpansionTile(
      title: Text(
        'Job FeedBack',
        style: _titleStyle(),
      ),
      children: [
        30.addHeight(),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ListTile(
                    title: Text(
                      "Client's Feedback",
                      style: _titleStyle(),
                    ),
                    subtitle: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Wrap(
                          children: [
                            ...List.generate(
                              5,
                              (index) => const Padding(
                                padding: EdgeInsets.symmetric(horizontal: 1),
                                child: Icon(
                                  Icons.star,
                                  color: Colors.green,
                                  size: 20,
                                ),
                              ),
                            ),
                            20.addWidth(),
                            Text(
                              '5.00',
                              style: _titleStyle(),
                            ),
                            const VerticalDivider(
                              color: Colors.black,
                              thickness: .5,
                            ),
                            Text(
                              'Nov 4, 2022-Nov 17,2022',
                              style: MyFontStyle.kW500(
                                fontSize: 18,
                                color: Colors.grey,
                              ),
                            ),
                          ],
                        ),
                        Text(
                          '"Good Listener, fast problem-resolving, cooperative and intelligent"',
                          style: _subTitleStyle(),
                        ),
                      ],
                    ),
                  ),
                  ListTile(
                    title: Text(
                      'Over Rating',
                      style: _titleStyle(),
                    ),
                    trailing: Text(
                      '5.00',
                      style: _titleStyle(),
                    ),
                  ),
                  _buildDivider(),
                  Row(
                    children: [
                      Expanded(
                        flex: 1,
                        child: Column(
                          children: List.generate(
                            3,
                            (index) => ListTile(
                              title: Text(professionalAttributes[index]), // print index : 0,1,2
                              trailing: Text('5.00'),
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 1,
                        child: Column(
                          children: List.generate(
                            3,
                            (index) => ListTile(
                              title: Text(professionalAttributes[index + 3]), // print index : 3,4,5
                              trailing: Text('5.00'),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  30.addHeight(),
                  Text(
                    "Freelancer's Feedback to the client",
                    style: _titleStyle(),
                  ),
                  20.addHeight(),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Wrap(
                        children: [
                          ...List.generate(
                            5,
                            (index) => const Padding(
                              padding: EdgeInsets.symmetric(horizontal: 1),
                              child: Icon(
                                Icons.star,
                                color: Colors.green,
                                size: 20,
                              ),
                            ),
                          ),
                          20.addWidth(),
                          Text(
                            '5.00',
                            style: _titleStyle(),
                          ),
                        ],
                      ),
                      20.addHeight(),
                      Text(
                        'He is really a great client to work with. A true professional and cooperative. Looking more work from him in the future.',
                        style: _subTitleStyle(),
                      ),
                      30.addHeight(),
                      Text(
                        'Fixed Price',
                        style: MyFontStyle.kW600(
                          fontSize: 22,
                          color: Colors.grey,
                        ),
                      ),
                      30.addHeight(),
                    ],
                  ),
                ],
              ),
            ),
            if (context.width > DeviceType.extraLargeTV.getMinWidth())
              const Expanded(
                child: SizedBox(),
              ),
            if (context.width > DeviceType.largeScreenDesktop.getMaxWidth())
              Text(
                '\$64.35 earned',
                style: _titleStyle(),
              ),
          ],
        ),
      ],
    );
  }

  Divider _buildDivider() {
    return const Divider(
      color: Colors.black,
      thickness: 0.5,
    );
  }

  TextStyle _titleStyle() => MyFontStyle.kW600(fontSize: 22, color: Colors.black);

  TextStyle _subTitleStyle() => MyFontStyle.kNormal(fontSize: 16, color: Colors.black);
}
