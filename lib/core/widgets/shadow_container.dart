import 'package:flutter/material.dart';
import 'package:naxa_app/core/constants/colors.dart';
import 'package:naxa_app/core/constants/sizes.dart';

class ShadowContainer extends StatelessWidget {
  const ShadowContainer({
    Key? key,
    required this.child,
    required this.shadowColor,
    this.padding,
    this.rounded = true,
    this.radius,
    this.width,
    this.backgroundColor,
    this.height,
  }) : super(key: key);

  final EdgeInsetsGeometry? padding;
  final Color shadowColor;
  final Color? backgroundColor;
  final Widget child;
  final bool rounded;
  final double? radius;
  final double? width;
  final double? height;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: padding,
      width: width,
      height: height,
      decoration: BoxDecoration(
        color: backgroundColor ?? lightScaffoldBackgroundColor,
        boxShadow: [
          BoxShadow(
            color: shadowColor,
            spreadRadius: 5,
            blurRadius: 10,
          )
        ],
        borderRadius: BorderRadius.circular(radius ?? smallBorderRadius),
      ),
      child: child,
    );
  }
}
