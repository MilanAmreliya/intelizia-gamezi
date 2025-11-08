import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:gamezi/portfolio_app.dart';
import 'package:gamezi/route/router.dart';
import 'package:gamezi/view/screens/body/explore_game_screen/view/explore_game_screen.dart';

// import 'package:get/get.dart';
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
          const SizedBox(height: 52),
          const ProjectsGrid(),
          const SizedBox(height: 15),
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
