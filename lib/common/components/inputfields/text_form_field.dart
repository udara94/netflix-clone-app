import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:netflix_clone/common/constants/paddings.dart';
import 'package:netflix_clone/common/constants/spacers.dart';
import 'package:netflix_clone/common/theme/theme.dart';
import 'package:netflix_clone/common/theme/text.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField(this.labelName,{
    super.key
  });

  final String labelName;
  @override
  Widget build(BuildContext context) {
    final textTheme = context.theme.textTheme;
    final theme = context.colorScheme;
    return  Container(
      decoration: BoxDecoration(
        border: Border.all(
          color: theme.outline,
          width: 1
        )
      ),
      child: Padding(
        padding:  PaddingManager.defaultTextFormPadding,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SpacerManager.height4,
            Text(labelName, style: textTheme.labelSmall.regular,),
            TextFormField(
              style: textTheme.labelLarge.regular.primaryBlack,
              decoration:  InputDecoration(
                border: InputBorder.none,
                enabledBorder: InputBorder.none,
                focusedBorder: InputBorder.none,
                contentPadding: PaddingManager.zero,
                labelStyle: textTheme.bodyMedium.regular.secondaryBlue,
                isDense: true,
                constraints: const BoxConstraints(
                  minHeight: 0,
                  maxHeight: 40,
                ),
              ),
            ),
            SpacerManager.height8,
          ],
        ),
      ),
    );
  }
}
