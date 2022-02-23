import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SvgIconButton extends StatelessWidget {
  const SvgIconButton({
    Key? key,
    required this.assetName,
    required this.onPressed,
    required this.size,
  }) : super(key: key);

  final String assetName;
  final VoidCallback onPressed;
  final double size;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: SizedBox(
        height: size,
        width: size,
        child: SvgPicture.asset(
          assetName,
          fit: BoxFit.contain,
        ),
      ),
    );
  }
}
