import 'package:flutter/material.dart';

import '../../../../config/seo.dart';
import '../home_body.dart';

class TermsScreen extends StatefulWidget {
  const TermsScreen({super.key});

  @override
  State<TermsScreen> createState() => _TermsScreenState();
}

class _TermsScreenState extends State<TermsScreen> {
  @override
  void initState() {
    Seo.set(
      title: 'Terms & Conditions — $kBrand',
      description: 'Read the Terms & Conditions for using our free game website. '
          'Rules of use, disclaimers, and contact information.',
      canonicalUrl: '$kSite/terms',
      og: {
        'og:title': 'Terms & Conditions — $kBrand',
        'og:type': 'website',
        'og:url': '$kSite/terms',
        'og:image': kOgImage,
        'twitter:card': 'summary_large_image',
      },
      jsonLd: '''
{
  "@context": "https://schema.org",
  "@type": "WebPage",
  "name": "Terms & Conditions",
  "url": "$kSite/terms",
  "dateModified": "$kLastUpdated",
  "isPartOf": { "@type": "WebSite", "name": "$kBrand", "url": "$kSite" },
  "description": "Terms and conditions for using the Intelizia GameZi website."
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
      //     'Terms of Service',
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
                    child: const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Website Terms of Use",
                          style: TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                        SizedBox(height: 20),

                        // 1
                        TermSection(
                          title: "1. About This Site & Acceptance",
                          content:
                              "intelizia.com (the “Site”), also referred to as Intelizia GameZi, offers a curated directory of free web games for personal entertainment. "
                              "By visiting or using the Site, you confirm that you have read, understood, and agree to these Terms & Conditions. "
                              "If you do not agree, please do not use the Site.",
                        ),

                        // 2
                        TermSection(
                          title: "2. Eligibility & General Audience",
                          content:
                              "The Site is intended for a general audience. It is not specifically directed to children under 13 years of age. "
                              "If you are under 13, please use the Site only with a parent or guardian’s permission and supervision. "
                              "Where your local laws require a higher age of consent, you must meet that requirement to use the Site.",
                        ),

                        // 3
                        TermSection(
                          title: "3. Free Access, No Accounts or Purchases",
                          content:
                              "You can browse and play available games on the Site for free. We do not require account creation or payment to use the Site. "
                              "If any third-party game or service requests login or payment, that request is governed solely by that third party’s terms and policies.",
                        ),

                        // 4
                        TermSection(
                          title: "4. Third-Party Games, Links, and Content",
                          content:
                              "The Site may embed or link to games, websites, and resources operated by third parties. These are provided for convenience and discovery. "
                              "We do not own or control third-party content and are not responsible for its availability, accuracy, legality, or safety. "
                              "Your use of any third-party game or site is subject to that provider’s terms and privacy policy.",
                        ),

                        // 5
                        TermSection(
                          title: "5. Advertising (including Google AdSense)",
                          content:
                              "We may display advertising, including Google AdSense. Ads help keep the Site free. "
                              "We do not encourage, require, or incentivize users to click ads. Do not engage in any behavior that generates invalid traffic, "
                              "such as repeatedly clicking ads, using bots, or encouraging others to click ads for the purpose of revenue generation. "
                              "Some ads may use cookies or similar technologies subject to the advertiser’s policies. "
                              "For information on how we use cookies and any analytics solely to operate and improve the Site, please see our Privacy Policy at $kSite/privacy.",
                        ),

                        // 6
                        TermSection(
                          title: "6. Acceptable Use & Prohibited Conduct",
                          content:
                              "You agree to use the Site only for lawful, personal entertainment. You must not: "
                              "(a) attempt to disrupt or interfere with the Site’s operation or security; "
                              "(b) reverse-engineer, scrape, or harvest data from the Site; "
                              "(c) upload or distribute malware; "
                              "(d) bypass technical protections; "
                              "(e) use automated tools to overload resources; "
                              "(f) engage in any form of ad fraud or invalid traffic (including repeated or automated ad clicks).",
                        ),

                        // 7
                        TermSection(
                          title: "7. Intellectual Property & Ownership",
                          content:
                              "The Site’s user interface, design, branding, and original text are owned by us or our licensors and protected by intellectual property laws. "
                              "Games, logos, and other assets may be owned by their respective creators and used under license or applicable terms. "
                              "You may not copy, host, modify, mirror, distribute, or create derivative works of any content from the Site unless expressly permitted by the rights holder.",
                        ),

                        // 8
                        TermSection(
                          title: "8. Copyright/DMCA Notices",
                          content:
                              "We respect the intellectual property rights of others. If you believe that any content on the Site infringes your copyright, "
                              "please email a notice to inteliziainfoway@gmail.com with: (1) identification of the copyrighted work; "
                              "(2) the URL of the allegedly infringing material; (3) your contact information; "
                              "(4) a statement that you have a good-faith belief the use is not authorized; and (5) a statement, under penalty of perjury, "
                              "that the information in your notice is accurate and that you are the copyright owner or authorized to act on the owner’s behalf.",
                        ),

                        // 9
                        TermSection(
                          title: "9. No Warranties",
                          content:
                              "The Site and all games are provided on an “as is” and “as available” basis without warranties of any kind, express or implied. "
                              "We do not warrant that the Site will be uninterrupted, secure, or free of errors or harmful components, "
                              "or that it will be compatible with your device or network. You use the Site at your own discretion and risk.",
                        ),

                        // 10
                        TermSection(
                          title: "10. Limitation of Liability",
                          content:
                              "To the maximum extent permitted by law, we shall not be liable for any indirect, incidental, special, consequential, exemplary, or punitive damages, "
                              "or any loss of profits or data, arising from or related to your use of the Site or third-party content, even if we have been advised of the possibility of such damages.",
                        ),

                        // 12
                        TermSection(
                          title: "11. Availability, Updates, and Changes",
                          content:
                              "We may change, suspend, or discontinue any part of the Site at any time. "
                              "We may update these Terms from time to time. The effective date appears at the bottom of this page. "
                              "Your continued use of the Site after changes take effect constitutes acceptance of the updated Terms.",
                        ),

                        // 13
                        TermSection(
                          title: "12. Termination",
                          content:
                              "We may suspend or terminate your access to the Site at any time and without notice if we believe you have violated these Terms or applicable law.",
                        ),

                        // 14
                        TermSection(
                          title: "13. Governing Law & Dispute Resolution",
                          content:
                              "These Terms are governed by the laws of India, without regard to conflict-of-law principles. "
                              "Courts located in Gujarat, India shall have exclusive jurisdiction over any dispute arising from or relating to these Terms or the Site. "
                              "If any provision is found unenforceable, the remaining provisions will remain in full force and effect.",
                        ),

                        // 15
                        TermSection(
                          title: "14. Entire Agreement & Severability",
                          content:
                              "These Terms constitute the entire agreement between you and us regarding the Site and supersede any prior understandings. "
                              "If any provision is held invalid, that provision will be enforced to the maximum extent permissible and the remaining provisions will remain in effect.",
                        ),

                        // 16
                        TermSection(
                          title: "15. Contact Us",
                          content:
                              "If you have questions about these Terms, advertising on the Site, or intellectual property, please contact us at inteliziainfoway@gmail.com. "
                              "For details on cookies and any operational analytics, please review our Privacy Policy at $kSite/privacy.",
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

class TermSection extends StatelessWidget {
  final String title;
  final String content;

  const TermSection({
    super.key,
    required this.title,
    required this.content,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 20),
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
            style: const TextStyle(fontSize: 16, color: Colors.white, height: 1.5),
          ),
        ],
      ),
    );
  }
}
