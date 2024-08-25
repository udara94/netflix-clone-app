import 'package:flutter/material.dart';

class ColourManager {
  static const Color cupertinoDialogActionBlue = Color(0xFF007AFF);

  static const Color facebookBlue = Color(0xFF1877F2);

  static const Color primaryBlack = Color(0xFF000000);

  static const Color primaryCream = Color(0xFFF2EEDC);

  static const Color primaryEarthTint = Color(0xFFECEAE6);

  static const Color primaryBorderColor = Color(0xFFDEE0E0);

  static const Color primaryEmerald = Color(0xFF005F63);

  static const Color primaryEmeraldDisabled = Color(0xFF36696B);

  static const Color primaryLightBeige = Color(0xFFF7F6F2);

  static const Color primaryPurple = Color(0xFF5353CC);

  static const Color secondaryPurple = Color(0xFFE5E5FF);

  static const Color primaryRichBlack = Color(0xFF0E1010);

  static const Color primaryWhite = Color(0xFFFFFFFF);

  static const Color secondaryBlue = Color(0xFF91BCFF);

  static const Color secondaryBrightGreen = Color(0xFF000000);

  static const Color secondaryCoral = Color(0xFFE27D63);

  static const Color secondaryEarth = Color(0xFF8B8180);

  static const Color systemGreyScale = Color(0xFF4F4F4F);

  static const Color borderColor = Color(0x8B81804D);

  static const Color equipmentBrightGreen = Color(0xFFACE55C);

  static const Color defaultBarrierColor = Color(0x33000000);

  static const Color autoPlayMaskColor = Color(0xBF001D1F);

  static const Color thumbnailMaskColor = Color(0x66005F63);

  static const Color transparent = Color(0x00000000);

  static const Color primaryRed = Color(0xFFF00000);

  static const List<Color> cardBackgroundGradient = [
    Color(0xFF005D62),
    Color(0xFF005D62),
    Color(0xFF5353CC),
  ];

  static const List<Color> functionTestGradient = [
    Color(0xFFF1EEDE),
    Color(0xFFD7E3B2),
    Color(0xFFA5CC66),
  ];

  static const List<Color> colorfulRadios = [
    Color(0xFF00AD7C),
    Color(0xFF99CD53),
    Color(0xFFC2EB31),
    Color(0xFFE4F000),
    Color(0xFFFFF566),
    Color(0xFFFFE366),
    Color(0xFFFFC966),
    Color(0xFFFFA34D),
    Color(0xFFFF8E59),
    Color(0xFFFF5959),
    Color(0xFFF00000),
    Color(0xFFF00000)
  ];
}

extension OpacityManager on Color {
  Color get opc01 => withOpacity(0.1);

  Color get opc02 => withOpacity(0.2);

  Color get opc03 => withOpacity(0.3);

  Color get opc04 => withOpacity(0.4);

  Color get opc05 => withOpacity(0.5);

  Color get opc06 => withOpacity(0.6);

  Color get opc07 => withOpacity(0.7);

  Color get opc08 => withOpacity(0.8);

  Color get opc09 => withOpacity(0.9);

  Color get opc10 => withOpacity(1);
}
