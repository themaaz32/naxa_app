import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:naxa_app/core/constants/colors.dart';
import 'package:naxa_app/core/constants/dimens.dart';

import 'package:naxa_app/core/constants/sizes.dart';
import 'package:naxa_app/core/extensions/context.dart';
import 'package:naxa_app/core/widgets/models/card_item_ui_model.dart';
import 'package:naxa_app/core/widgets/vertical_divider.dart';

class AccountingCard extends StatelessWidget {
  const AccountingCard({
    Key? key,
    required this.card,
    this.onPressed,
    required this.height,
    required this.width,
  }) : super(key: key);

  final CardItem card;
  final VoidCallback? onPressed;
  final double height;
  final double width;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        width: width,
        height: height,
        padding: EdgeInsets.symmetric(
          vertical: paddingLargeHeight,
          horizontal: paddingMediumWidth,
        ),
        decoration: BoxDecoration(
          color: card.backgroundColor,
          borderRadius: BorderRadius.circular(smallBorderRadius),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              card.name,
              style: context.theme().textTheme.bodySmall!.copyWith(
                    color: onPrimaryColor,
                  ),
            ),
            const Spacer(),
            Text(
              "**** **** **** ${card.last4}",
              style: context.theme().textTheme.headlineSmall!.copyWith(
                    color: onPrimaryColor,
                  ),
            ),
            GeneralVerticalDivider(8.h),
            Text(
              card.formattedAmount,
              style: context.theme().textTheme.headlineLarge!.copyWith(
                    color: onPrimaryColor,
                  ),
            ),
          ],
        ),
      ),
    );
  }
}
