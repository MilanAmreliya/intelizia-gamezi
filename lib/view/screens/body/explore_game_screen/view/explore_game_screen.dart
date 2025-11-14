import 'package:flutter/material.dart';
import 'package:gamezi/config/seo.dart';
import 'package:gamezi/route/router.dart';
import 'package:gamezi/services/ad_services/ad_sense_auto_banner.dart';
import 'package:gamezi/utils/app_extensions.dart';
import 'package:gamezi/utils/colors.dart';
import 'package:gamezi/view/screens/body/intro/ad_banner.dart';

import 'package:gamezi/view/widgets/game_grid.dart';
import 'package:gamezi/view/widgets/side_ad_banner.dart';
import 'package:go_router/go_router.dart';

import '../../home_body.dart';

class ExploreGameScreen extends StatelessWidget {
  const ExploreGameScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // final GameController gameController = Get.find<GameController>();

    Seo.set(
      title: 'Explore Free Games — $kBrand',
      description: 'Browse our curated catalog of free, no-install web games. '
          'Find quick challenges, timing tests, racers, and more.',
      canonicalUrl: '$kSite/explore-games',
      og: {
        'og:title': 'Explore Free Games — $kBrand',
        'og:type': 'website',
        'og:url': '$kSite/explore-games',
        'og:image': kOgImage,
        'twitter:card': 'summary_large_image',
      },
      jsonLd: '''
{
  "@context": "https://schema.org",
  "@type": "CollectionPage",
  "name": "Explore Free Games",
  "url": "$kSite/explore-games",
  "isPartOf": { "@type": "WebSite", "name": "$kBrand", "url": "$kSite" },
  "description": "Curated catalog of free, no-install browser games."
}
''',
    );

    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        title: Text(
          'Intelizia GameZi',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 28,
            color: AppColors.white,
            letterSpacing: 1.2,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color(0xFF1A1A2E),
              Color(0xFF16213E),
              Color(0xFF0F3460),
            ],
          ),
        ),
        child: SafeArea(
          child: Row(
            children: [
              const SideAdBanner(
                alignment: Alignment.topLeft,
                padding: EdgeInsets.only(top: 40, left: 20),
                testMode: true,
              ),
              Expanded(
                child: Center(
                  child: LayoutBuilder(
                    builder: (context, constraints) {
                      return ConstrainedBox(
                        constraints: const BoxConstraints(maxWidth: 1440),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Expanded(
                              child: SingleChildScrollView(
                                child: Column(
                                  children: [
                                    GameGrid(
                                      constraints: constraints,
                                    ),
                                    Builder(
                                      builder: (_) {
                                        if (context.isMobile) {
                                          return SizedBox(
                                            width: 970,
                                            child: FixedAdsenseBanner(
                                              adSlot: AdsenseAdUnitId.multiplexSlotVertical,
                                              adFormat: 'autorelaxed',
                                              maxWidth: 970,
                                              minHeight: 600,
                                            ),
                                          );
                                        } else {
                                          return SizedBox(
                                            width: 970,
                                            child: FixedAdsenseBanner(
                                              adSlot: AdsenseAdUnitId.multiplexSlot,
                                              adFormat: 'autorelaxed',
                                              maxWidth: 970,
                                              minHeight: 250,
                                            ),
                                          );
                                        }
                                      },
                                    )
                                  ],
                                ),
                              ),
                            ),
                            Container(
                              width: double.infinity,
                              padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 24),
                              decoration: BoxDecoration(
                                color: Colors.black.withValues(alpha: 0.3),
                                border: Border(
                                  top: BorderSide(color: Colors.white.withValues(alpha: 0.1)),
                                ),
                              ),
                              child: Row(
                                children: [
                                  // Website URL on the left
                                  Text(
                                    'intelizia.com',
                                    style: TextStyle(
                                      color: Colors.white.withValues(alpha: 0.7),
                                      fontSize: 14,
                                    ),
                                  ),
                                  const Spacer(),
                                  // Footer links
                                  TextButton(
                                    onPressed: () {
                                      context.goNamed(AppRouteName.terms);
                                    },
                                    child: const Text('Terms',
                                        style: TextStyle(color: Colors.white70)),
                                  ),
                                  const SizedBox(width: 20),
                                  TextButton(
                                    onPressed: () {
                                      context.goNamed(
                                        AppRouteName.dmca,
                                      );
                                    },
                                    child: const Text(
                                      'DMCA',
                                      style: TextStyle(color: Colors.white70),
                                    ),
                                  ),
                                  const SizedBox(width: 20),
                                  TextButton(
                                    onPressed: () {
                                      context.goNamed(
                                        AppRouteName.privacy,
                                      );
                                    },
                                    child: const Text(
                                      'Policy',
                                      style: TextStyle(color: Colors.white70),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      );
                    },
                  ),
                ),
              ),
              const SideAdBanner(
                alignment: Alignment.topRight,
                padding: EdgeInsets.only(top: 40, right: 20),
                testMode: true,
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget multiplexHorizontal(String slot) {
    return Center(
      child: ConstrainedBox(
        constraints: const BoxConstraints(maxWidth: 970),
        child: SizedBox(
          width: double.infinity,
          height: 280,
          child: AdsenseBanner(
            adSlot: slot,
            format: 'autorelaxed',
            adFormat: 'autorelaxed',
            giveWidth: false,
          ),
        ),
      ),
    );
  }

  Widget multiplexVertical(String slot) {
    return Center(
      child: ConstrainedBox(
        constraints: const BoxConstraints(maxWidth: 300),
        child: SizedBox(
          width: double.infinity,
          height: 600,
          child: AdsenseBanner(
            adSlot: slot,
            format: 'autorelaxed',
            adFormat: 'autorelaxed',
            giveWidth: false,
          ),
        ),
      ),
    );
  }
}
