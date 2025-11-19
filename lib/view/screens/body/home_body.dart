import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gamezi/config/seo.dart';
import 'package:gamezi/services/ad_services/ad_sense_auto_banner.dart';
import 'package:gamezi/utils/app_enums.dart';
import 'package:gamezi/view/screens/body/about_our_work/about_our_work_widget.dart';
import 'package:gamezi/view/widgets/side_ad_banner.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../utils/app_extensions.dart';
import '../../blocs/home_bloc/home_bloc.dart';
import '../app_bar/vertical_headers_builder.dart';
import 'about_me/about_me_section.dart';
import 'about_work/about_work_section.dart';
import 'comparison/redy_vs_others_section.dart';
import 'contact/contact_section.dart';
import 'faster_then_all/faster_section.dart';
import 'faster_then_all/last_section.dart';
import 'intro/intro_section.dart';
import 'projects/projects_section.dart';

const kSite = 'https://intelizia.com';
const kBrand = 'Intelizia GameZi';
const kOgImage = 'https://intelizia.com/og.png';
const kLastUpdated = '2025-10-10';

class HomeBody extends StatefulWidget {
  const HomeBody({super.key});

  @override
  State<HomeBody> createState() => _HomeBodyState();
}

class _HomeBodyState extends State<HomeBody> {
  final ScrollController _controller = ScrollController();
  final introKey = GlobalKey();
  final aboutKey = GlobalKey();
  final projectKey = GlobalKey();
  final contactKey = GlobalKey();
  final comparisonWithOthersKey = GlobalKey();
  final fasterKey = GlobalKey();

  @override
  void initState() {
    super.initState();
    Seo.set(
      title: 'Play Free Browser Games — $kBrand',
      description: 'Play fast, free web games with clean controls and no sign-ups. '
          'Arcade runs, racers, puzzles, and more—curated for quick fun.',
      canonicalUrl: '$kSite/',
      og: {
        'og:title': 'Play Free Browser Games — $kBrand',
        'og:type': 'website',
        'og:url': '$kSite/',
        'og:image': kOgImage,
        'twitter:card': 'summary_large_image',
      },
      jsonLd: '''
{
  "@context": "https://schema.org",
  "@type": "WebSite",
  "name": "$kBrand",
  "url": "$kSite",
  "potentialAction": {
    "@type": "SearchAction",
    "target": "$kSite/search?q={query}",
    "query-input": "required name=query"
  }
}
''',
    );
    // Get.find<GameController>().g
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _initListenerForInteractWithHeaderIndex();
    });
  }

  void _initListenerForInteractWithHeaderIndex() {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (introKey.currentContext != null &&
          aboutKey.currentContext != null &&
          projectKey.currentContext != null &&
          contactKey.currentContext != null &&
          comparisonWithOthersKey.currentContext != null &&
          fasterKey.currentContext != null) {
        double introHeight = introKey.currentContext!.size!.height;
        double aboutHeight = aboutKey.currentContext!.size!.height;
        double projectHeight = projectKey.currentContext!.size!.height;
        double contactHeight = contactKey.currentContext!.size!.height;
        double comparisonHeight = comparisonWithOthersKey.currentContext!.size!.height;
        double fasterHeight = fasterKey.currentContext!.size!.height;

        _controller.addListener(() {
          double controllerHeight = _controller.offset;
          if (_controller.position.extentAfter == 0.0) {
            // context.read<HomeBloc>().add(ChangeAppBarHeadersColorByColor(5));
          } else if (controllerHeight < introHeight) {
            // context.read<HomeBloc>().add(ChangeAppBarHeadersColorByColor(0));
          } else if (controllerHeight < (introHeight + aboutHeight)) {
            // context.read<HomeBloc>().add(ChangeAppBarHeadersColorByColor(1));
            // context.read<HomeBloc>().add(ChangeAppBarHeadersColorByColor(0));
          } else if (controllerHeight < (introHeight + aboutHeight + projectHeight)) {
            // context.read<HomeBloc>().add(ChangeAppBarHeadersColorByColor(2));
            // context.read<HomeBloc>().add(ChangeAppBarHeadersColorByColor(1));
            // context.read<HomeBloc>().add(ChangeAppBarHeadersColorByColor(0));
          } else if (controllerHeight <
              (introHeight + aboutHeight + projectHeight + contactHeight)) {
            // context.read<HomeBloc>().add(ChangeAppBarHeadersColorByColor(3));
            // context.read<HomeBloc>().add(ChangeAppBarHeadersColorByColor(2));
            context.read<HomeBloc>().add(ChangeAppBarHeadersColorByColor(1));
          } else if (controllerHeight <
              (introHeight + aboutHeight + projectHeight + contactHeight + comparisonHeight)) {
            // context.read<HomeBloc>().add(ChangeAppBarHeadersColorByColor(4));
          } else if (controllerHeight <
              (introHeight +
                  aboutHeight +
                  projectHeight +
                  contactHeight +
                  comparisonHeight +
                  fasterHeight)) {
            // context.read<HomeBloc>().add(ChangeAppBarHeadersColorByColor(5));
          }
        });
      } else {
        // If not all keys are available, you might want to attempt setup again or handle this case appropriately.
        debugPrint("Not all keys are ready for layout measurements.");
      }
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  Future<void> launchEmail({
    required String toEmail,
    String subject = '',
    String body = '',
  }) async {
    final Uri emailLaunchUri = Uri(
      scheme: 'mailto',
      path: toEmail,
      query: encodeQueryParameters(<String, String>{
        'subject': subject,
        'body': body,
      }),
    );

    if (await canLaunchUrl(emailLaunchUri)) {
      await launchUrl(emailLaunchUri);
    } else {
      throw 'Could not launch $emailLaunchUri';
    }
  }

  String? encodeQueryParameters(Map<String, String> params) {
    return params.entries
        .map((e) => '${Uri.encodeComponent(e.key)}=${Uri.encodeComponent(e.value)}')
        .join('&');
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<HomeBloc, HomeState>(
      listener: (context, state) {
        if (state is AppBarHeadersIndexChanged) {
          Navigator.of(context).maybePop();
          const duration = Duration(milliseconds: 300);
          if (state.index == 0) {
            // Scrollable.ensureVisible(
            //   introKey.currentContext!,
            //   duration: duration,
            // );
            // Scrollable.ensureVisible(
            //   projectKey.currentContext!,
            //   duration: duration,
            // );
          }
          if (state.index == 1) {
            // Scrollable.ensureVisible(
            //   aboutKey.currentContext!,
            //   duration: duration,
            // );
            // Scrollable.ensureVisible(
            //   projectKey.currentContext!,
            //   duration: duration,
            // );
            Scrollable.ensureVisible(
              contactKey.currentContext!,
              duration: duration,
            );
          }
          if (state.index == 2) {
            // Scrollable.ensureVisible(
            //   projectKey.currentContext!,
            //   duration: duration,
            // );
            Scrollable.ensureVisible(
              contactKey.currentContext!,
              duration: duration,
            );
          }
          // if (state.index == 3) {
          //   Scrollable.ensureVisible(
          //     contactKey.currentContext!,
          //     duration: duration,
          //   );
          // }
          // if (state.index == 4) {
          //   Scrollable.ensureVisible(
          //     comparisonWithOthersKey.currentContext!,
          //     duration: duration,
          //   );
          // }
          // if (state.index == 5) {
          //   Scrollable.ensureVisible(
          //     fasterKey.currentContext!,
          //     duration: duration,
          //   );
          // }
        }
      },
      child: Container(
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
        child: Stack(
          children: [
            CustomScrollView(
              controller: _controller,
              slivers: [
                SliverToBoxAdapter(
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: _getHorizontalPadding(context)),
                    child: Column(
                      children: [
                        Builder(
                          builder: (_) {
                            if (context.width < DeviceType.ipad.getMaxWidth()) {
                              return ProjectsSection(key: projectKey);
                            } else {
                              return IntroSection(key: introKey);
                            }
                          },
                        ),
                        SizedBox(
                          width: 970,
                          child: FixedAdsenseBanner(
                            adSlot: AdsenseAdUnitId.displaySlot,
                            maxWidth: 970,
                            height: 250,
                            adFormat: "auto",
                          ),
                        ),
                        SizedBox(
                          height: 40,
                        ),
                        Align(alignment: Alignment.centerLeft, child: AboutOurWork()),
                        AboutMeSection(key: aboutKey),
                        if (!(context.width < DeviceType.ipad.getMaxWidth())) ...[
                          ProjectsSection(key: projectKey),
                          SizedBox(
                            width: 970,
                            child: FixedAdsenseBanner(
                              adSlot: AdsenseAdUnitId.displaySlot,
                              maxWidth: 970,
                              height: 250,
                              adFormat: "auto",
                            ),
                          ),
                          SizedBox(
                            height: 40,
                          ),
                        ],
                        ComparisonWithOthersSection(key: comparisonWithOthersKey),
                        const AboutWorkSection(),
                        FasterSection(key: fasterKey),
                        ContactSection(key: contactKey),
                        const LastSection(),
                      ],
                    ),
                  ),
                )
              ],
            ),
            const VerticalHeadersBuilder(),
            const SideAdBanner(
              alignment: Alignment.topRight,
              padding: EdgeInsets.only(top: 40, right: 20),
              testMode: true,
            ),
            const SideAdBanner(
              alignment: Alignment.topLeft,
              padding: EdgeInsets.only(top: 40, right: 20),
              testMode: true,
            ),
          ],
        ),
      ),
    );
  }

  double _getHorizontalPadding(BuildContext context) {
    if (context.width < DeviceType.smallScreenLaptop.getMaxWidth()) {
      return context.width * 0.05;
    } else if (context.width < DeviceType.largeScreenDesktop.getMaxWidth()) {
      return context.width * 0.08;
    } else if (context.width < DeviceType.extraLargeTV.getMinWidth()) {
      return context.width * 0.18;
    } else {
      return context.width * 0.2;
    }
  }
}
