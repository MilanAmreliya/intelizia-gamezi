import 'package:web/web.dart' as web;

class Seo {
  static void set({
    required String title,
    String? description,
    String? canonicalUrl,
    Map<String, String>? og,
    String? jsonLd,
  }) {
    web.document.title = title;

    void upsertMeta(String name, String content) {
      final existing = web.document.querySelector('meta[name="$name"]') as web.HTMLMetaElement?;
      final m = existing ?? (web.document.createElement('meta') as web.HTMLMetaElement)
        ..name = name;
      m.content = content;
      if (existing == null) web.document.head!.append(m);
    }

    if (description != null) upsertMeta('description', description);

    if (og != null) {
      og.forEach((p, v) {
        final sel = p.startsWith('og:') || p.startsWith('twitter:')
            ? 'meta[property="$p"]'
            : 'meta[name="$p"]';
        final existing = web.document.querySelector(sel) as web.HTMLMetaElement?;
        final m = existing ?? (web.document.createElement('meta') as web.HTMLMetaElement);
        if (p.startsWith('og:') || p.startsWith('twitter:')) {
          m.setAttribute('property', p);
        } else {
          m.name = p;
        }
        m.content = v;
        if (existing == null) web.document.head!.append(m);
      });
    }

    if (canonicalUrl != null) {
      final existing = web.document.querySelector('link[rel="canonical"]') as web.HTMLLinkElement?;
      final link = existing ?? (web.document.createElement('link') as web.HTMLLinkElement)
        ..rel = 'canonical';
      link.href = canonicalUrl;
      if (existing == null) web.document.head?.append(link);
    }

    if (jsonLd != null) {
      final scripts = web.document.querySelectorAll('script[type="application/ld+json"]');
      for (var i = scripts.length - 1; i >= 0; i--) {
        final node = scripts.item(i);
        if (node != null) {
          node.parentNode?.removeChild(node);
        }
      }
      final s = web.document.createElement('script') as web.HTMLScriptElement
        ..type = 'application/ld+json'
        ..text = jsonLd;
      web.document.head?.append(s);
    }
  }
}
