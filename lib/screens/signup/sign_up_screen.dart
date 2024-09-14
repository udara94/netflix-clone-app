import 'package:flutter/material.dart';
import 'package:netflix_clone/common/components/app_bar/app_bar.dart';
import 'package:netflix_clone/common/components/buttons/buttons.dart';
import 'package:netflix_clone/common/components/inputfields/text_form_field.dart';
import 'package:netflix_clone/common/constants/paddings.dart';
import 'package:netflix_clone/common/constants/spacers.dart';
import 'package:netflix_clone/common/constants/strings.dart';
import 'package:netflix_clone/common/theme/theme.dart';
import 'package:netflix_clone/common/theme/text.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  @override
  Widget build(BuildContext context) {
    final textTheme = context.theme.textTheme;
    final theme = context.colorScheme;
    return  Scaffold(
      backgroundColor:theme.onPrimary,
      appBar: CustomAppBar.OnlyClose(backgroundColor: theme.primary, actions: [
         GestureDetector(
           onTap: (){
             Navigator.pop(context);
           },
             child: const Icon(Icons.close)
         )
        , SpacerManager.width20
      ],),
      body: SafeArea(
        child: Padding(
          padding: PaddingManager.defaultScreenPadding,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SpacerManager.height16,
              Text(
                StringManager.readyToWatch,
                style: textTheme.headlineLarge.semiBold.primaryBlack,
                textAlign: TextAlign.start,
              ),
              SpacerManager.height24,
              Text(
                StringManager.enterEmail,
                style: textTheme.labelMedium.regular.primaryBlack,
                textAlign: TextAlign.start,
              ),
              SpacerManager.height24,
              CustomTextFormField(StringManager.email),
              SpacerManager.height24,
              NetflixButton.primary(
                onTap: (){},
                StringManager.getStarted,
                padding: PaddingManager.all8,
              ),
            ],
          ),
        ),
      ),

    );
  }
}
