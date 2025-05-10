import 'package:bookly_app/Features/home/presentation/views/home_view.dart';
import 'package:bookly_app/Features/splashscreen/presentation/views/splash_view.dart';
import 'package:go_router/go_router.dart';

abstract class GoRouterClass {
  static String khomeview = "/homeview";
  static String ksplashview = "/";
  static GoRouter router = GoRouter(
    routes: [
      GoRoute(
        path: ksplashview,
        builder: (context, state) => const SplashView(),
      ),
      GoRoute(
        path: khomeview,
        builder: (context, state) => const HomeView(),
      ),
    ],
  );
}
