import 'package:flutter/material.dart';
import 'package:gamezi/route/router.dart';
import 'config/theme_manager.dart';

class PortfolioApp extends StatelessWidget {
  const PortfolioApp({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      theme: CustomTheme.darkTheme(),
      color: Colors.black,
      routerConfig: router,
      title: 'Intelizia GameZi',
    );
  }
}
