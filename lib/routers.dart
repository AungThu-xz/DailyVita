import 'package:dailyvita_state_flut/ui/screen_four/screen_four.dart';
import 'package:dailyvita_state_flut/ui/screen_one/screen_one.dart';
import 'package:dailyvita_state_flut/ui/screen_three/screen_three.dart';
import 'package:dailyvita_state_flut/ui/screen_two/screen_two.dart';
import 'package:dailyvita_state_flut/ui/splash/splash_screen.dart';
import 'package:dailyvita_state_flut/ui/welcome/welcome.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ScreenPaths {
  static String splash = "/";
  static String welcome = "/welcome";

  static String screenOne = "/screen_one";
  static String screenTwo = "/screen_two";
  static String screenThree = "/screen_three";
  static String screenFour = "/screen_four";
}

final appRouter = GoRouter(
  routes: [
    AppRoute(ScreenPaths.splash, (s) => const SplashScreen(), useFade: true),
    AppRoute(ScreenPaths.welcome, (s) => const WelcomeScreen(), useFade: true),
    AppRoute(ScreenPaths.screenOne, (s) => const ScreenOne(), useFade: true),
    AppRoute(ScreenPaths.screenTwo, (s) => const ScreenTwo(), useFade: true),
    AppRoute(ScreenPaths.screenThree, (s) => const ScreenThree(),
        useFade: true),
    AppRoute(ScreenPaths.screenFour, (s) => const ScreenFour(), useFade: true),
  ],
);

class AppRoute extends GoRoute {
  AppRoute(String path, Widget Function(GoRouterState s) builder,
      {List<GoRoute> routes = const [], this.useFade = false})
      : super(
          path: path,
          routes: routes,
          pageBuilder: (context, state) {
            final pageContent = Scaffold(
              body: builder(state),
              resizeToAvoidBottomInset: false,
            );
            if (useFade) {
              return CustomTransitionPage(
                key: state.pageKey,
                child: pageContent,
                transitionsBuilder:
                    (context, animation, secondaryAnimation, child) {
                  return FadeTransition(opacity: animation, child: child);
                },
              );
            }
            return CupertinoPage(child: pageContent);
          },
        );
  final bool useFade;
}
