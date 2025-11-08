import 'package:flutter/material.dart';
import 'package:gamezi/data/models/project.dart';
import 'package:gamezi/utils/colors.dart';
import 'package:universal_html/html.dart' as html;

import '../../../../core/custom_button.dart';

class ProjectActions extends StatelessWidget {
  const ProjectActions({super.key, required this.project});

  final Project project;

  @override
  Widget build(BuildContext context) {
    return Flexible(
      fit: FlexFit.tight,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          if (project.appStore != null)
            Expanded(
              child: CustomButton(
                label: 'App store link',
                textColor: AppColors.primaryColor,
                borderColor: AppColors.primaryColor,
                onPressed: () {
                  html.window.open(project.appStore!, '_blank');
                },
                // width: 160,
              ),
            ),
          // Expanded(
          //   child: CustomButton(
          //     label: 'App store link',
          //     backgroundColor: AppColors.primaryColor,
          //     onPressed: () {
          //       html.window.open(project.appStore!, '_blank');
          //     },
          //   ),
          // ),
          SizedBox(
            width: 13,
          ),
          Expanded(
            child: CustomButton(
              label: 'Play store link',
              textColor: AppColors.orangeColor,
              borderColor: AppColors.orangeColor,
              onPressed: () {
                html.window.open(project.playStoreLink!, '_blank');
              },
              // width: 160,
            ),
          ),
        ],
      ),
    );
  }

  Color _buttonColor() => AppColors.primaryColor;
}
