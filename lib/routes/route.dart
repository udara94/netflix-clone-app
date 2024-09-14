import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:netflix_clone/common/constants/duration.dart';
import 'package:netflix_clone/routes/route_paths.dart';
import 'package:netflix_clone/screens/home/home_screen.dart';
import 'package:netflix_clone/screens/landing/landing_screen.dart';
import 'package:netflix_clone/screens/login/sign_in_screen.dart';
import 'package:netflix_clone/screens/signup/sign_up_screen.dart';
import 'package:netflix_clone/screens/splash/splash_screen.dart';
import 'package:page_transition/page_transition.dart';

Widget Function(
    BuildContext _,
    Animation<double> animation,
    Animation<double> secondaryAnimation,
    Widget child) defaultBuilder(BuildContext context) {
  Widget buildFunc(BuildContext _, Animation<double> animation,
      Animation<double> secondaryAnimation, Widget child) {
    return PageTransition<Widget>(
      child: child,
      type: PageTransitionType.rightToLeft,
      alignment: Alignment.center,
      duration: DurationManager.duration300ms,
      curve: Curves.easeOut,
    ).buildTransitions(
      context,
      animation,
      secondaryAnimation,
      child,
    );
  }

  return buildFunc;
}

final navigatorKey = GlobalKey<NavigatorState>();
final globalContext = navigatorKey.currentState!.context;

class RouteManager {
  static GoRouter routes =
      GoRouter(navigatorKey: navigatorKey, routes: <RouteBase>[
    GoRoute(
        path: RoutePaths.defaultScreen,
        builder: (BuildContext context, GoRouterState state) {
          return const SplashScreen();
        }),
    GoRoute(
        path: RoutePaths.landingScreen,
      builder: (BuildContext context, GoRouterState state){
          return const LandingScreen();
      }

    ),
    GoRoute(
        path: RoutePaths.loginScreen,
        builder: (BuildContext context, GoRouterState state) {
          return const LoginScreen();
        }),
    GoRoute(
        path: RoutePaths.signUpScreen,
      builder: (BuildContext context, GoRouterState state){
          return const SignUpScreen();
      }
    ),
    GoRoute(
        path: RoutePaths.homeScreen,
        builder: (BuildContext context, GoRouterState state) {
          return const MyHomePage(title: "Home");
        })
  ]);
}
