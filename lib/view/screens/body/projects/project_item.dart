import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:gamezi/utils/glass_card.dart';
import 'package:gamezi/utils/text_style.dart';
import '../../../../data/models/project.dart';
import '../../../../utils/colors.dart';
import 'project_actions.dart';
import 'project_image.dart';

class ProjectItem extends StatelessWidget {
  const ProjectItem({super.key, required this.project});

  final Project project;

  @override
  Widget build(BuildContext context) {
    return glassEffectsCard(
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ProjectImage(imageUrl: project.imageUrl),
            const SizedBox(height: 16),
            FittedBox(
              child: Text(
                project.name,
                style: MyFontStyle.s24.copyWith(color: AppColors.primaryColor),
              ),
            ),
            const SizedBox(height: 8),
            Expanded(
              child: AutoSizeText(
                project.description,
                style: MyFontStyle.s18,
                minFontSize: 12,
                maxLines: 4,
              ),
            ),
            const SizedBox(height: 8),
            // if (project.previewLink != null || project.githubRepoLink != null)
            ProjectActions(project: project)
          ],
        ),
      ),
    );
  }
}
