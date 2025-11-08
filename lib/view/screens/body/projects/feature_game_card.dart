import 'dart:ui';

import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:gamezi/data/models/game_data_model.dart';
import 'package:gamezi/portfolio_app.dart';
import 'package:gamezi/route/router.dart';
import 'package:gamezi/utils/app_enums.dart';
import 'package:gamezi/utils/app_extensions.dart';

// import 'package:get/get.dart';
import 'package:go_router/go_router.dart';

import '../../../../utils/glass_card.dart';

class FeaturedGameCard extends StatelessWidget {
  const FeaturedGameCard({super.key, required this.featuredGame});

  final Game featuredGame;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return glassEffectsCard(
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: LayoutBuilder(builder: (context, c) {
              final w = c.maxWidth;
              final h = c.maxHeight;

              final isPhone = w < DeviceType.ipad.getMaxWidth();
              final imgH = (isPhone ? 0.30 : 0.35) * h;

              final descLines = isPhone ? 5 : 4;

              return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                    decoration: BoxDecoration(
                      gradient: const LinearGradient(
                        colors: [Color(0xFFFF6B6B), Color(0xFFFF8E53)],
                      ),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Text(
                      'FEATURED GAME',
                      style: theme.textTheme.labelSmall?.copyWith(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 1,
                      ),
                    ),
                  ),
                  const SizedBox(height: 16),
                  Container(
                    width: double.infinity,
                    height: imgH.clamp(140, 200),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withValues(alpha: 0.3),
                          blurRadius: 15,
                          offset: const Offset(0, 8),
                        ),
                      ],
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(12),
                      child: Image.asset(
                        featuredGame.halfGameUrl,
                        fit: BoxFit.cover,
                        errorBuilder: (context, error, stackTrace) {
                          return Container(
                            decoration: BoxDecoration(
                              gradient: LinearGradient(
                                colors: [
                                  Colors.blue.withValues(alpha: 0.3),
                                  Colors.purple.withValues(alpha: 0.3),
                                ],
                              ),
                            ),
                            child: const Center(
                              child: Icon(
                                Icons.games,
                                size: 60,
                                color: Colors.white70,
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                  ),
                  const SizedBox(height: 16),

                  // Game Title
                  Text(
                    featuredGame.title,
                    style: theme.textTheme.headlineSmall?.copyWith(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),

                  const SizedBox(height: 8),

                  // Game Description
                  Expanded(
                    child: AutoSizeText(
                      featuredGame.description,
                      maxLines: descLines,
                      overflow: TextOverflow.ellipsis,
                      style: theme.textTheme.bodyMedium?.copyWith(
                        color: Colors.white70,
                        height: 1.4,
                      ),
                    ),
                  ),
                  const SizedBox(height: 16),

                  // Play Button
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton.icon(
                      onPressed: () {
                        context.goNamed(
                          AppRouteName.game,
                          pathParameters: {
                            'title': featuredGame.slug,
                          },
                        );
                      },
                      icon: const Icon(Icons.play_arrow, size: 20),
                      label: const Text('Play Now'),
                      style: ElevatedButton.styleFrom(
                        foregroundColor: Colors.white,
                        backgroundColor: const Color(0xFF7C4DFF),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                        padding: const EdgeInsets.symmetric(vertical: 12),
                      ),
                    ),
                  ),
                ],
              );
            }),
          ),
        ),
      ),
    );
  }
}
