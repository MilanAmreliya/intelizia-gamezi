import 'package:flutter/material.dart';
import 'package:gamezi/config/seo.dart';
import 'dart:ui_web' as ui;
import 'package:web/web.dart' as web;

import '../../home_body.dart';

class GameIframe extends StatefulWidget {
  final String url;
  final String slug;

  const GameIframe({super.key, required this.url, required this.slug}) : assert(url != '');

  @override
  State<GameIframe> createState() => _GameIframeState();
}

class _GameIframeState extends State<GameIframe> {
  late final String _viewType;

  String _humanize(String slug) {
    final s = slug.replaceAll('-', ' ').trim();
    if (s.isEmpty) return 'Game';
    return s[0].toUpperCase() + s.substring(1);
  }

  @override
  void initState() {
    super.initState();

    final pretty = _humanize(widget.slug);
    Seo.set(
      title: 'Play $pretty — $kBrand',
      description:
          'Instant play in your browser. No sign-ups or downloads. Enjoy $pretty free on $kBrand.',
      canonicalUrl: '$kSite/play/${widget.slug}',
      og: {
        'og:title': 'Play $pretty — $kBrand',
        'og:type': 'website',
        'og:url': '$kSite/play/${widget.slug}',
        'og:image': kOgImage, // fallback social image
        'twitter:card': 'summary_large_image',
      },
      jsonLd: '''
{
  "@context": "https://schema.org",
  "@type": "VideoGame",
  "name": "$pretty",
  "url": "$kSite/play/${widget.slug}",
  "image": "$kOgImage",
  "applicationCategory": "Game",
  "operatingSystem": "Web",
  "description": "Play $pretty free in your browser on $kBrand."
}
''',
    );
  
    _viewType = 'game-iframe-${widget.slug}-${widget.url.hashCode}';

    ui.platformViewRegistry.registerViewFactory(_viewType, (int _) {
      final el = web.HTMLIFrameElement()
        ..src = widget.url
        ..style.border = '0'
        ..allow = 'fullscreen; autoplay'
        ..allowFullscreen = true;
      return el;
    });
  }

  @override
  Widget build(BuildContext context) => HtmlElementView(viewType: _viewType);
}
