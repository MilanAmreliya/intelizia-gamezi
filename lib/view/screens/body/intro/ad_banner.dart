import 'package:flutter/material.dart';
import 'package:pointer_interceptor/pointer_interceptor.dart';
import 'package:web/web.dart' as web;

class AdsenseBanner extends StatelessWidget {
  final String adSlot;
  final String format;
  final double height;
  final String? adFormat;
  final String? adLayout;
  final String? adLayoutKey;
  final bool? giveWidth;

  const AdsenseBanner({
    super.key,
    required this.adSlot,
    this.height = 90,
    required this.format,
    this.adFormat,
    this.adLayout,
    this.adLayoutKey,
    this.giveWidth = true,
  });

  @override
  Widget build(BuildContext context) {
    return PointerInterceptor(
      child: SizedBox(
        height: height,
        width: double.infinity,
        child: HtmlElementView.fromTagName(
          tagName: 'div',
          onElementCreated: (element) {
            final root = element as web.HTMLDivElement;
            root.style.display = 'block';
            root.style.width = '100%';
            root.style.height = '${height}px';

            while (root.firstChild != null) {
              root.removeChild(root.firstChild!);
            }

            final ins = web.document.createElement('ins') as web.HTMLElement
              ..className = 'adsbygoogle'
              ..style.display = 'block'
              ..style.width = '100%'
              ..style.margin = '0 auto'
              ..style.height = '${height}px'
              ..setAttribute('data-ad-client', 'ca-pub-2426917250425617');

            if (adFormat != null) ins.setAttribute('data-ad-format', adFormat!);
            if (adLayout != null) ins.setAttribute('data-ad-layout', adLayout!);
            if (adLayoutKey != null) ins.setAttribute('data-ad-layout-key', adLayoutKey!);
            if (giveWidth != null && giveWidth == true) {
              ins.setAttribute('data-full-width-responsive', 'true');
            }

            if (true) {
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
          },
        ),
      ),
    );
  }
}
