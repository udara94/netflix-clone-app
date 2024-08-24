import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:netflix_clone/common/theme/theme.dart';
import 'package:netflix_clone/routes/route.dart';
import 'package:netflix_clone/screens/home/home_screen.dart';

void main() {
  runApp(const ProviderScope(child: NetflixClone()));
}

class NetflixClone extends StatelessWidget {
  const NetflixClone({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      theme: ThemeManager.appTheme,
      routerConfig: RouteManager.routes,
    );
  }
}