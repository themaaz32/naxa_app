import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:naxa_app/core/constants/colors.dart';
import 'package:naxa_app/core/constants/dimens.dart';
import 'package:naxa_app/core/extensions/context.dart';
import 'package:naxa_app/core/widgets/models/announcement_item_ui_model.dart';
import 'package:naxa_app/core/widgets/vertical_divider.dart';

import '../../../core/widgets/shadow_container.dart';

class AnnouncementListItem extends StatelessWidget {
  const AnnouncementListItem({
    Key? key,
    required this.item,
    required this.width,
    this.backgroundColor,
    this.foregroundColor,
  }) : super(key: key);

  final AnnouncementItem item;
  final double width;
  final Color? backgroundColor;
  final Color? foregroundColor;

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Padding(
          padding: EdgeInsets.only(top: item.icon != null ? 35 : 0),
          child: ShadowContainer(
            width: width,
            rounded: true,
            backgroundColor: backgroundColor,
            shadowColor: darkScaffoldBackgroundColor.withOpacity(0.05),
            child: Padding(
              padding: EdgeInsets.symmetric(
                vertical: paddingMediumHeight,
                horizontal: paddingMediumWidth,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  GestureDetector(
                    onTap: () {
                      item.onPressed(context);
                    },
                    child: const Align(
                      child: Icon(Icons.close),
                      alignment: Alignment.topRight,
                    ),
                  ),
                  Expanded(
                    child: Text(
                      item.body,
                      style: context
                          .theme()
                          .textTheme
                          .subtitle1!
                          .copyWith(color: foregroundColor),
                    ),
                  ),
                  GeneralVerticalDivider(8.h),
                  SizedBox(
                    width: double.infinity,
                    child: TextButton(
                      onPressed: () {},
                      child: Text(
                        item.actionLabel,
                        style: context
                            .theme()
                            .textTheme
                            .headlineMedium!
                            .copyWith(color: onPrimaryColor),
                        textAlign: TextAlign.center,
                        maxLines: 1,
                      ),
                      style: TextButton.styleFrom(
                        primary: lightScaffoldBackgroundColor,
                        backgroundColor: primaryColor,
                        padding: EdgeInsets.symmetric(
                          horizontal: 4.w,
                          vertical: 10.h,
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
        item.icon != null
            ? Positioned(
                top: -5,
                left: 0,
                child: SizedBox(
                  width: 75.w,
                  height: 75.w,
                  child: Image.asset(
                    item.icon!,
                  ),
                ),
              )
            : const SizedBox(),
      ],
    );
  }
}
