import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:gamezi/utils/app_extensions.dart';
import 'package:web/web.dart' as web;
import 'package:pointer_interceptor/pointer_interceptor.dart';

class FixedAdsenseBanner extends StatefulWidget {
  final String adSlot;
  final String adFormat;
  final String? adLayoutKey;
  final String? adLayout;
  final double? height;
  final bool testMode;
  final double maxWidth;

  const FixedAdsenseBanner({
    super.key,
    required this.adSlot,
    required this.adFormat,
    this.adLayoutKey,
    this.adLayout,
    this.height = 0,
    this.testMode = true,
    this.maxWidth = 970,
  });

  @override
  State<FixedAdsenseBanner> createState() => _FixedAdsenseBannerState();
}

class _FixedAdsenseBannerState extends State<FixedAdsenseBanner> {
  static bool _globalStyleInjected = false;
  static bool _adsScriptInjected = false;

  // Inject script + CSS once
  void _injectScripts() {
    if (!kIsWeb) return;

    if (!_adsScriptInjected) {
      final existing = web.document.querySelector(
        'script[src^="https://pagead2.googlesyndication.com/pagead/js/adsbygoogle.js"]',
      );

      if (existing == null) {
        final script = web.document.createElement('script') as web.HTMLScriptElement
          ..async = true
          ..src =
              'https://pagead2.googlesyndication.com/pagead/js/adsbygoogle.js?client=${AdsenseAdUnitId.adClient}'
          ..setAttribute('crossorigin', 'anonymous');

        web.document.head?.append(script);
      }

      _adsScriptInjected = true;
    }

    if (!_globalStyleInjected) {
      final style = web.document.createElement('style') as web.HTMLStyleElement
        ..textContent = '''
          ins.adsbygoogle {
            display: block !important;
            width: 100% !important;
            height: 100% !important;
            overflow: hidden !important;
            box-sizing: border-box !important;
          }

          ins.adsbygoogle iframe {
            width: 100% !important;
            height: 100% !important;
          }
        ''';

      web.document.head?.append(style);
      _globalStyleInjected = true;
    }
  }

  /// Height based on your DeviceType system
  double _getBannerHeight(BuildContext context) {
    if (context.isDesktop) return 300;
    if (context.isSmallLaptop) return 250;
    if (context.isTablet) return 200;
    return 150;
  }

  /// Auto vertical spacing based on your breakpoints
  EdgeInsets _getSpacing(BuildContext context) {
    if (context.isDesktop) return const EdgeInsets.symmetric(vertical: 32);
    if (context.isSmallLaptop) return const EdgeInsets.symmetric(vertical: 28);
    if (context.isTablet) return const EdgeInsets.symmetric(vertical: 24);
    return const EdgeInsets.symmetric(vertical: 16);
  }

  @override
  Widget build(BuildContext context) {
    if (!kIsWeb) return const SizedBox.shrink();

    final height = _getBannerHeight(context);
    final spacing = _getSpacing(context);

    return Padding(
      padding: spacing,
      child: LayoutBuilder(
        builder: (_, constraints) {
          final width = constraints.maxWidth.clamp(0, widget.maxWidth).toDouble();

          return SizedBox(
            width: width,
            height: height,
            child: ClipRect(
              child: PointerInterceptor(
                child: HtmlElementView.fromTagName(
                  tagName: 'div',
                  onElementCreated: (element) {
                    final root = element as web.HTMLDivElement
                      ..style.display = 'block'
                      ..style.width = '100%'
                      ..style.height = '100%'
                      ..style.overflow = 'hidden';

                    while (root.firstChild != null) {
                      root.removeChild(root.firstChild!);
                    }

                    final ins = web.document.createElement('ins') as web.HTMLElement
                      ..className = 'adsbygoogle'
                      ..style.display = 'block'
                      ..style.width = '100%'
                      ..style.height = '100%';

                    ins.setAttribute('data-ad-client', AdsenseAdUnitId.adClient);
                    ins.setAttribute('data-ad-slot', widget.adSlot);
                    ins.setAttribute('data-ad-format', widget.adFormat);

                    // Optional for advanced layouts (in-feed, multiplex, etc.)
                    if (widget.adLayoutKey != null) {
                      ins.setAttribute('data-ad-layout-key', widget.adLayoutKey!);
                    }

                    if (widget.adLayout != null) {
                      ins.setAttribute('data-ad-layout', widget.adLayout!);
                    }

                    ins.setAttribute('data-full-width-responsive', 'true');

                    if (widget.testMode) {
                      ins.setAttribute('data-adtest', 'on');
                    }

                    root.append(ins);

                    final script = web.document.createElement('script') as web.HTMLScriptElement
                      ..text = '''
                        (function() {
                          function loadAd() {
                            try {
                              (window.adsbygoogle = window.adsbygoogle || []).push({});
                            } catch (e) {
                              console.log('adsbygoogle error', e);
                            }
                          }
                                  
                          setTimeout(loadAd, 300);
                        })();
                      ''';
                    root.append(script);

                    _injectScripts();
                  },
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}

class AdsenseAdUnitId {
  static const adClient = 'ca-pub-2426917250425617';
  static const displaySlot = '8426989232';
  static const inArticleSlot = '1380975406';
  static const inFeedSlot = '5553413881';
  static const multiplexSlot = '8712670517';
  static const multiplexSlotVertical = '9299542617';
  static const inFeedLayoutKey = '-6t+ed+2i-1n-4w';
}
