import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:flutter/material.dart';
import 'package:gamezi/data/models/game_data_model.dart';
import 'package:gamezi/view/blocs/home_bloc/home_bloc.dart';
import 'package:gamezi/view/home/home_view.dart';
import 'package:gamezi/view/screens/body/company/about_us_screen.dart';
import 'package:gamezi/view/screens/body/company/dmca_screen.dart';
import 'package:gamezi/view/screens/body/company/policy_screen.dart';
import 'package:gamezi/view/screens/body/company/terms_screen.dart';
import 'package:gamezi/view/screens/body/explore_game_screen/view/explore_game_screen.dart';
import 'package:gamezi/view/screens/body/explore_game_screen/view/game_framw_web.dart';
import 'package:gamezi/view/screens/game_details/game_details_screen.dart';
import 'package:go_router/go_router.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../data/game_data.dart';
import 'analytical_route_observer.dart';

class AppRoutePath {
  static const String home = '/';
  static const String legacyHome = '/home';
  static const String game = '/game';
  static const String webFrame = '/play';
  static const String terms = '/terms-of-service';
  static const String privacy = '/privacy-policy';
  static const String about = '/about-us';
  static const String exploreGames = '/explore';
  static const String dmca = '/digital-millennium-copyright-act';
}

class AppRouteName {
  static const String root = 'root';
  static const String legacyHome = 'legacyHome';
  static const String game = 'game';
  static const String webFrame = 'play';
  static const String terms = 'terms-of-service';
  static const String privacy = 'privacy-policy';
  static const String exploreGames = 'exploreGames';
  static const String dmca = 'digital-millennium-copyright-act';
  static const String about = 'about-us';
}

// CustomTransitionPage<T> NoTransitionPage<T>({required Widget child}) {
//   return CustomTransitionPage<T>(
//     transitionDuration: const Duration(milliseconds: 100),
//     reverseTransitionDuration: const Duration(milliseconds: 100),
//     child: child,
//     transitionsBuilder: (context, animation, secondary, child) {
//       final offsetTween = Tween<Offset>(begin: const Offset(1, 0), end: Offset.zero).chain(
//         CurveTween(curve: Curves.easeInOut),
//       );
//       return SlideTransition(position: animation.drive(offsetTween), child: child);
//     },
//   );
// }

class _NotFound extends StatelessWidget {
  const _NotFound();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('Not Found', style: Theme.of(context).textTheme.titleLarge),
      ),
    );
  }
}

final analytics = FirebaseAnalytics.instance;

final GoRouter router = GoRouter(
  initialLocation: AppRoutePath.exploreGames,
  debugLogDiagnostics: true,
  observers: [AnalyticsRouteObserver(analytics)],
  errorBuilder: (context, state) => const _NotFound(),
  routes: [
    GoRoute(
      name: AppRouteName.root,
      path: AppRoutePath.home,
      pageBuilder: (context, state) {
        return NoTransitionPage(child: const ExploreGameScreen());

        // return NoTransitionPage(
        //   child: BlocProvider<HomeBloc>(
        //     create: (_) => HomeBloc(),
        //     child: const HomeView(),
        //   ),
        // );
      },
    ),
    GoRoute(
      name: AppRouteName.legacyHome,
      path: AppRoutePath.legacyHome,
      redirect: (_, __) => AppRoutePath.home,
    ),
    // /game/:title
    GoRoute(
      path: '${AppRoutePath.game}/:title',
      name: AppRouteName.game,
      pageBuilder: (context, state) {
        final slug = state.pathParameters['title'] ?? '';
        final games = gameData.map((j) => Game.fromJson(j)).toList();

        Game? bySlug;
        for (final g in games) {
          if (g.slug == slug) {
            bySlug = g;
            break;
          }
        }

        if (bySlug == null) {
          return NoTransitionPage(child: const _NotFound());
        }
        return NoTransitionPage(child: GameDetailScreen(game: bySlug, title: slug));
      },
    ),

    GoRoute(
      path: '${AppRoutePath.webFrame}/:title',
      name: AppRouteName.webFrame,
      pageBuilder: (context, state) {
        final slug = state.pathParameters['title'] ?? '';

        String? url = (state.extra is String && (state.extra as String).isNotEmpty)
            ? state.extra as String
            : null;

        url ??= state.uri.queryParameters['url'] ?? state.uri.queryParameters['u'];
        if (url != null && url.isNotEmpty) {
          url = Uri.decodeComponent(url);
        }

        if (url == null || url.isEmpty) {
          final games = gameData.map((j) => Game.fromJson(j)).toList();
          Game? bySlug;
          for (final g in games) {
            if (g.slug == slug) {
              bySlug = g;
              break;
            }
          }
          url = bySlug?.gameUrl;
        }

        if (url == null || url.isEmpty) return NoTransitionPage(child: const _NotFound());
        return NoTransitionPage(child: GameIframe(url: url, slug: slug));
      },
    ),

    // /terms  (100ms Cupertino-like transition)
    GoRoute(
      path: AppRoutePath.terms,
      name: AppRouteName.terms,
      pageBuilder: (context, state) => NoTransitionPage(child: const TermsScreen()),
    ),

    // /privacy  (100ms Cupertino-like transition)
    GoRoute(
      path: AppRoutePath.privacy,
      name: AppRouteName.privacy,
      pageBuilder: (context, state) => NoTransitionPage(child: const PolicyScreen()),
    ),

    // /explore  (100ms Cupertino-like transition)
    GoRoute(
      path: AppRoutePath.exploreGames,
      name: AppRouteName.exploreGames,
      pageBuilder: (context, state) => NoTransitionPage(child: const ExploreGameScreen()),
    ),

    // /dmca  (100ms Cupertino-like transition)
    GoRoute(
      path: AppRoutePath.dmca,
      name: AppRouteName.dmca,
      pageBuilder: (context, state) => NoTransitionPage(child: const DmcaScreen()),
    ),

    GoRoute(
      path: AppRoutePath.about,
      name: AppRouteName.about,
      pageBuilder: (context, state) => NoTransitionPage(child: const AboutScreen()),
    ),
  ],
);
