import 'package:flutter/material.dart';

class GeneralAppBar extends StatelessWidget implements PreferredSizeWidget{
  const GeneralAppBar({
    Key? key,
    this.leading,
    this.trailing,
    this.center,
    this.height = 50,
  }) : super(key: key);

  final Widget? leading;
  final Widget? trailing;
  final Widget? center;
  final double height;

  @override
  Widget build(BuildContext context) {
    return AppBar();
  }

  @override
  Size get preferredSize => Size.fromHeight(height);
}
