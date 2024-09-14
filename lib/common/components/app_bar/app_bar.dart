import 'package:flutter/material.dart';
import 'package:netflix_clone/common/constants/paddings.dart';
import 'package:netflix_clone/common/constants/spacers.dart';
import 'package:netflix_clone/common/theme/colour.dart';


class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {


  CustomAppBar.OnlyClose({
    super.key,
    backgroundColor,
    actions
  }):showCloseButton = true,
  backgroundColor = backgroundColor ?? ColourManager.primaryBlack,
  actions = actions ?? [ const Icon(Icons.close), SpacerManager.width20];
  
  final bool showCloseButton;
  final Color? backgroundColor;
  final List<Widget>? actions;

  @override
  Widget build(BuildContext context) {

    final appBarActions = <Widget>[];
    if(actions != null && actions!.isNotEmpty){
      appBarActions.addAll(actions!);
    }
    return AppBar(
      automaticallyImplyLeading: false,
      backgroundColor: backgroundColor,
      actions: appBarActions,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
