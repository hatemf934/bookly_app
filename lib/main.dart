import 'package:bookly_app/Features/home/presentation/views/home_view.dart';
import 'package:bookly_app/Features/splashscreen/presentation/views/splash_view.dart';
import 'package:bookly_app/constant.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(const BooklyApp());
}

class BooklyApp extends StatelessWidget {
  const BooklyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(scaffoldBackgroundColor: kPrimaryColor),
      initialRoute: SplashView.id,
      getPages: [
        GetPage(name: SplashView.id, page: () => const SplashView()),
        GetPage(
          name: HomeView.id,
          page: () => const HomeView(),
          transition: Transition.downToUp,
          transitionDuration: const Duration(milliseconds: 500),
        ),
      ],
    );
  }
}
