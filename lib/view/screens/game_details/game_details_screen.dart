import 'dart:ui';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:gamezi/config/seo.dart';
import 'package:gamezi/route/router.dart';
import 'package:gamezi/utils/app_enums.dart';
import 'package:gamezi/utils/app_extensions.dart';
import 'package:gamezi/utils/colors.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:gamezi/data/models/game_data_model.dart';
import 'package:url_launcher/url_launcher.dart';

class GameDetailScreen extends StatelessWidget {
  final Game game;
  final String title;

  const GameDetailScreen({super.key, required this.game, required this.title});

  static final _bg = AppColors.appBarColor;
  static const _surface = Color(0xFF111111);
  static const _onBg = Colors.white;
  static const _muted = Color(0xCCFFFFFF);
  static const _divider = Color(0x26FFFFFF);
  static const _accent = Color(0xFF00E5A8);

  @override
  Widget build(BuildContext context) {
    final base = Theme.of(context);

    Seo.set(
        title: '${game.title} — Play Free on Intelizia GameZi',
        description: game.description,
        canonicalUrl: 'https://intelizia.com/game/${game.slug}',
        og: {
          'og:title': '${game.title} — Play Free',
          'og:type': 'website',
          'og:url': 'https://intelizia.com/game/${game.slug}',
          'og:image': game.imageUrl,
          'twitter:card': 'summary_large_image',
        },
        jsonLd: '''
  {
    "@context": "https://schema.org",
    "@type": "VideoGame",
    "name": "${game.title}",
    "url": "https://intelizia.com/game/${game.slug}",
    "image": "${game.imageUrl}",
    "applicationCategory": "Game",
    "operatingSystem": "Web",
    "description": "${game.description.replaceAll('"', '\'')}"
  }
  ''');

    final darkTheme = base.copyWith(
      brightness: Brightness.dark,
      scaffoldBackgroundColor: _bg,
      colorScheme: base.colorScheme.copyWith(
        brightness: Brightness.dark,
        surface: _surface,
        primary: _accent,
        onSurface: _onBg,
        onPrimary: Colors.black,
      ),
      textTheme: GoogleFonts.interTextTheme(
        ThemeData(brightness: Brightness.dark).textTheme,
      ).copyWith(
        headlineSmall: GoogleFonts.inter(fontWeight: FontWeight.w800, fontSize: 22, color: _onBg),
        titleLarge: GoogleFonts.inter(fontWeight: FontWeight.w700, fontSize: 20, color: _onBg),
        titleMedium: GoogleFonts.inter(fontWeight: FontWeight.w700, fontSize: 16.5, color: _onBg),
        bodyLarge: GoogleFonts.inter(
            fontWeight: FontWeight.w500, fontSize: 15.5, height: 1.45, color: _onBg),
        bodyMedium: GoogleFonts.inter(
            fontWeight: FontWeight.w500, fontSize: 14.5, height: 1.45, color: _muted),
        bodySmall: GoogleFonts.inter(fontWeight: FontWeight.w500, fontSize: 13.5, color: _muted),
      ),
      appBarTheme: AppBarTheme(
        backgroundColor: _bg,
        surfaceTintColor: Colors.transparent,
        foregroundColor: _onBg,
        elevation: 0,
        titleTextStyle:
            GoogleFonts.inter(fontWeight: FontWeight.w700, fontSize: 16.5, color: _onBg),
        systemOverlayStyle: SystemUiOverlayStyle.light,
      ),
      chipTheme: base.chipTheme.copyWith(
        backgroundColor: Colors.white.withValues(alpha: 0.07),
        side: BorderSide(color: Colors.white.withValues(alpha: 0.18)),
        labelStyle: const TextStyle(color: _onBg, fontWeight: FontWeight.w600),
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 6),
      ),
      filledButtonTheme: FilledButtonThemeData(
        style: FilledButton.styleFrom(
          backgroundColor: _accent,
          foregroundColor: Colors.black,
          textStyle: GoogleFonts.inter(fontWeight: FontWeight.w800),
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
          elevation: 2,
        ),
      ),
      outlinedButtonTheme: OutlinedButtonThemeData(
        style: OutlinedButton.styleFrom(
          foregroundColor: _onBg,
          side: BorderSide(color: Colors.white.withValues(alpha: 0.35)),
          textStyle: GoogleFonts.inter(fontWeight: FontWeight.w700),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
          padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 12),
        ),
      ),
      dividerColor: _divider,
      splashColor: _accent.withValues(alpha: .15),
      highlightColor: _accent.withValues(alpha: .08),
    );

    return Theme(
      data: darkTheme,
      child: Scaffold(
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
            child: _Body(game: game)),
      ),
    );
  }
}

class _Body extends StatelessWidget {
  final Game game;

  const _Body({required this.game});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final text = theme.textTheme;
    const color = GameDetailScreen._onBg;
    const contentPadding = EdgeInsets.symmetric(horizontal: 16, vertical: 12);

    return LayoutBuilder(
      builder: (context, constraints) {
        return SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              GameHeroResponsive(
                game: game,
                maxW: context.width,
                text: Theme.of(context).textTheme,
              ),
              if ((game.longDescription).isNotEmpty) ...[
                const _SectionDivider(title: 'About This Game'),
                Padding(
                  padding: contentPadding,
                  child: Text(game.longDescription, style: text.bodyLarge),
                ),
              ],
              if (game.tags.isNotEmpty) ...[
                const _SectionDivider(title: 'Tags'),
                Padding(
                  padding: contentPadding.copyWith(top: 0, bottom: 28),
                  child: Wrap(
                    spacing: 10,
                    runSpacing: 10,
                    children: game.tags
                        .map(
                          (t) => Chip(
                            label: Text(
                              t,
                              style: const TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            backgroundColor: Colors.black,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12),
                              side: const BorderSide(color: Colors.white24, width: 1),
                            ),
                            elevation: 2,
                            shadowColor: Colors.black54,
                          ),
                        )
                        .toList(),
                  ),
                ),
              ],
              if (_hasAboutFacts(game.aboutThisGame)) ...[
                const _SectionDivider(title: 'Genre & Core Skills'),
                Padding(
                  padding: contentPadding.copyWith(top: 4),
                  child: _FactsGrid(
                    color: color,
                    items: [
                      if ((game.aboutThisGame.genre).isNotEmpty)
                        MapEntry('Genre', game.aboutThisGame.genre),
                      if ((game.aboutThisGame.sessionLength).isNotEmpty)
                        MapEntry('Session Length', game.aboutThisGame.sessionLength),
                      if ((game.aboutThisGame.coreSkills).isNotEmpty)
                        MapEntry('Core Skills', game.aboutThisGame.coreSkills.join(', ')),
                      if ((game.aboutThisGame.bestFor).isNotEmpty)
                        MapEntry('Best For', game.aboutThisGame.bestFor.join(', ')),
                      if ((game.aboutThisGame.monetization).isNotEmpty)
                        MapEntry('Monetization', game.aboutThisGame.monetization),
                    ],
                  ),
                ),
              ],
              if (game.whyPeopleLoveIt.isNotEmpty) ...[
                const _SectionDivider(title: 'Why People Love It'),
                Padding(
                  padding: contentPadding.copyWith(top: 0),
                  child: _IconBulletList(
                    items: game.whyPeopleLoveIt,
                    color: color,
                    icon: Icons.favorite_rounded,
                  ),
                ),
              ],
              if (game.features.isNotEmpty) ...[
                const _SectionDivider(title: 'Features'),
                Padding(
                  padding: contentPadding.copyWith(top: 0),
                  child: _IconBulletList(
                    items: game.features,
                    color: color,
                    icon: Icons.check_circle_rounded,
                  ),
                ),
              ],
              if ((game.howToPlayQuick.desktop).isNotEmpty ||
                  (game.howToPlayQuick.mobile).isNotEmpty ||
                  (game.howToPlayQuick.goal).isNotEmpty) ...[
                const _SectionDivider(title: 'How to Play (Quick)'),
                Padding(
                  padding: contentPadding.copyWith(top: 0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      if ((game.howToPlayQuick.desktop).isNotEmpty)
                        _KeyValueLine(
                            label: 'Desktop', value: game.howToPlayQuick.desktop, color: color),
                      if ((game.howToPlayQuick.mobile).isNotEmpty)
                        _KeyValueLine(
                            label: 'Mobile', value: game.howToPlayQuick.mobile, color: color),
                      if ((game.howToPlayQuick.goal).isNotEmpty)
                        _KeyValueLine(label: 'Goal', value: game.howToPlayQuick.goal, color: color),
                    ],
                  ),
                ),
              ],
              if (game.proTips.isNotEmpty) ...[
                const _SectionDivider(title: 'Pro Tips'),
                Padding(
                  padding: contentPadding.copyWith(top: 0),
                  child: _IconBulletList(
                    items: game.proTips,
                    color: color,
                    icon: Icons.tips_and_updates_rounded,
                  ),
                ),
              ],
              if (game.howToPlay.isNotEmpty) ...[
                const _SectionDivider(title: 'How to Play (Detailed)'),
                Padding(
                  padding: contentPadding.copyWith(top: 0, bottom: 12),
                  child: _NumberedList(items: game.howToPlay, color: color),
                ),
              ],
              Padding(
                padding: contentPadding.copyWith(top: 8, bottom: 40),
                child: Row(
                  children: [
                    Expanded(
                      child: Text(
                        'This page offers authentic, safe-to-play content for all ages. Each game runs securely on the verified platform or its official developer page.',
                        style: text.bodySmall,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        );
      },
    );
  }

  static bool _hasAboutFacts(AboutThisGame a) {
    return (a.genre).isNotEmpty ||
        (a.sessionLength).isNotEmpty ||
        (a.coreSkills).isNotEmpty ||
        (a.bestFor).isNotEmpty ||
        (a.monetization).isNotEmpty;
  }
}

// ---------- SUBWIDGETS ----------

class _SectionDivider extends StatelessWidget {
  final String title;

  const _SectionDivider({required this.title});

  @override
  Widget build(BuildContext context) {
    final style = Theme.of(context).textTheme.titleMedium;
    return Padding(
      padding: const EdgeInsets.fromLTRB(16, 22, 16, 10),
      child: Row(
        children: [
          Text(title, style: style),
          const SizedBox(width: 10),
          Expanded(child: Divider(color: GameDetailScreen._divider, thickness: 1)),
        ],
      ),
    );
  }
}

class _IconBulletList extends StatelessWidget {
  final List<String> items;
  final Color color;
  final IconData icon;

  const _IconBulletList({required this.items, required this.color, required this.icon});

  @override
  Widget build(BuildContext context) {
    final text = Theme.of(context).textTheme.bodyLarge;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: items.map((e) {
        return Padding(
          padding: const EdgeInsets.only(bottom: 10),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Icon(icon, size: 18, color: Colors.white.withValues(alpha: 0.9)),
              const SizedBox(width: 8),
              Expanded(child: Text(e, style: text)),
            ],
          ),
        );
      }).toList(),
    );
  }
}

class _NumberedList extends StatelessWidget {
  final List<String> items;
  final Color color;

  const _NumberedList({required this.items, required this.color});

  @override
  Widget build(BuildContext context) {
    final text = Theme.of(context).textTheme.bodyLarge;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: List.generate(items.length, (i) {
        return Padding(
          padding: const EdgeInsets.only(bottom: 10),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('${i + 1}. ', style: text?.copyWith(fontWeight: FontWeight.w800)),
              Expanded(child: Text(items[i], style: text)),
            ],
          ),
        );
      }),
    );
  }
}

class _FactsGrid extends StatelessWidget {
  final List<MapEntry<String, String>> items;
  final Color color;

  const _FactsGrid({required this.items, required this.color});

  IconData _iconFor(String label) {
    switch (label) {
      case 'Genre':
        return Icons.category_rounded;
      case 'Session Length':
        return Icons.timer_rounded;
      case 'Core Skills':
        return Icons.psychology_rounded;
      case 'Best For':
        return Icons.thumb_up_rounded;
      case 'Monetization':
        return Icons.attach_money_rounded;
      default:
        return Icons.info_rounded;
    }
  }

  @override
  Widget build(BuildContext context) {
    final labelStyle = Theme.of(context).textTheme.bodyMedium?.copyWith(
          fontWeight: FontWeight.w700,
          color: Colors.white.withValues(alpha: 0.9),
        );
    final valueStyle = Theme.of(context).textTheme.bodyMedium?.copyWith(color: Colors.white);

    return LayoutBuilder(
      builder: (context, constraints) {
        final twoCols = constraints.maxWidth > 520;
        final colCount = twoCols ? 2 : 1;

        return Table(
          columnWidths: {for (int i = 0; i < colCount; i++) i: const FlexColumnWidth()},
          defaultVerticalAlignment: TableCellVerticalAlignment.top,
          children: _chunk(items, colCount).map((rowItems) {
            return TableRow(
                children: rowItems.map((e) {
              return Padding(
                padding: const EdgeInsets.only(bottom: 12, right: 12),
                child: DecoratedBox(
                  decoration: BoxDecoration(
                    color: Colors.white.withValues(alpha: 0.06),
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: Colors.white.withValues(alpha: 0.12)),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(12),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Icon(_iconFor(e.key),
                            size: 20, color: Colors.white.withValues(alpha: 0.95)),
                        const SizedBox(width: 10),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(e.key, style: labelStyle),
                              const SizedBox(height: 4),
                              Text(e.value, style: valueStyle),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              );
            }).toList()
                  ..addAll(
                    List.generate(
                        colCount - rowItems.length, (_) => Padding(padding: EdgeInsets.zero)),
                  ));
          }).toList(),
        );
      },
    );
  }

  static Iterable<List<T>> _chunk<T>(List<T> list, int size) sync* {
    for (var i = 0; i < list.length; i += size) {
      yield list.sublist(i, i + size > list.length ? list.length : i + size);
    }
  }
}

class _KeyValueLine extends StatelessWidget {
  final String label;
  final String value;
  final Color color;

  const _KeyValueLine({required this.label, required this.value, required this.color});

  @override
  Widget build(BuildContext context) {
    final labelStyle =
        Theme.of(context).textTheme.bodyLarge?.copyWith(fontWeight: FontWeight.w600, color: color);
    final valueStyle = Theme.of(context).textTheme.bodyLarge?.copyWith(color: color);

    return Padding(
      padding: const EdgeInsets.only(bottom: 8),
      child: RichText(
        text: TextSpan(
          children: [
            TextSpan(text: '$label: ', style: labelStyle),
            TextSpan(text: value, style: valueStyle),
          ],
        ),
      ),
    );
  }
}

DeviceType deviceTypeFromWidth(double w) {
  if (w <= DeviceType.mobile.getMaxWidth()) return DeviceType.mobile;
  if (w <= DeviceType.ipad.getMaxWidth()) return DeviceType.ipad;
  if (w <= DeviceType.smallScreenLaptop.getMaxWidth()) return DeviceType.smallScreenLaptop;
  if (w <= DeviceType.largeScreenDesktop.getMaxWidth()) return DeviceType.largeScreenDesktop;
  return DeviceType.extraLargeTV;
}

class _HeroSpec {
  final double height;
  final double cardMaxWidth;
  final double thumbW;
  final double thumbH;
  final int descMaxLines;
  final int tagCount;
  final EdgeInsets padding;
  final bool verticalLayout;

  const _HeroSpec({
    required this.height,
    required this.cardMaxWidth,
    required this.thumbW,
    required this.thumbH,
    required this.descMaxLines,
    required this.tagCount,
    required this.padding,
    required this.verticalLayout,
  });

  factory _HeroSpec.forDevice(DeviceType t, double maxW) {
    switch (t) {
      case DeviceType.mobile:
        return _HeroSpec(
          height: 260,
          cardMaxWidth: maxW - 24,
          thumbW: 120,
          thumbH: 80,
          descMaxLines: 2,
          tagCount: 3,
          padding: const EdgeInsets.all(12),
          verticalLayout: true,
        );
      case DeviceType.ipad:
        return _HeroSpec(
          height: 300,
          cardMaxWidth: 560,
          thumbW: 140,
          thumbH: 95,
          descMaxLines: 3,
          tagCount: 5,
          padding: const EdgeInsets.all(14),
          verticalLayout: false,
        );
      case DeviceType.smallScreenLaptop:
        return _HeroSpec(
          height: 320,
          cardMaxWidth: 620,
          thumbW: 150,
          thumbH: 105,
          descMaxLines: 3,
          tagCount: 6,
          padding: const EdgeInsets.all(16),
          verticalLayout: false,
        );
      case DeviceType.largeScreenDesktop:
        return _HeroSpec(
          height: 340,
          cardMaxWidth: 680,
          thumbW: 160,
          thumbH: 110,
          descMaxLines: 3,
          tagCount: 7,
          padding: const EdgeInsets.all(16),
          verticalLayout: false,
        );
      case DeviceType.extraLargeTV:
        return _HeroSpec(
          height: 380,
          cardMaxWidth: 760,
          thumbW: 180,
          thumbH: 120,
          descMaxLines: 4,
          tagCount: 8,
          padding: const EdgeInsets.all(18),
          verticalLayout: false,
        );
    }
  }
}

/// ---------- RESPONSIVE WIDGET ----------
class GameHeroResponsive extends StatelessWidget {
  final Game game;
  final double maxW; // pass context.width or parent constraints
  final TextTheme text;

  const GameHeroResponsive({
    super.key,
    required this.game,
    required this.maxW,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    final w = context.width;
    final device = deviceTypeFromWidth(w);
    final spec = _HeroSpec.forDevice(device, maxW);

    return SizedBox(
      height: spec.height,
      child: Stack(
        fit: StackFit.expand,
        children: [
          Image.asset(
            game.fullGameUrl,
            fit: BoxFit.cover,
            errorBuilder: (_, __, ___) => Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    Colors.blue.withValues(alpha: 0.3),
                    Colors.purple.withValues(alpha: 0.3),
                  ],
                ),
              ),
              child: const Center(
                child: Icon(Icons.games, size: 60, color: Colors.white70),
              ),
            ),
          ),

          // Dim / blur overlay
          Positioned.fill(
            child: ClipRRect(
              child: BackdropFilter(
                filter: ImageFilter.blur(sigmaX: 2, sigmaY: 2),
                child: Container(
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                        Colors.black.withValues(alpha: .10),
                        Colors.black.withValues(alpha: .65),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),

          // Foreground glass card
          Align(
            alignment: Alignment.center,
            child: ConstrainedBox(
              constraints: BoxConstraints(maxWidth: spec.cardMaxWidth),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white.withValues(alpha: 0.05),
                  borderRadius: BorderRadius.circular(12),
                  border: Border.all(
                    color: AppColors.appBarColor.withValues(alpha: 0.5),
                    width: 0.7,
                  ),
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(16),
                  child: BackdropFilter(
                    filter: ImageFilter.blur(sigmaX: 12, sigmaY: 12),
                    child: Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: context.width < 480
                            ? 12
                            : context.width < 768
                                ? 16
                                : context.width < 1024
                                    ? 24
                                    : context.width < 1440
                                        ? 32
                                        : 48,
                        vertical: context.width < 480
                            ? 12
                            : context.width < 768
                                ? 14
                                : context.width < 1024
                                    ? 18
                                    : 20,
                      ),
                      child: spec.verticalLayout
                          ? _VerticalContent(spec: spec, game: game, text: text)
                          : _HorizontalContent(spec: spec, game: game, text: text),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

/// Horizontal (desktop/tablet) content
class _HorizontalContent extends StatelessWidget {
  final _HeroSpec spec;
  final Game game;
  final TextTheme text;

  const _HorizontalContent({required this.spec, required this.game, required this.text});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        _Thumb(spec: spec, url: game.halfGameUrl),
        const SizedBox(width: 16),
        Expanded(child: _Info(spec: spec, game: game, text: text)),
      ],
    );
  }
}

/// Vertical (mobile) content
class _VerticalContent extends StatelessWidget {
  final _HeroSpec spec;
  final Game game;
  final TextTheme text;

  const _VerticalContent({required this.spec, required this.game, required this.text});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        _Thumb(spec: spec, url: game.halfGameUrl),
        const SizedBox(height: 12),
        _Info(spec: spec, game: game, text: text, centerText: true),
      ],
    );
  }
}

class _Thumb extends StatelessWidget {
  final _HeroSpec spec;
  final String url;

  const _Thumb({required this.spec, required this.url});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(12),
      child: Image.asset(
        url,
        width: spec.thumbW,
        height: spec.thumbH,
        fit: BoxFit.cover,
        errorBuilder: (_, __, ___) => Container(
          width: spec.thumbW,
          height: spec.thumbH,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Colors.blue.withValues(alpha: 0.3),
                Colors.purple.withValues(alpha: 0.3),
              ],
            ),
          ),
          child: const Center(
            child: Icon(Icons.games, size: 48, color: Colors.white70),
          ),
        ),
      ),
    );
  }
}

class _Info extends StatelessWidget {
  final _HeroSpec spec;
  final Game game;
  final TextTheme text;
  final bool centerText;

  const _Info({
    required this.spec,
    required this.game,
    required this.text,
    this.centerText = false,
  });

  @override
  Widget build(BuildContext context) {
    final align = centerText ? TextAlign.center : TextAlign.start;
    final cross = centerText ? CrossAxisAlignment.center : CrossAxisAlignment.start;

    return Column(
      crossAxisAlignment: cross,
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(game.title, style: text.titleLarge, textAlign: align),
        const SizedBox(height: 6),
        Text(
          game.description,
          maxLines: spec.descMaxLines,
          overflow: TextOverflow.ellipsis,
          style: text.bodyMedium,
          textAlign: align,
        ),
        const SizedBox(height: 12),
        // Wrap(
        //   spacing: 8,
        //   runSpacing: 8,
        //   alignment: centerText ? WrapAlignment.center : WrapAlignment.start,
        //   children: (game.tags).take(spec.tagCount).map((t) {
        //     return Chip(
        //       label: Text(
        //         t,
        //         style: const TextStyle(
        //           color: Colors.white,
        //           fontWeight: FontWeight.w500,
        //         ),
        //       ),
        //       backgroundColor: Colors.black,
        //       shape: RoundedRectangleBorder(
        //         borderRadius: BorderRadius.circular(12),
        //         side: const BorderSide(color: Colors.white24, width: 1),
        //       ),
        //       elevation: 2,
        //       shadowColor: Colors.black54,
        //     );
        //   }).toList(),
        // ),
        const SizedBox(height: 12),
        Builder(
          builder: (_) {
            final isMobileSupported = game.platform.contains("Mobile");

            final isDesktop = defaultTargetPlatform == TargetPlatform.macOS ||
                defaultTargetPlatform == TargetPlatform.windows ||
                defaultTargetPlatform == TargetPlatform.linux;

            if (isDesktop || isMobileSupported) {
              return _Buttons(center: centerText, game: game);
            } else {
              return Text(
                "This game is available only on desktop.",
                style: text.titleLarge,
                textAlign: align,
              );
            }
          },
        ),
        const SizedBox(height: 12),
      ],
    );
  }
}

class _Buttons extends StatelessWidget {
  final bool center;
  final Game game;

  const _Buttons({required this.center, required this.game});

  @override
  Widget build(BuildContext context) {
    final row = Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        FilledButton.icon(
          onPressed: () {
            context.goNamed(
              AppRouteName.webFrame,
              pathParameters: {'title': game.slug},
              extra: game.gameUrl,
            );
          },
          icon: const Icon(Icons.play_arrow),
          label: const Text('Play'),
        ),
        const SizedBox(width: 10),
        OutlinedButton.icon(
          onPressed: () async {
            final uri = Uri.parse(game.gameUrl);
            if (!await launchUrl(uri, mode: LaunchMode.externalApplication)) {
              await launchUrl(uri, mode: LaunchMode.inAppBrowserView);
            }
          },
          icon: const Icon(Icons.open_in_new),
          label: const Text('Open'),
        ),
      ],
    );

    return center ? Center(child: row) : row;
  }
}
