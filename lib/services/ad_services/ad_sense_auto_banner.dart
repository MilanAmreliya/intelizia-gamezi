import 'dart:async';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:web/web.dart' as web;
import 'package:pointer_interceptor/pointer_interceptor.dart';

class FixedAdsenseBanner extends StatefulWidget {
  final String adSlot;
  final bool testMode;
  final double maxWidth;
  final double minHeight;
  final EdgeInsetsGeometry padding;
  final String? adFormat;
  final String? adLayout;
  final String? adLayoutKey;
  final bool fullWidthResponsive;
  final Map<String, String>? extraAttributes;

  const FixedAdsenseBanner({
    super.key,
    required this.adSlot,
    this.testMode = false,
    this.maxWidth = 970,
    this.minHeight = 90,
    this.padding = const EdgeInsets.symmetric(vertical: 8),
    this.adFormat = 'auto',
    this.adLayout,
    this.adLayoutKey,
    this.fullWidthResponsive = true,
    this.extraAttributes,
  });

  @override
  State<FixedAdsenseBanner> createState() => _FixedAdsenseBannerState();
}

class _FixedAdsenseBannerState extends State<FixedAdsenseBanner> {
  double _height = 0;
  Timer? _pollTimer;

  static bool _globalStyleInjected = false;
  static bool _adsScriptInjected = false;

  @override
  void dispose() {
    _pollTimer?.cancel();
    super.dispose();
  }

  void _injectAdsScriptAndStyle() {
    if (!kIsWeb) return;

    if (!_adsScriptInjected) {
      final existing = web.document.querySelector(
        'script[src^="https://pagead2.googlesyndication.com/pagead/js/adsbygoogle.js"]',
      );
      if (existing == null) {
        final s = web.document.createElement('script') as web.HTMLScriptElement
          ..async = true
          ..src =
              'https://pagead2.googlesyndication.com/pagead/js/adsbygoogle.js?client=${AdsenseAdUnitId.adClient}'
          ..setAttribute('crossorigin', 'anonymous');
        web.document.head?.append(s);
      }
      _adsScriptInjected = true;
    }

    if (!_globalStyleInjected) {
      final style = web.document.createElement('style') as web.HTMLStyleElement
        ..textContent = '''
          /* Keep the ad in normal flow; avoid overlaying Flutter canvas. */
          ins.adsbygoogle {
            display: block !important;
            position: relative !important;
            z-index: 0 !important;
            margin: 0 auto !important;
            width: 100% !important;
            max-width: 100% !important;
            overflow: hidden !important;
            box-sizing: border-box !important;
          }
          /* Prevent AdSense iframes from overflowing */
          ins.adsbygoogle iframe {
            max-width: 100% !important;
            overflow: hidden !important;
          }
        ''';
      web.document.head?.append(style);
      _globalStyleInjected = true;
    }
  }

  void _startHeightPolling(web.HTMLElement root) {
    _pollTimer?.cancel();
    int ticks = 0;
    _pollTimer = Timer.periodic(const Duration(milliseconds: 150), (t) {
      ticks++;
      final h = root.offsetHeight.toDouble();
      if (h > 0 && (h - _height).abs() > 1.0 && mounted) {
        setState(() => _height = h);
      }
      if (ticks > 80 || (h > 0 && ticks > 10)) t.cancel();
    });
  }

  @override
  Widget build(BuildContext context) {
    if (!kIsWeb) return const SizedBox.shrink();

    // PointerInterceptor prevents DOM ads from eating gestures around them.
    return PointerInterceptor(
      child: LayoutBuilder(
        builder: (_, constraints) {
          final width = constraints.maxWidth.clamp(0, widget.maxWidth).toDouble();

          return Padding(
            padding: widget.padding,
            child: Center(
              child: SizedBox(
                width: width,
                height: (_height > widget.minHeight ? _height : widget.minHeight),
                child: HtmlElementView.fromTagName(
                  tagName: 'div',
                  onElementCreated: (element) {
                    final root = element as web.HTMLDivElement
                      ..style.display = 'block'
                      ..style.width = '100%'
                      ..style.overflow = 'hidden';

                    root.style.minHeight = '${widget.minHeight}px';

                    while (root.firstChild != null) {
                      root.removeChild(root.firstChild!);
                    }

                    final ins = web.document.createElement('ins') as web.HTMLElement
                      ..className = 'adsbygoogle'
                      ..style.display = 'block'
                      ..style.width = '100%'
                      ..style.boxSizing = 'border-box';

                    ins.setAttribute('data-ad-client', AdsenseAdUnitId.adClient);
                    ins.setAttribute('data-ad-slot', widget.adSlot);
                    ins.setAttribute('data-ad-format', 'auto');
                    ins.setAttribute('data-full-width-responsive', 'true');
                    if (widget.adFormat != null) {
                      ins.setAttribute('data-ad-format', widget.adFormat!);
                    }
                    if (widget.fullWidthResponsive) {
                      ins.setAttribute('data-full-width-responsive', 'true');
                    }
                    if (widget.adLayout != null) {
                      ins.setAttribute('data-ad-layout', widget.adLayout!);
                    }
                    if (widget.adLayoutKey != null) {
                      ins.setAttribute('data-ad-layout-key', widget.adLayoutKey!);
                    }
                    widget.extraAttributes?.forEach((k, v) => ins.setAttribute(k, v));
                    if (true) ins.setAttribute('data-adtest', 'on');

                    root.append(ins);
                    _injectAdsScriptAndStyle();

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

                    _startHeightPolling(root);
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
