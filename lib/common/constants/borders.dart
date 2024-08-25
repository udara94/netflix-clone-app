import 'package:flutter/material.dart';
import 'package:netflix_clone/common/theme/colour.dart';

class BorderManager {
  static BorderRadius defaultButtonRadius = BorderRadius.circular(4);
  static BorderRadius radius8 = BorderRadius.circular(8);
  static BorderRadius radius10 = BorderRadius.circular(10);
  static BorderRadius radius16 = BorderRadius.circular(16);
  static BorderRadius radius28 = BorderRadius.circular(28);
  static BorderRadius iconButtonRadius = BorderRadius.circular(16);
  static BorderRadius progressBarRadius2 = const BorderRadius.only(
    topRight: Radius.circular(2),
    bottomRight: Radius.circular(2),
  );
  static BorderRadius progressBarRadius4 = const BorderRadius.only(
    topRight: Radius.circular(4),
    bottomRight: Radius.circular(4),
  );
  static BorderRadius topRightLeftRadius = const BorderRadius.only(
    topLeft: Radius.circular(8),
    topRight: Radius.circular(8),
  );
  static BorderRadius tabRightBorderRadius = const BorderRadius.only(
    topRight: Radius.circular(10),
    bottomRight: Radius.circular(10),
  );
  static BorderRadius tabLeftBorderRadius = const BorderRadius.only(
    topLeft: Radius.circular(10),
    bottomLeft: Radius.circular(10),
  );

  static Border borderGrey =
  Border.all(color: ColourManager.primaryBorderColor, width: 1);

  // Add a border at the to;

  static Border borderTopGrey = const Border(
    top: BorderSide(
      color: ColourManager.primaryBorderColor,
      width: 1,
    ), // Add a border at the top
  );

  static Border borderBottomGrey = const Border(
    bottom: BorderSide(
      color: ColourManager.primaryBorderColor,
      width: 1,
    ), // Add a border at the top
  );

  static Border borderTopBottomGrey = const Border(
    top: BorderSide(color: ColourManager.primaryBorderColor, width: 1),
    bottom: BorderSide(
      color: ColourManager.primaryBorderColor,
      width: 1,
    ), // Add a border at the top
  );

  static BorderRadius imageRadiusInCard = const BorderRadius.only(
    topRight: Radius.circular(8),
    topLeft: Radius.circular(8),
  );

  static Border tabBorderBottom = const Border(
    bottom: BorderSide(
      color: ColourManager.primaryEmerald,
      width: 4,
    ), // Add a border at the top
  );
}
