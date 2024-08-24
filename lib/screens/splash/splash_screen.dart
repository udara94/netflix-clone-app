import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:netflix_clone/common/constants/duration.dart';
import 'package:netflix_clone/gen/assets.gen.dart';
import 'package:netflix_clone/routes/route_paths.dart';

class SplashScreen extends ConsumerStatefulWidget {
  const SplashScreen({super.key});

  @override
  ConsumerState<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends ConsumerState<SplashScreen> {

  @override
  void initState() {
    super.initState();
    SchedulerBinding.instance.addPostFrameCallback((_){
      Timer(DurationManager.duration3s, (){
        _navigateToHome();
      });
    });
  }

  @override
  Widget build(BuildContext context) {

    return   Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image(image: AssetImage(Assets.gifs.netflix.path), fit: BoxFit.fill,),
          ],
        ),
      ),
    );
  }

  void _navigateToHome(){
   context.replace(RoutePaths.homeScreen);
  }
}
