import 'package:flutter/material.dart';
import 'package:netflix_clone/common/constants/borders.dart';
import 'package:netflix_clone/common/constants/paddings.dart';
import 'package:netflix_clone/common/theme/colour.dart';
import 'package:netflix_clone/common/theme/text.dart';
import 'package:netflix_clone/common/theme/theme.dart';

typedef TapEvent = void Function();


class NetflixButton extends StatelessWidget {

  NetflixButton.primary(this.text, {
    super.key,
    Color? backgroundColor,
    this.textStyle,
    this.onTap,
    this.padding,
    this.disabledColor,
    this.border
  }) : backgroundColor = backgroundColor ?? ColourManager.primaryRed;

  final String text;
  final Color backgroundColor;
  final TextStyle? textStyle;
  final TapEvent? onTap;
  final EdgeInsets? padding;
  final Color? disabledColor;
  final Border? border;

  @override
  Widget build(BuildContext context) {
    var style = textStyle ?? context.textTheme.labelSmall.semiBold.primaryWhite;

    final children = <Widget>[];

    children.add(Text(text, style: style,));
    return InkWell(
      onTap: (){
        onTap?.call();
      },
      child: Container(
        padding: padding,
        decoration: BoxDecoration(
          color: backgroundColor,
          border: border,
          borderRadius: BorderManager.defaultButtonRadius
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: children,
        ),
      ),
    );
  }
}
