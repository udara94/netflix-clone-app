
import 'package:flutter/material.dart';
import 'package:netflix_clone/common/theme/colour.dart';

class AppTextTheme {
  static TextTheme get theme => const TextTheme(
    // headlines
    headlineMedium: TextStyle(
      fontFamily: FontFamily.robotoSlab,
      fontSize: FontSize.headline,
    ),

    // titles
    titleMedium: TextStyle(
      fontFamily: FontFamily.robotoSlab,
      fontSize: FontSize.medium,
    ),

    // bodies
    bodyLarge: TextStyle(
      fontFamily: FontFamily.robotoSlab,
      fontSize: FontSize.large,
    ),
    bodyMedium: TextStyle(
      fontFamily: FontFamily.robotoSlab,
      fontSize: FontSize.medium,
    ),
    bodySmall: TextStyle(
      fontFamily: FontFamily.robotoSlab,
      fontSize: FontSize.regular,
    ),

    // labels
    labelLarge: TextStyle(
      fontFamily: FontFamily.barlow,
      fontSize: FontSize.medium,
      fontWeight: FontWeight.w600,
    ),
    labelMedium: TextStyle(
      fontFamily: FontFamily.barlow,
      fontSize: FontSize.regular,
      fontWeight: FontWeight.w500,
    ),
    labelSmall: TextStyle(
      fontFamily: FontFamily.barlow,
      fontSize: FontSize.small,
      fontWeight: FontWeight.w400,
    ),
  );
}

extension FontWeightExtension on TextStyle? {
  TextStyle? get regular => this?.copyWith(fontWeight: FontWeight.w400);

  TextStyle? get medium => this?.copyWith(fontWeight: FontWeight.w500);

  TextStyle? get semiBold => this?.copyWith(fontWeight: FontWeight.w600);

  TextStyle? get bold => this?.copyWith(fontWeight: FontWeight.w700);
}

extension FontStyleExtension on TextStyle? {
  TextStyle? get italic => this?.copyWith(fontStyle: FontStyle.italic);
}

extension DecorationExtension on TextStyle? {
  TextStyle? get underline => this?.copyWith(
    decoration: TextDecoration.underline,
  );
}

extension AppTextColor on TextStyle? {
  TextStyle? get primaryBlack =>
      this?.copyWith(color: ColourManager.primaryBlack);

  TextStyle? get primaryRichBlackOpc05 =>
      this?.copyWith(color: ColourManager.primaryWhite.opc05);

  TextStyle? get primaryWhite =>
      this?.copyWith(color: ColourManager.primaryWhite);

  TextStyle? get systemGreyScale =>
      this?.copyWith(color: ColourManager.systemGreyScale);

  TextStyle? get primaryPurple =>
      this?.copyWith(color: ColourManager.primaryPurple);

  TextStyle? get secondaryPurple =>
      this?.copyWith(color: ColourManager.secondaryPurple);

  TextStyle? get primaryCream =>
      this?.copyWith(color: ColourManager.primaryCream);

  TextStyle? get primaryEmerald =>
      this?.copyWith(color: ColourManager.primaryEmerald);

  TextStyle? get primaryLightBeige =>
      this?.copyWith(color: ColourManager.primaryLightBeige);

  TextStyle? get secondaryBlue =>
      this?.copyWith(color: ColourManager.secondaryBlue);

  TextStyle? get secondaryBrightGreen =>
      this?.copyWith(color: ColourManager.secondaryBrightGreen);

  TextStyle? get secondaryCoral =>
      this?.copyWith(color: ColourManager.secondaryCoral);

  TextStyle? get secondaryEarth =>
      this?.copyWith(color: ColourManager.secondaryEarth);

  TextStyle? get hintColor =>
      this?.copyWith(color: ColourManager.primaryWhite.opc05);

  TextStyle? get systemRed => this?.copyWith(color: Colors.red);
}

extension AppTextHeight on TextStyle? {

  TextStyle? get lineHeightHuge => this?.copyWith(height: FontHeight.huge);

  TextStyle? get lineHeightLarge => this?.copyWith(height: FontHeight.large);

  TextStyle? get lineHeightMedium => this?.copyWith(height: FontHeight.medium);

  TextStyle? get lineHeightSmall => this?.copyWith(height: FontHeight.small);
}

extension AppLetterSpaceing on TextStyle? {
  TextStyle? get letterSpacing096 =>
      this?.copyWith(letterSpacing: LetterSpacing.space096);

  TextStyle? get letterSpacing072 =>
      this?.copyWith(letterSpacing: LetterSpacing.space072);
}

class FontFamily {
  static const String robotoSlab = 'Roboto Slab';
  static const String barlow = 'Barlow';
}

class FontSize {
  static const double countDownHuge = 128;
  static const double headline = 32;
  static const double large = 28;
  static const double medium = 24;
  static const double regular = 20;
  static const double small = 16;
  static const double minimum = 12;
}

class FontHeight {
  static const double huge = 1.75;
  static const double large = 1.32;
  static const double medium = 1.20;
  static const double regular = 1;
  static const double small = 0.80;
}

class LetterSpacing {
  static const double space096 = 0.96;
  static const double space072 = 0.72;
}
