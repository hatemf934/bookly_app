import 'package:bookly_app/core/utils/assets_manager.dart';
import 'package:flutter/material.dart';

class SplashViewBody extends StatelessWidget {
  const SplashViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Image.asset(AssetManager.klogo),
    );
  }
}
