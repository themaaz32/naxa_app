import 'package:flutter/material.dart';

class GeneralHorizontalDivider extends StatelessWidget {
  const GeneralHorizontalDivider(
    this.width, {
    Key? key,
  }) : super(key: key);

  final double width;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
    );
  }
}
