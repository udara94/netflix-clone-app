import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:netflix_clone/common/components/buttons/buttons.dart';
import 'package:netflix_clone/common/constants/paddings.dart';
import 'package:netflix_clone/common/constants/spacers.dart';
import 'package:netflix_clone/common/constants/strings.dart';
import 'package:netflix_clone/common/theme/colour.dart';
import 'package:netflix_clone/common/theme/text.dart';
import 'package:netflix_clone/common/theme/theme.dart';
import 'package:netflix_clone/gen/assets.gen.dart';
import 'package:netflix_clone/routes/route_paths.dart';

class LandingScreen extends StatefulWidget {
  const LandingScreen({super.key});

  @override
  State<LandingScreen> createState() => _LandingScreenState();
}

class _LandingScreenState extends State<LandingScreen> {
  @override
  Widget build(BuildContext context) {
    final textTheme = context.theme.textTheme;
    return Scaffold(
      extendBodyBehindAppBar: true,
      backgroundColor: ColourManager.transparent,
      appBar: AppBar(
        backgroundColor: ColourManager.transparent,
        elevation: 0,
        leading: Container(
            padding: PaddingManager.all8,
            child: Image(
              image: AssetImage(Assets.images.netflixLogo.path),
              fit: BoxFit.fill,
            )),
        actions: [
          GestureDetector(
              onTap: (){},
              child: Text(
                StringManager.privacy.toUpperCase(),
                style: textTheme.titleSmall.semiBold.primaryWhite,
              )),
          SpacerManager.width16,
          GestureDetector(
            onTap: _navigateToLoginScreen,
            child: Text(StringManager.signIn.toUpperCase(),
                style: textTheme.titleSmall.semiBold.primaryWhite),
          ),
          SpacerManager.width16,
          const Icon(
            Icons.more_vert,
            color: ColourManager.systemGreyScale,
          ),
          SpacerManager.width8,
        ],
      ),
      body: Stack(
        children: [
          Positioned.fill(
              child: Image(
            image: AssetImage(
              Assets.images.netflixBackground.path,
            ),
            fit: BoxFit.cover,
          )),
          Positioned.fill(
              child: Container(
            decoration: BoxDecoration(color: ColourManager.primaryBlack.opc02),
          )),
          Positioned.fill(
              child: Container(
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.center,
                    end: Alignment.bottomCenter,
                    colors: [
                  ColourManager.primaryBlack.opc05,
                  ColourManager.facebookBlue.opc06,
                  ColourManager.primaryRed.opc02
                ])),
          )),
          Positioned.fill(
              child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text(
                StringManager.unlimitedFilms,
                style: textTheme.headlineLarge.bold.primaryWhite,
                textAlign: TextAlign.center,
              ),
              SpacerManager.height28,
              Padding(
                padding: PaddingManager.paddingHorizontal30,
                child: Text(
                  StringManager.watchAnyWhere,
                  style: textTheme.labelSmall.medium.primaryLightBeige,
                  textAlign: TextAlign.center,
                ),
              ),
              SpacerManager.height60,
              Padding(
                padding: PaddingManager.all4,
                child: NetflixButton.primary(
                  onTap: _navigateToSignUpPage,
                  StringManager.getStarted,
                  padding: PaddingManager.all8,
                ),
              )
            ],
          )),
        ],
      ),
    );
  }

  void _navigateToLoginScreen() {
    context.push(RoutePaths.loginScreen);
  }

  void _navigateToSignUpPage(){
    context.push(RoutePaths.signUpScreen);
  }
}
