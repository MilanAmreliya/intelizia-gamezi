import 'package:flutter/material.dart';
import 'package:gamezi/config/seo.dart';

import '../home_body.dart';

class DmcaScreen extends StatefulWidget {
  const DmcaScreen({super.key});

  @override
  State<DmcaScreen> createState() => _DmcaScreenState();
}

class _DmcaScreenState extends State<DmcaScreen> {
  @override
  void initState() {
    Seo.set(
      title: 'DMCA Policy — $kBrand',
      description: 'Copyright complaints and removal requests. If you believe a game or '
          'asset infringes your rights, follow our DMCA process.',
      canonicalUrl: '$kSite/dmca',
      og: {
        'og:title': 'DMCA Policy — $kBrand',
        'og:type': 'website',
        'og:url': '$kSite/dmca',
        'og:image': kOgImage,
        'twitter:card': 'summary_large_image',
      },
      jsonLd: '''
{
  "@context": "https://schema.org",
  "@type": "WebPage",
  "name": "DMCA Policy",
  "url": "$kSite/dmca",
  "dateModified": "$kLastUpdated",
  "isPartOf": { "@type": "WebSite", "name": "$kBrand", "url": "$kSite" },
  "about": "DMCA takedown policy for embedded third-party games.",
  "description": "How to submit copyright removal requests for Intelizia GameZi."
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
      //     'DMCA Policy',
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
                          "DMCA Policy",
                          style: TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                        SizedBox(height: 20),
                        DmcaSection(
                          title: "1) Overview",
                          content:
                              "intelizia.com curates and embeds free-to-play (HTML5/web) games for users to play in their browsers. We respect the intellectual property rights of creators and rights holders and comply with the Digital Millennium Copyright Act (DMCA), 17 U.S.C. §512. This policy explains how to send a valid DMCA Notice, how to submit a counter-notification, and how we respond.",
                        ),
                        DmcaSection(
                          title: "2) Hosting & Embeds (Important)",
                          content:
                              "Most gameplay on intelizia.com is provided via embeds (iframes, scripts) from third-party sources such as original developers, publishers, or authorized CDNs. We do not typically host or upload the game files ourselves. If your copyrighted work appears on intelizia.com via an embed and you believe it is unauthorized, please send us a DMCA Notice identifying the exact intelizia.com URL(s). We will disable access (e.g., remove the embed/link or block the source) upon receipt of a valid Notice.",
                        ),
                        DmcaSection(
                          title: "3) Designated DMCA Agent",
                          content: "Email (preferred): inteliziainfoway@gmail.com\n\n"
                              "Subject line suggestion: “DMCA Notice – intelizia.com”\n\n"
                              "For the fastest response, email is preferred. If you require an alternate method, state your request in your email. Please do not send general support messages to this address.",
                        ),
                        DmcaSection(
                          title: "4) How to Send a DMCA Notice (Required Elements)",
                          content:
                              "To be effective under 17 U.S.C. §512(c)(3), your Notice must include:\n\n"
                              "• Your contact details: full name, company (if applicable), mailing address, telephone number, and email address.\n"
                              "• Identification of the copyrighted work you claim is infringed (or a representative list for multiple works).\n"
                              "• The exact intelizia.com URL(s) of the allegedly infringing material so we can locate it precisely.\n"
                              "• A statement that you have a good-faith belief the use is not authorized by the copyright owner, its agent, or the law.\n"
                              "• A statement that the information in the Notice is accurate, and under penalty of perjury, that you are the owner or authorized to act on behalf of the owner.\n"
                              "• Your physical or electronic signature (typing your full legal name is acceptable for email).\n\n"
                              "Incomplete Notices may be rejected or delayed until all required elements are provided.",
                        ),
                        DmcaSection(
                          title: "5) Optional Notice Template (Copy/Paste)",
                          content: "Subject: DMCA Notice – intelizia.com\n\n"
                              "I am the owner/authorized agent of the copyrighted work described below.\n\n"
                              "• Copyrighted work: [Describe or link to an authorized source]\n"
                              "• Infringing URL(s) on intelizia.com: [Paste full intelizia.com links]\n"
                              "• My contact info: [Name, Company, Address, Phone, Email]\n\n"
                              "Good-faith statement: I have a good-faith belief that the disputed use is not authorized by the copyright owner, its agent, or the law.\n"
                              "Accuracy and authority: The information in this Notice is accurate and, under penalty of perjury, I am the copyright owner or authorized to act on the owner’s behalf.\n\n"
                              "Signature: [Typed full name]\n"
                              "Date: [YYYY-MM-DD]",
                        ),
                        DmcaSection(
                          title: "6) Our Response to a Valid Notice",
                          content: "Upon receiving a valid Notice, we will:\n\n"
                              "• Promptly remove or disable access to the identified material (e.g., remove/disable the embed, link, or block the source).\n"
                              "• Keep a record of the request and the action taken.\n"
                              "• Where feasible, notify the party we believe supplied or linked the material.\n"
                              "• If we later receive a valid counter-notification, we may restore the material in accordance with the DMCA unless the rights holder informs us that a court action has been filed.",
                        ),
                        DmcaSection(
                          title: "7) Counter-Notification (If You Believe a Mistake Was Made)",
                          content:
                              "If your content was removed due to a DMCA Notice and you believe this was an error or misidentification, you may send a valid counter-notification including:\n\n"
                              "• Your full name, address, phone number, and email address.\n"
                              "• Identification of the material and the location before it was removed (the exact intelizia.com URL).\n"
                              "• A statement under penalty of perjury that you have a good-faith belief the material was removed or disabled as a result of mistake or misidentification.\n"
                              "• A statement that you consent to the jurisdiction of the Federal District Court for your judicial district (or, if outside the U.S., for any judicial district in which we may be found) and that you will accept service of process from the person who provided the original Notice or their agent.\n"
                              "• Your physical or electronic signature.\n\n"
                              "Send counter-notifications to: inteliziainfoway@gmail.com\n\n"
                              "After we receive a valid counter-notification, we will forward it to the original claimant and may restore the material in 10–14 business days unless we are informed that the claimant has filed a court action seeking to restrain the alleged infringement.",
                        ),
                        DmcaSection(
                          title: "8) Repeat-Infringer Policy",
                          content:
                              "In accordance with §512(i), we may restrict or terminate access to sources or accounts that are the subject of multiple valid DMCA Notices. We may also block or de-list third-party hosts that repeatedly supply unauthorized content.",
                        ),
                        DmcaSection(
                          title: "9) Misrepresentation Warning",
                          content:
                              "Under 17 U.S.C. §512(f), any person who knowingly misrepresents that material or activity is infringing (or was removed by mistake) may be liable for damages, including costs and attorneys’ fees. Please ensure your Notice or counter-notification is accurate.",
                        ),
                        DmcaSection(
                          title: "10) Trademarks & Third-Party Content",
                          content:
                              "All trademarks, logos, and brand names appearing in game titles, screenshots, or descriptions belong to their respective owners. intelizia.com may link to or embed third-party content and advertisements; we are not responsible for such third-party content. DMCA Notices must identify specific content located on intelizia.com.",
                        ),
                        DmcaSection(
                          title: "11) No Legal Advice",
                          content:
                              "This page is provided for information only and does not constitute legal advice. You should consult an attorney if you have questions about your rights or obligations under the DMCA or other laws.",
                        ),
                        DmcaSection(
                          title: "12) Changes to This Policy",
                          content:
                              "We may update this DMCA Policy from time to time. Your continued use of intelizia.com after any changes means you accept the updated version.",
                        ),
                        DmcaSection(
                          title: "13) Contact",
                          content:
                              "For DMCA Notices and counter-notifications only: inteliziainfoway@gmail.com\n\n"
                              "For general inquiries about intelizia.com, please use our regular support/contact channel shown on the site. Using the correct channel helps us respond more quickly.",
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

class DmcaSection extends StatelessWidget {
  final String title;
  final String content;

  const DmcaSection({
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
