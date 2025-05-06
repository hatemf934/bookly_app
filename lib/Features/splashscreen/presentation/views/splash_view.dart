import 'package:bookly_app/Features/splashscreen/presentation/views/widgets/splash_body.dart';
import 'package:bookly_app/core/utils/route_manager.dart';
import 'package:flutter/material.dart';

class SplashView extends StatelessWidget {
  const SplashView({super.key});
  static String id = RouteManager.ksplashview;

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SplashViewBody(),
    );
  }
}
