import 'package:go_router/go_router.dart';
import 'package:spotify/core/routing/app_routes.dart';
import 'package:spotify/presetation/choose_mode/pages/choose_mode.dart';
import 'package:spotify/presetation/intro/pages/intro_page.dart';
import 'package:spotify/presetation/splash/pages/splash_page.dart';

class RouterGeneration {
  static GoRouter goRouter = GoRouter(
    initialLocation: AppRoutes.splash,
    routes: [
      GoRoute(
        path: AppRoutes.splash,
        name: AppRoutes.splash,
        builder: (context, state) => const SplashPage(),
      ),
      GoRoute(
        path: AppRoutes.intro,
        name: AppRoutes.intro,
        builder: (context, state) => const IntroPage(),
      ),
      GoRoute(
        path: AppRoutes.chooseMode,
        name: AppRoutes.chooseMode,
        builder: (context, state) => const ChooseMode(),
      ),

    ],
  );
}
