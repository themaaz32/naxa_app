import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:naxa_app/gen/assets.gen.dart';

enum AppLogoType { white, black }

class AppLogo extends StatelessWidget {
  const AppLogo({
    Key? key,
    required this.height,
    required this.width,
    this.type = AppLogoType.black,
  }) : super(key: key);

  final double height;
  final double width;
  final AppLogoType type;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: height,
      child: SvgPicture.asset(
        type == AppLogoType.black ? Assets.svgs.logoBlack : Assets.svgs.logoWhite,
        fit: BoxFit.contain,
      ),
    );
  }
}
