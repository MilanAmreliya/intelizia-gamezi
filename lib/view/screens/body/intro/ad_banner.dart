import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:web/web.dart' as web;
import 'package:flutter/widgets.dart';

class AdsenseBanner extends StatelessWidget {
  final String adSlot; // your AdSense data-ad-slot
  final double height;
  final double width;
  final bool testMode; // true => data-adtest="on"

  const AdsenseBanner({
    super.key,
    required this.adSlot,
    this.height = 90,
    this.width = double.infinity,
    this.testMode = false,
  });

  @override
  Widget build(BuildContext context) {
    if (!kIsWeb) {
      return const SizedBox.shrink();
    }

    return SizedBox(
      height: height,
      width: width,
      child: HtmlElementView.fromTagName(
        tagName: 'div',
        onElementCreated: (root) {
          // root is a <div>
          final div = root as web.HTMLDivElement;
          div.style.width = '100%';
          div.style.height = '${height}px';

          // Create <ins class="adsbygoogle">
          final ins = web.document.createElement('ins') as web.HTMLElement;
          ins.className = 'adsbygoogle';
          ins.style.display = 'block';
          ins.style.width = '100%';
          ins.style.height = '${height}px';

          ins.setAttribute('data-ad-client', 'ca-pub-2426917250425617');
          ins.setAttribute('data-ad-slot', adSlot);
          ins.setAttribute('data-ad-format', 'auto');
          ins.setAttribute('data-full-width-responsive', 'true');

          if (testMode) {
            ins.setAttribute('data-adtest', 'on');
          }

          div.appendChild(ins);

          // Run: (adsbygoogle = window.adsbygoogle || []).push({});
          final script = web.document.createElement('script') as web.HTMLScriptElement;
          script.text = '(adsbygoogle = window.adsbygoogle || []).push({});';
          div.appendChild(script);
        },
      ),
    );
  }
}
