import 'package:flutter/material.dart';
import 'package:gamezi/utils/colors.dart';
import 'package:particles_fly/particles_fly.dart';

import '../screens/app_bar/home_app_bar.dart';
import '../screens/body/home_body.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: HomeAppBar(),
      body: Stack(
        children: [
          ParticlesFly(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              connectDots: true,
              numberOfParticles: 40,
              hoverColor: Colors.blue,
              enableHover: true,
              particleColor: Colors.transparent,
              speedOfParticles: 0.8,
              lineColor: AppColors.primaryColor.withOpacity(0.5)),
          HomeBody(),
        ],
      ),
    );
  }
}
