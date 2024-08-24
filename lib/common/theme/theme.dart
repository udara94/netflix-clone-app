import 'package:flutter/material.dart';
import 'package:netflix_clone/common/constants/borders.dart';
import 'package:netflix_clone/common/theme/colour.dart';
import 'package:netflix_clone/common/theme/text.dart';

class ThemeManager {
  static ThemeData appTheme = ThemeData(
    useMaterial3: true,
    snackBarTheme: SnackBarThemeData(
      backgroundColor: Colors.red,
      contentTextStyle: AppTextTheme.theme.labelSmall?.primaryWhite,
    ),
    appBarTheme: AppBarTheme(
      centerTitle: true,
      backgroundColor: ColourManager.primaryBlack,
      titleTextStyle: AppTextTheme.theme.labelSmall?.semiBold.primaryRichBlack,
      iconTheme: IconThemeData(
        color: ColourManager.primaryRichBlack,
      ),
    ),
    textTheme: AppTextTheme.theme,
    // Set the background of the app.
    colorScheme: ColorScheme.fromSeed(
      seedColor: ColourManager.secondaryBrightGreen,
      background: ColourManager.primaryLightBeige,
    ),
    inputDecorationTheme: InputDecorationTheme(
      filled: true,
      fillColor: ColourManager.primaryWhite,
      errorMaxLines: 2,
      hintStyle: AppTextTheme.theme.labelSmall?.copyWith(
        overflow: TextOverflow.visible,
      ),
      errorStyle: AppTextTheme.theme.labelSmall,
      border: OutlineInputBorder(
        borderRadius: BorderManager.defaultButtonRadius,
      ),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderManager.defaultButtonRadius,
        borderSide: BorderSide(
          color: ColourManager.primaryRichBlack.opc03,
        ),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderManager.defaultButtonRadius,
        borderSide: BorderSide(
          color: ColourManager.primaryPurple,
          width: 2,
        ),
      ),
    ),
    scaffoldBackgroundColor: ColourManager.primaryBlack

  );
}

extension ThemeGetter on BuildContext {
  ThemeData get theme => Theme.of(this);

  ColorScheme get colorScheme => theme.colorScheme;

  TextTheme get textTheme => theme.textTheme;
}
