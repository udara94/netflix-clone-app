import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:netflix_clone/routes/route_paths.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Splash Screen',
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(onPressed: _navigateToHome,
      child: const Icon(Icons.home),),
    );
  }

  void _navigateToHome(){
    context.push(RoutePaths.homeScreen);
  }
}
