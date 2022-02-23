import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:naxa_app/core/constants/colors.dart';
import 'package:naxa_app/core/constants/sizes.dart';
import 'package:naxa_app/core/extensions/context.dart';
import 'package:naxa_app/core/widgets/horizontal_divider.dart';
import 'package:naxa_app/core/widgets/models/balance_item_iu_model.dart';
import 'package:naxa_app/core/widgets/shadow_container.dart';

class BalanceListItem extends StatelessWidget {
  const BalanceListItem({
    Key? key,
    required this.item,
  }) : super(key: key);

  final BalanceItem item;

  @override
  Widget build(BuildContext context) {
    return ShadowContainer(
      width: 82.w,
      child: Row(
        children: [
          Container(
            decoration: BoxDecoration(
              color: item.color,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(smallBorderRadius),
                bottomLeft: Radius.circular(smallBorderRadius),
              ),
            ),
            height: double.infinity,
            width: 6.w,
          ),
          GeneralHorizontalDivider(6.w),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(item.label, style: context.theme().textTheme.bodySmall!.copyWith(color: darkTextColorEmphasized),),
                Text(item.formattedBalance,style: context.theme().textTheme.bodySmall!.copyWith(color: item.color),)
              ],
            ),
          ),
        ],
      ),
      shadowColor: primaryColor.withOpacity(0.1),
    );
  }
}
