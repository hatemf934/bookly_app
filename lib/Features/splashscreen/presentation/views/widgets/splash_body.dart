// import 'package:bookly_app/core/utils/assets_manager.dart';
// import 'package:flutter/material.dart';

// class SplashViewBody extends StatefulWidget {
//   const SplashViewBody({super.key});

//   @override
//   State<SplashViewBody> createState() => _SplashViewBodyState();
// }

// class _SplashViewBodyState extends State<SplashViewBody>
//     with SingleTickerProviderStateMixin {
//   late Animation<Offset> slidingAnimation;
//   late AnimationController animationController;
//   @override
//   void initState() {
//     animationController =
//         AnimationController(vsync: this, duration: const Duration(seconds: 2));
//     slidingAnimation =
//         Tween<Offset>(begin: const Offset(0, 2), end: const Offset(0, 0))
//             .animate(animationController);
//     // animationController.repeat();   repeat
//     animationController.forward();
//     super.initState();
//   }

//   // @override
//   // void dispose() {
//   //   animationController.dispose();
//   //   super.dispose();
//   // }

//   @override
//   Widget build(BuildContext context) {
//     return Center(
//         child: AnimatedBuilder(
//       animation: slidingAnimation,
//       builder: (context, _) {
//         return SlideTransition(
//             position: slidingAnimation, child: Image.asset(AssetManager.klogo));
//       },
//     ));
//   }
// }
