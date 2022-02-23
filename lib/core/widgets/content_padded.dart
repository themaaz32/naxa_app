import 'package:flutter/material.dart';
import 'package:naxa_app/core/constants/dimens.dart';

class ContentPadded extends StatelessWidget {
  const ContentPadded({
    Key? key,
    required this.child,
  }) : super(key: key);

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: contentHorizontalPadding,
      ),
      child: child,
    );
  }
}
