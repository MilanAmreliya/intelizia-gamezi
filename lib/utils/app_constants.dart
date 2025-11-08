import 'package:gamezi/utils/app_strings.dart';

import '../data/models/custom_service.dart';
import '../data/models/project.dart';
import 'images.dart';

abstract class AppConstants {
  static const double appBarHeight = 80;
  static const List<CustomService> services = [
    CustomService(
      service: 'MOBILE GAMING EXPERIENCE',
      image: MyImages.card1,
      logo: MyImages.mobileLogo,
      subTitle: "Play Anytime, Anywhere",
      description: AppStrings.mobileGamingExperience,
    ),
    CustomService(
      service: 'GAME INTERFACE DESIGN',
      logo: MyImages.uiUxLogo,
      image: MyImages.card2,
      subTitle: "Where Style Meets Play",
      description: AppStrings.gameInterfaceDesignCard,
    ),
    CustomService(
      service: 'WEB GAMING HUBS',
      logo: MyImages.card3,
      image: MyImages.card3,
      subTitle: "Seamless Play Across the Web",
      description: AppStrings.webGamingHubs,
    ),
  ];
  static const List<Project> projects = [
    Project(
      name: 'Mifu',
      imageUrl: 'assets/appImage/mifu_app.png',
      description: 'Influencer Partnerships',
      playStoreLink: 'https://play.google.com/store/apps/details?id=uk.mifu.mifuapp&hl=en_IN&gl=US',
      appStore: 'https://apps.apple.com/ae/app/mifu-influencer-partnerships/id6470507285',
    ),
    Project(
      name: 'Marlo Neo Bank',
      imageUrl: 'assets/appImage/marlo_app.png',
      description: "Fintech App",
      playStoreLink: 'https://play.google.com/store/apps/details?id=com.neobank.marlo ',
      appStore: 'https://apps.apple.com/ng/app/marlo-business/id1669438899',
    ),
    Project(
      name: 'Havitglam',
      imageUrl: 'assets/appImage/havitglam_app.png',
      description: 'Create your own Health Habit & Selfcare Routine with Havitglam!',
      appStore: 'https://play.google.com/store/apps/details?id=com.onezlabs.havitglam',
      playStoreLink: 'https://play.google.com/store/apps/details?id=com.onezlabs.havitglam',
    ),
    Project(
      name: 'Foresite- agriculture ecosystem',
      imageUrl: 'assets/appImage/forsite_app.png',
      description:
          'Simplifying on-farm decision-making for growers with intuitive yet advanced technology tools, amidst concurrent farm events.',
      googlePlay: 'https://play.google.com/store/apps/details?id=com.ukkoag.enterprise',
      appStore: 'https://play.google.com/store/apps/details?id=com.ukkoag.enterprise',
    ),
    Project(
      name: 'Tarot Cat',
      imageUrl: 'assets/appImage/tarot_cat.png',
      description:
          '✨Are you struggling to make a complicated decision? Don’t know what to do in daily situations? Do you want to know what the futureholds for you?',
      appStore:
          'https://play.google.com/store/apps/details?id=com.onezlabs.tarot_cat&hl=en_US&gl=GB',
      googlePlay:
          'https://play.google.com/store/apps/details?id=com.onezlabs.tarot_cat&hl=en_US&gl=GB',
    ),
    Project(
      name: 'SaucedIt',
      imageUrl: 'assets/appImage/saucedit_app.png',
      description: 'Human Resource Management App',
      playStoreLink: 'https://play.google.com/store/apps/details?id=com.saucedit.app ',
      appStore: 'https://apps.apple.com/np/app/saucedit-get-sorted/id1629828561',
    ),
    Project(
      name: 'Method Agent Platform',
      imageUrl: 'assets/appImage/method.png',
      description: 'Search Property, Create Contracts, Track Documents, Payments.',
      playStoreLink:
          'https://play.google.com/store/apps/details?id=com.method.agentapp&hl=en&gl=US',
      appStore: 'https://apps.apple.com/us/app/method-agent-platform/id1605826416',
    ),
    Project(
      name: 'Dismantly',
      imageUrl: 'assets/appImage/dismantly_app.png',
      description:
          'The premier mobile extension of cutting-edge inventory and sales management software for auto dismantlers!',
      playStoreLink:
          'https://play.google.com/store/apps/details?id=com.dismantly.dismantlyApp&hl=en&gl=US',
      appStore: 'https://apps.apple.com/us/app/dismantly/id6464375118?platform=iphone',
    ),
    Project(
      name: 'Synergy',
      imageUrl: 'assets/appImage/synergy_app.png',
      description:
          'The premier mobile extension of cutting-edge inventory and sales management software for auto dismantlers!',
      playStoreLink: 'https://play.google.com/store/apps/details?id=com.appsynergy.android',
      appStore: 'https://play.google.com/store/apps/details?id=com.appsynergy.android',
    ),
  ];
}
