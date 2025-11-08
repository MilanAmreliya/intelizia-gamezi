import 'package:dynamic_path_url_strategy/dynamic_path_url_strategy.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gamezi/firebase_options.dart';
import 'package:motion/motion.dart';
import 'bloc_observer.dart';
import 'portfolio_app.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  setPathUrlStrategy();
  Bloc.observer = MyBlocObserver();
  await Motion.instance.initialize();
  Motion.instance.setUpdateInterval(60.fps);
  runApp(const PortfolioApp());
}
