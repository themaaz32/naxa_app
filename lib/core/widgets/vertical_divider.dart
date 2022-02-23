import 'package:flutter/material.dart';

class GeneralVerticalDivider extends StatelessWidget {
  const GeneralVerticalDivider(
    this.height, {
    Key? key,
  }) : super(key: key);

  final double height;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
    );
  }
}
