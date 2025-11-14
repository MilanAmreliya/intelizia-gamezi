import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:gamezi/route/router.dart';
import 'package:gamezi/utils/app_enums.dart';
import 'package:gamezi/utils/app_extensions.dart';
import 'package:go_router/go_router.dart';
import 'projects_grid.dart';
import 'projects_intro.dart';

class ProjectsSection extends StatelessWidget {
  const ProjectsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        bottom: 80,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const ProjectsIntro(),
          Builder(
            builder: (context) {
              if (context.width > DeviceType.ipad.getMaxWidth()) {
                return const SizedBox(height: 52);
              } else {
                return const SizedBox(height: 15);
              }
            },
          ),
          const ProjectsGrid(),
          const SizedBox(height: 15),
          if (context.width > DeviceType.ipad.getMaxWidth())
            Center(
              child: ElevatedButton.icon(
                onPressed: () {
                  GoRouter.of(context).goNamed(
                    AppRouteName.exploreGames,
                  );
                },
                icon: const Icon(Icons.arrow_forward),
                label: const Text('Explore Games'),
                style: ElevatedButton.styleFrom(
                  iconAlignment: IconAlignment.end,
                  foregroundColor: Colors.white,
                  backgroundColor: Colors.white.withValues(alpha: 0.15),
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(14)),
                  padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                ),
              ).animate().fadeIn(duration: 600.ms, delay: 700.ms),
            ),
        ],
      ),
    );
  }
}
