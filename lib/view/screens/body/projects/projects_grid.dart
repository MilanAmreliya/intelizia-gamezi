import 'dart:math';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:gamezi/data/game_data.dart';
import 'package:gamezi/data/models/game_data_model.dart';
import 'package:gamezi/services/ad_services/ad_sense_auto_banner.dart';
import 'package:gamezi/view/screens/body/intro/ad_banner.dart';
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
  late final List<Game> supportedGames;
  final random = Random();
  final int adInterval = 3;
  final int maxAds = 5;

  List<int> _buildAdIndices(int totalGames) {
    final indices = <int>[];
    int gamesShown = 0;
    int currentIndex = 0;

    while (gamesShown < totalGames && indices.length < maxAds) {
      gamesShown++;
      currentIndex++;

      if (gamesShown % adInterval == 0 && indices.length < maxAds && gamesShown < totalGames) {
        indices.add(currentIndex);
        currentIndex++;
      }
    }

    return indices;
  }

  @override
  void initState() {
    super.initState();

    games = gameData.map((json) => Game.fromJson(json)).toList();
    supportedGames = games.where((game) {
      final isMobileSupported = game.platform.contains("Mobile");

      final isDesktop = defaultTargetPlatform == TargetPlatform.macOS ||
          defaultTargetPlatform == TargetPlatform.windows ||
          defaultTargetPlatform == TargetPlatform.linux;
      return isDesktop || isMobileSupported;
    }).toList();
  }

  @override
  Widget build(BuildContext context) {
    final width = context.width;

    final List<Game> displayList = width < DeviceType.ipad.getMaxWidth()
        ? supportedGames.toList()
        : (supportedGames.toList()..shuffle(random)).take(3).toList();

    final crossAxisCount = _getCrossAxisCount(width, displayList.length);

    final List<int> adIndices = context.isMobile ? _buildAdIndices(displayList.length) : const [];
    final int itemCount = displayList.length + adIndices.length;

    return LayoutBuilder(
      builder: (context, constraints) {
        final width = constraints.maxWidth;

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
          itemCount: itemCount,
          itemBuilder: (_, index) {
            if (context.isMobile && adIndices.contains(index)) {
              return Center(
                child: SizedBox(
                  width: 970,
                  child: FixedAdsenseBanner(
                    adSlot: AdsenseAdUnitId.inFeedSlot,
                    adFormat: 'fluid',
                    adLayoutKey: AdsenseAdUnitId.inFeedLayoutKey,
                    maxWidth: 970,
                    minHeight: 160,
                  ),
                ),
              );
            }

            final int adsBefore =
                context.isMobile ? adIndices.where((adIndex) => adIndex < index).length : 0;
            final int gameIndex = index - adsBefore;
            final featuredGame = displayList[gameIndex];

            return FeaturedGameCard(featuredGame: featuredGame);
          },
        );
      },
    );
  }

  int _getCrossAxisCount(double deviceWidth, int total) {
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
