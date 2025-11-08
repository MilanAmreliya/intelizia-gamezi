import 'package:flutter/material.dart';
import 'package:gamezi/config/seo.dart';

import '../home_body.dart';

class PolicyScreen extends StatefulWidget {
  const PolicyScreen({super.key});

  @override
  State<PolicyScreen> createState() => _PolicyScreenState();
}

class _PolicyScreenState extends State<PolicyScreen> {
  @override
  void initState() {
    Seo.set(
      title: 'Privacy Policy — $kBrand',
      description: 'We do not collect personal information. We only provide an interface '
          'to play free games embedded from third parties. Learn more here.',
      canonicalUrl: '$kSite/privacy',
      og: {
        'og:title': 'Privacy Policy — $kBrand',
        'og:type': 'website',
        'og:url': '$kSite/privacy',
        'og:image': kOgImage,
        'twitter:card': 'summary_large_image',
      },
      jsonLd: '''
{
  "@context": "https://schema.org",
  "@type": "WebPage",
  "name": "Privacy Policy",
  "url": "$kSite/privacy",
  "dateModified": "$kLastUpdated",
  "isPartOf": { "@type": "WebSite", "name": "$kBrand", "url": "$kSite" },
  "description": "Privacy details for Intelizia GameZi. We do not collect personal data."
}
''',
    );

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   backgroundColor: Colors.transparent,
      //   elevation: 0,
      //   leading: IconButton(
      //     icon: const Icon(Icons.arrow_back, color: Colors.white),
      //     onPressed: () => Navigator.of(context).pop(),
      //   ),
      //   title: const Text(
      //     'Privacy Policy',
      //     style: TextStyle(
      //       color: Colors.white,
      //       fontSize: 24,
      //       fontWeight: FontWeight.bold,
      //     ),
      //   ),
      // ),
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
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Privacy Policy",
                          style: TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                        SizedBox(height: 20),

                        /// Overview
                        PolicySection(
                          title: "Overview",
                          content:
                              "$kBrand (\"we\", \"our\", \"us\") is a free web gaming site available at $kSite. "
                              "We provide an interface to play free games, including games embedded from third-party publishers. "
                              "We do not require account creation and we do not directly collect personal information such as your name, email address, or phone number.",
                        ),

                        /// What we do (and don’t) collect
                        PolicySection(
                          title: "Information We Do Not Collect",
                          content:
                              "We do not ask you to register, and we do not directly collect identifiers like your name, email, phone number, or precise location.",
                        ),
                        PolicySection(
                          title: "Limited Technical Data We May Process",
                          content:
                              "Our hosting provider and basic anti-abuse systems may automatically receive standard log data when you access the site "
                              "(for example: IP address, browser type, referrer, date/time, and basic error diagnostics). "
                              "This information is used solely to operate, secure, and troubleshoot the service and is not used to profile you.",
                        ),

                        /// Advertising (AdSense)
                        PolicySection(
                          title: "Advertising (Google AdSense)",
                          content:
                              "We may display ads to support our free service. Ads are provided by Google AdSense and possibly other partners. "
                              "Depending on your region and choices, ads may be shown as non-personalized (contextual) or, with your consent where required by law, personalized.\n\n"
                              "• Google and its partners may use cookies or local storage and device signals to deliver, limit, and measure ads and to detect fraud/abuse.\n"
                              "• You can manage Google ad choices at: https://myadcenter.google.com/ and https://adssettings.google.com/.\n"
                              "• Learn how Google uses information from sites and apps: https://policies.google.com/technologies/partner-sites\n"
                              "• Details on Google ads & cookies: https://policies.google.com/technologies/ads and https://policies.google.com/technologies/cookies",
                        ),

                        /// Cookies
                        PolicySection(
                          title: "Cookies and Local Storage",
                          content:
                              "We do not set tracking cookies of our own. However, advertising partners (e.g., Google AdSense) and embedded third-party game hosts may use cookies or local storage "
                              "to make their features work (such as ad frequency capping, fraud prevention, and remembering basic preferences). "
                              "You can clear or block cookies in your browser settings. If you are in the EEA/UK, we endeavor to seek your consent for cookies that require it, "
                              "and we request non-personalized ads if consent is not provided.",
                        ),

                        /// Third-party games/links
                        PolicySection(
                          title: "Third-Party Games and Links",
                          content:
                              "Some games and features on $kSite are embedded from or link to third-party websites. Those third parties may collect data under their own privacy policies. "
                              "We do not control and are not responsible for third-party practices. Please review the privacy policies of the respective game publishers or sites you visit.",
                        ),

                        /// Children
                        PolicySection(
                          title: "Children’s Privacy",
                          content:
                              "Our site is intended for a general audience and is not directed to children under the age of digital consent in your region (e.g., 13 in the U.S., 16 in parts of the EU). "
                              "We do not knowingly collect personal information from children. If you believe a child has provided personal information on a third-party site reached via our pages, "
                              "please contact that provider and/or us so the information can be addressed.",
                        ),

                        /// Security & retention
                        PolicySection(
                          title: "Security and Data Retention",
                          content:
                              "We apply reasonable technical and organizational measures to help keep the service available and resist abuse. "
                              "Any server logs kept for security and reliability are retained only as long as necessary for those purposes, unless a longer period is required by law.",
                        ),

                        /// International transfers
                        PolicySection(
                          title: "International Data Transfers",
                          content:
                              "Because the internet is global, your interactions with $kSite may be processed on servers located outside your country. "
                              "Where applicable, our partners (such as Google) describe their transfer mechanisms in their own policies.",
                        ),

                        /// Your choices & rights
                        PolicySection(
                          title: "Your Choices and Rights",
                          content:
                              "• Ads & Cookies: Manage Google ad choices at https://myadcenter.google.com/ and https://adssettings.google.com/. "
                              "You can also opt out of many third-party personalized ads at https://www.aboutads.info/choices/ (or https://www.youronlinechoices.eu/ in the EU).\n"
                              "• Browser Controls: You can clear, block, or limit cookies via your browser settings.\n"
                              "• Access/Deletion Requests: We do not directly hold personal data about you. For information collected by ad/embedded partners, please contact those providers or use their tools.",
                        ),

                        /// DNT/GPC
                        PolicySection(
                          title: "Do Not Track and Global Privacy Control",
                          content:
                              "Some browsers send Do Not Track (DNT) or Global Privacy Control (GPC) signals. Where operationally feasible and legally required, "
                              "we treat these signals as opting out of personalized ads and use non-personalized ads instead.",
                        ),

                        /// Changes
                        PolicySection(
                          title: "Changes to This Policy",
                          content:
                              "We may update this Privacy Policy from time to time to reflect changes in our service or legal requirements. "
                              "When we post changes, we will update the “Last updated” date below. Your continued use of $kSite after an update means you accept the revised Policy.",
                        ),

                        /// Contact
                        PolicySection(
                          title: "Contact Us",
                          content:
                              "If you have any questions about this Privacy Policy or our practices for $kBrand, please contact: inteliziainfoway@gmail.com.",
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 20),
                  Center(
                    child: Text(
                      "Last updated: ${DateTime.now().toString().split(' ')[0]}",
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

class PolicySection extends StatelessWidget {
  final String? title;
  final String content;

  const PolicySection({
    super.key,
    this.title,
    required this.content,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          if (title != null) ...[
            Text(
              title!,
              style: const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            const SizedBox(height: 10),
          ],
          Text(
            content,
            style: const TextStyle(fontSize: 16, color: Colors.white, height: 1.5),
          ),
        ],
      ),
    );
  }
}
