import 'dart:math';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:gamezi/data/game_data.dart';
import 'package:gamezi/data/models/game_data_model.dart';
import 'package:gamezi/view/screens/body/projects/feature_game_card.dart';
import '../../../../utils/app_enums.dart';
import '../../../../utils/app_extensions.dart';

class ProjectsGrid extends StatefulWidget {
  const ProjectsGrid({super.key});

  @override
  State<ProjectsGrid> createState() => _ProjectsGridState();
}

class _ProjectsGridState extends State<ProjectsGrid> {
  late final List<Game> games;
  late final List<Game> displayList;

  @override
  void initState() {
    super.initState();
    final random = Random();
    games = gameData.map((json) => Game.fromJson(json)).toList();
    final supportedGames = games.where((game) {
      final isMobileSupported = game.platform.contains("Mobile");

      final isDesktop = defaultTargetPlatform == TargetPlatform.macOS ||
          defaultTargetPlatform == TargetPlatform.windows ||
          defaultTargetPlatform == TargetPlatform.linux;
      return isDesktop || isMobileSupported;
    }).toList();

    displayList = (supportedGames.toList()..shuffle(random)).take(3).toList();
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final width = constraints.maxWidth;
        final crossAxisCount = _getCrossAxisCount(width);

        final double tileHeight = width < DeviceType.ipad.getMaxWidth()
            ? 390
            : width < DeviceType.smallScreenLaptop.getMaxWidth()
                ? 430
                : 440;

        return GridView.builder(
          shrinkWrap: true,
          primary: false,
          physics: const NeverScrollableScrollPhysics(),
          padding: EdgeInsets.zero,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: crossAxisCount,
            crossAxisSpacing: 16,
            mainAxisSpacing: 16,
            mainAxisExtent: tileHeight,
          ),
          itemCount: displayList.length,
          itemBuilder: (context, index) {
            final featuredGame = displayList[index];
            return FeaturedGameCard(featuredGame: featuredGame);
          },
        );
      },
    );
  }

  int _getCrossAxisCount(double deviceWidth) {
    final total = displayList.length;
    if (deviceWidth < DeviceType.mobile.getMaxWidth()) {
      return 1;
    } else if (deviceWidth < DeviceType.ipad.getMaxWidth()) {
      return 1;
    } else if (deviceWidth < DeviceType.smallScreenLaptop.getMaxWidth()) {
      return 3;
    } else {
      return total > 3 ? 3 : total;
    }
  }
}
