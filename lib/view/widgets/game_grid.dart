import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:gamezi/data/models/game_data_model.dart';
import 'package:gamezi/route/router.dart';
import 'package:gamezi/utils/glass_card.dart';
import 'package:go_router/go_router.dart';

import '../../data/game_data.dart';

class GameGrid extends StatefulWidget {
  final BoxConstraints constraints;

  const GameGrid({
    super.key,
    required this.constraints,
  });

  @override
  State<GameGrid> createState() => _GameGridState();
}

class _GameGridState extends State<GameGrid> {
  final List<dynamic> decodedData = gameData;
  late List<Game> gamesList;

  @override
  void initState() {
    gamesList = decodedData.map((json) => Game.fromJson(json)).where((game) {
      final isMobileSupported = game.platform.contains("Mobile");
      final isDesktop = defaultTargetPlatform == TargetPlatform.macOS ||
          defaultTargetPlatform == TargetPlatform.windows ||
          defaultTargetPlatform == TargetPlatform.linux;

      return isDesktop || isMobileSupported;
    }).toList();

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    int crossAxisCount;
    double padding;

    if (widget.constraints.maxWidth > 1200) {
      crossAxisCount = 5;
      padding = 24.0;
    } else if (widget.constraints.maxWidth > 900) {
      crossAxisCount = 4;
      padding = 20.0;
    } else if (widget.constraints.maxWidth > 600) {
      crossAxisCount = 3;
      padding = 16.0;
    } else if (widget.constraints.maxWidth > 400) {
      crossAxisCount = 2;
      padding = 12.0;
    } else {
      crossAxisCount = 1;
      padding = 10.0;
    }

    return Padding(
        padding: EdgeInsets.all(padding),
        child: GridView.builder(
          physics: const BouncingScrollPhysics(),
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: crossAxisCount,
            crossAxisSpacing: padding,
            mainAxisSpacing: padding,
          ),
          itemCount: gamesList.length,
          itemBuilder: (context, index) {
            final game = gamesList[index];

            return _buildGameItem(context, game);
          },
        ));
  }

  Widget _buildGameItem(BuildContext context, Game game) {
    return GestureDetector(
      onTap: () {
        context.goNamed(AppRouteName.game, pathParameters: {'title': game.slug});
      },
      child: glassEffectsCard(
        child: ClipRRect(
          borderRadius: BorderRadius.circular(20),
          child: Stack(
            fit: StackFit.expand,
            children: [
              // Game image
              Hero(
                tag: 'game-${game.title}',
                child: Image.asset(
                  game.halfGameUrl,
                  fit: BoxFit.cover,
                  errorBuilder: (context, url, error) => Container(
                    color: Colors.black38,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.image_not_supported,
                          color: Colors.purpleAccent.withOpacity(0.7),
                          size: 40,
                        ),
                        const SizedBox(height: 8),
                        Text(
                          game.title,
                          style: const TextStyle(color: Colors.white70, fontSize: 16),
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Positioned.fill(
                child: Container(
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                        Colors.transparent,
                        Colors.transparent,
                        Colors.black.withValues(alpha: 0.7),
                        Colors.black.withValues(alpha: 0.9),
                      ],
                    ),
                  ),
                ),
              ),

              // Game title
              Positioned(
                left: 0,
                right: 0,
                bottom: 0,
                child: Container(
                  padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 16),
                  child: Text(
                    game.title,
                    style: const TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                    textAlign: TextAlign.center,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
              ),
              Positioned.fill(
                child: Material(
                  color: Colors.transparent,
                  child: InkWell(
                    splashColor: Colors.purpleAccent.withOpacity(0.3),
                    highlightColor: Colors.transparent,
                    onTap: () {
                      context.goNamed(AppRouteName.game, pathParameters: {'title': game.slug});
                    },
                    child: const Center(
                      child: Icon(Icons.play_circle, color: Colors.white70, size: 60),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
