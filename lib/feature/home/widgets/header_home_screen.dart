import 'package:flutter/material.dart';
import 'package:naxa_app/core/widgets/app_logo.dart';
import 'package:naxa_app/core/widgets/svg_icon_button.dart';
import 'package:naxa_app/core/widgets/user_avatar_circular.dart';
import 'package:naxa_app/gen/assets.gen.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/constants/constants.dart';

class HeaderHomeScreen extends StatelessWidget {
  const HeaderHomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        SvgIconButton(
          assetName: Assets.svgs.icons.icMenuDotted,
          onPressed: () {},
          size: 14.w,
        ),
        AppLogo(
          height: 18.h,
          width: 66.w,
        ),
        UserAvatarCircular(
          size: 27.h,
          imageUrl: testingNetworkImage,
          showBorder: true,
          showHighlight: true,
        ),
      ],
    );
  }
}
