import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:naxa_app/core/constants/sizes.dart';
import 'package:naxa_app/core/extensions/context.dart';
import 'package:naxa_app/core/widgets/models/feature_item_ui_model.dart';
import 'package:naxa_app/core/widgets/shadow_container.dart';
import 'package:naxa_app/core/widgets/vertical_divider.dart';

class FeaturesListItem extends StatelessWidget {
  const FeaturesListItem({
    Key? key,
    required this.item,
  }) : super(key: key);

  final FeatureItem item;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        item.onPressed(context);
      },
      child: SizedBox(
        width: 44.w,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: AspectRatio(
                aspectRatio: 1,
                child: ShadowContainer(
                  child: Stack(
                    clipBehavior: Clip.none,
                    alignment: Alignment.center,
                    children: [
                      SvgPicture.asset(item.icon),
                      Positioned(
                        bottom: 0,
                        left: 0,
                        right: 0,
                        child: Container(
                          decoration: BoxDecoration(
                            color: context.theme().primaryColor,
                            borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(smallBorderRadius),
                              bottomRight: Radius.circular(smallBorderRadius),
                            ),
                          ),
                          height: 4.h,
                        ),
                      )
                    ],
                  ),
                  shadowColor: context.theme().primaryColor.withOpacity(0.1),
                ),
              ),
            ),
            GeneralVerticalDivider(8.h),
            Text(
              item.label,
              textAlign: TextAlign.center,
              style: context.theme().textTheme.subtitle2!.copyWith(),
              maxLines: 2,
            ),
          ],
        ),
      ),
    );
  }
}
