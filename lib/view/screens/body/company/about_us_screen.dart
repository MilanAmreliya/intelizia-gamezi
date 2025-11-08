import 'package:flutter/material.dart';
import 'package:gamezi/view/screens/body/home_body.dart';
import '../../../../config/seo.dart';

class AboutScreen extends StatefulWidget {
  const AboutScreen({super.key});

  @override
  State<AboutScreen> createState() => _AboutScreenState();
}

class _AboutScreenState extends State<AboutScreen> {
  @override
  void initState() {
    Seo.set(
      title: 'About — $kBrand',
      description:
          '$kBrand is a fast, privacy-minded arcade built with Flutter Web. Play instantly—no logins, no installs. Curated game pages with original guides, controls, and FAQs.',
      canonicalUrl: '$kSite/about',
      og: {
        'og:title': 'About — $kBrand',
        'og:type': 'website',
        'og:url': '$kSite/about',
        'og:image': kOgImage,
        'twitter:card': 'summary_large_image',
      },
      jsonLd: '''
{
  "@context": "https://schema.org",
  "@type": "AboutPage",
  "name": "About $kBrand",
  "url": "$kSite/about",
  "dateModified": "$kLastUpdated",
  "isPartOf": { "@type": "WebSite", "name": "$kBrand", "url": "$kSite" },
  "image": "$kOgImage",
  "about": {
    "@type": "Organization",
    "name": "$kBrand",
    "url": "$kSite"
  },
  "description": "$kBrand is a lightweight arcade for HTML5/WebGL games. We publish rich, human-written game pages with controls, tips, and FAQs to help players learn fast."
}
''',
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 10),
                  Container(
                    padding: const EdgeInsets.all(20),
                    decoration: BoxDecoration(
                      color: Colors.white.withOpacity(0.1),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "About Intelizia GameZi",
                          style: TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                        SizedBox(height: 16),

                        // Intro
                        Text(
                          "Play instantly. No logins. No paywalls. Just games. "
                          "Intelizia GameZi is a lightweight arcade where you can jump into a quick puzzle or settle into a longer adventure—on your phone or desktop—whenever you have a few minutes to play.",
                          style: TextStyle(fontSize: 16, color: Colors.white, height: 1.6),
                        ),
                        SizedBox(height: 20),

                        // What we do
                        _AboutSection(
                          title: "What We Do",
                          content:
                              "We curate web-friendly (HTML5/WebGL) games and publish rich, human-written game pages. "
                              "Each page includes a gameplay overview, keyboard & touch controls, helpful tips, update notes, an FAQ, and related titles to explore. "
                              "This writing is original and created to help players learn fast and enjoy more.",
                        ),

                        // How it works
                        _AboutSection(
                          title: "How It Works",
                          content: "Tap a game, follow the quick controls, and start playing. "
                              "Most games teach themselves in the first minute—swipe to move, tap to jump, drag to aim. "
                              "Come back anytime: your favorites and progress (where supported by the game) are easy to resume.",
                        ),

                        // What you'll find (bullets)
                        _AboutBullets(title: "What You’ll Find", bullets: [
                          "Quick-session puzzles and arcade challenges",
                          "Long-form strategy and story adventures",
                          "Keyboard, mouse, touch, and (where supported) gamepad friendly titles",
                          "Relaxing, no-timer experiences for winding down",
                          "Curated related games to keep discovery simple",
                        ]),

                        // Our principles (bullets)
                        _AboutBullets(title: "Our Principles", bullets: [
                          "Respect creators — we credit original authors and link to sources where applicable",
                          "No surprise popups or dark patterns",
                          "Ads appear only on rich game pages we author, never inside third-party iframes",
                          "Privacy-first — we avoid collecting personal data; see our Privacy Policy for details",
                          "Fast first — we focus on performance, accessibility, and clear UI",
                        ]),

                        // For creators & rights holders
                        _AboutSection(
                          title: "For Creators & Rights Holders",
                          content:
                              "If your work is featured and you need an update, correction, or removal, reach us via the contact details on our site. "
                              "We respond promptly and honor valid DMCA requests. We’re happy to add credits, official links, or updated assets you provide.",
                        ),

                        // Contact
                        _AboutSection(
                          title: "Contact",
                          content: "Questions, suggestions, or a game recommendation? "
                              "Please use the Contact page listed in our footer so your message reaches the right team.",
                        ),

                        // Policies hint
                        _AboutSection(
                          title: "Policies",
                          content:
                              "For how we use cookies/analytics and where ads appear, see our Privacy Policy and Terms. "
                              "They explain our data practices and site rules in plain language.",
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 20),
                  Center(
                    child: Text(
                      "Last updated: $kLastUpdated",
                      style: TextStyle(color: Colors.white.withOpacity(0.7), fontSize: 14),
                    ),
                  ),
                  const SizedBox(height: 30),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class _AboutSection extends StatelessWidget {
  final String title;
  final String content;

  const _AboutSection({
    required this.title,
    required this.content,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 18),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: const TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
          const SizedBox(height: 10),
          Text(
            content,
            style: const TextStyle(fontSize: 16, color: Colors.white, height: 1.6),
          ),
        ],
      ),
    );
  }
}

class _AboutBullets extends StatelessWidget {
  final String title;
  final List<String> bullets;

  const _AboutBullets({required this.title, required this.bullets});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 18),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: const TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
          const SizedBox(height: 10),
          ...bullets.map(
            (b) => Padding(
              padding: const EdgeInsets.only(bottom: 8),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text("•  ", style: TextStyle(color: Colors.white, fontSize: 16)),
                  Expanded(
                    child: Text(
                      b,
                      style: const TextStyle(color: Colors.white, fontSize: 16, height: 1.6),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
