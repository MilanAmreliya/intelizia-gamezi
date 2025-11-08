import 'package:flutter/material.dart';
import 'package:firebase_analytics/firebase_analytics.dart';

class AnalyticsRouteObserver extends NavigatorObserver {
  final FirebaseAnalytics analytics;

  AnalyticsRouteObserver(this.analytics);

  String? _name(Route<dynamic>? route) {
    final s = route?.settings.name ?? route?.settings.arguments?.toString();
    return (s == null || s.isEmpty) ? route?.settings.toString() : s;
  }

  Future<void> _send(Route<dynamic>? route) async {
    final screenName = _name(route) ?? 'unknown';
    await analytics.logScreenView(screenName: screenName);
    await analytics.logEvent(name: 'page_view', parameters: {
      'page_location': screenName,
    });
  }

  @override
  void didPush(Route route, Route? previousRoute) {
    _send(route);
    super.didPush(route, previousRoute);
  }

  @override
  void didReplace({Route? newRoute, Route? oldRoute}) {
    _send(newRoute);
    super.didReplace(newRoute: newRoute, oldRoute: oldRoute);
  }

  @override
  void didPop(Route route, Route? previousRoute) {
    _send(previousRoute);
    super.didPop(route, previousRoute);
  }
}
